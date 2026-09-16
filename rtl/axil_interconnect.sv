`timescale 1ns/1ps
module axil_interconnect #(
    parameter int unsigned NUM_SLAVES = 4,
    parameter int unsigned ADDR_WIDTH = 32,
    parameter int unsigned DATA_WIDTH = 32
)(
    input  logic        clk_i,
    input  logic        rst_ni,

    // ---------------- Master (CPU) ----------------
    input  logic                            m_awvalid,
    output logic                            m_awready,
    input  logic [ADDR_WIDTH-1:0]           m_awaddr,
    input  logic [2:0]                      m_awprot,

    input  logic                            m_wvalid,
    output logic                            m_wready,
    input  logic [DATA_WIDTH-1:0]           m_wdata,
    input  logic [DATA_WIDTH/8-1:0]         m_wstrb,

    output logic                            m_bvalid,
    input  logic                            m_bready,
    output logic [1:0]                      m_bresp,

    input  logic                            m_arvalid,
    output logic                            m_arready,
    input  logic [ADDR_WIDTH-1:0]           m_araddr,
    input  logic [2:0]                      m_arprot,

    output logic                            m_rvalid,
    input  logic                            m_rready,
    output logic [DATA_WIDTH-1:0]           m_rdata,
    output logic [1:0]                      m_rresp,

    // ---------------- Slaves ----------------
    output logic [NUM_SLAVES-1:0]                   s_awvalid,
    input  logic [NUM_SLAVES-1:0]                   s_awready,
    output logic [NUM_SLAVES-1:0][ADDR_WIDTH-1:0]   s_awaddr,
    output logic [NUM_SLAVES-1:0][2:0]              s_awprot,

    output logic [NUM_SLAVES-1:0]                   s_wvalid,
    input  logic [NUM_SLAVES-1:0]                   s_wready,
    output logic [NUM_SLAVES-1:0][DATA_WIDTH-1:0]   s_wdata,
    output logic [NUM_SLAVES-1:0][DATA_WIDTH/8-1:0] s_wstrb,

    input  logic [NUM_SLAVES-1:0]                   s_bvalid,
    output logic [NUM_SLAVES-1:0]                   s_bready,
    input  logic [NUM_SLAVES-1:0][1:0]              s_bresp,

    output logic [NUM_SLAVES-1:0]                   s_arvalid,
    input  logic [NUM_SLAVES-1:0]                   s_arready,
    output logic [NUM_SLAVES-1:0][ADDR_WIDTH-1:0]   s_araddr,
    output logic [NUM_SLAVES-1:0][2:0]              s_arprot,

    input  logic [NUM_SLAVES-1:0]                   s_rvalid,
    output logic [NUM_SLAVES-1:0]                   s_rready,
    input  logic [NUM_SLAVES-1:0][DATA_WIDTH-1:0]   s_rdata,
    input  logic [NUM_SLAVES-1:0][1:0]              s_rresp
);

    // ============================================================
    // Address decode
    //   slave 0 : RAM     0x0000_0000 - 0x0000_0FFF
    //   slave 1 : GPIO0   0x4000_0000 - 0x4000_0FFF
    //   slave 2 : GPIO1   0x4000_1000 - 0x4000_1FFF
    //   slave 3 : GPIO2   0x4000_2000 - 0x4000_2FFF
    // ============================================================
    logic [NUM_SLAVES-1:0] aw_sel, ar_sel;

    always_comb begin
        aw_sel = '0;
        unique case (m_awaddr[31:12])
            20'h00000: aw_sel[0] = 1'b1;   // RAM
            20'h40000: aw_sel[1] = 1'b1;   // GPIO0
            20'h40001: aw_sel[2] = 1'b1;   // GPIO1
            20'h40002: aw_sel[3] = 1'b1;   // GPIO2
            default:   aw_sel[0] = 1'b1;   // fall back to RAM
        endcase
    end

    always_comb begin
        ar_sel = '0;
        unique case (m_araddr[31:12])
            20'h00000: ar_sel[0] = 1'b1;   // RAM
            20'h40000: ar_sel[1] = 1'b1;   // GPIO0
            20'h40001: ar_sel[2] = 1'b1;   // GPIO1
            20'h40002: ar_sel[3] = 1'b1;   // GPIO2
            default:   ar_sel[0] = 1'b1;   // fall back to RAM
        endcase
    end

    // ============================================================
    // Write address channel fanout
    // ============================================================
    always_comb begin
        for (int i = 0; i < NUM_SLAVES; i++) begin
            s_awvalid[i] = m_awvalid && aw_sel[i];
            s_awaddr[i]  = m_awaddr;
            s_awprot[i]  = m_awprot;
        end
    end

    // ============================================================
    // Write data channel fanout
    // ============================================================
    always_comb begin
        for (int i = 0; i < NUM_SLAVES; i++) begin
            s_wvalid[i] = m_wvalid && aw_sel[i];
            s_wdata[i]  = m_wdata;
            s_wstrb[i]  = m_wstrb;
        end
    end

    // ============================================================
    // Write response collection
    // ============================================================
    always_comb begin
        m_awready = 1'b0;
        m_wready  = 1'b0;
        m_bvalid  = 1'b0;
        m_bresp   = 2'b00;
        for (int i = 0; i < NUM_SLAVES; i++) begin
            if (aw_sel[i]) begin
                m_awready = s_awready[i];
                m_wready  = s_wready[i];
                m_bvalid  = s_bvalid[i];
                m_bresp   = s_bresp[i];
            end
        end
    end

    always_comb begin
        for (int i = 0; i < NUM_SLAVES; i++)
            s_bready[i] = m_bready && aw_sel[i];
    end

    // ============================================================
    // Read address channel fanout
    // ============================================================
    always_comb begin
        for (int i = 0; i < NUM_SLAVES; i++) begin
            s_arvalid[i] = m_arvalid && ar_sel[i];
            s_araddr[i]  = m_araddr;
            s_arprot[i]  = m_arprot;
        end
    end

    // ============================================================
    // Read response collection
    // ============================================================
    always_comb begin
        m_arready = 1'b0;
        m_rvalid  = 1'b0;
        m_rdata   = '0;
        m_rresp   = 2'b00;
        for (int i = 0; i < NUM_SLAVES; i++) begin
            if (ar_sel[i]) begin
                m_arready = s_arready[i];
                m_rvalid  = s_rvalid[i];
                m_rdata   = s_rdata[i];
                m_rresp   = s_rresp[i];
            end
        end
    end

    always_comb begin
        for (int i = 0; i < NUM_SLAVES; i++)
            s_rready[i] = m_rready && ar_sel[i];
    end

endmodule