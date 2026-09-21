`timescale 1ns/1ps

// -----------------------------------------------------------------------------
// RAM hard-macro wrapper
//
// Physical SRAM:
//   RM_IHPSG13_1P_1024x32_c2_bm_bist
//
// Capacity:
//   1024 words x 32 bits
//   4096 bytes
//
// Addressing:
//   AXI byte address [31:0]
//   SRAM word address = AXI address[11:2]
//
// SRAM is single-port, therefore this wrapper arbitrates:
//   1. boot write
//   2. AXI write
//   3. AXI read
//
// boot_spi_macro is responsible for generating:
//   boot_we
//   boot_addr
//   boot_wdata
//
// Physical power:
//
//   VDD       -> SRAM VDD!
//   VSS       -> SRAM VSS!
//   VDDARRAY  -> SRAM VDDARRAY!
//
// The SRAM behavioral Verilog model does not expose power ports.
// The power pins are physical LEF pins and are connected through the
// physical power-grid / global-connect flow during hardening.
//
// -----------------------------------------------------------------------------

module ram_macro (
    // =========================================================================
    // Clock / reset
    // =========================================================================

    input  logic        clk_i,
    input  logic        rst_ni,

    // =========================================================================
    // AXI4-Lite write address channel
    // =========================================================================

    input  logic [31:0] s_axil_awaddr,
    input  logic        s_axil_awvalid,
    output logic        s_axil_awready,

    // =========================================================================
    // AXI4-Lite write data channel
    // =========================================================================

    input  logic [31:0] s_axil_wdata,
    input  logic [3:0]  s_axil_wstrb,
    input  logic        s_axil_wvalid,
    output logic        s_axil_wready,

    // =========================================================================
    // AXI4-Lite write response channel
    // =========================================================================

    output logic [1:0]  s_axil_bresp,
    output logic        s_axil_bvalid,
    input  logic        s_axil_bready,

    // =========================================================================
    // AXI4-Lite read address channel
    // =========================================================================

    input  logic [31:0] s_axil_araddr,
    input  logic        s_axil_arvalid,
    output logic        s_axil_arready,

    // =========================================================================
    // AXI4-Lite read data channel
    // =========================================================================

    output logic [31:0] s_axil_rdata,
    output logic [1:0]  s_axil_rresp,
    output logic        s_axil_rvalid,
    input  logic        s_axil_rready,

    // =========================================================================
    // Boot interface
    //
    // Driven by boot_spi_macro in the hardened design.
    //
    // The simulation-only soc_top uses the same interface.
    // =========================================================================

    input  logic        boot_we,
    input  logic [31:0] boot_addr,
    input  logic [31:0] boot_wdata

    // =========================================================================
    // Physical SRAM power ports
    //
    // These are top-level physical supply ports of the hardened macro.
    //
    // The SRAM LEF contains:
    //   VDD!
    //   VSS!
    //   VDDARRAY!
    //
    // The behavioral Verilog model does not expose these ports, so they are
    // intentionally not passed to the behavioral SRAM instance below.
    // Physical connectivity is established by the PDN/global-connect flow.
    // =========================================================================

    // inout wire         VDD,
    // inout wire         VSS,
    // inout wire         VDDARRAY
);


    // =========================================================================
    // AXI response codes
    // =========================================================================

    localparam logic [1:0] AXI_OKAY   = 2'b00;
    localparam logic [1:0] AXI_DECERR = 2'b11;


    // =========================================================================
    // SRAM interface
    // =========================================================================

    logic        sram_clk;
    logic        sram_men;
    logic        sram_wen;
    logic        sram_ren;

    logic [9:0]  sram_addr;
    logic [31:0] sram_din;
    logic [31:0] sram_bm;

    logic [31:0] sram_dout;


    // =========================================================================
    // SRAM BIST interface
    //
    // BIST is disabled for normal operation.
    // =========================================================================

    logic        sram_bist_clk;
    logic        sram_bist_en;
    logic        sram_bist_men;
    logic        sram_bist_wen;
    logic        sram_bist_ren;

    logic [9:0]  sram_bist_addr;
    logic [31:0] sram_bist_din;
    logic [31:0] sram_bist_bm;


    // =========================================================================
    // AXI write holding registers
    //
    // AXI4-Lite AW and W channels are independent.
    //
    // AW and W may therefore arrive in different cycles.
    // =========================================================================

    logic        aw_pending_q;
    logic [31:0] awaddr_q;

    logic        w_pending_q;
    logic [31:0] wdata_q;
    logic [3:0]  wstrb_q;


    // =========================================================================
    // AXI read state machine
    //
    // READ_IDLE
    //     No SRAM read in progress.
    //
    // READ_ISSUE
    //     SRAM read operation is presented.
    //
    // READ_CAPTURE
    //     Capture SRAM output.
    // =========================================================================

    typedef enum logic [1:0] {
        READ_IDLE    = 2'b00,
        READ_ISSUE   = 2'b01,
        READ_CAPTURE = 2'b10
    } read_state_t;

    read_state_t read_state_q;

    logic [9:0] read_addr_q;


    // =========================================================================
    // Address validity
    //
    // SRAM capacity:
    //
    //   1024 words x 4 bytes = 4096 bytes
    //
    // Valid byte addresses:
    //
    //   0x00000000 - 0x00000FFF
    //
    // Valid word-aligned addresses:
    //
    //   address[31:12] == 0
    //   address[1:0]   == 0
    //
    // SRAM word address:
    //
    //   address[11:2]
    // =========================================================================

    logic axi_awaddr_valid;
    logic axi_araddr_valid;

    assign axi_awaddr_valid =
        (s_axil_awaddr[31:12] == 20'b0) &&
        (s_axil_awaddr[1:0]   == 2'b00);

    assign axi_araddr_valid =
        (s_axil_araddr[31:12] == 20'b0) &&
        (s_axil_araddr[1:0]   == 2'b00);


    // =========================================================================
    // AXI handshakes
    // =========================================================================

    logic axi_aw_fire;
    logic axi_w_fire;
    logic axi_write_fire;
    logic axi_ar_fire;

    assign axi_aw_fire =
        s_axil_awvalid &&
        s_axil_awready;

    assign axi_w_fire =
        s_axil_wvalid &&
        s_axil_wready;

    assign axi_ar_fire =
        s_axil_arvalid &&
        s_axil_arready;


    // =========================================================================
    // AXI write completion
    //
    // A write is issued only when:
    //
    //   - AW has been received
    //   - W has been received
    //   - boot is inactive
    //   - no read is active
    //   - no write response is outstanding
    //
    // IMPORTANT:
    //
    // Invalid addresses are NOT sent to the SRAM.
    // They are completed with AXI_DECERR instead.
    // =========================================================================

    assign axi_write_fire =
        aw_pending_q &&
        w_pending_q &&
        axi_awaddr_valid &&
        !boot_we &&
        (read_state_q == READ_IDLE) &&
        !s_axil_bvalid;


    // =========================================================================
    // AXI READY generation
    //
    // Only one SRAM operation can be active at a time.
    // =========================================================================

    always_comb begin

        s_axil_awready = 1'b0;
        s_axil_wready  = 1'b0;
        s_axil_arready = 1'b0;

        // ---------------------------------------------------------------------
        // AXI write channels
        //
        // AW and W can be accepted independently.
        // ---------------------------------------------------------------------

        if (!boot_we &&
            (read_state_q == READ_IDLE) &&
            !s_axil_bvalid &&
            !s_axil_rvalid) begin

            if (!aw_pending_q)
                s_axil_awready = 1'b1;

            if (!w_pending_q)
                s_axil_wready = 1'b1;

        end


        // ---------------------------------------------------------------------
        // AXI read channel
        //
        // A read is accepted only when there are no pending write pieces.
        //
        // This prevents simultaneous write/read arbitration on the single
        // SRAM port.
        // ---------------------------------------------------------------------

        if (!boot_we &&
            !aw_pending_q &&
            !w_pending_q &&
            !s_axil_bvalid &&
            !s_axil_rvalid &&
            (read_state_q == READ_IDLE)) begin

            s_axil_arready = 1'b1;

        end

    end


    // =========================================================================
    // SRAM control generation
    //
    // Priority:
    //
    //   1. boot write
    //   2. AXI write
    //   3. AXI read
    //   4. idle
    // =========================================================================

    always_comb begin

        // ---------------------------------------------------------------------
        // Safe idle defaults
        // ---------------------------------------------------------------------

        sram_clk  = clk_i;

        sram_men  = 1'b0;
        sram_wen  = 1'b0;
        sram_ren  = 1'b0;

        sram_addr = 10'b0;
        sram_din  = 32'b0;
        sram_bm   = 32'b0;


        // ---------------------------------------------------------------------
        // BOOT WRITE
        //
        // boot_spi_macro owns firmware loading.
        //
        // boot_addr is byte addressed.
        //
        // SRAM address:
        //
        //   boot_addr[11:2]
        //
        // Boot writes are always full-word writes.
        // ---------------------------------------------------------------------

        if (boot_we) begin

            sram_men  = 1'b1;
            sram_wen  = 1'b1;
            sram_ren  = 1'b0;

            sram_addr = boot_addr[11:2];
            sram_din  = boot_wdata;

            sram_bm   = 32'hFFFF_FFFF;

        end


        // ---------------------------------------------------------------------
        // AXI WRITE
        //
        // Only valid addresses reach this block because axi_write_fire
        // includes axi_awaddr_valid.
        // ---------------------------------------------------------------------

        else if (axi_write_fire) begin

            sram_men  = 1'b1;
            sram_wen  = 1'b1;
            sram_ren  = 1'b0;

            sram_addr = awaddr_q[11:2];
            sram_din  = wdata_q;

            // -----------------------------------------------------------------
            // Expand AXI byte strobes into SRAM bit masks.
            //
            // IHP SRAM BM semantics:
            //
            //   BM[i] = 1 -> bit i is write enabled
            //
            // AXI:
            //
            //   WSTRB[0] -> bits [7:0]
            //   WSTRB[1] -> bits [15:8]
            //   WSTRB[2] -> bits [23:16]
            //   WSTRB[3] -> bits [31:24]
            // -----------------------------------------------------------------

            sram_bm[7:0]   = {8{wstrb_q[0]}};
            sram_bm[15:8]  = {8{wstrb_q[1]}};
            sram_bm[23:16] = {8{wstrb_q[2]}};
            sram_bm[31:24] = {8{wstrb_q[3]}};

        end


        // ---------------------------------------------------------------------
        // AXI READ
        //
        // The SRAM read operation is presented during READ_ISSUE.
        // ---------------------------------------------------------------------

        else if (read_state_q == READ_ISSUE) begin

            sram_men  = 1'b1;
            sram_wen  = 1'b0;
            sram_ren  = 1'b1;

            sram_addr = read_addr_q;
            sram_din  = 32'b0;
            sram_bm   = 32'b0;

        end

    end


    // =========================================================================
    // AXI protocol / transaction state
    // =========================================================================

    always_ff @(posedge clk_i or negedge rst_ni) begin

        if (!rst_ni) begin

            // -----------------------------------------------------------------
            // AXI write holding state
            // -----------------------------------------------------------------

            aw_pending_q <= 1'b0;
            awaddr_q     <= 32'b0;

            w_pending_q  <= 1'b0;
            wdata_q      <= 32'b0;
            wstrb_q      <= 4'b0;


            // -----------------------------------------------------------------
            // AXI write response
            // -----------------------------------------------------------------

            s_axil_bvalid <= 1'b0;
            s_axil_bresp  <= AXI_OKAY;


            // -----------------------------------------------------------------
            // AXI read response
            // -----------------------------------------------------------------

            s_axil_rvalid <= 1'b0;
            s_axil_rresp  <= AXI_OKAY;
            s_axil_rdata  <= 32'b0;


            // -----------------------------------------------------------------
            // Read state
            // -----------------------------------------------------------------

            read_state_q <= READ_IDLE;
            read_addr_q  <= 10'b0;

        end

        else begin

            // =================================================================
            // Capture AXI write address
            // =================================================================

            if (axi_aw_fire) begin

                aw_pending_q <= 1'b1;
                awaddr_q     <= s_axil_awaddr;

            end


            // =================================================================
            // Capture AXI write data
            // =================================================================

            if (axi_w_fire) begin

                w_pending_q <= 1'b1;
                wdata_q     <= s_axil_wdata;
                wstrb_q     <= s_axil_wstrb;

            end


            // =================================================================
            // Complete AXI write
            //
            // Valid address:
            //
            //   Perform SRAM write.
            //   Return AXI_OKAY.
            //
            // Invalid address:
            //
            //   Do NOT touch SRAM.
            //   Return AXI_DECERR.
            // =================================================================

            if (aw_pending_q &&
                w_pending_q &&
                !boot_we &&
                (read_state_q == READ_IDLE) &&
                !s_axil_bvalid) begin

                aw_pending_q <= 1'b0;
                w_pending_q  <= 1'b0;

                s_axil_bvalid <= 1'b1;

                if (axi_awaddr_valid)
                    s_axil_bresp <= AXI_OKAY;
                else
                    s_axil_bresp <= AXI_DECERR;

            end


            // =================================================================
            // AXI write response handshake
            // =================================================================

            if (s_axil_bvalid &&
                s_axil_bready) begin

                s_axil_bvalid <= 1'b0;

            end


            // =================================================================
            // AXI READ REQUEST
            //
            // Valid address:
            //
            //   Start SRAM read.
            //
            // Invalid address:
            //
            //   Return DECERR immediately without accessing SRAM.
            // =================================================================

            if (axi_ar_fire) begin

                if (axi_araddr_valid) begin

                    read_addr_q  <= s_axil_araddr[11:2];
                    read_state_q <= READ_ISSUE;

                end
                else begin

                    s_axil_rdata  <= 32'b0;
                    s_axil_rresp  <= AXI_DECERR;
                    s_axil_rvalid <= 1'b1;

                    read_state_q <= READ_IDLE;

                end

            end


            // =================================================================
            // SRAM READ ISSUE -> CAPTURE
            //
            // READ_ISSUE presents:
            //
            //   A_MEN  = 1
            //   A_REN  = 1
            //   A_WEN  = 0
            //   A_ADDR = read_addr_q
            //
            // The SRAM is synchronous.
            //
            // Move to READ_CAPTURE on the next clock.
            // =================================================================

            if (read_state_q == READ_ISSUE) begin

                read_state_q <= READ_CAPTURE;

            end


            // =================================================================
            // Capture SRAM read data
            // =================================================================

            if (read_state_q == READ_CAPTURE) begin

                s_axil_rdata <= sram_dout;
                s_axil_rresp <= AXI_OKAY;

                s_axil_rvalid <= 1'b1;

                read_state_q <= READ_IDLE;

            end


            // =================================================================
            // AXI read response handshake
            // =================================================================

            if (s_axil_rvalid &&
                s_axil_rready) begin

                s_axil_rvalid <= 1'b0;

            end

        end

    end


    // =========================================================================
    // IHP SRAM hard macro
    //
    // Physical macro:
    //
    //   RM_IHPSG13_1P_1024x32_c2_bm_bist
    //
    // IMPORTANT:
    //
    // The behavioral SRAM model does not expose:
    //
    //   VDD
    //   VSS
    //   VDDARRAY
    //
    // These are physical-only LEF power pins and are handled by the physical
    // power-grid/global-connect flow.
    // =========================================================================

    RM_IHPSG13_1P_1024x32_c2_bm_bist u_sram (

        // ---------------------------------------------------------------------
        // Normal SRAM port
        // ---------------------------------------------------------------------

        .A_CLK  (sram_clk),

        .A_MEN  (sram_men),
        .A_WEN  (sram_wen),
        .A_REN  (sram_ren),

        .A_ADDR (sram_addr),

        .A_DIN  (sram_din),

        // IHP requirement:
        // A_DLY must always be tied high.
        .A_DLY  (1'b1),

        .A_DOUT (sram_dout),

        .A_BM   (sram_bm),


        // ---------------------------------------------------------------------
        // BIST port
        //
        // BIST is disabled for normal functional operation.
        // ---------------------------------------------------------------------

        .A_BIST_CLK  (1'b0),
        .A_BIST_EN   (1'b0),

        .A_BIST_MEN  (1'b0),
        .A_BIST_WEN  (1'b0),
        .A_BIST_REN  (1'b0),

        .A_BIST_ADDR (10'b0),
        .A_BIST_DIN  (32'b0),
        .A_BIST_BM   (32'b0)

    );

endmodule