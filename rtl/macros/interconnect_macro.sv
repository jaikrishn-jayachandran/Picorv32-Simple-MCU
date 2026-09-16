`timescale 1ns/1ps

module interconnect_macro #(
    parameter int unsigned NUM_SLAVES = 4,
    parameter int unsigned ADDR_WIDTH = 32,
    parameter int unsigned DATA_WIDTH = 32
) (
    input logic clk_i,
    input logic rst_ni,

    // =========================================================
    // AXI4-Lite master interface
    // =========================================================

    input  logic                  m_awvalid,
    output logic                  m_awready,
    input  logic [ADDR_WIDTH-1:0] m_awaddr,
    input  logic [2:0]            m_awprot,

    input  logic                  m_wvalid,
    output logic                  m_wready,
    input  logic [DATA_WIDTH-1:0] m_wdata,
    input  logic [DATA_WIDTH/8-1:0] m_wstrb,

    output logic                  m_bvalid,
    input  logic                  m_bready,
    output logic [1:0]            m_bresp,

    input  logic                  m_arvalid,
    output logic                  m_arready,
    input  logic [ADDR_WIDTH-1:0] m_araddr,
    input  logic [2:0]            m_arprot,

    output logic                  m_rvalid,
    input  logic                  m_rready,
    output logic [DATA_WIDTH-1:0] m_rdata,
    output logic [1:0]            m_rresp,

    // =========================================================
    // AXI4-Lite slave interfaces
    // =========================================================

    output logic [NUM_SLAVES-1:0] s_awvalid,
    input  logic  [NUM_SLAVES-1:0] s_awready,
    output logic [NUM_SLAVES-1:0][ADDR_WIDTH-1:0] s_awaddr,
    output logic [NUM_SLAVES-1:0][2:0] s_awprot,

    output logic [NUM_SLAVES-1:0] s_wvalid,
    input  logic  [NUM_SLAVES-1:0] s_wready,
    output logic [NUM_SLAVES-1:0][DATA_WIDTH-1:0] s_wdata,
    output logic [NUM_SLAVES-1:0][DATA_WIDTH/8-1:0] s_wstrb,

    input  logic  [NUM_SLAVES-1:0] s_bvalid,
    output logic [NUM_SLAVES-1:0] s_bready,
    input  logic  [NUM_SLAVES-1:0][1:0] s_bresp,

    output logic [NUM_SLAVES-1:0] s_arvalid,
    input  logic  [NUM_SLAVES-1:0] s_arready,
    output logic [NUM_SLAVES-1:0][ADDR_WIDTH-1:0] s_araddr,
    output logic [NUM_SLAVES-1:0][2:0] s_arprot,

    input  logic  [NUM_SLAVES-1:0] s_rvalid,
    output logic [NUM_SLAVES-1:0] s_rready,
    input  logic [NUM_SLAVES-1:0][DATA_WIDTH-1:0] s_rdata,
    input  logic  [NUM_SLAVES-1:0][1:0] s_rresp
);

    axil_interconnect #(
        .NUM_SLAVES (NUM_SLAVES),
        .ADDR_WIDTH (ADDR_WIDTH),
        .DATA_WIDTH (DATA_WIDTH)
    ) i_interconnect (
        .clk_i  (clk_i),
        .rst_ni (rst_ni),

        .m_awvalid (m_awvalid),
        .m_awready (m_awready),
        .m_awaddr  (m_awaddr),
        .m_awprot  (m_awprot),

        .m_wvalid  (m_wvalid),
        .m_wready  (m_wready),
        .m_wdata   (m_wdata),
        .m_wstrb   (m_wstrb),

        .m_bvalid  (m_bvalid),
        .m_bready  (m_bready),
        .m_bresp   (m_bresp),

        .m_arvalid (m_arvalid),
        .m_arready (m_arready),
        .m_araddr  (m_araddr),
        .m_arprot  (m_arprot),

        .m_rvalid  (m_rvalid),
        .m_rready  (m_rready),
        .m_rdata   (m_rdata),
        .m_rresp   (m_rresp),

        .s_awvalid (s_awvalid),
        .s_awready (s_awready),
        .s_awaddr  (s_awaddr),
        .s_awprot  (s_awprot),

        .s_wvalid  (s_wvalid),
        .s_wready  (s_wready),
        .s_wdata   (s_wdata),
        .s_wstrb   (s_wstrb),

        .s_bvalid  (s_bvalid),
        .s_bready  (s_bready),
        .s_bresp   (s_bresp),

        .s_arvalid (s_arvalid),
        .s_arready (s_arready),
        .s_araddr  (s_araddr),
        .s_arprot  (s_arprot),

        .s_rvalid  (s_rvalid),
        .s_rready  (s_rready),
        .s_rdata   (s_rdata),
        .s_rresp   (s_rresp)
    );

endmodule