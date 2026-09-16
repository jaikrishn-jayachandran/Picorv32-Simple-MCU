`timescale 1ns/1ps
module boot_ctrl #(
    parameter int unsigned FIRMWARE_WORDS = 1024
)(
    input  logic        clk_i,
    input  logic        rst_ni,

    // To SPI master
    output logic        spi_start,
    output logic [7:0]  spi_tx,
    input  logic [7:0]  spi_rx,
    input  logic        spi_done,
    output logic        spi_cs_n,

    // To RAM write port B
    output logic        ram_b_we,
    output logic [31:0] ram_b_addr,
    output logic [31:0] ram_b_wdata,

    // To CPU reset
    output logic        cpu_rst_n,
    output logic        boot_done
);

`ifndef SYNTHESIS
    // ------------------------------------------------------------
    // SIMULATION: pass-through. RAM is filled by $readmemh.
    // ------------------------------------------------------------
    assign cpu_rst_n    = rst_ni;
    assign boot_done    = 1'b1;
    assign spi_cs_n     = 1'b1;
    assign spi_start    = 1'b0;
    assign spi_tx       = 8'h00;
    assign ram_b_we     = 1'b0;
    assign ram_b_addr   = 32'h0;
    assign ram_b_wdata  = 32'h0;
`else
    // ------------------------------------------------------------
    // SILICON: full SPI bootloader FSM
    // ------------------------------------------------------------
    typedef enum logic [3:0] {
        S_IDLE, S_CS_LOW,
        S_SEND_CMD, S_SEND_ADDR_H, S_SEND_ADDR_M, S_SEND_ADDR_L,
        S_READ_BYTE, S_WRITE_RAM, S_NEXT_WORD, S_DONE
    } state_t;

    state_t state, next;

    logic [31:0] word_cnt;
    logic [1:0]  byte_cnt;
    logic [31:0] word_asm;

    logic        spi_start_q;
    logic [7:0]  spi_tx_q;
    logic        ram_b_we_q;
    logic [31:0] ram_b_addr_q;
    logic [31:0] ram_b_wdata_q;
    logic        spi_cs_n_q;
    logic        cpu_rst_n_q;

    // Single always_ff block drives ALL registers (state, counters,
    // word_asm, and the output pipeline). No signal is assigned from
    // any other block, so Yosys infers one flip-flop per bit.
    always_ff @(posedge clk_i) begin
        if (!rst_ni) begin
            state         <= S_IDLE;
            word_cnt      <= '0;
            byte_cnt      <= '0;
            word_asm      <= '0;
            spi_start_q   <= 1'b0;
            spi_tx_q      <= '0;
            ram_b_we_q    <= 1'b0;
            ram_b_addr_q  <= '0;
            ram_b_wdata_q <= '0;
            spi_cs_n_q    <= 1'b1;
            cpu_rst_n_q   <= 1'b0;
        end else begin
            state <= next;

            // Defaults (pulsed signals)
            spi_start_q <= 1'b0;
            ram_b_we_q  <= 1'b0;

            case (state)
                S_IDLE: begin
                    cpu_rst_n_q <= 1'b0;
                    spi_cs_n_q  <= 1'b0;    // assert CS
                    word_cnt    <= '0;
                    byte_cnt    <= '0;
                end

                S_SEND_CMD: begin
                    spi_tx_q    <= 8'h03;   // READ command
                    spi_start_q <= 1'b1;
                end

                S_SEND_ADDR_H: begin
                    spi_tx_q    <= 8'h00;
                    spi_start_q <= 1'b1;
                end

                S_SEND_ADDR_M: begin
                    spi_tx_q    <= 8'h00;
                    spi_start_q <= 1'b1;
                end

                S_SEND_ADDR_L: begin
                    spi_tx_q    <= 8'h00;
                    spi_start_q <= 1'b1;
                end

                S_READ_BYTE: begin
                    spi_tx_q    <= 8'h00;
                    spi_start_q <= 1'b1;
                    if (spi_done) begin
                        word_asm <= {word_asm[23:0], spi_rx};
                        byte_cnt <= byte_cnt + 1'b1;
                    end
                end

                S_WRITE_RAM: begin
                    ram_b_addr_q  <= word_cnt << 2;
                    ram_b_wdata_q <= word_asm;
                    ram_b_we_q    <= 1'b1;
                    word_cnt      <= word_cnt + 1'b1;
                    byte_cnt      <= '0;
                end

                S_NEXT_WORD: begin
                    if (word_cnt == FIRMWARE_WORDS - 1) begin
                        spi_cs_n_q <= 1'b1;   // deassert CS
                    end
                end

                S_DONE: begin
                    cpu_rst_n_q <= 1'b1;      // release CPU!
                end
            endcase
        end
    end

    // Next state logic
    always_comb begin
        next = state;
        case (state)
            S_IDLE:        next = S_CS_LOW;
            S_CS_LOW:      next = S_SEND_CMD;
            S_SEND_CMD:    if (spi_done) next = S_SEND_ADDR_H;
            S_SEND_ADDR_H: if (spi_done) next = S_SEND_ADDR_M;
            S_SEND_ADDR_M: if (spi_done) next = S_SEND_ADDR_L;
            S_SEND_ADDR_L: if (spi_done) next = S_READ_BYTE;

            S_READ_BYTE: begin
                if (spi_done && byte_cnt == 2'd3) begin
                    next = S_WRITE_RAM;
                end else if (spi_done) begin
                    next = S_READ_BYTE;
                end
            end

            S_WRITE_RAM:   next = S_NEXT_WORD;
            S_NEXT_WORD: begin
                if (word_cnt == FIRMWARE_WORDS - 1) begin
                    next = S_DONE;
                end else begin
                    next = S_READ_BYTE;
                end
            end

            S_DONE:        next = S_DONE;
        endcase
    end

    assign spi_start   = spi_start_q;
    assign spi_tx      = spi_tx_q;
    assign ram_b_we    = ram_b_we_q;
    assign ram_b_addr  = ram_b_addr_q;
    assign ram_b_wdata = ram_b_wdata_q;
    assign spi_cs_n    = spi_cs_n_q;
    assign cpu_rst_n   = cpu_rst_n_q;
    assign boot_done   = (state == S_DONE);
`endif

endmodule