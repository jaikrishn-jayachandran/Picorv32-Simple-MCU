module picorv32_macro (
    input  logic        clk_i,
    input  logic        rst_ni,

    output logic        trap,

    output logic        mem_axi_awvalid,
    input  logic        mem_axi_awready,
    output logic [31:0] mem_axi_awaddr,
    output logic [2:0]  mem_axi_awprot,

    output logic        mem_axi_wvalid,
    input  logic        mem_axi_wready,
    output logic [31:0] mem_axi_wdata,
    output logic [3:0]  mem_axi_wstrb,

    // input  logic [1:0]  mem_axi_bresp,   // Outer top-level port (unused by u_picorv32)
    input  logic        mem_axi_bvalid,
    output logic        mem_axi_bready,

    output logic        mem_axi_arvalid,
    input  logic        mem_axi_arready,
    output logic [31:0] mem_axi_araddr,
    output logic [2:0]  mem_axi_arprot,

    // input  logic [1:0]  mem_axi_rresp,   // Outer top-level port (unused by u_picorv32)
    input  logic        mem_axi_rvalid,
    output logic        mem_axi_rready,
    input  logic [31:0] mem_axi_rdata
);

    picorv32_axi #(
        .ENABLE_COUNTERS (1),
        .BARREL_SHIFTER  (1),
        .COMPRESSED_ISA  (0),
        .PROGADDR_RESET  (32'h0000_0000),
        .STACKADDR       (32'h0000_1000)
    ) u_picorv32 (
        .clk             (clk_i),
        .resetn          (rst_ni),
        .trap            (trap),

        // Write Address Channel
        .mem_axi_awvalid (mem_axi_awvalid),
        .mem_axi_awready (mem_axi_awready),
        .mem_axi_awaddr  (mem_axi_awaddr),
        .mem_axi_awprot  (mem_axi_awprot),

        // Write Data Channel
        .mem_axi_wvalid  (mem_axi_wvalid),
        .mem_axi_wready  (mem_axi_wready),
        .mem_axi_wdata   (mem_axi_wdata),
        .mem_axi_wstrb   (mem_axi_wstrb),

        // Write Response Channel
        .mem_axi_bvalid  (mem_axi_bvalid),
        .mem_axi_bready  (mem_axi_bready),

        // Read Address Channel
        .mem_axi_arvalid (mem_axi_arvalid),
        .mem_axi_arready (mem_axi_arready),
        .mem_axi_araddr  (mem_axi_araddr),
        .mem_axi_arprot  (mem_axi_arprot),

        // Read Data Channel
        .mem_axi_rvalid  (mem_axi_rvalid),
        .mem_axi_rready  (mem_axi_rready),
        .mem_axi_rdata   (mem_axi_rdata)
    );

endmodule