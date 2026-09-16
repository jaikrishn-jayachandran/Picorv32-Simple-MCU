`timescale 1ns/1ps

module boot_spi_macro #(
    parameter int unsigned FIRMWARE_WORDS = 1024,
    parameter int unsigned ADDR_WIDTH = 32,
    parameter int unsigned DATA_WIDTH = 32,
    parameter int unsigned CLK_DIV = 8
) (
    input logic clk_i,
    input logic rst_ni,

    // Connection to CPU
    output logic cpu_rst_n,

    // Connection to RAM boot-write port
    output logic                  boot_we,
    output logic [ADDR_WIDTH-1:0] boot_addr,
    output logic [DATA_WIDTH-1:0] boot_wdata,

    // External SPI
    output logic spi_cs_n,
    output logic spi_sclk,
    output logic spi_mosi,
    input  logic  spi_miso,

    // Optional status
    output logic boot_done
);

    logic       spi_start;
    logic [7:0] spi_tx;
    logic [7:0] spi_rx;
    logic       spi_done;

    // =========================================================
    // Boot controller
    // =========================================================

    boot_ctrl #(
        .FIRMWARE_WORDS(FIRMWARE_WORDS)
    ) u_boot_ctrl (
        .clk_i(clk_i),
        .rst_ni(rst_ni),

        .spi_start(spi_start),
        .spi_tx(spi_tx),
        .spi_rx(spi_rx),
        .spi_done(spi_done),

        .spi_cs_n(spi_cs_n),

        .ram_b_we(boot_we),
        .ram_b_addr(boot_addr),
        .ram_b_wdata(boot_wdata),

        .cpu_rst_n(cpu_rst_n),

        .boot_done(boot_done)
    );

    // =========================================================
    // SPI master
    // =========================================================

    spi_master #(
        .CLK_DIV(CLK_DIV)
    ) u_spi (
        .clk_i(clk_i),
        .rst_ni(rst_ni),

        .start(spi_start),
        .tx_byte(spi_tx),
        .rx_byte(spi_rx),
        .done(spi_done),

        .cs_n(spi_cs_n),
        .sclk(spi_sclk),
        .mosi(spi_mosi),
        .miso(spi_miso)
    );

endmodule