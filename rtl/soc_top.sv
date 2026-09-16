`timescale 1ns/1ps

module soc_top #(
    parameter int unsigned NUM_SLAVES = 4,
    parameter int unsigned ADDR_WIDTH = 32,
    parameter int unsigned DATA_WIDTH = 32
)(
    input  logic        clk_i,
    input  logic        rst_ni,

    input  logic [31:0] gpio0_in,
    output logic [31:0] gpio0_out,
    output logic [31:0] gpio0_dir,

    input  logic [31:0] gpio1_in,
    output logic [31:0] gpio1_out,
    output logic [31:0] gpio1_dir,

    input  logic [31:0] gpio2_in,
    output logic [31:0] gpio2_out,
    output logic [31:0] gpio2_dir,

    output logic spi_cs_n,
    output logic spi_sclk,
    output logic spi_mosi,
    input  logic spi_miso
);

    // ==========================================================
    // CPU flat AXI4-Lite master signals
    // ==========================================================
    logic        cpu_awvalid, cpu_awready;
    logic [31:0] cpu_awaddr;
    logic [2:0]  cpu_awprot;

    logic        cpu_wvalid,  cpu_wready;
    logic [31:0] cpu_wdata;
    logic [3:0]  cpu_wstrb;

    logic        cpu_bvalid,  cpu_bready;
    logic [1:0]  cpu_bresp;

    logic        cpu_arvalid, cpu_arready;
    logic [31:0] cpu_araddr;
    logic [2:0]  cpu_arprot;

    logic        cpu_rvalid,  cpu_rready;
    logic [31:0] cpu_rdata;
    logic [1:0]  cpu_rresp;

    // ==========================================================
    // Interconnect slave port arrays
    // ==========================================================
    logic [NUM_SLAVES-1:0]                   s_awvalid, s_awready;
    logic [NUM_SLAVES-1:0][31:0]             s_awaddr;
    logic [NUM_SLAVES-1:0][2:0]              s_awprot;

    logic [NUM_SLAVES-1:0]                   s_wvalid, s_wready;
    logic [NUM_SLAVES-1:0][31:0]             s_wdata;
    logic [NUM_SLAVES-1:0][3:0]              s_wstrb;

    logic [NUM_SLAVES-1:0]                   s_bvalid, s_bready;
    logic [NUM_SLAVES-1:0][1:0]              s_bresp;

    logic [NUM_SLAVES-1:0]                   s_arvalid, s_arready;
    logic [NUM_SLAVES-1:0][31:0]             s_araddr;
    logic [NUM_SLAVES-1:0][2:0]              s_arprot;

    logic [NUM_SLAVES-1:0]                   s_rvalid, s_rready;
    logic [NUM_SLAVES-1:0][31:0]             s_rdata;
    logic [NUM_SLAVES-1:0][1:0]              s_rresp;




    logic        spi_start;
    logic [7:0]  spi_tx, spi_rx;
    logic        spi_done;
    logic        cpu_rst_n;
    logic        boot_we;
    logic [31:0] boot_addr, boot_wdata;


    boot_ctrl #(
        .FIRMWARE_WORDS (1024)
    ) u_boot_ctrl (
        .clk_i         (clk_i),
        .rst_ni        (rst_ni),
        .spi_start     (spi_start),
        .spi_tx        (spi_tx),
        .spi_rx        (spi_rx),
        .spi_done      (spi_done),
        .spi_cs_n      (spi_cs_n),
        .ram_b_we      (boot_we),
        .ram_b_addr    (boot_addr),
        .ram_b_wdata   (boot_wdata),
        .cpu_rst_n     (cpu_rst_n),
        .boot_done     ()
    );

    spi_master #(
        .CLK_DIV (8)
    ) u_spi (
        .clk_i  (clk_i),
        .rst_ni (rst_ni),
        .start  (spi_start),
        .tx_byte(spi_tx),
        .rx_byte(spi_rx),
        .done   (spi_done),
        .cs_n   (spi_cs_n),
        .sclk   (spi_sclk),
        .mosi   (spi_mosi),
        .miso   (spi_miso)
    );

    // ==========================================================
    // PicoRV32 with AXI4-Lite master
    // ==========================================================
    wire trap;

    picorv32_axi #(
        .ENABLE_COUNTERS (1),
        .BARREL_SHIFTER  (1),
        .COMPRESSED_ISA  (0),
        .PROGADDR_RESET  (32'h0000_0000),
        .STACKADDR       (32'h0000_1000)
    ) i_cpu (
        .clk             (clk_i),
        .resetn          (cpu_rst_n),
        .trap            (trap),

        .mem_axi_awvalid (cpu_awvalid),
        .mem_axi_awready (cpu_awready),
        .mem_axi_awaddr  (cpu_awaddr),
        .mem_axi_awprot  (cpu_awprot),

        .mem_axi_wvalid  (cpu_wvalid),
        .mem_axi_wready  (cpu_wready),
        .mem_axi_wdata   (cpu_wdata),
        .mem_axi_wstrb   (cpu_wstrb),

        .mem_axi_bvalid  (cpu_bvalid),
        .mem_axi_bready  (cpu_bready),

        .mem_axi_arvalid (cpu_arvalid),
        .mem_axi_arready (cpu_arready),
        .mem_axi_araddr  (cpu_araddr),
        .mem_axi_arprot  (cpu_arprot),

        .mem_axi_rvalid  (cpu_rvalid),
        .mem_axi_rready  (cpu_rready),
        .mem_axi_rdata   (cpu_rdata)
    );

    // ==========================================================
    // Interconnect
    // ==========================================================
    axil_interconnect #(
        .NUM_SLAVES (NUM_SLAVES),
        .ADDR_WIDTH (ADDR_WIDTH),
        .DATA_WIDTH (DATA_WIDTH)
    ) i_ic (
        .clk_i (clk_i),
        .rst_ni(rst_ni),

        // Master
        .m_awvalid (cpu_awvalid),
        .m_awready (cpu_awready),
        .m_awaddr  (cpu_awaddr),
        .m_awprot  (cpu_awprot),

        .m_wvalid  (cpu_wvalid),
        .m_wready  (cpu_wready),
        .m_wdata   (cpu_wdata),
        .m_wstrb   (cpu_wstrb),

        .m_bvalid  (cpu_bvalid),
        .m_bready  (cpu_bready),
        .m_bresp   (cpu_bresp),

        .m_arvalid (cpu_arvalid),
        .m_arready (cpu_arready),
        .m_araddr  (cpu_araddr),
        .m_arprot  (cpu_arprot),

        .m_rvalid  (cpu_rvalid),
        .m_rready  (cpu_rready),
        .m_rdata   (cpu_rdata),
        .m_rresp   (cpu_rresp),

        // Slaves
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

    // ==========================================================
    // Slave 0: RAM @ 0x0000_0000
    // ==========================================================
    axil_ram_sim #(
        .AW          (ADDR_WIDTH),
        .DW          (DATA_WIDTH),
        .DEPTH_WORDS (1024),
        .INIT_FILE   ("firmware.hex")
    ) i_ram (
        .clk_i          (clk_i),
        .rst_ni         (rst_ni),

        .s_axil_awaddr  (s_awaddr[0]),
        .s_axil_awvalid (s_awvalid[0]),
        .s_axil_awready (s_awready[0]),

        .s_axil_wdata   (s_wdata[0]),
        .s_axil_wstrb   (s_wstrb[0]),
        .s_axil_wvalid  (s_wvalid[0]),
        .s_axil_wready  (s_wready[0]),

        .s_axil_bresp   (s_bresp[0]),
        .s_axil_bvalid  (s_bvalid[0]),
        .s_axil_bready  (s_bready[0]),

        .s_axil_araddr  (s_araddr[0]),
        .s_axil_arvalid (s_arvalid[0]),
        .s_axil_arready (s_arready[0]),

        .s_axil_rdata   (s_rdata[0]),
        .s_axil_rresp   (s_rresp[0]),
        .s_axil_rvalid  (s_rvalid[0]),
        .s_axil_rready  (s_rready[0]),

        .boot_we    (boot_we),
        .boot_addr  (boot_addr),
        .boot_wdata (boot_wdata)
    );

    // ==========================================================
    // Slave 1: GPIO0 @ 0x4000_0000
    // ==========================================================
    gpio_bank #(
        .ADDR_WIDTH (ADDR_WIDTH),
        .DATA_WIDTH (DATA_WIDTH)
    ) i_gpio0 (
        .clk_i          (clk_i),
        .rst_ni         (rst_ni),

        .s_axil_awaddr  (s_awaddr[1]),
        .s_axil_awvalid (s_awvalid[1]),
        .s_axil_awready (s_awready[1]),

        .s_axil_wdata   (s_wdata[1]),
        .s_axil_wstrb   (s_wstrb[1]),
        .s_axil_wvalid  (s_wvalid[1]),
        .s_axil_wready  (s_wready[1]),

        .s_axil_bresp   (s_bresp[1]),
        .s_axil_bvalid  (s_bvalid[1]),
        .s_axil_bready  (s_bready[1]),

        .s_axil_araddr  (s_araddr[1]),
        .s_axil_arvalid (s_arvalid[1]),
        .s_axil_arready (s_arready[1]),

        .s_axil_rdata   (s_rdata[1]),
        .s_axil_rresp   (s_rresp[1]),
        .s_axil_rvalid  (s_rvalid[1]),
        .s_axil_rready  (s_rready[1]),

        .gpio_in        (gpio0_in),
        .gpio_out       (gpio0_out),
        .gpio_dir       (gpio0_dir)
    );

    // ==========================================================
    // Slave 2: GPIO1 @ 0x4000_1000
    // ==========================================================
    gpio_bank #(
        .ADDR_WIDTH (ADDR_WIDTH),
        .DATA_WIDTH (DATA_WIDTH)
    ) i_gpio1 (
        .clk_i          (clk_i),
        .rst_ni         (rst_ni),

        .s_axil_awaddr  (s_awaddr[2]),
        .s_axil_awvalid (s_awvalid[2]),
        .s_axil_awready (s_awready[2]),

        .s_axil_wdata   (s_wdata[2]),
        .s_axil_wstrb   (s_wstrb[2]),
        .s_axil_wvalid  (s_wvalid[2]),
        .s_axil_wready  (s_wready[2]),

        .s_axil_bresp   (s_bresp[2]),
        .s_axil_bvalid  (s_bvalid[2]),
        .s_axil_bready  (s_bready[2]),

        .s_axil_araddr  (s_araddr[2]),
        .s_axil_arvalid (s_arvalid[2]),
        .s_axil_arready (s_arready[2]),

        .s_axil_rdata   (s_rdata[2]),
        .s_axil_rresp   (s_rresp[2]),
        .s_axil_rvalid  (s_rvalid[2]),
        .s_axil_rready  (s_rready[2]),

        .gpio_in        (gpio1_in),
        .gpio_out       (gpio1_out),
        .gpio_dir       (gpio1_dir)
    );

    // ==========================================================
    // Slave 3: GPIO2 @ 0x4000_2000
    // ==========================================================
    gpio_bank #(
        .ADDR_WIDTH (ADDR_WIDTH),
        .DATA_WIDTH (DATA_WIDTH)
    ) i_gpio2 (
        .clk_i          (clk_i),
        .rst_ni         (rst_ni),

        .s_axil_awaddr  (s_awaddr[3]),
        .s_axil_awvalid (s_awvalid[3]),
        .s_axil_awready (s_awready[3]),

        .s_axil_wdata   (s_wdata[3]),
        .s_axil_wstrb   (s_wstrb[3]),
        .s_axil_wvalid  (s_wvalid[3]),
        .s_axil_wready  (s_wready[3]),

        .s_axil_bresp   (s_bresp[3]),
        .s_axil_bvalid  (s_bvalid[3]),
        .s_axil_bready  (s_bready[3]),

        .s_axil_araddr  (s_araddr[3]),
        .s_axil_arvalid (s_arvalid[3]),
        .s_axil_arready (s_arready[3]),

        .s_axil_rdata   (s_rdata[3]),
        .s_axil_rresp   (s_rresp[3]),
        .s_axil_rvalid  (s_rvalid[3]),
        .s_axil_rready  (s_rready[3]),

        .gpio_in        (gpio2_in),
        .gpio_out       (gpio2_out),
        .gpio_dir       (gpio2_dir)
    );

endmodule