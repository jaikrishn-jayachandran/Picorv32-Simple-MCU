`timescale 1ns/1ps
module spi_master #(
    parameter int unsigned CLK_DIV = 8    // sclk = clk / (2*CLK_DIV)
)(
    input  logic       clk_i,
    input  logic       rst_ni,

    // Control (from boot_ctrl)
    input  logic       start,             // pulse to start one byte
    input  logic [7:0] tx_byte,
    output logic [7:0] rx_byte,
    output logic       done,              // pulse when byte complete
    input  logic       cs_n,              // chip select, driven by boot_ctrl

    // Physical SPI pins
    output logic       sclk,
    output logic       mosi,
    input  logic       miso
);
    logic [3:0] div_cnt;
    logic [3:0] bit_cnt;
    logic [7:0] tx_shift;
    logic [7:0] rx_shift;
    logic       sclk_r;
    logic       busy;

    always_ff @(posedge clk_i) begin
        if (!rst_ni) begin
            div_cnt <= '0;
            bit_cnt <= '0;
            sclk_r  <= 1'b0;
            busy    <= 1'b0;
            done    <= 1'b0;
            tx_shift <= '0;
            rx_shift <= '0;
        end else begin
            done <= 1'b0;

            if (start && !busy) begin
                tx_shift <= tx_byte;
                bit_cnt  <= 4'd8;
                div_cnt  <= '0;
                sclk_r   <= 1'b0;
                busy     <= 1'b1;
            end else if (busy) begin
                if (div_cnt == CLK_DIV - 1) begin
                    div_cnt <= '0;
                    sclk_r  <= ~sclk_r;

                    if (sclk_r == 1'b0) begin
                        // rising edge: master samples MISO
                        rx_shift <= {rx_shift[6:0], miso};
                    end else begin
                        // falling edge: master shifts out next bit
                        tx_shift <= {tx_shift[6:0], 1'b0};
                        bit_cnt  <= bit_cnt - 1'b1;
                        if (bit_cnt == 1) begin
                            busy <= 1'b0;
                            done <= 1'b1;
                        end
                    end
                end else begin
                    div_cnt <= div_cnt + 1'b1;
                end
            end
        end
    end

    assign sclk    = sclk_r;
    assign mosi    = tx_shift[7];
    assign rx_byte = rx_shift;
endmodule