module soc_top (clk_i,
    rst_ni,
    spi_cs_n,
    spi_miso,
    spi_mosi,
    spi_sclk,
    gpio0_dir,
    gpio0_in,
    gpio0_out,
    gpio1_dir,
    gpio1_in,
    gpio1_out,
    gpio2_dir,
    gpio2_in,
    gpio2_out);
 input clk_i;
 input rst_ni;
 output spi_cs_n;
 input spi_miso;
 output spi_mosi;
 output spi_sclk;
 output [31:0] gpio0_dir;
 input [31:0] gpio0_in;
 output [31:0] gpio0_out;
 output [31:0] gpio1_dir;
 input [31:0] gpio1_in;
 output [31:0] gpio1_out;
 output [31:0] gpio2_dir;
 input [31:0] gpio2_in;
 output [31:0] gpio2_out;

 wire \boot_addr[0] ;
 wire \boot_addr[10] ;
 wire \boot_addr[11] ;
 wire \boot_addr[12] ;
 wire \boot_addr[13] ;
 wire \boot_addr[14] ;
 wire \boot_addr[15] ;
 wire \boot_addr[16] ;
 wire \boot_addr[17] ;
 wire \boot_addr[18] ;
 wire \boot_addr[19] ;
 wire \boot_addr[1] ;
 wire \boot_addr[20] ;
 wire \boot_addr[21] ;
 wire \boot_addr[22] ;
 wire \boot_addr[23] ;
 wire \boot_addr[24] ;
 wire \boot_addr[25] ;
 wire \boot_addr[26] ;
 wire \boot_addr[27] ;
 wire \boot_addr[28] ;
 wire \boot_addr[29] ;
 wire \boot_addr[2] ;
 wire \boot_addr[30] ;
 wire \boot_addr[31] ;
 wire \boot_addr[3] ;
 wire \boot_addr[4] ;
 wire \boot_addr[5] ;
 wire \boot_addr[6] ;
 wire \boot_addr[7] ;
 wire \boot_addr[8] ;
 wire \boot_addr[9] ;
 wire boot_done;
 wire \boot_wdata[0] ;
 wire \boot_wdata[10] ;
 wire \boot_wdata[11] ;
 wire \boot_wdata[12] ;
 wire \boot_wdata[13] ;
 wire \boot_wdata[14] ;
 wire \boot_wdata[15] ;
 wire \boot_wdata[16] ;
 wire \boot_wdata[17] ;
 wire \boot_wdata[18] ;
 wire \boot_wdata[19] ;
 wire \boot_wdata[1] ;
 wire \boot_wdata[20] ;
 wire \boot_wdata[21] ;
 wire \boot_wdata[22] ;
 wire \boot_wdata[23] ;
 wire \boot_wdata[24] ;
 wire \boot_wdata[25] ;
 wire \boot_wdata[26] ;
 wire \boot_wdata[27] ;
 wire \boot_wdata[28] ;
 wire \boot_wdata[29] ;
 wire \boot_wdata[2] ;
 wire \boot_wdata[30] ;
 wire \boot_wdata[31] ;
 wire \boot_wdata[3] ;
 wire \boot_wdata[4] ;
 wire \boot_wdata[5] ;
 wire \boot_wdata[6] ;
 wire \boot_wdata[7] ;
 wire \boot_wdata[8] ;
 wire \boot_wdata[9] ;
 wire boot_we;
 wire \cpu_araddr[0] ;
 wire \cpu_araddr[10] ;
 wire \cpu_araddr[11] ;
 wire \cpu_araddr[12] ;
 wire \cpu_araddr[13] ;
 wire \cpu_araddr[14] ;
 wire \cpu_araddr[15] ;
 wire \cpu_araddr[16] ;
 wire \cpu_araddr[17] ;
 wire \cpu_araddr[18] ;
 wire \cpu_araddr[19] ;
 wire \cpu_araddr[1] ;
 wire \cpu_araddr[20] ;
 wire \cpu_araddr[21] ;
 wire \cpu_araddr[22] ;
 wire \cpu_araddr[23] ;
 wire \cpu_araddr[24] ;
 wire \cpu_araddr[25] ;
 wire \cpu_araddr[26] ;
 wire \cpu_araddr[27] ;
 wire \cpu_araddr[28] ;
 wire \cpu_araddr[29] ;
 wire \cpu_araddr[2] ;
 wire \cpu_araddr[30] ;
 wire \cpu_araddr[31] ;
 wire \cpu_araddr[3] ;
 wire \cpu_araddr[4] ;
 wire \cpu_araddr[5] ;
 wire \cpu_araddr[6] ;
 wire \cpu_araddr[7] ;
 wire \cpu_araddr[8] ;
 wire \cpu_araddr[9] ;
 wire \cpu_arprot[0] ;
 wire \cpu_arprot[1] ;
 wire \cpu_arprot[2] ;
 wire cpu_arready;
 wire cpu_arvalid;
 wire \cpu_awaddr[0] ;
 wire \cpu_awaddr[10] ;
 wire \cpu_awaddr[11] ;
 wire \cpu_awaddr[12] ;
 wire \cpu_awaddr[13] ;
 wire \cpu_awaddr[14] ;
 wire \cpu_awaddr[15] ;
 wire \cpu_awaddr[16] ;
 wire \cpu_awaddr[17] ;
 wire \cpu_awaddr[18] ;
 wire \cpu_awaddr[19] ;
 wire \cpu_awaddr[1] ;
 wire \cpu_awaddr[20] ;
 wire \cpu_awaddr[21] ;
 wire \cpu_awaddr[22] ;
 wire \cpu_awaddr[23] ;
 wire \cpu_awaddr[24] ;
 wire \cpu_awaddr[25] ;
 wire \cpu_awaddr[26] ;
 wire \cpu_awaddr[27] ;
 wire \cpu_awaddr[28] ;
 wire \cpu_awaddr[29] ;
 wire \cpu_awaddr[2] ;
 wire \cpu_awaddr[30] ;
 wire \cpu_awaddr[31] ;
 wire \cpu_awaddr[3] ;
 wire \cpu_awaddr[4] ;
 wire \cpu_awaddr[5] ;
 wire \cpu_awaddr[6] ;
 wire \cpu_awaddr[7] ;
 wire \cpu_awaddr[8] ;
 wire \cpu_awaddr[9] ;
 wire \cpu_awprot[0] ;
 wire \cpu_awprot[1] ;
 wire \cpu_awprot[2] ;
 wire cpu_awready;
 wire cpu_awvalid;
 wire cpu_bready;
 wire \cpu_bresp[0] ;
 wire \cpu_bresp[1] ;
 wire cpu_bvalid;
 wire \cpu_rdata[0] ;
 wire \cpu_rdata[10] ;
 wire \cpu_rdata[11] ;
 wire \cpu_rdata[12] ;
 wire \cpu_rdata[13] ;
 wire \cpu_rdata[14] ;
 wire \cpu_rdata[15] ;
 wire \cpu_rdata[16] ;
 wire \cpu_rdata[17] ;
 wire \cpu_rdata[18] ;
 wire \cpu_rdata[19] ;
 wire \cpu_rdata[1] ;
 wire \cpu_rdata[20] ;
 wire \cpu_rdata[21] ;
 wire \cpu_rdata[22] ;
 wire \cpu_rdata[23] ;
 wire \cpu_rdata[24] ;
 wire \cpu_rdata[25] ;
 wire \cpu_rdata[26] ;
 wire \cpu_rdata[27] ;
 wire \cpu_rdata[28] ;
 wire \cpu_rdata[29] ;
 wire \cpu_rdata[2] ;
 wire \cpu_rdata[30] ;
 wire \cpu_rdata[31] ;
 wire \cpu_rdata[3] ;
 wire \cpu_rdata[4] ;
 wire \cpu_rdata[5] ;
 wire \cpu_rdata[6] ;
 wire \cpu_rdata[7] ;
 wire \cpu_rdata[8] ;
 wire \cpu_rdata[9] ;
 wire cpu_rready;
 wire \cpu_rresp[0] ;
 wire \cpu_rresp[1] ;
 wire cpu_rst_n;
 wire cpu_rvalid;
 wire \cpu_wdata[0] ;
 wire \cpu_wdata[10] ;
 wire \cpu_wdata[11] ;
 wire \cpu_wdata[12] ;
 wire \cpu_wdata[13] ;
 wire \cpu_wdata[14] ;
 wire \cpu_wdata[15] ;
 wire \cpu_wdata[16] ;
 wire \cpu_wdata[17] ;
 wire \cpu_wdata[18] ;
 wire \cpu_wdata[19] ;
 wire \cpu_wdata[1] ;
 wire \cpu_wdata[20] ;
 wire \cpu_wdata[21] ;
 wire \cpu_wdata[22] ;
 wire \cpu_wdata[23] ;
 wire \cpu_wdata[24] ;
 wire \cpu_wdata[25] ;
 wire \cpu_wdata[26] ;
 wire \cpu_wdata[27] ;
 wire \cpu_wdata[28] ;
 wire \cpu_wdata[29] ;
 wire \cpu_wdata[2] ;
 wire \cpu_wdata[30] ;
 wire \cpu_wdata[31] ;
 wire \cpu_wdata[3] ;
 wire \cpu_wdata[4] ;
 wire \cpu_wdata[5] ;
 wire \cpu_wdata[6] ;
 wire \cpu_wdata[7] ;
 wire \cpu_wdata[8] ;
 wire \cpu_wdata[9] ;
 wire cpu_wready;
 wire \cpu_wstrb[0] ;
 wire \cpu_wstrb[1] ;
 wire \cpu_wstrb[2] ;
 wire \cpu_wstrb[3] ;
 wire cpu_wvalid;
 wire \s_araddr[0] ;
 wire \s_araddr[100] ;
 wire \s_araddr[101] ;
 wire \s_araddr[102] ;
 wire \s_araddr[103] ;
 wire \s_araddr[104] ;
 wire \s_araddr[105] ;
 wire \s_araddr[106] ;
 wire \s_araddr[107] ;
 wire \s_araddr[108] ;
 wire \s_araddr[109] ;
 wire \s_araddr[10] ;
 wire \s_araddr[110] ;
 wire \s_araddr[111] ;
 wire \s_araddr[112] ;
 wire \s_araddr[113] ;
 wire \s_araddr[114] ;
 wire \s_araddr[115] ;
 wire \s_araddr[116] ;
 wire \s_araddr[117] ;
 wire \s_araddr[118] ;
 wire \s_araddr[119] ;
 wire \s_araddr[11] ;
 wire \s_araddr[120] ;
 wire \s_araddr[121] ;
 wire \s_araddr[122] ;
 wire \s_araddr[123] ;
 wire \s_araddr[124] ;
 wire \s_araddr[125] ;
 wire \s_araddr[126] ;
 wire \s_araddr[127] ;
 wire \s_araddr[12] ;
 wire \s_araddr[13] ;
 wire \s_araddr[14] ;
 wire \s_araddr[15] ;
 wire \s_araddr[16] ;
 wire \s_araddr[17] ;
 wire \s_araddr[18] ;
 wire \s_araddr[19] ;
 wire \s_araddr[1] ;
 wire \s_araddr[20] ;
 wire \s_araddr[21] ;
 wire \s_araddr[22] ;
 wire \s_araddr[23] ;
 wire \s_araddr[24] ;
 wire \s_araddr[25] ;
 wire \s_araddr[26] ;
 wire \s_araddr[27] ;
 wire \s_araddr[28] ;
 wire \s_araddr[29] ;
 wire \s_araddr[2] ;
 wire \s_araddr[30] ;
 wire \s_araddr[31] ;
 wire \s_araddr[32] ;
 wire \s_araddr[33] ;
 wire \s_araddr[34] ;
 wire \s_araddr[35] ;
 wire \s_araddr[36] ;
 wire \s_araddr[37] ;
 wire \s_araddr[38] ;
 wire \s_araddr[39] ;
 wire \s_araddr[3] ;
 wire \s_araddr[40] ;
 wire \s_araddr[41] ;
 wire \s_araddr[42] ;
 wire \s_araddr[43] ;
 wire \s_araddr[44] ;
 wire \s_araddr[45] ;
 wire \s_araddr[46] ;
 wire \s_araddr[47] ;
 wire \s_araddr[48] ;
 wire \s_araddr[49] ;
 wire \s_araddr[4] ;
 wire \s_araddr[50] ;
 wire \s_araddr[51] ;
 wire \s_araddr[52] ;
 wire \s_araddr[53] ;
 wire \s_araddr[54] ;
 wire \s_araddr[55] ;
 wire \s_araddr[56] ;
 wire \s_araddr[57] ;
 wire \s_araddr[58] ;
 wire \s_araddr[59] ;
 wire \s_araddr[5] ;
 wire \s_araddr[60] ;
 wire \s_araddr[61] ;
 wire \s_araddr[62] ;
 wire \s_araddr[63] ;
 wire \s_araddr[64] ;
 wire \s_araddr[65] ;
 wire \s_araddr[66] ;
 wire \s_araddr[67] ;
 wire \s_araddr[68] ;
 wire \s_araddr[69] ;
 wire \s_araddr[6] ;
 wire \s_araddr[70] ;
 wire \s_araddr[71] ;
 wire \s_araddr[72] ;
 wire \s_araddr[73] ;
 wire \s_araddr[74] ;
 wire \s_araddr[75] ;
 wire \s_araddr[76] ;
 wire \s_araddr[77] ;
 wire \s_araddr[78] ;
 wire \s_araddr[79] ;
 wire \s_araddr[7] ;
 wire \s_araddr[80] ;
 wire \s_araddr[81] ;
 wire \s_araddr[82] ;
 wire \s_araddr[83] ;
 wire \s_araddr[84] ;
 wire \s_araddr[85] ;
 wire \s_araddr[86] ;
 wire \s_araddr[87] ;
 wire \s_araddr[88] ;
 wire \s_araddr[89] ;
 wire \s_araddr[8] ;
 wire \s_araddr[90] ;
 wire \s_araddr[91] ;
 wire \s_araddr[92] ;
 wire \s_araddr[93] ;
 wire \s_araddr[94] ;
 wire \s_araddr[95] ;
 wire \s_araddr[96] ;
 wire \s_araddr[97] ;
 wire \s_araddr[98] ;
 wire \s_araddr[99] ;
 wire \s_araddr[9] ;
 wire \s_arprot[0] ;
 wire \s_arprot[10] ;
 wire \s_arprot[11] ;
 wire \s_arprot[1] ;
 wire \s_arprot[2] ;
 wire \s_arprot[3] ;
 wire \s_arprot[4] ;
 wire \s_arprot[5] ;
 wire \s_arprot[6] ;
 wire \s_arprot[7] ;
 wire \s_arprot[8] ;
 wire \s_arprot[9] ;
 wire \s_arready[0] ;
 wire \s_arready[1] ;
 wire \s_arready[2] ;
 wire \s_arready[3] ;
 wire \s_arvalid[0] ;
 wire \s_arvalid[1] ;
 wire \s_arvalid[2] ;
 wire \s_arvalid[3] ;
 wire \s_awaddr[0] ;
 wire \s_awaddr[100] ;
 wire \s_awaddr[101] ;
 wire \s_awaddr[102] ;
 wire \s_awaddr[103] ;
 wire \s_awaddr[104] ;
 wire \s_awaddr[105] ;
 wire \s_awaddr[106] ;
 wire \s_awaddr[107] ;
 wire \s_awaddr[108] ;
 wire \s_awaddr[109] ;
 wire \s_awaddr[10] ;
 wire \s_awaddr[110] ;
 wire \s_awaddr[111] ;
 wire \s_awaddr[112] ;
 wire \s_awaddr[113] ;
 wire \s_awaddr[114] ;
 wire \s_awaddr[115] ;
 wire \s_awaddr[116] ;
 wire \s_awaddr[117] ;
 wire \s_awaddr[118] ;
 wire \s_awaddr[119] ;
 wire \s_awaddr[11] ;
 wire \s_awaddr[120] ;
 wire \s_awaddr[121] ;
 wire \s_awaddr[122] ;
 wire \s_awaddr[123] ;
 wire \s_awaddr[124] ;
 wire \s_awaddr[125] ;
 wire \s_awaddr[126] ;
 wire \s_awaddr[127] ;
 wire \s_awaddr[12] ;
 wire \s_awaddr[13] ;
 wire \s_awaddr[14] ;
 wire \s_awaddr[15] ;
 wire \s_awaddr[16] ;
 wire \s_awaddr[17] ;
 wire \s_awaddr[18] ;
 wire \s_awaddr[19] ;
 wire \s_awaddr[1] ;
 wire \s_awaddr[20] ;
 wire \s_awaddr[21] ;
 wire \s_awaddr[22] ;
 wire \s_awaddr[23] ;
 wire \s_awaddr[24] ;
 wire \s_awaddr[25] ;
 wire \s_awaddr[26] ;
 wire \s_awaddr[27] ;
 wire \s_awaddr[28] ;
 wire \s_awaddr[29] ;
 wire \s_awaddr[2] ;
 wire \s_awaddr[30] ;
 wire \s_awaddr[31] ;
 wire \s_awaddr[32] ;
 wire \s_awaddr[33] ;
 wire \s_awaddr[34] ;
 wire \s_awaddr[35] ;
 wire \s_awaddr[36] ;
 wire \s_awaddr[37] ;
 wire \s_awaddr[38] ;
 wire \s_awaddr[39] ;
 wire \s_awaddr[3] ;
 wire \s_awaddr[40] ;
 wire \s_awaddr[41] ;
 wire \s_awaddr[42] ;
 wire \s_awaddr[43] ;
 wire \s_awaddr[44] ;
 wire \s_awaddr[45] ;
 wire \s_awaddr[46] ;
 wire \s_awaddr[47] ;
 wire \s_awaddr[48] ;
 wire \s_awaddr[49] ;
 wire \s_awaddr[4] ;
 wire \s_awaddr[50] ;
 wire \s_awaddr[51] ;
 wire \s_awaddr[52] ;
 wire \s_awaddr[53] ;
 wire \s_awaddr[54] ;
 wire \s_awaddr[55] ;
 wire \s_awaddr[56] ;
 wire \s_awaddr[57] ;
 wire \s_awaddr[58] ;
 wire \s_awaddr[59] ;
 wire \s_awaddr[5] ;
 wire \s_awaddr[60] ;
 wire \s_awaddr[61] ;
 wire \s_awaddr[62] ;
 wire \s_awaddr[63] ;
 wire \s_awaddr[64] ;
 wire \s_awaddr[65] ;
 wire \s_awaddr[66] ;
 wire \s_awaddr[67] ;
 wire \s_awaddr[68] ;
 wire \s_awaddr[69] ;
 wire \s_awaddr[6] ;
 wire \s_awaddr[70] ;
 wire \s_awaddr[71] ;
 wire \s_awaddr[72] ;
 wire \s_awaddr[73] ;
 wire \s_awaddr[74] ;
 wire \s_awaddr[75] ;
 wire \s_awaddr[76] ;
 wire \s_awaddr[77] ;
 wire \s_awaddr[78] ;
 wire \s_awaddr[79] ;
 wire \s_awaddr[7] ;
 wire \s_awaddr[80] ;
 wire \s_awaddr[81] ;
 wire \s_awaddr[82] ;
 wire \s_awaddr[83] ;
 wire \s_awaddr[84] ;
 wire \s_awaddr[85] ;
 wire \s_awaddr[86] ;
 wire \s_awaddr[87] ;
 wire \s_awaddr[88] ;
 wire \s_awaddr[89] ;
 wire \s_awaddr[8] ;
 wire \s_awaddr[90] ;
 wire \s_awaddr[91] ;
 wire \s_awaddr[92] ;
 wire \s_awaddr[93] ;
 wire \s_awaddr[94] ;
 wire \s_awaddr[95] ;
 wire \s_awaddr[96] ;
 wire \s_awaddr[97] ;
 wire \s_awaddr[98] ;
 wire \s_awaddr[99] ;
 wire \s_awaddr[9] ;
 wire \s_awprot[0] ;
 wire \s_awprot[10] ;
 wire \s_awprot[11] ;
 wire \s_awprot[1] ;
 wire \s_awprot[2] ;
 wire \s_awprot[3] ;
 wire \s_awprot[4] ;
 wire \s_awprot[5] ;
 wire \s_awprot[6] ;
 wire \s_awprot[7] ;
 wire \s_awprot[8] ;
 wire \s_awprot[9] ;
 wire \s_awready[0] ;
 wire \s_awready[1] ;
 wire \s_awready[2] ;
 wire \s_awready[3] ;
 wire \s_awvalid[0] ;
 wire \s_awvalid[1] ;
 wire \s_awvalid[2] ;
 wire \s_awvalid[3] ;
 wire \s_bready[0] ;
 wire \s_bready[1] ;
 wire \s_bready[2] ;
 wire \s_bready[3] ;
 wire \s_bresp[0] ;
 wire \s_bresp[1] ;
 wire \s_bresp[2] ;
 wire \s_bresp[3] ;
 wire \s_bresp[4] ;
 wire \s_bresp[5] ;
 wire \s_bresp[6] ;
 wire \s_bresp[7] ;
 wire \s_bvalid[0] ;
 wire \s_bvalid[1] ;
 wire \s_bvalid[2] ;
 wire \s_bvalid[3] ;
 wire \s_rdata[0] ;
 wire \s_rdata[100] ;
 wire \s_rdata[101] ;
 wire \s_rdata[102] ;
 wire \s_rdata[103] ;
 wire \s_rdata[104] ;
 wire \s_rdata[105] ;
 wire \s_rdata[106] ;
 wire \s_rdata[107] ;
 wire \s_rdata[108] ;
 wire \s_rdata[109] ;
 wire \s_rdata[10] ;
 wire \s_rdata[110] ;
 wire \s_rdata[111] ;
 wire \s_rdata[112] ;
 wire \s_rdata[113] ;
 wire \s_rdata[114] ;
 wire \s_rdata[115] ;
 wire \s_rdata[116] ;
 wire \s_rdata[117] ;
 wire \s_rdata[118] ;
 wire \s_rdata[119] ;
 wire \s_rdata[11] ;
 wire \s_rdata[120] ;
 wire \s_rdata[121] ;
 wire \s_rdata[122] ;
 wire \s_rdata[123] ;
 wire \s_rdata[124] ;
 wire \s_rdata[125] ;
 wire \s_rdata[126] ;
 wire \s_rdata[127] ;
 wire \s_rdata[12] ;
 wire \s_rdata[13] ;
 wire \s_rdata[14] ;
 wire \s_rdata[15] ;
 wire \s_rdata[16] ;
 wire \s_rdata[17] ;
 wire \s_rdata[18] ;
 wire \s_rdata[19] ;
 wire \s_rdata[1] ;
 wire \s_rdata[20] ;
 wire \s_rdata[21] ;
 wire \s_rdata[22] ;
 wire \s_rdata[23] ;
 wire \s_rdata[24] ;
 wire \s_rdata[25] ;
 wire \s_rdata[26] ;
 wire \s_rdata[27] ;
 wire \s_rdata[28] ;
 wire \s_rdata[29] ;
 wire \s_rdata[2] ;
 wire \s_rdata[30] ;
 wire \s_rdata[31] ;
 wire \s_rdata[32] ;
 wire \s_rdata[33] ;
 wire \s_rdata[34] ;
 wire \s_rdata[35] ;
 wire \s_rdata[36] ;
 wire \s_rdata[37] ;
 wire \s_rdata[38] ;
 wire \s_rdata[39] ;
 wire \s_rdata[3] ;
 wire \s_rdata[40] ;
 wire \s_rdata[41] ;
 wire \s_rdata[42] ;
 wire \s_rdata[43] ;
 wire \s_rdata[44] ;
 wire \s_rdata[45] ;
 wire \s_rdata[46] ;
 wire \s_rdata[47] ;
 wire \s_rdata[48] ;
 wire \s_rdata[49] ;
 wire \s_rdata[4] ;
 wire \s_rdata[50] ;
 wire \s_rdata[51] ;
 wire \s_rdata[52] ;
 wire \s_rdata[53] ;
 wire \s_rdata[54] ;
 wire \s_rdata[55] ;
 wire \s_rdata[56] ;
 wire \s_rdata[57] ;
 wire \s_rdata[58] ;
 wire \s_rdata[59] ;
 wire \s_rdata[5] ;
 wire \s_rdata[60] ;
 wire \s_rdata[61] ;
 wire \s_rdata[62] ;
 wire \s_rdata[63] ;
 wire \s_rdata[64] ;
 wire \s_rdata[65] ;
 wire \s_rdata[66] ;
 wire \s_rdata[67] ;
 wire \s_rdata[68] ;
 wire \s_rdata[69] ;
 wire \s_rdata[6] ;
 wire \s_rdata[70] ;
 wire \s_rdata[71] ;
 wire \s_rdata[72] ;
 wire \s_rdata[73] ;
 wire \s_rdata[74] ;
 wire \s_rdata[75] ;
 wire \s_rdata[76] ;
 wire \s_rdata[77] ;
 wire \s_rdata[78] ;
 wire \s_rdata[79] ;
 wire \s_rdata[7] ;
 wire \s_rdata[80] ;
 wire \s_rdata[81] ;
 wire \s_rdata[82] ;
 wire \s_rdata[83] ;
 wire \s_rdata[84] ;
 wire \s_rdata[85] ;
 wire \s_rdata[86] ;
 wire \s_rdata[87] ;
 wire \s_rdata[88] ;
 wire \s_rdata[89] ;
 wire \s_rdata[8] ;
 wire \s_rdata[90] ;
 wire \s_rdata[91] ;
 wire \s_rdata[92] ;
 wire \s_rdata[93] ;
 wire \s_rdata[94] ;
 wire \s_rdata[95] ;
 wire \s_rdata[96] ;
 wire \s_rdata[97] ;
 wire \s_rdata[98] ;
 wire \s_rdata[99] ;
 wire \s_rdata[9] ;
 wire \s_rready[0] ;
 wire \s_rready[1] ;
 wire \s_rready[2] ;
 wire \s_rready[3] ;
 wire \s_rresp[0] ;
 wire \s_rresp[1] ;
 wire \s_rresp[2] ;
 wire \s_rresp[3] ;
 wire \s_rresp[4] ;
 wire \s_rresp[5] ;
 wire \s_rresp[6] ;
 wire \s_rresp[7] ;
 wire \s_rvalid[0] ;
 wire \s_rvalid[1] ;
 wire \s_rvalid[2] ;
 wire \s_rvalid[3] ;
 wire \s_wdata[0] ;
 wire \s_wdata[100] ;
 wire \s_wdata[101] ;
 wire \s_wdata[102] ;
 wire \s_wdata[103] ;
 wire \s_wdata[104] ;
 wire \s_wdata[105] ;
 wire \s_wdata[106] ;
 wire \s_wdata[107] ;
 wire \s_wdata[108] ;
 wire \s_wdata[109] ;
 wire \s_wdata[10] ;
 wire \s_wdata[110] ;
 wire \s_wdata[111] ;
 wire \s_wdata[112] ;
 wire \s_wdata[113] ;
 wire \s_wdata[114] ;
 wire \s_wdata[115] ;
 wire \s_wdata[116] ;
 wire \s_wdata[117] ;
 wire \s_wdata[118] ;
 wire \s_wdata[119] ;
 wire \s_wdata[11] ;
 wire \s_wdata[120] ;
 wire \s_wdata[121] ;
 wire \s_wdata[122] ;
 wire \s_wdata[123] ;
 wire \s_wdata[124] ;
 wire \s_wdata[125] ;
 wire \s_wdata[126] ;
 wire \s_wdata[127] ;
 wire \s_wdata[12] ;
 wire \s_wdata[13] ;
 wire \s_wdata[14] ;
 wire \s_wdata[15] ;
 wire \s_wdata[16] ;
 wire \s_wdata[17] ;
 wire \s_wdata[18] ;
 wire \s_wdata[19] ;
 wire \s_wdata[1] ;
 wire \s_wdata[20] ;
 wire \s_wdata[21] ;
 wire \s_wdata[22] ;
 wire \s_wdata[23] ;
 wire \s_wdata[24] ;
 wire \s_wdata[25] ;
 wire \s_wdata[26] ;
 wire \s_wdata[27] ;
 wire \s_wdata[28] ;
 wire \s_wdata[29] ;
 wire \s_wdata[2] ;
 wire \s_wdata[30] ;
 wire \s_wdata[31] ;
 wire \s_wdata[32] ;
 wire \s_wdata[33] ;
 wire \s_wdata[34] ;
 wire \s_wdata[35] ;
 wire \s_wdata[36] ;
 wire \s_wdata[37] ;
 wire \s_wdata[38] ;
 wire \s_wdata[39] ;
 wire \s_wdata[3] ;
 wire \s_wdata[40] ;
 wire \s_wdata[41] ;
 wire \s_wdata[42] ;
 wire \s_wdata[43] ;
 wire \s_wdata[44] ;
 wire \s_wdata[45] ;
 wire \s_wdata[46] ;
 wire \s_wdata[47] ;
 wire \s_wdata[48] ;
 wire \s_wdata[49] ;
 wire \s_wdata[4] ;
 wire \s_wdata[50] ;
 wire \s_wdata[51] ;
 wire \s_wdata[52] ;
 wire \s_wdata[53] ;
 wire \s_wdata[54] ;
 wire \s_wdata[55] ;
 wire \s_wdata[56] ;
 wire \s_wdata[57] ;
 wire \s_wdata[58] ;
 wire \s_wdata[59] ;
 wire \s_wdata[5] ;
 wire \s_wdata[60] ;
 wire \s_wdata[61] ;
 wire \s_wdata[62] ;
 wire \s_wdata[63] ;
 wire \s_wdata[64] ;
 wire \s_wdata[65] ;
 wire \s_wdata[66] ;
 wire \s_wdata[67] ;
 wire \s_wdata[68] ;
 wire \s_wdata[69] ;
 wire \s_wdata[6] ;
 wire \s_wdata[70] ;
 wire \s_wdata[71] ;
 wire \s_wdata[72] ;
 wire \s_wdata[73] ;
 wire \s_wdata[74] ;
 wire \s_wdata[75] ;
 wire \s_wdata[76] ;
 wire \s_wdata[77] ;
 wire \s_wdata[78] ;
 wire \s_wdata[79] ;
 wire \s_wdata[7] ;
 wire \s_wdata[80] ;
 wire \s_wdata[81] ;
 wire \s_wdata[82] ;
 wire \s_wdata[83] ;
 wire \s_wdata[84] ;
 wire \s_wdata[85] ;
 wire \s_wdata[86] ;
 wire \s_wdata[87] ;
 wire \s_wdata[88] ;
 wire \s_wdata[89] ;
 wire \s_wdata[8] ;
 wire \s_wdata[90] ;
 wire \s_wdata[91] ;
 wire \s_wdata[92] ;
 wire \s_wdata[93] ;
 wire \s_wdata[94] ;
 wire \s_wdata[95] ;
 wire \s_wdata[96] ;
 wire \s_wdata[97] ;
 wire \s_wdata[98] ;
 wire \s_wdata[99] ;
 wire \s_wdata[9] ;
 wire \s_wready[0] ;
 wire \s_wready[1] ;
 wire \s_wready[2] ;
 wire \s_wready[3] ;
 wire \s_wstrb[0] ;
 wire \s_wstrb[10] ;
 wire \s_wstrb[11] ;
 wire \s_wstrb[12] ;
 wire \s_wstrb[13] ;
 wire \s_wstrb[14] ;
 wire \s_wstrb[15] ;
 wire \s_wstrb[1] ;
 wire \s_wstrb[2] ;
 wire \s_wstrb[3] ;
 wire \s_wstrb[4] ;
 wire \s_wstrb[5] ;
 wire \s_wstrb[6] ;
 wire \s_wstrb[7] ;
 wire \s_wstrb[8] ;
 wire \s_wstrb[9] ;
 wire \s_wvalid[0] ;
 wire \s_wvalid[1] ;
 wire \s_wvalid[2] ;
 wire \s_wvalid[3] ;
 wire trap;

 boot_spi_macro u_boot_spi (.boot_done(boot_done),
    .boot_we(boot_we),
    .clk_i(clk_i),
    .cpu_rst_n(cpu_rst_n),
    .rst_ni(rst_ni),
    .spi_cs_n(spi_cs_n),
    .spi_miso(spi_miso),
    .spi_mosi(spi_mosi),
    .spi_sclk(spi_sclk),
    .boot_addr({\boot_addr[31] ,
    \boot_addr[30] ,
    \boot_addr[29] ,
    \boot_addr[28] ,
    \boot_addr[27] ,
    \boot_addr[26] ,
    \boot_addr[25] ,
    \boot_addr[24] ,
    \boot_addr[23] ,
    \boot_addr[22] ,
    \boot_addr[21] ,
    \boot_addr[20] ,
    \boot_addr[19] ,
    \boot_addr[18] ,
    \boot_addr[17] ,
    \boot_addr[16] ,
    \boot_addr[15] ,
    \boot_addr[14] ,
    \boot_addr[13] ,
    \boot_addr[12] ,
    \boot_addr[11] ,
    \boot_addr[10] ,
    \boot_addr[9] ,
    \boot_addr[8] ,
    \boot_addr[7] ,
    \boot_addr[6] ,
    \boot_addr[5] ,
    \boot_addr[4] ,
    \boot_addr[3] ,
    \boot_addr[2] ,
    \boot_addr[1] ,
    \boot_addr[0] }),
    .boot_wdata({\boot_wdata[31] ,
    \boot_wdata[30] ,
    \boot_wdata[29] ,
    \boot_wdata[28] ,
    \boot_wdata[27] ,
    \boot_wdata[26] ,
    \boot_wdata[25] ,
    \boot_wdata[24] ,
    \boot_wdata[23] ,
    \boot_wdata[22] ,
    \boot_wdata[21] ,
    \boot_wdata[20] ,
    \boot_wdata[19] ,
    \boot_wdata[18] ,
    \boot_wdata[17] ,
    \boot_wdata[16] ,
    \boot_wdata[15] ,
    \boot_wdata[14] ,
    \boot_wdata[13] ,
    \boot_wdata[12] ,
    \boot_wdata[11] ,
    \boot_wdata[10] ,
    \boot_wdata[9] ,
    \boot_wdata[8] ,
    \boot_wdata[7] ,
    \boot_wdata[6] ,
    \boot_wdata[5] ,
    \boot_wdata[4] ,
    \boot_wdata[3] ,
    \boot_wdata[2] ,
    \boot_wdata[1] ,
    \boot_wdata[0] }));
 picorv32_macro u_cpu (.clk_i(clk_i),
    .mem_axi_arready(cpu_arready),
    .mem_axi_arvalid(cpu_arvalid),
    .mem_axi_awready(cpu_awready),
    .mem_axi_awvalid(cpu_awvalid),
    .mem_axi_bready(cpu_bready),
    .mem_axi_bvalid(cpu_bvalid),
    .mem_axi_rready(cpu_rready),
    .mem_axi_rvalid(cpu_rvalid),
    .mem_axi_wready(cpu_wready),
    .mem_axi_wvalid(cpu_wvalid),
    .rst_ni(cpu_rst_n),
    .trap(trap),
    .mem_axi_araddr({\cpu_araddr[31] ,
    \cpu_araddr[30] ,
    \cpu_araddr[29] ,
    \cpu_araddr[28] ,
    \cpu_araddr[27] ,
    \cpu_araddr[26] ,
    \cpu_araddr[25] ,
    \cpu_araddr[24] ,
    \cpu_araddr[23] ,
    \cpu_araddr[22] ,
    \cpu_araddr[21] ,
    \cpu_araddr[20] ,
    \cpu_araddr[19] ,
    \cpu_araddr[18] ,
    \cpu_araddr[17] ,
    \cpu_araddr[16] ,
    \cpu_araddr[15] ,
    \cpu_araddr[14] ,
    \cpu_araddr[13] ,
    \cpu_araddr[12] ,
    \cpu_araddr[11] ,
    \cpu_araddr[10] ,
    \cpu_araddr[9] ,
    \cpu_araddr[8] ,
    \cpu_araddr[7] ,
    \cpu_araddr[6] ,
    \cpu_araddr[5] ,
    \cpu_araddr[4] ,
    \cpu_araddr[3] ,
    \cpu_araddr[2] ,
    \cpu_araddr[1] ,
    \cpu_araddr[0] }),
    .mem_axi_arprot({\cpu_arprot[2] ,
    \cpu_arprot[1] ,
    \cpu_arprot[0] }),
    .mem_axi_awaddr({\cpu_awaddr[31] ,
    \cpu_awaddr[30] ,
    \cpu_awaddr[29] ,
    \cpu_awaddr[28] ,
    \cpu_awaddr[27] ,
    \cpu_awaddr[26] ,
    \cpu_awaddr[25] ,
    \cpu_awaddr[24] ,
    \cpu_awaddr[23] ,
    \cpu_awaddr[22] ,
    \cpu_awaddr[21] ,
    \cpu_awaddr[20] ,
    \cpu_awaddr[19] ,
    \cpu_awaddr[18] ,
    \cpu_awaddr[17] ,
    \cpu_awaddr[16] ,
    \cpu_awaddr[15] ,
    \cpu_awaddr[14] ,
    \cpu_awaddr[13] ,
    \cpu_awaddr[12] ,
    \cpu_awaddr[11] ,
    \cpu_awaddr[10] ,
    \cpu_awaddr[9] ,
    \cpu_awaddr[8] ,
    \cpu_awaddr[7] ,
    \cpu_awaddr[6] ,
    \cpu_awaddr[5] ,
    \cpu_awaddr[4] ,
    \cpu_awaddr[3] ,
    \cpu_awaddr[2] ,
    \cpu_awaddr[1] ,
    \cpu_awaddr[0] }),
    .mem_axi_awprot({\cpu_awprot[2] ,
    \cpu_awprot[1] ,
    \cpu_awprot[0] }),
    .mem_axi_rdata({\cpu_rdata[31] ,
    \cpu_rdata[30] ,
    \cpu_rdata[29] ,
    \cpu_rdata[28] ,
    \cpu_rdata[27] ,
    \cpu_rdata[26] ,
    \cpu_rdata[25] ,
    \cpu_rdata[24] ,
    \cpu_rdata[23] ,
    \cpu_rdata[22] ,
    \cpu_rdata[21] ,
    \cpu_rdata[20] ,
    \cpu_rdata[19] ,
    \cpu_rdata[18] ,
    \cpu_rdata[17] ,
    \cpu_rdata[16] ,
    \cpu_rdata[15] ,
    \cpu_rdata[14] ,
    \cpu_rdata[13] ,
    \cpu_rdata[12] ,
    \cpu_rdata[11] ,
    \cpu_rdata[10] ,
    \cpu_rdata[9] ,
    \cpu_rdata[8] ,
    \cpu_rdata[7] ,
    \cpu_rdata[6] ,
    \cpu_rdata[5] ,
    \cpu_rdata[4] ,
    \cpu_rdata[3] ,
    \cpu_rdata[2] ,
    \cpu_rdata[1] ,
    \cpu_rdata[0] }),
    .mem_axi_wdata({\cpu_wdata[31] ,
    \cpu_wdata[30] ,
    \cpu_wdata[29] ,
    \cpu_wdata[28] ,
    \cpu_wdata[27] ,
    \cpu_wdata[26] ,
    \cpu_wdata[25] ,
    \cpu_wdata[24] ,
    \cpu_wdata[23] ,
    \cpu_wdata[22] ,
    \cpu_wdata[21] ,
    \cpu_wdata[20] ,
    \cpu_wdata[19] ,
    \cpu_wdata[18] ,
    \cpu_wdata[17] ,
    \cpu_wdata[16] ,
    \cpu_wdata[15] ,
    \cpu_wdata[14] ,
    \cpu_wdata[13] ,
    \cpu_wdata[12] ,
    \cpu_wdata[11] ,
    \cpu_wdata[10] ,
    \cpu_wdata[9] ,
    \cpu_wdata[8] ,
    \cpu_wdata[7] ,
    \cpu_wdata[6] ,
    \cpu_wdata[5] ,
    \cpu_wdata[4] ,
    \cpu_wdata[3] ,
    \cpu_wdata[2] ,
    \cpu_wdata[1] ,
    \cpu_wdata[0] }),
    .mem_axi_wstrb({\cpu_wstrb[3] ,
    \cpu_wstrb[2] ,
    \cpu_wstrb[1] ,
    \cpu_wstrb[0] }));
 interconnect_macro u_ic (.clk_i(clk_i),
    .m_arready(cpu_arready),
    .m_arvalid(cpu_arvalid),
    .m_awready(cpu_awready),
    .m_awvalid(cpu_awvalid),
    .m_bready(cpu_bready),
    .m_bvalid(cpu_bvalid),
    .m_rready(cpu_rready),
    .m_rvalid(cpu_rvalid),
    .m_wready(cpu_wready),
    .m_wvalid(cpu_wvalid),
    .rst_ni(rst_ni),
    .m_araddr({\cpu_araddr[31] ,
    \cpu_araddr[30] ,
    \cpu_araddr[29] ,
    \cpu_araddr[28] ,
    \cpu_araddr[27] ,
    \cpu_araddr[26] ,
    \cpu_araddr[25] ,
    \cpu_araddr[24] ,
    \cpu_araddr[23] ,
    \cpu_araddr[22] ,
    \cpu_araddr[21] ,
    \cpu_araddr[20] ,
    \cpu_araddr[19] ,
    \cpu_araddr[18] ,
    \cpu_araddr[17] ,
    \cpu_araddr[16] ,
    \cpu_araddr[15] ,
    \cpu_araddr[14] ,
    \cpu_araddr[13] ,
    \cpu_araddr[12] ,
    \cpu_araddr[11] ,
    \cpu_araddr[10] ,
    \cpu_araddr[9] ,
    \cpu_araddr[8] ,
    \cpu_araddr[7] ,
    \cpu_araddr[6] ,
    \cpu_araddr[5] ,
    \cpu_araddr[4] ,
    \cpu_araddr[3] ,
    \cpu_araddr[2] ,
    \cpu_araddr[1] ,
    \cpu_araddr[0] }),
    .m_arprot({\cpu_arprot[2] ,
    \cpu_arprot[1] ,
    \cpu_arprot[0] }),
    .m_awaddr({\cpu_awaddr[31] ,
    \cpu_awaddr[30] ,
    \cpu_awaddr[29] ,
    \cpu_awaddr[28] ,
    \cpu_awaddr[27] ,
    \cpu_awaddr[26] ,
    \cpu_awaddr[25] ,
    \cpu_awaddr[24] ,
    \cpu_awaddr[23] ,
    \cpu_awaddr[22] ,
    \cpu_awaddr[21] ,
    \cpu_awaddr[20] ,
    \cpu_awaddr[19] ,
    \cpu_awaddr[18] ,
    \cpu_awaddr[17] ,
    \cpu_awaddr[16] ,
    \cpu_awaddr[15] ,
    \cpu_awaddr[14] ,
    \cpu_awaddr[13] ,
    \cpu_awaddr[12] ,
    \cpu_awaddr[11] ,
    \cpu_awaddr[10] ,
    \cpu_awaddr[9] ,
    \cpu_awaddr[8] ,
    \cpu_awaddr[7] ,
    \cpu_awaddr[6] ,
    \cpu_awaddr[5] ,
    \cpu_awaddr[4] ,
    \cpu_awaddr[3] ,
    \cpu_awaddr[2] ,
    \cpu_awaddr[1] ,
    \cpu_awaddr[0] }),
    .m_awprot({\cpu_awprot[2] ,
    \cpu_awprot[1] ,
    \cpu_awprot[0] }),
    .m_bresp({\cpu_bresp[1] ,
    \cpu_bresp[0] }),
    .m_rdata({\cpu_rdata[31] ,
    \cpu_rdata[30] ,
    \cpu_rdata[29] ,
    \cpu_rdata[28] ,
    \cpu_rdata[27] ,
    \cpu_rdata[26] ,
    \cpu_rdata[25] ,
    \cpu_rdata[24] ,
    \cpu_rdata[23] ,
    \cpu_rdata[22] ,
    \cpu_rdata[21] ,
    \cpu_rdata[20] ,
    \cpu_rdata[19] ,
    \cpu_rdata[18] ,
    \cpu_rdata[17] ,
    \cpu_rdata[16] ,
    \cpu_rdata[15] ,
    \cpu_rdata[14] ,
    \cpu_rdata[13] ,
    \cpu_rdata[12] ,
    \cpu_rdata[11] ,
    \cpu_rdata[10] ,
    \cpu_rdata[9] ,
    \cpu_rdata[8] ,
    \cpu_rdata[7] ,
    \cpu_rdata[6] ,
    \cpu_rdata[5] ,
    \cpu_rdata[4] ,
    \cpu_rdata[3] ,
    \cpu_rdata[2] ,
    \cpu_rdata[1] ,
    \cpu_rdata[0] }),
    .m_rresp({\cpu_rresp[1] ,
    \cpu_rresp[0] }),
    .m_wdata({\cpu_wdata[31] ,
    \cpu_wdata[30] ,
    \cpu_wdata[29] ,
    \cpu_wdata[28] ,
    \cpu_wdata[27] ,
    \cpu_wdata[26] ,
    \cpu_wdata[25] ,
    \cpu_wdata[24] ,
    \cpu_wdata[23] ,
    \cpu_wdata[22] ,
    \cpu_wdata[21] ,
    \cpu_wdata[20] ,
    \cpu_wdata[19] ,
    \cpu_wdata[18] ,
    \cpu_wdata[17] ,
    \cpu_wdata[16] ,
    \cpu_wdata[15] ,
    \cpu_wdata[14] ,
    \cpu_wdata[13] ,
    \cpu_wdata[12] ,
    \cpu_wdata[11] ,
    \cpu_wdata[10] ,
    \cpu_wdata[9] ,
    \cpu_wdata[8] ,
    \cpu_wdata[7] ,
    \cpu_wdata[6] ,
    \cpu_wdata[5] ,
    \cpu_wdata[4] ,
    \cpu_wdata[3] ,
    \cpu_wdata[2] ,
    \cpu_wdata[1] ,
    \cpu_wdata[0] }),
    .m_wstrb({\cpu_wstrb[3] ,
    \cpu_wstrb[2] ,
    \cpu_wstrb[1] ,
    \cpu_wstrb[0] }),
    .s_araddr({\s_araddr[127] ,
    \s_araddr[126] ,
    \s_araddr[125] ,
    \s_araddr[124] ,
    \s_araddr[123] ,
    \s_araddr[122] ,
    \s_araddr[121] ,
    \s_araddr[120] ,
    \s_araddr[119] ,
    \s_araddr[118] ,
    \s_araddr[117] ,
    \s_araddr[116] ,
    \s_araddr[115] ,
    \s_araddr[114] ,
    \s_araddr[113] ,
    \s_araddr[112] ,
    \s_araddr[111] ,
    \s_araddr[110] ,
    \s_araddr[109] ,
    \s_araddr[108] ,
    \s_araddr[107] ,
    \s_araddr[106] ,
    \s_araddr[105] ,
    \s_araddr[104] ,
    \s_araddr[103] ,
    \s_araddr[102] ,
    \s_araddr[101] ,
    \s_araddr[100] ,
    \s_araddr[99] ,
    \s_araddr[98] ,
    \s_araddr[97] ,
    \s_araddr[96] ,
    \s_araddr[95] ,
    \s_araddr[94] ,
    \s_araddr[93] ,
    \s_araddr[92] ,
    \s_araddr[91] ,
    \s_araddr[90] ,
    \s_araddr[89] ,
    \s_araddr[88] ,
    \s_araddr[87] ,
    \s_araddr[86] ,
    \s_araddr[85] ,
    \s_araddr[84] ,
    \s_araddr[83] ,
    \s_araddr[82] ,
    \s_araddr[81] ,
    \s_araddr[80] ,
    \s_araddr[79] ,
    \s_araddr[78] ,
    \s_araddr[77] ,
    \s_araddr[76] ,
    \s_araddr[75] ,
    \s_araddr[74] ,
    \s_araddr[73] ,
    \s_araddr[72] ,
    \s_araddr[71] ,
    \s_araddr[70] ,
    \s_araddr[69] ,
    \s_araddr[68] ,
    \s_araddr[67] ,
    \s_araddr[66] ,
    \s_araddr[65] ,
    \s_araddr[64] ,
    \s_araddr[63] ,
    \s_araddr[62] ,
    \s_araddr[61] ,
    \s_araddr[60] ,
    \s_araddr[59] ,
    \s_araddr[58] ,
    \s_araddr[57] ,
    \s_araddr[56] ,
    \s_araddr[55] ,
    \s_araddr[54] ,
    \s_araddr[53] ,
    \s_araddr[52] ,
    \s_araddr[51] ,
    \s_araddr[50] ,
    \s_araddr[49] ,
    \s_araddr[48] ,
    \s_araddr[47] ,
    \s_araddr[46] ,
    \s_araddr[45] ,
    \s_araddr[44] ,
    \s_araddr[43] ,
    \s_araddr[42] ,
    \s_araddr[41] ,
    \s_araddr[40] ,
    \s_araddr[39] ,
    \s_araddr[38] ,
    \s_araddr[37] ,
    \s_araddr[36] ,
    \s_araddr[35] ,
    \s_araddr[34] ,
    \s_araddr[33] ,
    \s_araddr[32] ,
    \s_araddr[31] ,
    \s_araddr[30] ,
    \s_araddr[29] ,
    \s_araddr[28] ,
    \s_araddr[27] ,
    \s_araddr[26] ,
    \s_araddr[25] ,
    \s_araddr[24] ,
    \s_araddr[23] ,
    \s_araddr[22] ,
    \s_araddr[21] ,
    \s_araddr[20] ,
    \s_araddr[19] ,
    \s_araddr[18] ,
    \s_araddr[17] ,
    \s_araddr[16] ,
    \s_araddr[15] ,
    \s_araddr[14] ,
    \s_araddr[13] ,
    \s_araddr[12] ,
    \s_araddr[11] ,
    \s_araddr[10] ,
    \s_araddr[9] ,
    \s_araddr[8] ,
    \s_araddr[7] ,
    \s_araddr[6] ,
    \s_araddr[5] ,
    \s_araddr[4] ,
    \s_araddr[3] ,
    \s_araddr[2] ,
    \s_araddr[1] ,
    \s_araddr[0] }),
    .s_arprot({\s_arprot[11] ,
    \s_arprot[10] ,
    \s_arprot[9] ,
    \s_arprot[8] ,
    \s_arprot[7] ,
    \s_arprot[6] ,
    \s_arprot[5] ,
    \s_arprot[4] ,
    \s_arprot[3] ,
    \s_arprot[2] ,
    \s_arprot[1] ,
    \s_arprot[0] }),
    .s_arready({\s_arready[3] ,
    \s_arready[2] ,
    \s_arready[1] ,
    \s_arready[0] }),
    .s_arvalid({\s_arvalid[3] ,
    \s_arvalid[2] ,
    \s_arvalid[1] ,
    \s_arvalid[0] }),
    .s_awaddr({\s_awaddr[127] ,
    \s_awaddr[126] ,
    \s_awaddr[125] ,
    \s_awaddr[124] ,
    \s_awaddr[123] ,
    \s_awaddr[122] ,
    \s_awaddr[121] ,
    \s_awaddr[120] ,
    \s_awaddr[119] ,
    \s_awaddr[118] ,
    \s_awaddr[117] ,
    \s_awaddr[116] ,
    \s_awaddr[115] ,
    \s_awaddr[114] ,
    \s_awaddr[113] ,
    \s_awaddr[112] ,
    \s_awaddr[111] ,
    \s_awaddr[110] ,
    \s_awaddr[109] ,
    \s_awaddr[108] ,
    \s_awaddr[107] ,
    \s_awaddr[106] ,
    \s_awaddr[105] ,
    \s_awaddr[104] ,
    \s_awaddr[103] ,
    \s_awaddr[102] ,
    \s_awaddr[101] ,
    \s_awaddr[100] ,
    \s_awaddr[99] ,
    \s_awaddr[98] ,
    \s_awaddr[97] ,
    \s_awaddr[96] ,
    \s_awaddr[95] ,
    \s_awaddr[94] ,
    \s_awaddr[93] ,
    \s_awaddr[92] ,
    \s_awaddr[91] ,
    \s_awaddr[90] ,
    \s_awaddr[89] ,
    \s_awaddr[88] ,
    \s_awaddr[87] ,
    \s_awaddr[86] ,
    \s_awaddr[85] ,
    \s_awaddr[84] ,
    \s_awaddr[83] ,
    \s_awaddr[82] ,
    \s_awaddr[81] ,
    \s_awaddr[80] ,
    \s_awaddr[79] ,
    \s_awaddr[78] ,
    \s_awaddr[77] ,
    \s_awaddr[76] ,
    \s_awaddr[75] ,
    \s_awaddr[74] ,
    \s_awaddr[73] ,
    \s_awaddr[72] ,
    \s_awaddr[71] ,
    \s_awaddr[70] ,
    \s_awaddr[69] ,
    \s_awaddr[68] ,
    \s_awaddr[67] ,
    \s_awaddr[66] ,
    \s_awaddr[65] ,
    \s_awaddr[64] ,
    \s_awaddr[63] ,
    \s_awaddr[62] ,
    \s_awaddr[61] ,
    \s_awaddr[60] ,
    \s_awaddr[59] ,
    \s_awaddr[58] ,
    \s_awaddr[57] ,
    \s_awaddr[56] ,
    \s_awaddr[55] ,
    \s_awaddr[54] ,
    \s_awaddr[53] ,
    \s_awaddr[52] ,
    \s_awaddr[51] ,
    \s_awaddr[50] ,
    \s_awaddr[49] ,
    \s_awaddr[48] ,
    \s_awaddr[47] ,
    \s_awaddr[46] ,
    \s_awaddr[45] ,
    \s_awaddr[44] ,
    \s_awaddr[43] ,
    \s_awaddr[42] ,
    \s_awaddr[41] ,
    \s_awaddr[40] ,
    \s_awaddr[39] ,
    \s_awaddr[38] ,
    \s_awaddr[37] ,
    \s_awaddr[36] ,
    \s_awaddr[35] ,
    \s_awaddr[34] ,
    \s_awaddr[33] ,
    \s_awaddr[32] ,
    \s_awaddr[31] ,
    \s_awaddr[30] ,
    \s_awaddr[29] ,
    \s_awaddr[28] ,
    \s_awaddr[27] ,
    \s_awaddr[26] ,
    \s_awaddr[25] ,
    \s_awaddr[24] ,
    \s_awaddr[23] ,
    \s_awaddr[22] ,
    \s_awaddr[21] ,
    \s_awaddr[20] ,
    \s_awaddr[19] ,
    \s_awaddr[18] ,
    \s_awaddr[17] ,
    \s_awaddr[16] ,
    \s_awaddr[15] ,
    \s_awaddr[14] ,
    \s_awaddr[13] ,
    \s_awaddr[12] ,
    \s_awaddr[11] ,
    \s_awaddr[10] ,
    \s_awaddr[9] ,
    \s_awaddr[8] ,
    \s_awaddr[7] ,
    \s_awaddr[6] ,
    \s_awaddr[5] ,
    \s_awaddr[4] ,
    \s_awaddr[3] ,
    \s_awaddr[2] ,
    \s_awaddr[1] ,
    \s_awaddr[0] }),
    .s_awprot({\s_awprot[11] ,
    \s_awprot[10] ,
    \s_awprot[9] ,
    \s_awprot[8] ,
    \s_awprot[7] ,
    \s_awprot[6] ,
    \s_awprot[5] ,
    \s_awprot[4] ,
    \s_awprot[3] ,
    \s_awprot[2] ,
    \s_awprot[1] ,
    \s_awprot[0] }),
    .s_awready({\s_awready[3] ,
    \s_awready[2] ,
    \s_awready[1] ,
    \s_awready[0] }),
    .s_awvalid({\s_awvalid[3] ,
    \s_awvalid[2] ,
    \s_awvalid[1] ,
    \s_awvalid[0] }),
    .s_bready({\s_bready[3] ,
    \s_bready[2] ,
    \s_bready[1] ,
    \s_bready[0] }),
    .s_bresp({\s_bresp[7] ,
    \s_bresp[6] ,
    \s_bresp[5] ,
    \s_bresp[4] ,
    \s_bresp[3] ,
    \s_bresp[2] ,
    \s_bresp[1] ,
    \s_bresp[0] }),
    .s_bvalid({\s_bvalid[3] ,
    \s_bvalid[2] ,
    \s_bvalid[1] ,
    \s_bvalid[0] }),
    .s_rdata({\s_rdata[127] ,
    \s_rdata[126] ,
    \s_rdata[125] ,
    \s_rdata[124] ,
    \s_rdata[123] ,
    \s_rdata[122] ,
    \s_rdata[121] ,
    \s_rdata[120] ,
    \s_rdata[119] ,
    \s_rdata[118] ,
    \s_rdata[117] ,
    \s_rdata[116] ,
    \s_rdata[115] ,
    \s_rdata[114] ,
    \s_rdata[113] ,
    \s_rdata[112] ,
    \s_rdata[111] ,
    \s_rdata[110] ,
    \s_rdata[109] ,
    \s_rdata[108] ,
    \s_rdata[107] ,
    \s_rdata[106] ,
    \s_rdata[105] ,
    \s_rdata[104] ,
    \s_rdata[103] ,
    \s_rdata[102] ,
    \s_rdata[101] ,
    \s_rdata[100] ,
    \s_rdata[99] ,
    \s_rdata[98] ,
    \s_rdata[97] ,
    \s_rdata[96] ,
    \s_rdata[95] ,
    \s_rdata[94] ,
    \s_rdata[93] ,
    \s_rdata[92] ,
    \s_rdata[91] ,
    \s_rdata[90] ,
    \s_rdata[89] ,
    \s_rdata[88] ,
    \s_rdata[87] ,
    \s_rdata[86] ,
    \s_rdata[85] ,
    \s_rdata[84] ,
    \s_rdata[83] ,
    \s_rdata[82] ,
    \s_rdata[81] ,
    \s_rdata[80] ,
    \s_rdata[79] ,
    \s_rdata[78] ,
    \s_rdata[77] ,
    \s_rdata[76] ,
    \s_rdata[75] ,
    \s_rdata[74] ,
    \s_rdata[73] ,
    \s_rdata[72] ,
    \s_rdata[71] ,
    \s_rdata[70] ,
    \s_rdata[69] ,
    \s_rdata[68] ,
    \s_rdata[67] ,
    \s_rdata[66] ,
    \s_rdata[65] ,
    \s_rdata[64] ,
    \s_rdata[63] ,
    \s_rdata[62] ,
    \s_rdata[61] ,
    \s_rdata[60] ,
    \s_rdata[59] ,
    \s_rdata[58] ,
    \s_rdata[57] ,
    \s_rdata[56] ,
    \s_rdata[55] ,
    \s_rdata[54] ,
    \s_rdata[53] ,
    \s_rdata[52] ,
    \s_rdata[51] ,
    \s_rdata[50] ,
    \s_rdata[49] ,
    \s_rdata[48] ,
    \s_rdata[47] ,
    \s_rdata[46] ,
    \s_rdata[45] ,
    \s_rdata[44] ,
    \s_rdata[43] ,
    \s_rdata[42] ,
    \s_rdata[41] ,
    \s_rdata[40] ,
    \s_rdata[39] ,
    \s_rdata[38] ,
    \s_rdata[37] ,
    \s_rdata[36] ,
    \s_rdata[35] ,
    \s_rdata[34] ,
    \s_rdata[33] ,
    \s_rdata[32] ,
    \s_rdata[31] ,
    \s_rdata[30] ,
    \s_rdata[29] ,
    \s_rdata[28] ,
    \s_rdata[27] ,
    \s_rdata[26] ,
    \s_rdata[25] ,
    \s_rdata[24] ,
    \s_rdata[23] ,
    \s_rdata[22] ,
    \s_rdata[21] ,
    \s_rdata[20] ,
    \s_rdata[19] ,
    \s_rdata[18] ,
    \s_rdata[17] ,
    \s_rdata[16] ,
    \s_rdata[15] ,
    \s_rdata[14] ,
    \s_rdata[13] ,
    \s_rdata[12] ,
    \s_rdata[11] ,
    \s_rdata[10] ,
    \s_rdata[9] ,
    \s_rdata[8] ,
    \s_rdata[7] ,
    \s_rdata[6] ,
    \s_rdata[5] ,
    \s_rdata[4] ,
    \s_rdata[3] ,
    \s_rdata[2] ,
    \s_rdata[1] ,
    \s_rdata[0] }),
    .s_rready({\s_rready[3] ,
    \s_rready[2] ,
    \s_rready[1] ,
    \s_rready[0] }),
    .s_rresp({\s_rresp[7] ,
    \s_rresp[6] ,
    \s_rresp[5] ,
    \s_rresp[4] ,
    \s_rresp[3] ,
    \s_rresp[2] ,
    \s_rresp[1] ,
    \s_rresp[0] }),
    .s_rvalid({\s_rvalid[3] ,
    \s_rvalid[2] ,
    \s_rvalid[1] ,
    \s_rvalid[0] }),
    .s_wdata({\s_wdata[127] ,
    \s_wdata[126] ,
    \s_wdata[125] ,
    \s_wdata[124] ,
    \s_wdata[123] ,
    \s_wdata[122] ,
    \s_wdata[121] ,
    \s_wdata[120] ,
    \s_wdata[119] ,
    \s_wdata[118] ,
    \s_wdata[117] ,
    \s_wdata[116] ,
    \s_wdata[115] ,
    \s_wdata[114] ,
    \s_wdata[113] ,
    \s_wdata[112] ,
    \s_wdata[111] ,
    \s_wdata[110] ,
    \s_wdata[109] ,
    \s_wdata[108] ,
    \s_wdata[107] ,
    \s_wdata[106] ,
    \s_wdata[105] ,
    \s_wdata[104] ,
    \s_wdata[103] ,
    \s_wdata[102] ,
    \s_wdata[101] ,
    \s_wdata[100] ,
    \s_wdata[99] ,
    \s_wdata[98] ,
    \s_wdata[97] ,
    \s_wdata[96] ,
    \s_wdata[95] ,
    \s_wdata[94] ,
    \s_wdata[93] ,
    \s_wdata[92] ,
    \s_wdata[91] ,
    \s_wdata[90] ,
    \s_wdata[89] ,
    \s_wdata[88] ,
    \s_wdata[87] ,
    \s_wdata[86] ,
    \s_wdata[85] ,
    \s_wdata[84] ,
    \s_wdata[83] ,
    \s_wdata[82] ,
    \s_wdata[81] ,
    \s_wdata[80] ,
    \s_wdata[79] ,
    \s_wdata[78] ,
    \s_wdata[77] ,
    \s_wdata[76] ,
    \s_wdata[75] ,
    \s_wdata[74] ,
    \s_wdata[73] ,
    \s_wdata[72] ,
    \s_wdata[71] ,
    \s_wdata[70] ,
    \s_wdata[69] ,
    \s_wdata[68] ,
    \s_wdata[67] ,
    \s_wdata[66] ,
    \s_wdata[65] ,
    \s_wdata[64] ,
    \s_wdata[63] ,
    \s_wdata[62] ,
    \s_wdata[61] ,
    \s_wdata[60] ,
    \s_wdata[59] ,
    \s_wdata[58] ,
    \s_wdata[57] ,
    \s_wdata[56] ,
    \s_wdata[55] ,
    \s_wdata[54] ,
    \s_wdata[53] ,
    \s_wdata[52] ,
    \s_wdata[51] ,
    \s_wdata[50] ,
    \s_wdata[49] ,
    \s_wdata[48] ,
    \s_wdata[47] ,
    \s_wdata[46] ,
    \s_wdata[45] ,
    \s_wdata[44] ,
    \s_wdata[43] ,
    \s_wdata[42] ,
    \s_wdata[41] ,
    \s_wdata[40] ,
    \s_wdata[39] ,
    \s_wdata[38] ,
    \s_wdata[37] ,
    \s_wdata[36] ,
    \s_wdata[35] ,
    \s_wdata[34] ,
    \s_wdata[33] ,
    \s_wdata[32] ,
    \s_wdata[31] ,
    \s_wdata[30] ,
    \s_wdata[29] ,
    \s_wdata[28] ,
    \s_wdata[27] ,
    \s_wdata[26] ,
    \s_wdata[25] ,
    \s_wdata[24] ,
    \s_wdata[23] ,
    \s_wdata[22] ,
    \s_wdata[21] ,
    \s_wdata[20] ,
    \s_wdata[19] ,
    \s_wdata[18] ,
    \s_wdata[17] ,
    \s_wdata[16] ,
    \s_wdata[15] ,
    \s_wdata[14] ,
    \s_wdata[13] ,
    \s_wdata[12] ,
    \s_wdata[11] ,
    \s_wdata[10] ,
    \s_wdata[9] ,
    \s_wdata[8] ,
    \s_wdata[7] ,
    \s_wdata[6] ,
    \s_wdata[5] ,
    \s_wdata[4] ,
    \s_wdata[3] ,
    \s_wdata[2] ,
    \s_wdata[1] ,
    \s_wdata[0] }),
    .s_wready({\s_wready[3] ,
    \s_wready[2] ,
    \s_wready[1] ,
    \s_wready[0] }),
    .s_wstrb({\s_wstrb[15] ,
    \s_wstrb[14] ,
    \s_wstrb[13] ,
    \s_wstrb[12] ,
    \s_wstrb[11] ,
    \s_wstrb[10] ,
    \s_wstrb[9] ,
    \s_wstrb[8] ,
    \s_wstrb[7] ,
    \s_wstrb[6] ,
    \s_wstrb[5] ,
    \s_wstrb[4] ,
    \s_wstrb[3] ,
    \s_wstrb[2] ,
    \s_wstrb[1] ,
    \s_wstrb[0] }),
    .s_wvalid({\s_wvalid[3] ,
    \s_wvalid[2] ,
    \s_wvalid[1] ,
    \s_wvalid[0] }));
 peripherals_macro u_periph0 (.clk_i(clk_i),
    .rst_ni(rst_ni),
    .s_axil_arready(\s_arready[1] ),
    .s_axil_arvalid(\s_arvalid[1] ),
    .s_axil_awready(\s_awready[1] ),
    .s_axil_awvalid(\s_awvalid[1] ),
    .s_axil_bready(\s_bready[1] ),
    .s_axil_bvalid(\s_bvalid[1] ),
    .s_axil_rready(\s_rready[1] ),
    .s_axil_rvalid(\s_rvalid[1] ),
    .s_axil_wready(\s_wready[1] ),
    .s_axil_wvalid(\s_wvalid[1] ),
    .gpio_dir({gpio0_dir[31],
    gpio0_dir[30],
    gpio0_dir[29],
    gpio0_dir[28],
    gpio0_dir[27],
    gpio0_dir[26],
    gpio0_dir[25],
    gpio0_dir[24],
    gpio0_dir[23],
    gpio0_dir[22],
    gpio0_dir[21],
    gpio0_dir[20],
    gpio0_dir[19],
    gpio0_dir[18],
    gpio0_dir[17],
    gpio0_dir[16],
    gpio0_dir[15],
    gpio0_dir[14],
    gpio0_dir[13],
    gpio0_dir[12],
    gpio0_dir[11],
    gpio0_dir[10],
    gpio0_dir[9],
    gpio0_dir[8],
    gpio0_dir[7],
    gpio0_dir[6],
    gpio0_dir[5],
    gpio0_dir[4],
    gpio0_dir[3],
    gpio0_dir[2],
    gpio0_dir[1],
    gpio0_dir[0]}),
    .gpio_in({gpio0_in[31],
    gpio0_in[30],
    gpio0_in[29],
    gpio0_in[28],
    gpio0_in[27],
    gpio0_in[26],
    gpio0_in[25],
    gpio0_in[24],
    gpio0_in[23],
    gpio0_in[22],
    gpio0_in[21],
    gpio0_in[20],
    gpio0_in[19],
    gpio0_in[18],
    gpio0_in[17],
    gpio0_in[16],
    gpio0_in[15],
    gpio0_in[14],
    gpio0_in[13],
    gpio0_in[12],
    gpio0_in[11],
    gpio0_in[10],
    gpio0_in[9],
    gpio0_in[8],
    gpio0_in[7],
    gpio0_in[6],
    gpio0_in[5],
    gpio0_in[4],
    gpio0_in[3],
    gpio0_in[2],
    gpio0_in[1],
    gpio0_in[0]}),
    .gpio_out({gpio0_out[31],
    gpio0_out[30],
    gpio0_out[29],
    gpio0_out[28],
    gpio0_out[27],
    gpio0_out[26],
    gpio0_out[25],
    gpio0_out[24],
    gpio0_out[23],
    gpio0_out[22],
    gpio0_out[21],
    gpio0_out[20],
    gpio0_out[19],
    gpio0_out[18],
    gpio0_out[17],
    gpio0_out[16],
    gpio0_out[15],
    gpio0_out[14],
    gpio0_out[13],
    gpio0_out[12],
    gpio0_out[11],
    gpio0_out[10],
    gpio0_out[9],
    gpio0_out[8],
    gpio0_out[7],
    gpio0_out[6],
    gpio0_out[5],
    gpio0_out[4],
    gpio0_out[3],
    gpio0_out[2],
    gpio0_out[1],
    gpio0_out[0]}),
    .s_axil_araddr({\s_araddr[63] ,
    \s_araddr[62] ,
    \s_araddr[61] ,
    \s_araddr[60] ,
    \s_araddr[59] ,
    \s_araddr[58] ,
    \s_araddr[57] ,
    \s_araddr[56] ,
    \s_araddr[55] ,
    \s_araddr[54] ,
    \s_araddr[53] ,
    \s_araddr[52] ,
    \s_araddr[51] ,
    \s_araddr[50] ,
    \s_araddr[49] ,
    \s_araddr[48] ,
    \s_araddr[47] ,
    \s_araddr[46] ,
    \s_araddr[45] ,
    \s_araddr[44] ,
    \s_araddr[43] ,
    \s_araddr[42] ,
    \s_araddr[41] ,
    \s_araddr[40] ,
    \s_araddr[39] ,
    \s_araddr[38] ,
    \s_araddr[37] ,
    \s_araddr[36] ,
    \s_araddr[35] ,
    \s_araddr[34] ,
    \s_araddr[33] ,
    \s_araddr[32] }),
    .s_axil_awaddr({\s_awaddr[63] ,
    \s_awaddr[62] ,
    \s_awaddr[61] ,
    \s_awaddr[60] ,
    \s_awaddr[59] ,
    \s_awaddr[58] ,
    \s_awaddr[57] ,
    \s_awaddr[56] ,
    \s_awaddr[55] ,
    \s_awaddr[54] ,
    \s_awaddr[53] ,
    \s_awaddr[52] ,
    \s_awaddr[51] ,
    \s_awaddr[50] ,
    \s_awaddr[49] ,
    \s_awaddr[48] ,
    \s_awaddr[47] ,
    \s_awaddr[46] ,
    \s_awaddr[45] ,
    \s_awaddr[44] ,
    \s_awaddr[43] ,
    \s_awaddr[42] ,
    \s_awaddr[41] ,
    \s_awaddr[40] ,
    \s_awaddr[39] ,
    \s_awaddr[38] ,
    \s_awaddr[37] ,
    \s_awaddr[36] ,
    \s_awaddr[35] ,
    \s_awaddr[34] ,
    \s_awaddr[33] ,
    \s_awaddr[32] }),
    .s_axil_bresp({\s_bresp[3] ,
    \s_bresp[2] }),
    .s_axil_rdata({\s_rdata[63] ,
    \s_rdata[62] ,
    \s_rdata[61] ,
    \s_rdata[60] ,
    \s_rdata[59] ,
    \s_rdata[58] ,
    \s_rdata[57] ,
    \s_rdata[56] ,
    \s_rdata[55] ,
    \s_rdata[54] ,
    \s_rdata[53] ,
    \s_rdata[52] ,
    \s_rdata[51] ,
    \s_rdata[50] ,
    \s_rdata[49] ,
    \s_rdata[48] ,
    \s_rdata[47] ,
    \s_rdata[46] ,
    \s_rdata[45] ,
    \s_rdata[44] ,
    \s_rdata[43] ,
    \s_rdata[42] ,
    \s_rdata[41] ,
    \s_rdata[40] ,
    \s_rdata[39] ,
    \s_rdata[38] ,
    \s_rdata[37] ,
    \s_rdata[36] ,
    \s_rdata[35] ,
    \s_rdata[34] ,
    \s_rdata[33] ,
    \s_rdata[32] }),
    .s_axil_rresp({\s_rresp[3] ,
    \s_rresp[2] }),
    .s_axil_wdata({\s_wdata[63] ,
    \s_wdata[62] ,
    \s_wdata[61] ,
    \s_wdata[60] ,
    \s_wdata[59] ,
    \s_wdata[58] ,
    \s_wdata[57] ,
    \s_wdata[56] ,
    \s_wdata[55] ,
    \s_wdata[54] ,
    \s_wdata[53] ,
    \s_wdata[52] ,
    \s_wdata[51] ,
    \s_wdata[50] ,
    \s_wdata[49] ,
    \s_wdata[48] ,
    \s_wdata[47] ,
    \s_wdata[46] ,
    \s_wdata[45] ,
    \s_wdata[44] ,
    \s_wdata[43] ,
    \s_wdata[42] ,
    \s_wdata[41] ,
    \s_wdata[40] ,
    \s_wdata[39] ,
    \s_wdata[38] ,
    \s_wdata[37] ,
    \s_wdata[36] ,
    \s_wdata[35] ,
    \s_wdata[34] ,
    \s_wdata[33] ,
    \s_wdata[32] }),
    .s_axil_wstrb({\s_wstrb[7] ,
    \s_wstrb[6] ,
    \s_wstrb[5] ,
    \s_wstrb[4] }));
 peripherals_macro u_periph1 (.clk_i(clk_i),
    .rst_ni(rst_ni),
    .s_axil_arready(\s_arready[2] ),
    .s_axil_arvalid(\s_arvalid[2] ),
    .s_axil_awready(\s_awready[2] ),
    .s_axil_awvalid(\s_awvalid[2] ),
    .s_axil_bready(\s_bready[2] ),
    .s_axil_bvalid(\s_bvalid[2] ),
    .s_axil_rready(\s_rready[2] ),
    .s_axil_rvalid(\s_rvalid[2] ),
    .s_axil_wready(\s_wready[2] ),
    .s_axil_wvalid(\s_wvalid[2] ),
    .gpio_dir({gpio1_dir[31],
    gpio1_dir[30],
    gpio1_dir[29],
    gpio1_dir[28],
    gpio1_dir[27],
    gpio1_dir[26],
    gpio1_dir[25],
    gpio1_dir[24],
    gpio1_dir[23],
    gpio1_dir[22],
    gpio1_dir[21],
    gpio1_dir[20],
    gpio1_dir[19],
    gpio1_dir[18],
    gpio1_dir[17],
    gpio1_dir[16],
    gpio1_dir[15],
    gpio1_dir[14],
    gpio1_dir[13],
    gpio1_dir[12],
    gpio1_dir[11],
    gpio1_dir[10],
    gpio1_dir[9],
    gpio1_dir[8],
    gpio1_dir[7],
    gpio1_dir[6],
    gpio1_dir[5],
    gpio1_dir[4],
    gpio1_dir[3],
    gpio1_dir[2],
    gpio1_dir[1],
    gpio1_dir[0]}),
    .gpio_in({gpio1_in[31],
    gpio1_in[30],
    gpio1_in[29],
    gpio1_in[28],
    gpio1_in[27],
    gpio1_in[26],
    gpio1_in[25],
    gpio1_in[24],
    gpio1_in[23],
    gpio1_in[22],
    gpio1_in[21],
    gpio1_in[20],
    gpio1_in[19],
    gpio1_in[18],
    gpio1_in[17],
    gpio1_in[16],
    gpio1_in[15],
    gpio1_in[14],
    gpio1_in[13],
    gpio1_in[12],
    gpio1_in[11],
    gpio1_in[10],
    gpio1_in[9],
    gpio1_in[8],
    gpio1_in[7],
    gpio1_in[6],
    gpio1_in[5],
    gpio1_in[4],
    gpio1_in[3],
    gpio1_in[2],
    gpio1_in[1],
    gpio1_in[0]}),
    .gpio_out({gpio1_out[31],
    gpio1_out[30],
    gpio1_out[29],
    gpio1_out[28],
    gpio1_out[27],
    gpio1_out[26],
    gpio1_out[25],
    gpio1_out[24],
    gpio1_out[23],
    gpio1_out[22],
    gpio1_out[21],
    gpio1_out[20],
    gpio1_out[19],
    gpio1_out[18],
    gpio1_out[17],
    gpio1_out[16],
    gpio1_out[15],
    gpio1_out[14],
    gpio1_out[13],
    gpio1_out[12],
    gpio1_out[11],
    gpio1_out[10],
    gpio1_out[9],
    gpio1_out[8],
    gpio1_out[7],
    gpio1_out[6],
    gpio1_out[5],
    gpio1_out[4],
    gpio1_out[3],
    gpio1_out[2],
    gpio1_out[1],
    gpio1_out[0]}),
    .s_axil_araddr({\s_araddr[95] ,
    \s_araddr[94] ,
    \s_araddr[93] ,
    \s_araddr[92] ,
    \s_araddr[91] ,
    \s_araddr[90] ,
    \s_araddr[89] ,
    \s_araddr[88] ,
    \s_araddr[87] ,
    \s_araddr[86] ,
    \s_araddr[85] ,
    \s_araddr[84] ,
    \s_araddr[83] ,
    \s_araddr[82] ,
    \s_araddr[81] ,
    \s_araddr[80] ,
    \s_araddr[79] ,
    \s_araddr[78] ,
    \s_araddr[77] ,
    \s_araddr[76] ,
    \s_araddr[75] ,
    \s_araddr[74] ,
    \s_araddr[73] ,
    \s_araddr[72] ,
    \s_araddr[71] ,
    \s_araddr[70] ,
    \s_araddr[69] ,
    \s_araddr[68] ,
    \s_araddr[67] ,
    \s_araddr[66] ,
    \s_araddr[65] ,
    \s_araddr[64] }),
    .s_axil_awaddr({\s_awaddr[95] ,
    \s_awaddr[94] ,
    \s_awaddr[93] ,
    \s_awaddr[92] ,
    \s_awaddr[91] ,
    \s_awaddr[90] ,
    \s_awaddr[89] ,
    \s_awaddr[88] ,
    \s_awaddr[87] ,
    \s_awaddr[86] ,
    \s_awaddr[85] ,
    \s_awaddr[84] ,
    \s_awaddr[83] ,
    \s_awaddr[82] ,
    \s_awaddr[81] ,
    \s_awaddr[80] ,
    \s_awaddr[79] ,
    \s_awaddr[78] ,
    \s_awaddr[77] ,
    \s_awaddr[76] ,
    \s_awaddr[75] ,
    \s_awaddr[74] ,
    \s_awaddr[73] ,
    \s_awaddr[72] ,
    \s_awaddr[71] ,
    \s_awaddr[70] ,
    \s_awaddr[69] ,
    \s_awaddr[68] ,
    \s_awaddr[67] ,
    \s_awaddr[66] ,
    \s_awaddr[65] ,
    \s_awaddr[64] }),
    .s_axil_bresp({\s_bresp[5] ,
    \s_bresp[4] }),
    .s_axil_rdata({\s_rdata[95] ,
    \s_rdata[94] ,
    \s_rdata[93] ,
    \s_rdata[92] ,
    \s_rdata[91] ,
    \s_rdata[90] ,
    \s_rdata[89] ,
    \s_rdata[88] ,
    \s_rdata[87] ,
    \s_rdata[86] ,
    \s_rdata[85] ,
    \s_rdata[84] ,
    \s_rdata[83] ,
    \s_rdata[82] ,
    \s_rdata[81] ,
    \s_rdata[80] ,
    \s_rdata[79] ,
    \s_rdata[78] ,
    \s_rdata[77] ,
    \s_rdata[76] ,
    \s_rdata[75] ,
    \s_rdata[74] ,
    \s_rdata[73] ,
    \s_rdata[72] ,
    \s_rdata[71] ,
    \s_rdata[70] ,
    \s_rdata[69] ,
    \s_rdata[68] ,
    \s_rdata[67] ,
    \s_rdata[66] ,
    \s_rdata[65] ,
    \s_rdata[64] }),
    .s_axil_rresp({\s_rresp[5] ,
    \s_rresp[4] }),
    .s_axil_wdata({\s_wdata[95] ,
    \s_wdata[94] ,
    \s_wdata[93] ,
    \s_wdata[92] ,
    \s_wdata[91] ,
    \s_wdata[90] ,
    \s_wdata[89] ,
    \s_wdata[88] ,
    \s_wdata[87] ,
    \s_wdata[86] ,
    \s_wdata[85] ,
    \s_wdata[84] ,
    \s_wdata[83] ,
    \s_wdata[82] ,
    \s_wdata[81] ,
    \s_wdata[80] ,
    \s_wdata[79] ,
    \s_wdata[78] ,
    \s_wdata[77] ,
    \s_wdata[76] ,
    \s_wdata[75] ,
    \s_wdata[74] ,
    \s_wdata[73] ,
    \s_wdata[72] ,
    \s_wdata[71] ,
    \s_wdata[70] ,
    \s_wdata[69] ,
    \s_wdata[68] ,
    \s_wdata[67] ,
    \s_wdata[66] ,
    \s_wdata[65] ,
    \s_wdata[64] }),
    .s_axil_wstrb({\s_wstrb[11] ,
    \s_wstrb[10] ,
    \s_wstrb[9] ,
    \s_wstrb[8] }));
 peripherals_macro u_periph2 (.clk_i(clk_i),
    .rst_ni(rst_ni),
    .s_axil_arready(\s_arready[3] ),
    .s_axil_arvalid(\s_arvalid[3] ),
    .s_axil_awready(\s_awready[3] ),
    .s_axil_awvalid(\s_awvalid[3] ),
    .s_axil_bready(\s_bready[3] ),
    .s_axil_bvalid(\s_bvalid[3] ),
    .s_axil_rready(\s_rready[3] ),
    .s_axil_rvalid(\s_rvalid[3] ),
    .s_axil_wready(\s_wready[3] ),
    .s_axil_wvalid(\s_wvalid[3] ),
    .gpio_dir({gpio2_dir[31],
    gpio2_dir[30],
    gpio2_dir[29],
    gpio2_dir[28],
    gpio2_dir[27],
    gpio2_dir[26],
    gpio2_dir[25],
    gpio2_dir[24],
    gpio2_dir[23],
    gpio2_dir[22],
    gpio2_dir[21],
    gpio2_dir[20],
    gpio2_dir[19],
    gpio2_dir[18],
    gpio2_dir[17],
    gpio2_dir[16],
    gpio2_dir[15],
    gpio2_dir[14],
    gpio2_dir[13],
    gpio2_dir[12],
    gpio2_dir[11],
    gpio2_dir[10],
    gpio2_dir[9],
    gpio2_dir[8],
    gpio2_dir[7],
    gpio2_dir[6],
    gpio2_dir[5],
    gpio2_dir[4],
    gpio2_dir[3],
    gpio2_dir[2],
    gpio2_dir[1],
    gpio2_dir[0]}),
    .gpio_in({gpio2_in[31],
    gpio2_in[30],
    gpio2_in[29],
    gpio2_in[28],
    gpio2_in[27],
    gpio2_in[26],
    gpio2_in[25],
    gpio2_in[24],
    gpio2_in[23],
    gpio2_in[22],
    gpio2_in[21],
    gpio2_in[20],
    gpio2_in[19],
    gpio2_in[18],
    gpio2_in[17],
    gpio2_in[16],
    gpio2_in[15],
    gpio2_in[14],
    gpio2_in[13],
    gpio2_in[12],
    gpio2_in[11],
    gpio2_in[10],
    gpio2_in[9],
    gpio2_in[8],
    gpio2_in[7],
    gpio2_in[6],
    gpio2_in[5],
    gpio2_in[4],
    gpio2_in[3],
    gpio2_in[2],
    gpio2_in[1],
    gpio2_in[0]}),
    .gpio_out({gpio2_out[31],
    gpio2_out[30],
    gpio2_out[29],
    gpio2_out[28],
    gpio2_out[27],
    gpio2_out[26],
    gpio2_out[25],
    gpio2_out[24],
    gpio2_out[23],
    gpio2_out[22],
    gpio2_out[21],
    gpio2_out[20],
    gpio2_out[19],
    gpio2_out[18],
    gpio2_out[17],
    gpio2_out[16],
    gpio2_out[15],
    gpio2_out[14],
    gpio2_out[13],
    gpio2_out[12],
    gpio2_out[11],
    gpio2_out[10],
    gpio2_out[9],
    gpio2_out[8],
    gpio2_out[7],
    gpio2_out[6],
    gpio2_out[5],
    gpio2_out[4],
    gpio2_out[3],
    gpio2_out[2],
    gpio2_out[1],
    gpio2_out[0]}),
    .s_axil_araddr({\s_araddr[127] ,
    \s_araddr[126] ,
    \s_araddr[125] ,
    \s_araddr[124] ,
    \s_araddr[123] ,
    \s_araddr[122] ,
    \s_araddr[121] ,
    \s_araddr[120] ,
    \s_araddr[119] ,
    \s_araddr[118] ,
    \s_araddr[117] ,
    \s_araddr[116] ,
    \s_araddr[115] ,
    \s_araddr[114] ,
    \s_araddr[113] ,
    \s_araddr[112] ,
    \s_araddr[111] ,
    \s_araddr[110] ,
    \s_araddr[109] ,
    \s_araddr[108] ,
    \s_araddr[107] ,
    \s_araddr[106] ,
    \s_araddr[105] ,
    \s_araddr[104] ,
    \s_araddr[103] ,
    \s_araddr[102] ,
    \s_araddr[101] ,
    \s_araddr[100] ,
    \s_araddr[99] ,
    \s_araddr[98] ,
    \s_araddr[97] ,
    \s_araddr[96] }),
    .s_axil_awaddr({\s_awaddr[127] ,
    \s_awaddr[126] ,
    \s_awaddr[125] ,
    \s_awaddr[124] ,
    \s_awaddr[123] ,
    \s_awaddr[122] ,
    \s_awaddr[121] ,
    \s_awaddr[120] ,
    \s_awaddr[119] ,
    \s_awaddr[118] ,
    \s_awaddr[117] ,
    \s_awaddr[116] ,
    \s_awaddr[115] ,
    \s_awaddr[114] ,
    \s_awaddr[113] ,
    \s_awaddr[112] ,
    \s_awaddr[111] ,
    \s_awaddr[110] ,
    \s_awaddr[109] ,
    \s_awaddr[108] ,
    \s_awaddr[107] ,
    \s_awaddr[106] ,
    \s_awaddr[105] ,
    \s_awaddr[104] ,
    \s_awaddr[103] ,
    \s_awaddr[102] ,
    \s_awaddr[101] ,
    \s_awaddr[100] ,
    \s_awaddr[99] ,
    \s_awaddr[98] ,
    \s_awaddr[97] ,
    \s_awaddr[96] }),
    .s_axil_bresp({\s_bresp[7] ,
    \s_bresp[6] }),
    .s_axil_rdata({\s_rdata[127] ,
    \s_rdata[126] ,
    \s_rdata[125] ,
    \s_rdata[124] ,
    \s_rdata[123] ,
    \s_rdata[122] ,
    \s_rdata[121] ,
    \s_rdata[120] ,
    \s_rdata[119] ,
    \s_rdata[118] ,
    \s_rdata[117] ,
    \s_rdata[116] ,
    \s_rdata[115] ,
    \s_rdata[114] ,
    \s_rdata[113] ,
    \s_rdata[112] ,
    \s_rdata[111] ,
    \s_rdata[110] ,
    \s_rdata[109] ,
    \s_rdata[108] ,
    \s_rdata[107] ,
    \s_rdata[106] ,
    \s_rdata[105] ,
    \s_rdata[104] ,
    \s_rdata[103] ,
    \s_rdata[102] ,
    \s_rdata[101] ,
    \s_rdata[100] ,
    \s_rdata[99] ,
    \s_rdata[98] ,
    \s_rdata[97] ,
    \s_rdata[96] }),
    .s_axil_rresp({\s_rresp[7] ,
    \s_rresp[6] }),
    .s_axil_wdata({\s_wdata[127] ,
    \s_wdata[126] ,
    \s_wdata[125] ,
    \s_wdata[124] ,
    \s_wdata[123] ,
    \s_wdata[122] ,
    \s_wdata[121] ,
    \s_wdata[120] ,
    \s_wdata[119] ,
    \s_wdata[118] ,
    \s_wdata[117] ,
    \s_wdata[116] ,
    \s_wdata[115] ,
    \s_wdata[114] ,
    \s_wdata[113] ,
    \s_wdata[112] ,
    \s_wdata[111] ,
    \s_wdata[110] ,
    \s_wdata[109] ,
    \s_wdata[108] ,
    \s_wdata[107] ,
    \s_wdata[106] ,
    \s_wdata[105] ,
    \s_wdata[104] ,
    \s_wdata[103] ,
    \s_wdata[102] ,
    \s_wdata[101] ,
    \s_wdata[100] ,
    \s_wdata[99] ,
    \s_wdata[98] ,
    \s_wdata[97] ,
    \s_wdata[96] }),
    .s_axil_wstrb({\s_wstrb[15] ,
    \s_wstrb[14] ,
    \s_wstrb[13] ,
    \s_wstrb[12] }));
 ram_macro u_ram (.boot_we(boot_we),
    .clk_i(clk_i),
    .rst_ni(rst_ni),
    .s_axil_arready(\s_arready[0] ),
    .s_axil_arvalid(\s_arvalid[0] ),
    .s_axil_awready(\s_awready[0] ),
    .s_axil_awvalid(\s_awvalid[0] ),
    .s_axil_bready(\s_bready[0] ),
    .s_axil_bvalid(\s_bvalid[0] ),
    .s_axil_rready(\s_rready[0] ),
    .s_axil_rvalid(\s_rvalid[0] ),
    .s_axil_wready(\s_wready[0] ),
    .s_axil_wvalid(\s_wvalid[0] ),
    .boot_addr({\boot_addr[31] ,
    \boot_addr[30] ,
    \boot_addr[29] ,
    \boot_addr[28] ,
    \boot_addr[27] ,
    \boot_addr[26] ,
    \boot_addr[25] ,
    \boot_addr[24] ,
    \boot_addr[23] ,
    \boot_addr[22] ,
    \boot_addr[21] ,
    \boot_addr[20] ,
    \boot_addr[19] ,
    \boot_addr[18] ,
    \boot_addr[17] ,
    \boot_addr[16] ,
    \boot_addr[15] ,
    \boot_addr[14] ,
    \boot_addr[13] ,
    \boot_addr[12] ,
    \boot_addr[11] ,
    \boot_addr[10] ,
    \boot_addr[9] ,
    \boot_addr[8] ,
    \boot_addr[7] ,
    \boot_addr[6] ,
    \boot_addr[5] ,
    \boot_addr[4] ,
    \boot_addr[3] ,
    \boot_addr[2] ,
    \boot_addr[1] ,
    \boot_addr[0] }),
    .boot_wdata({\boot_wdata[31] ,
    \boot_wdata[30] ,
    \boot_wdata[29] ,
    \boot_wdata[28] ,
    \boot_wdata[27] ,
    \boot_wdata[26] ,
    \boot_wdata[25] ,
    \boot_wdata[24] ,
    \boot_wdata[23] ,
    \boot_wdata[22] ,
    \boot_wdata[21] ,
    \boot_wdata[20] ,
    \boot_wdata[19] ,
    \boot_wdata[18] ,
    \boot_wdata[17] ,
    \boot_wdata[16] ,
    \boot_wdata[15] ,
    \boot_wdata[14] ,
    \boot_wdata[13] ,
    \boot_wdata[12] ,
    \boot_wdata[11] ,
    \boot_wdata[10] ,
    \boot_wdata[9] ,
    \boot_wdata[8] ,
    \boot_wdata[7] ,
    \boot_wdata[6] ,
    \boot_wdata[5] ,
    \boot_wdata[4] ,
    \boot_wdata[3] ,
    \boot_wdata[2] ,
    \boot_wdata[1] ,
    \boot_wdata[0] }),
    .s_axil_araddr({\s_araddr[31] ,
    \s_araddr[30] ,
    \s_araddr[29] ,
    \s_araddr[28] ,
    \s_araddr[27] ,
    \s_araddr[26] ,
    \s_araddr[25] ,
    \s_araddr[24] ,
    \s_araddr[23] ,
    \s_araddr[22] ,
    \s_araddr[21] ,
    \s_araddr[20] ,
    \s_araddr[19] ,
    \s_araddr[18] ,
    \s_araddr[17] ,
    \s_araddr[16] ,
    \s_araddr[15] ,
    \s_araddr[14] ,
    \s_araddr[13] ,
    \s_araddr[12] ,
    \s_araddr[11] ,
    \s_araddr[10] ,
    \s_araddr[9] ,
    \s_araddr[8] ,
    \s_araddr[7] ,
    \s_araddr[6] ,
    \s_araddr[5] ,
    \s_araddr[4] ,
    \s_araddr[3] ,
    \s_araddr[2] ,
    \s_araddr[1] ,
    \s_araddr[0] }),
    .s_axil_awaddr({\s_awaddr[31] ,
    \s_awaddr[30] ,
    \s_awaddr[29] ,
    \s_awaddr[28] ,
    \s_awaddr[27] ,
    \s_awaddr[26] ,
    \s_awaddr[25] ,
    \s_awaddr[24] ,
    \s_awaddr[23] ,
    \s_awaddr[22] ,
    \s_awaddr[21] ,
    \s_awaddr[20] ,
    \s_awaddr[19] ,
    \s_awaddr[18] ,
    \s_awaddr[17] ,
    \s_awaddr[16] ,
    \s_awaddr[15] ,
    \s_awaddr[14] ,
    \s_awaddr[13] ,
    \s_awaddr[12] ,
    \s_awaddr[11] ,
    \s_awaddr[10] ,
    \s_awaddr[9] ,
    \s_awaddr[8] ,
    \s_awaddr[7] ,
    \s_awaddr[6] ,
    \s_awaddr[5] ,
    \s_awaddr[4] ,
    \s_awaddr[3] ,
    \s_awaddr[2] ,
    \s_awaddr[1] ,
    \s_awaddr[0] }),
    .s_axil_bresp({\s_bresp[1] ,
    \s_bresp[0] }),
    .s_axil_rdata({\s_rdata[31] ,
    \s_rdata[30] ,
    \s_rdata[29] ,
    \s_rdata[28] ,
    \s_rdata[27] ,
    \s_rdata[26] ,
    \s_rdata[25] ,
    \s_rdata[24] ,
    \s_rdata[23] ,
    \s_rdata[22] ,
    \s_rdata[21] ,
    \s_rdata[20] ,
    \s_rdata[19] ,
    \s_rdata[18] ,
    \s_rdata[17] ,
    \s_rdata[16] ,
    \s_rdata[15] ,
    \s_rdata[14] ,
    \s_rdata[13] ,
    \s_rdata[12] ,
    \s_rdata[11] ,
    \s_rdata[10] ,
    \s_rdata[9] ,
    \s_rdata[8] ,
    \s_rdata[7] ,
    \s_rdata[6] ,
    \s_rdata[5] ,
    \s_rdata[4] ,
    \s_rdata[3] ,
    \s_rdata[2] ,
    \s_rdata[1] ,
    \s_rdata[0] }),
    .s_axil_rresp({\s_rresp[1] ,
    \s_rresp[0] }),
    .s_axil_wdata({\s_wdata[31] ,
    \s_wdata[30] ,
    \s_wdata[29] ,
    \s_wdata[28] ,
    \s_wdata[27] ,
    \s_wdata[26] ,
    \s_wdata[25] ,
    \s_wdata[24] ,
    \s_wdata[23] ,
    \s_wdata[22] ,
    \s_wdata[21] ,
    \s_wdata[20] ,
    \s_wdata[19] ,
    \s_wdata[18] ,
    \s_wdata[17] ,
    \s_wdata[16] ,
    \s_wdata[15] ,
    \s_wdata[14] ,
    \s_wdata[13] ,
    \s_wdata[12] ,
    \s_wdata[11] ,
    \s_wdata[10] ,
    \s_wdata[9] ,
    \s_wdata[8] ,
    \s_wdata[7] ,
    \s_wdata[6] ,
    \s_wdata[5] ,
    \s_wdata[4] ,
    \s_wdata[3] ,
    \s_wdata[2] ,
    \s_wdata[1] ,
    \s_wdata[0] }),
    .s_axil_wstrb({\s_wstrb[3] ,
    \s_wstrb[2] ,
    \s_wstrb[1] ,
    \s_wstrb[0] }));
endmodule
