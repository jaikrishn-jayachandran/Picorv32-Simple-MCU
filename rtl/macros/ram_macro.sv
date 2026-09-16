`timescale 1ns/1ps

module ram_macro #(
    parameter int unsigned ADDR_WIDTH = 32,
    parameter int unsigned DATA_WIDTH = 32,
    parameter int unsigned DEPTH_WORDS = 1024
) (
    input logic clk_i,
    input logic rst_ni,

    // AXI4-Lite slave
    input  logic [ADDR_WIDTH-1:0] s_axil_awaddr,
    input  logic                  s_axil_awvalid,
    output logic                  s_axil_awready,

    input  logic [DATA_WIDTH-1:0] s_axil_wdata,
    input  logic [DATA_WIDTH/8-1:0] s_axil_wstrb,
    input  logic                  s_axil_wvalid,
    output logic                  s_axil_wready,

    output logic [1:0]            s_axil_bresp,
    output logic                  s_axil_bvalid,
    input  logic                  s_axil_bready,

    input  logic [ADDR_WIDTH-1:0] s_axil_araddr,
    input  logic                  s_axil_arvalid,
    output logic                  s_axil_arready,

    output logic [DATA_WIDTH-1:0] s_axil_rdata,
    output logic [1:0]            s_axil_rresp,
    output logic                  s_axil_rvalid,
    input  logic                  s_axil_rready,

    // Boot write interface
    input logic                  boot_we,
    input logic [ADDR_WIDTH-1:0] boot_addr,
    input logic [DATA_WIDTH-1:0] boot_wdata
);

    axil_ram_sim #(
        .AW          (ADDR_WIDTH),
        .DW          (DATA_WIDTH),
        .DEPTH_WORDS (DEPTH_WORDS),
        .INIT_FILE   ("firmware.hex")
    ) i_ram (
        .clk_i (clk_i),
        .rst_ni(rst_ni),

        .s_axil_awaddr  (s_axil_awaddr),
        .s_axil_awvalid (s_axil_awvalid),
        .s_axil_awready (s_axil_awready),

        .s_axil_wdata   (s_axil_wdata),
        .s_axil_wstrb   (s_axil_wstrb),
        .s_axil_wvalid  (s_axil_wvalid),
        .s_axil_wready  (s_axil_wready),

        .s_axil_bresp   (s_axil_bresp),
        .s_axil_bvalid  (s_axil_bvalid),
        .s_axil_bready  (s_axil_bready),

        .s_axil_araddr  (s_axil_araddr),
        .s_axil_arvalid (s_axil_arvalid),
        .s_axil_arready (s_axil_arready),

        .s_axil_rdata   (s_axil_rdata),
        .s_axil_rresp   (s_axil_rresp),
        .s_axil_rvalid  (s_axil_rvalid),
        .s_axil_rready  (s_axil_rready),

        .boot_we    (boot_we),
        .boot_addr  (boot_addr),
        .boot_wdata (boot_wdata)
    );

endmodule