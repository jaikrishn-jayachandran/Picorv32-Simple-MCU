`timescale 1ns/1ps
module axil_ram_sim #(
    parameter int unsigned AW          = 32,
    parameter int unsigned DW          = 32,
    parameter int unsigned DEPTH_WORDS = 1024,
    parameter              INIT_FILE   = "firmware.hex"
)(
    input  logic              clk_i,
    input  logic              rst_ni,

    // Write address
    input  logic [AW-1:0]     s_axil_awaddr,
    input  logic              s_axil_awvalid,
    output logic              s_axil_awready,

    // Write data
    input  logic [DW-1:0]     s_axil_wdata,
    input  logic [DW/8-1:0]   s_axil_wstrb,
    input  logic              s_axil_wvalid,
    output logic              s_axil_wready,

    // Write response
    output logic [1:0]        s_axil_bresp,
    output logic              s_axil_bvalid,
    input  logic              s_axil_bready,

    // Read address
    input  logic [AW-1:0]     s_axil_araddr,
    input  logic              s_axil_arvalid,
    output logic              s_axil_arready,

    // Read data
    output logic [DW-1:0]     s_axil_rdata,
    output logic [1:0]        s_axil_rresp,
    output logic              s_axil_rvalid,
    input  logic              s_axil_rready,


    input  logic        boot_we,
    input  logic [31:0] boot_addr,
    input  logic [31:0] boot_wdata
);

    localparam int unsigned IDX_W = $clog2(DEPTH_WORDS);

    // Memory array
    logic [DW-1:0] mem [0:DEPTH_WORDS-1];

    // Load firmware at time 0
        // Load firmware at time 0 — only in simulation, not during synthesis.
    // OpenLane defines SYNTHESIS; Verilator does not.
    `ifndef SYNTHESIS
        initial begin
            $readmemh(INIT_FILE, mem);
            $display("[RAM] %s loaded. mem[0]=%08h mem[1]=%08h mem[2]=%08h",
                    INIT_FILE, mem[0], mem[1], mem[2]);
        end
    `endif

    // ==========================================================
    // Write channel
    // ==========================================================
    logic              w_busy;
    logic              w_fire;
    logic [AW-1:0]     w_addr;
    logic [DW-1:0]     w_data;
    logic [DW/8-1:0]   w_strb;


    always_ff @(posedge clk_i) begin
        if (boot_we)
            mem[boot_addr[IDX_W+1:2]] <= boot_wdata;
    end

    always_ff @(posedge clk_i) begin
        if (!rst_ni) begin
            s_axil_awready <= 1'b1;
            s_axil_wready  <= 1'b1;
            s_axil_bvalid  <= 1'b0;
            w_busy         <= 1'b0;
            w_fire         <= 1'b0;
            w_addr         <= '0;
            w_data         <= '0;
            w_strb         <= '0;
        end else begin
            w_fire <= 1'b0;

            if (!w_busy) begin
                s_axil_awready <= 1'b1;
                s_axil_wready  <= 1'b1;

                if (s_axil_awvalid && s_axil_wvalid) begin
                    w_addr         <= s_axil_awaddr;
                    w_data         <= s_axil_wdata;
                    w_strb         <= s_axil_wstrb;
                    w_fire         <= 1'b1;
                    s_axil_awready <= 1'b0;
                    s_axil_wready  <= 1'b0;
                    s_axil_bvalid  <= 1'b1;
                    w_busy         <= 1'b1;
                end
            end else begin
                if (s_axil_bready) begin
                    s_axil_bvalid <= 1'b0;
                    w_busy        <= 1'b0;
                end
            end
        end
    end

    assign s_axil_bresp = 2'b00;

    // Actual memory write
    always_ff @(posedge clk_i) begin
        if (w_fire) begin
            if (w_strb[0]) mem[w_addr[IDX_W+1:2]][ 7: 0] <= w_data[ 7: 0];
            if (w_strb[1]) mem[w_addr[IDX_W+1:2]][15: 8] <= w_data[15: 8];
            if (w_strb[2]) mem[w_addr[IDX_W+1:2]][23:16] <= w_data[23:16];
            if (w_strb[3]) mem[w_addr[IDX_W+1:2]][31:24] <= w_data[31:24];
        end
    end

    // ==========================================================
    // Read channel
    // ==========================================================
    logic              r_busy;
    logic [AW-1:0]     r_addr;

    always_ff @(posedge clk_i) begin
        if (!rst_ni) begin
            s_axil_arready <= 1'b1;
            s_axil_rvalid  <= 1'b0;
            r_busy         <= 1'b0;
            r_addr         <= '0;
        end else begin
            if (!r_busy) begin
                s_axil_arready <= 1'b1;
                if (s_axil_arvalid) begin
                    r_addr         <= s_axil_araddr;
                    s_axil_arready <= 1'b0;
                    s_axil_rvalid  <= 1'b1;
                    r_busy         <= 1'b1;
                end
            end else begin
                if (s_axil_rready) begin
                    s_axil_rvalid <= 1'b0;
                    r_busy        <= 1'b0;
                end
            end
        end
    end

    assign s_axil_rdata = mem[r_addr[IDX_W+1:2]];
    assign s_axil_rresp = 2'b00;

endmodule