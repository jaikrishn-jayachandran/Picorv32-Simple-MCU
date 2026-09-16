module gpio_bank #(
    parameter int unsigned ADDR_WIDTH = 32,
    parameter int unsigned DATA_WIDTH = 32
)(
    input  logic                        clk_i,
    input  logic                        rst_ni,

    // AXI4-Lite Slave Signals
    input  logic [ADDR_WIDTH-1:0]       s_axil_awaddr,
    input  logic                        s_axil_awvalid,
    output logic                        s_axil_awready,
    
    input  logic [DATA_WIDTH-1:0]       s_axil_wdata,
    input  logic [(DATA_WIDTH/8)-1:0]   s_axil_wstrb,
    input  logic                        s_axil_wvalid,
    output logic                        s_axil_wready,

    output logic [1:0]                  s_axil_bresp,
    output logic                        s_axil_bvalid,
    input  logic                        s_axil_bready,

    input  logic [ADDR_WIDTH-1:0]       s_axil_araddr,
    input  logic                        s_axil_arvalid,
    output logic                        s_axil_arready,

    output logic [DATA_WIDTH-1:0]       s_axil_rdata,
    output logic [1:0]                  s_axil_rresp,
    output logic                        s_axil_rvalid,
    input  logic                        s_axil_rready,

    // Physical Hardware Pins
    input  logic [31:0]                 gpio_in,
    output logic [31:0]                 gpio_out,
    output logic [31:0]                 gpio_dir

);

    logic   [31:0]  reg_data; // Drive to external gpio_out
    logic   [31:0]  reg_dir; // Driven to external gpio_dir

    assign  gpio_out = reg_data;
    assign  gpio_dir = reg_dir;
    assign  s_axil_bresp = 2'b00;
    assign  s_axil_rresp = 2'b00;

    logic aw_en;

    // Write logic
    always_ff @( posedge clk_i ) begin
        if(!rst_ni) begin
            s_axil_awready <= 1'b0;
            s_axil_wready <= 1'b0;
            s_axil_bvalid <= 1'b0;
            reg_data <= 32'h0;
            reg_dir <= 32'h0;
            aw_en <= 1'b1;
        end else begin
            // handshake and decode address
            if(!s_axil_awready && s_axil_wvalid && s_axil_awvalid && aw_en)begin
                s_axil_awready <= 1'b1;
                s_axil_wready <= 1'b1;
                aw_en <= 1'b0;

                // Decode using s_axil_awaddr[3:2] for word allignment
                case(s_axil_awaddr[3:2])
                    2'b00: begin // Offset 0x00: Write output data register
                        for(int i=0; i<4; i++)begin
                            if(s_axil_wstrb[i])begin
                                reg_data[i*8 +:8] <= s_axil_wdata[i*8+:8];
                            end

                        end
                    end
                    2'b01:begin //Offset 0x04: Write direction register
                        for(int i=0; i<4; i++)begin
                            if(s_axil_wstrb[i])begin
                                reg_dir[i*8 +: 8] <= s_axil_wdata[i*8+:8];
                            end
                        end
                    end
                endcase
            end else begin
                s_axil_awready <= 1'b0;
                s_axil_wready <= 1'b0;
            end

            // Write response handshake
            if(s_axil_awvalid && s_axil_wvalid && !s_axil_bvalid)begin
                s_axil_bvalid <= 1'b1;
            end else if(s_axil_bvalid && s_axil_bready)begin
                s_axil_bvalid <= 1'b0;
                aw_en <= 1'b1;
            end
        end
    end


    // Read logic
    always_ff @( posedge clk_i ) begin 
        if(!rst_ni)begin
            s_axil_arready <= 1'b0;
            s_axil_rvalid <= 1'b0;
            s_axil_rdata <= 32'h0;
        end else begin
            if(!s_axil_arready && s_axil_arvalid)begin
                s_axil_arready <= 1'b1;
                s_axil_rvalid <= 1'b1;

                case(s_axil_araddr[3:2])
                    2'b00: s_axil_rdata <= reg_data;
                    2'b01: s_axil_rdata <= reg_dir;
                    2'b10: s_axil_rdata <= gpio_in;
                    default: s_axil_rdata <= 32'h0;
                endcase
            end else begin
                s_axil_arready <= 1'b0;
            end

            if(s_axil_rvalid && s_axil_arready)begin
                s_axil_rvalid <=1'b0;
            end
        end
    end

endmodule