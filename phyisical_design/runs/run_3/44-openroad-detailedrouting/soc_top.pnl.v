module soc_top (clk_i,
    rst_ni,
    spi_cs_n,
    spi_miso,
    spi_mosi,
    spi_sclk,
    VPWR,
    VGND,
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
 inout VPWR;
 inout VGND;
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
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire net149;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net160;
 wire net161;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire net170;
 wire net171;
 wire net172;
 wire net173;
 wire net174;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net180;
 wire net181;
 wire net182;
 wire net183;
 wire net184;
 wire net185;
 wire net186;
 wire net187;
 wire net188;
 wire net189;
 wire net190;
 wire net191;
 wire net192;
 wire net193;
 wire net194;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net195;
 wire net196;
 wire net197;
 wire net198;
 wire net199;
 wire net200;
 wire net201;
 wire net202;
 wire net203;
 wire net204;
 wire net205;
 wire net206;
 wire net207;
 wire net208;
 wire net209;
 wire net210;
 wire net211;
 wire net212;
 wire net213;
 wire net214;
 wire net215;
 wire net216;
 wire net217;
 wire net218;
 wire net219;
 wire net220;
 wire net221;
 wire net222;
 wire net223;
 wire net224;
 wire net225;
 wire net226;
 wire net227;
 wire net228;
 wire net229;
 wire net230;
 wire net231;
 wire net232;
 wire net233;
 wire net234;
 wire net235;
 wire net236;
 wire net237;
 wire net238;
 wire net239;
 wire net240;
 wire net241;
 wire net242;
 wire net243;
 wire net244;
 wire net245;
 wire net246;
 wire net247;
 wire net248;
 wire net249;
 wire net250;
 wire net251;
 wire net252;
 wire net253;
 wire net254;
 wire net255;
 wire net256;
 wire net257;
 wire net258;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net259;
 wire net260;
 wire net261;
 wire net262;
 wire net263;
 wire net264;
 wire net265;
 wire net266;
 wire net267;
 wire net268;
 wire net269;
 wire net270;
 wire net271;
 wire net272;
 wire net273;
 wire net274;
 wire net275;
 wire net276;
 wire net277;
 wire net278;
 wire net279;
 wire net280;
 wire net281;
 wire net282;
 wire net283;
 wire net284;
 wire net285;
 wire net286;
 wire net287;
 wire net288;
 wire net289;
 wire net290;
 wire net97;
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
 wire net291;
 wire net98;
 wire net292;
 wire net293;
 wire trap;
 wire VDD;
 wire VSS;
 wire net294;
 wire clknet_0_clk_i;
 wire clknet_1_0__leaf_clk_i;
 wire clknet_1_1__leaf_clk_i;

 sg13g2_antennanp ANTENNA_1 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[5] ));
 sg13g2_antennanp ANTENNA_10 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_wdata[61] ));
 sg13g2_antennanp ANTENNA_11 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[0] ));
 sg13g2_antennanp ANTENNA_12 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[0] ));
 sg13g2_antennanp ANTENNA_13 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[10] ));
 sg13g2_antennanp ANTENNA_14 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[11] ));
 sg13g2_antennanp ANTENNA_15 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[12] ));
 sg13g2_antennanp ANTENNA_16 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[16] ));
 sg13g2_antennanp ANTENNA_17 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[16] ));
 sg13g2_antennanp ANTENNA_18 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[2] ));
 sg13g2_antennanp ANTENNA_19 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[2] ));
 sg13g2_antennanp ANTENNA_2 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[9] ));
 sg13g2_antennanp ANTENNA_20 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[3] ));
 sg13g2_antennanp ANTENNA_21 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[3] ));
 sg13g2_antennanp ANTENNA_22 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[8] ));
 sg13g2_antennanp ANTENNA_23 (.VDD(VPWR),
    .VSS(VGND),
    .A(\cpu_wstrb[1] ));
 sg13g2_antennanp ANTENNA_24 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_araddr[10] ));
 sg13g2_antennanp ANTENNA_25 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_araddr[10] ));
 sg13g2_antennanp ANTENNA_26 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_araddr[10] ));
 sg13g2_antennanp ANTENNA_27 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_araddr[1] ));
 sg13g2_antennanp ANTENNA_28 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_araddr[29] ));
 sg13g2_antennanp ANTENNA_29 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_araddr[29] ));
 sg13g2_antennanp ANTENNA_3 (.VDD(VPWR),
    .VSS(VGND),
    .A(\boot_wdata[9] ));
 sg13g2_antennanp ANTENNA_30 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_araddr[5] ));
 sg13g2_antennanp ANTENNA_31 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_araddr[8] ));
 sg13g2_antennanp ANTENNA_32 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_rdata[92] ));
 sg13g2_antennanp ANTENNA_33 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_wdata[6] ));
 sg13g2_antennanp ANTENNA_34 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_wvalid[0] ));
 sg13g2_antennanp ANTENNA_35 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_wvalid[0] ));
 sg13g2_antennanp ANTENNA_36 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_awaddr[21] ));
 sg13g2_antennanp ANTENNA_37 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_awaddr[21] ));
 sg13g2_antennanp ANTENNA_4 (.VDD(VPWR),
    .VSS(VGND),
    .A(boot_we));
 sg13g2_antennanp ANTENNA_5 (.VDD(VPWR),
    .VSS(VGND),
    .A(\cpu_araddr[8] ));
 sg13g2_antennanp ANTENNA_6 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_awaddr[25] ));
 sg13g2_antennanp ANTENNA_7 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_awaddr[29] ));
 sg13g2_antennanp ANTENNA_8 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_awaddr[31] ));
 sg13g2_antennanp ANTENNA_9 (.VDD(VPWR),
    .VSS(VGND),
    .A(\s_wdata[61] ));
 sg13g2_buf_16 clkbuf_0_clk_i (.X(clknet_0_clk_i),
    .A(clk_i),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_16 clkbuf_1_0__f_clk_i (.X(clknet_1_0__leaf_clk_i),
    .A(clknet_0_clk_i),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_16 clkbuf_1_1__f_clk_i (.X(clknet_1_1__leaf_clk_i),
    .A(clknet_0_clk_i),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_inv_16 clkload0 (.A(clknet_1_1__leaf_clk_i),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input1 (.A(gpio0_in[0]),
    .X(net1),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input10 (.A(gpio0_in[18]),
    .X(net10),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input11 (.A(gpio0_in[19]),
    .X(net11),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input12 (.A(gpio0_in[1]),
    .X(net12),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input13 (.A(gpio0_in[20]),
    .X(net13),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input14 (.A(gpio0_in[21]),
    .X(net14),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input15 (.A(gpio0_in[22]),
    .X(net15),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input16 (.A(gpio0_in[23]),
    .X(net16),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input17 (.A(gpio0_in[24]),
    .X(net17),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input18 (.A(gpio0_in[25]),
    .X(net18),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input19 (.A(gpio0_in[26]),
    .X(net19),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input2 (.A(gpio0_in[10]),
    .X(net2),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input20 (.A(gpio0_in[27]),
    .X(net20),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input21 (.A(gpio0_in[28]),
    .X(net21),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input22 (.A(gpio0_in[29]),
    .X(net22),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input23 (.A(gpio0_in[2]),
    .X(net23),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input24 (.A(gpio0_in[30]),
    .X(net24),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input25 (.A(gpio0_in[31]),
    .X(net25),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input26 (.A(gpio0_in[3]),
    .X(net26),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input27 (.A(gpio0_in[4]),
    .X(net27),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input28 (.A(gpio0_in[5]),
    .X(net28),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input29 (.A(gpio0_in[6]),
    .X(net29),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input3 (.A(gpio0_in[11]),
    .X(net3),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input30 (.A(gpio0_in[7]),
    .X(net30),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input31 (.A(gpio0_in[8]),
    .X(net31),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input32 (.A(gpio0_in[9]),
    .X(net32),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input33 (.A(gpio1_in[0]),
    .X(net33),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input34 (.A(gpio1_in[10]),
    .X(net34),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input35 (.A(gpio1_in[11]),
    .X(net35),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input36 (.A(gpio1_in[12]),
    .X(net36),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input37 (.A(gpio1_in[13]),
    .X(net37),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input38 (.A(gpio1_in[14]),
    .X(net38),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input39 (.A(gpio1_in[15]),
    .X(net39),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input4 (.A(gpio0_in[12]),
    .X(net4),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input40 (.A(gpio1_in[16]),
    .X(net40),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input41 (.A(gpio1_in[17]),
    .X(net41),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input42 (.A(gpio1_in[18]),
    .X(net42),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input43 (.A(gpio1_in[19]),
    .X(net43),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input44 (.A(gpio1_in[1]),
    .X(net44),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input45 (.A(gpio1_in[20]),
    .X(net45),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input46 (.A(gpio1_in[21]),
    .X(net46),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input47 (.A(gpio1_in[22]),
    .X(net47),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input48 (.A(gpio1_in[23]),
    .X(net48),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input49 (.A(gpio1_in[24]),
    .X(net49),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input5 (.A(gpio0_in[13]),
    .X(net5),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input50 (.A(gpio1_in[25]),
    .X(net50),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input51 (.A(gpio1_in[26]),
    .X(net51),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input52 (.A(gpio1_in[27]),
    .X(net52),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input53 (.A(gpio1_in[28]),
    .X(net53),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input54 (.A(gpio1_in[29]),
    .X(net54),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input55 (.A(gpio1_in[2]),
    .X(net55),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input56 (.A(gpio1_in[30]),
    .X(net56),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input57 (.A(gpio1_in[31]),
    .X(net57),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input58 (.A(gpio1_in[3]),
    .X(net58),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input59 (.A(gpio1_in[4]),
    .X(net59),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input6 (.A(gpio0_in[14]),
    .X(net6),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input60 (.A(gpio1_in[5]),
    .X(net60),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input61 (.A(gpio1_in[6]),
    .X(net61),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input62 (.A(gpio1_in[7]),
    .X(net62),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input63 (.A(gpio1_in[8]),
    .X(net63),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input64 (.A(gpio1_in[9]),
    .X(net64),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input65 (.A(gpio2_in[0]),
    .X(net65),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input66 (.A(gpio2_in[10]),
    .X(net66),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input67 (.A(gpio2_in[11]),
    .X(net67),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input68 (.A(gpio2_in[12]),
    .X(net68),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input69 (.A(gpio2_in[13]),
    .X(net69),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input7 (.A(gpio0_in[15]),
    .X(net7),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input70 (.A(gpio2_in[14]),
    .X(net70),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input71 (.A(gpio2_in[15]),
    .X(net71),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input72 (.A(gpio2_in[16]),
    .X(net72),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input73 (.A(gpio2_in[17]),
    .X(net73),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input74 (.A(gpio2_in[18]),
    .X(net74),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input75 (.A(gpio2_in[19]),
    .X(net75),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input76 (.A(gpio2_in[1]),
    .X(net76),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input77 (.A(gpio2_in[20]),
    .X(net77),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input78 (.A(gpio2_in[21]),
    .X(net78),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input79 (.A(gpio2_in[22]),
    .X(net79),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input8 (.A(gpio0_in[16]),
    .X(net8),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input80 (.A(gpio2_in[23]),
    .X(net80),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input81 (.A(gpio2_in[24]),
    .X(net81),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input82 (.A(gpio2_in[25]),
    .X(net82),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input83 (.A(gpio2_in[26]),
    .X(net83),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input84 (.A(gpio2_in[27]),
    .X(net84),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input85 (.A(gpio2_in[28]),
    .X(net85),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input86 (.A(gpio2_in[29]),
    .X(net86),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input87 (.A(gpio2_in[2]),
    .X(net87),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input88 (.A(gpio2_in[30]),
    .X(net88),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input89 (.A(gpio2_in[31]),
    .X(net89),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input9 (.A(gpio0_in[17]),
    .X(net9),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input90 (.A(gpio2_in[3]),
    .X(net90),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input91 (.A(gpio2_in[4]),
    .X(net91),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input92 (.A(gpio2_in[5]),
    .X(net92),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input93 (.A(gpio2_in[6]),
    .X(net93),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input94 (.A(gpio2_in[7]),
    .X(net94),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input95 (.A(gpio2_in[8]),
    .X(net95),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input96 (.A(gpio2_in[9]),
    .X(net96),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input97 (.A(rst_ni),
    .X(net97),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 input98 (.A(spi_miso),
    .X(net98),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_8 max_cap294 (.A(net97),
    .X(net294),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output100 (.A(net100),
    .X(gpio0_dir[10]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output101 (.A(net101),
    .X(gpio0_dir[11]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output102 (.A(net102),
    .X(gpio0_dir[12]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output103 (.A(net103),
    .X(gpio0_dir[13]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output104 (.A(net104),
    .X(gpio0_dir[14]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output105 (.A(net105),
    .X(gpio0_dir[15]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output106 (.A(net106),
    .X(gpio0_dir[16]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output107 (.A(net107),
    .X(gpio0_dir[17]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output108 (.A(net108),
    .X(gpio0_dir[18]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output109 (.A(net109),
    .X(gpio0_dir[19]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output110 (.A(net110),
    .X(gpio0_dir[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output111 (.A(net111),
    .X(gpio0_dir[20]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output112 (.A(net112),
    .X(gpio0_dir[21]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output113 (.A(net113),
    .X(gpio0_dir[22]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output114 (.A(net114),
    .X(gpio0_dir[23]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output115 (.A(net115),
    .X(gpio0_dir[24]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output116 (.A(net116),
    .X(gpio0_dir[25]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output117 (.A(net117),
    .X(gpio0_dir[26]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output118 (.A(net118),
    .X(gpio0_dir[27]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output119 (.A(net119),
    .X(gpio0_dir[28]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output120 (.A(net120),
    .X(gpio0_dir[29]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output121 (.A(net121),
    .X(gpio0_dir[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output122 (.A(net122),
    .X(gpio0_dir[30]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output123 (.A(net123),
    .X(gpio0_dir[31]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output124 (.A(net124),
    .X(gpio0_dir[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output125 (.A(net125),
    .X(gpio0_dir[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output126 (.A(net126),
    .X(gpio0_dir[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output127 (.A(net127),
    .X(gpio0_dir[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output128 (.A(net128),
    .X(gpio0_dir[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output129 (.A(net129),
    .X(gpio0_dir[8]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output130 (.A(net130),
    .X(gpio0_dir[9]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output131 (.A(net131),
    .X(gpio0_out[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output132 (.A(net132),
    .X(gpio0_out[10]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output133 (.A(net133),
    .X(gpio0_out[11]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output134 (.A(net134),
    .X(gpio0_out[12]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output135 (.A(net135),
    .X(gpio0_out[13]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output136 (.A(net136),
    .X(gpio0_out[14]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output137 (.A(net137),
    .X(gpio0_out[15]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output138 (.A(net138),
    .X(gpio0_out[16]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output139 (.A(net139),
    .X(gpio0_out[17]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output140 (.A(net140),
    .X(gpio0_out[18]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output141 (.A(net141),
    .X(gpio0_out[19]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output142 (.A(net142),
    .X(gpio0_out[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output143 (.A(net143),
    .X(gpio0_out[20]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output144 (.A(net144),
    .X(gpio0_out[21]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output145 (.A(net145),
    .X(gpio0_out[22]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output146 (.A(net146),
    .X(gpio0_out[23]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output147 (.A(net147),
    .X(gpio0_out[24]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output148 (.A(net148),
    .X(gpio0_out[25]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output149 (.A(net149),
    .X(gpio0_out[26]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output150 (.A(net150),
    .X(gpio0_out[27]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output151 (.A(net151),
    .X(gpio0_out[28]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output152 (.A(net152),
    .X(gpio0_out[29]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output153 (.A(net153),
    .X(gpio0_out[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output154 (.A(net154),
    .X(gpio0_out[30]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output155 (.A(net155),
    .X(gpio0_out[31]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output156 (.A(net156),
    .X(gpio0_out[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output157 (.A(net157),
    .X(gpio0_out[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output158 (.A(net158),
    .X(gpio0_out[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output159 (.A(net159),
    .X(gpio0_out[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output160 (.A(net160),
    .X(gpio0_out[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output161 (.A(net161),
    .X(gpio0_out[8]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output162 (.A(net162),
    .X(gpio0_out[9]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output163 (.A(net163),
    .X(gpio1_dir[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output164 (.A(net164),
    .X(gpio1_dir[10]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output165 (.A(net165),
    .X(gpio1_dir[11]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output166 (.A(net166),
    .X(gpio1_dir[12]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output167 (.A(net167),
    .X(gpio1_dir[13]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output168 (.A(net168),
    .X(gpio1_dir[14]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output169 (.A(net169),
    .X(gpio1_dir[15]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output170 (.A(net170),
    .X(gpio1_dir[16]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output171 (.A(net171),
    .X(gpio1_dir[17]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output172 (.A(net172),
    .X(gpio1_dir[18]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output173 (.A(net173),
    .X(gpio1_dir[19]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output174 (.A(net174),
    .X(gpio1_dir[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output175 (.A(net175),
    .X(gpio1_dir[20]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output176 (.A(net176),
    .X(gpio1_dir[21]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output177 (.A(net177),
    .X(gpio1_dir[22]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output178 (.A(net178),
    .X(gpio1_dir[23]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output179 (.A(net179),
    .X(gpio1_dir[24]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output180 (.A(net180),
    .X(gpio1_dir[25]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output181 (.A(net181),
    .X(gpio1_dir[26]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output182 (.A(net182),
    .X(gpio1_dir[27]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output183 (.A(net183),
    .X(gpio1_dir[28]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output184 (.A(net184),
    .X(gpio1_dir[29]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output185 (.A(net185),
    .X(gpio1_dir[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output186 (.A(net186),
    .X(gpio1_dir[30]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output187 (.A(net187),
    .X(gpio1_dir[31]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output188 (.A(net188),
    .X(gpio1_dir[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output189 (.A(net189),
    .X(gpio1_dir[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output190 (.A(net190),
    .X(gpio1_dir[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output191 (.A(net191),
    .X(gpio1_dir[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output192 (.A(net192),
    .X(gpio1_dir[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output193 (.A(net193),
    .X(gpio1_dir[8]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output194 (.A(net194),
    .X(gpio1_dir[9]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output195 (.A(net195),
    .X(gpio1_out[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output196 (.A(net196),
    .X(gpio1_out[10]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output197 (.A(net197),
    .X(gpio1_out[11]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output198 (.A(net198),
    .X(gpio1_out[12]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output199 (.A(net199),
    .X(gpio1_out[13]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output200 (.A(net200),
    .X(gpio1_out[14]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output201 (.A(net201),
    .X(gpio1_out[15]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output202 (.A(net202),
    .X(gpio1_out[16]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output203 (.A(net203),
    .X(gpio1_out[17]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output204 (.A(net204),
    .X(gpio1_out[18]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output205 (.A(net205),
    .X(gpio1_out[19]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output206 (.A(net206),
    .X(gpio1_out[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output207 (.A(net207),
    .X(gpio1_out[20]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output208 (.A(net208),
    .X(gpio1_out[21]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output209 (.A(net209),
    .X(gpio1_out[22]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output210 (.A(net210),
    .X(gpio1_out[23]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output211 (.A(net211),
    .X(gpio1_out[24]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output212 (.A(net212),
    .X(gpio1_out[25]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output213 (.A(net213),
    .X(gpio1_out[26]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output214 (.A(net214),
    .X(gpio1_out[27]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output215 (.A(net215),
    .X(gpio1_out[28]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output216 (.A(net216),
    .X(gpio1_out[29]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output217 (.A(net217),
    .X(gpio1_out[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output218 (.A(net218),
    .X(gpio1_out[30]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output219 (.A(net219),
    .X(gpio1_out[31]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output220 (.A(net220),
    .X(gpio1_out[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output221 (.A(net221),
    .X(gpio1_out[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output222 (.A(net222),
    .X(gpio1_out[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output223 (.A(net223),
    .X(gpio1_out[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output224 (.A(net224),
    .X(gpio1_out[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output225 (.A(net225),
    .X(gpio1_out[8]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output226 (.A(net226),
    .X(gpio1_out[9]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output227 (.A(net227),
    .X(gpio2_dir[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output228 (.A(net228),
    .X(gpio2_dir[10]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output229 (.A(net229),
    .X(gpio2_dir[11]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output230 (.A(net230),
    .X(gpio2_dir[12]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output231 (.A(net231),
    .X(gpio2_dir[13]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output232 (.A(net232),
    .X(gpio2_dir[14]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output233 (.A(net233),
    .X(gpio2_dir[15]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output234 (.A(net234),
    .X(gpio2_dir[16]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output235 (.A(net235),
    .X(gpio2_dir[17]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output236 (.A(net236),
    .X(gpio2_dir[18]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output237 (.A(net237),
    .X(gpio2_dir[19]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output238 (.A(net238),
    .X(gpio2_dir[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output239 (.A(net239),
    .X(gpio2_dir[20]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output240 (.A(net240),
    .X(gpio2_dir[21]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output241 (.A(net241),
    .X(gpio2_dir[22]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output242 (.A(net242),
    .X(gpio2_dir[23]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output243 (.A(net243),
    .X(gpio2_dir[24]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output244 (.A(net244),
    .X(gpio2_dir[25]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output245 (.A(net245),
    .X(gpio2_dir[26]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output246 (.A(net246),
    .X(gpio2_dir[27]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output247 (.A(net247),
    .X(gpio2_dir[28]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output248 (.A(net248),
    .X(gpio2_dir[29]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output249 (.A(net249),
    .X(gpio2_dir[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output250 (.A(net250),
    .X(gpio2_dir[30]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output251 (.A(net251),
    .X(gpio2_dir[31]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output252 (.A(net252),
    .X(gpio2_dir[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output253 (.A(net253),
    .X(gpio2_dir[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output254 (.A(net254),
    .X(gpio2_dir[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output255 (.A(net255),
    .X(gpio2_dir[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output256 (.A(net256),
    .X(gpio2_dir[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output257 (.A(net257),
    .X(gpio2_dir[8]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output258 (.A(net258),
    .X(gpio2_dir[9]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output259 (.A(net259),
    .X(gpio2_out[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output260 (.A(net260),
    .X(gpio2_out[10]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output261 (.A(net261),
    .X(gpio2_out[11]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output262 (.A(net262),
    .X(gpio2_out[12]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output263 (.A(net263),
    .X(gpio2_out[13]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output264 (.A(net264),
    .X(gpio2_out[14]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output265 (.A(net265),
    .X(gpio2_out[15]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output266 (.A(net266),
    .X(gpio2_out[16]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output267 (.A(net267),
    .X(gpio2_out[17]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output268 (.A(net268),
    .X(gpio2_out[18]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output269 (.A(net269),
    .X(gpio2_out[19]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output270 (.A(net270),
    .X(gpio2_out[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output271 (.A(net271),
    .X(gpio2_out[20]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output272 (.A(net272),
    .X(gpio2_out[21]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output273 (.A(net273),
    .X(gpio2_out[22]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output274 (.A(net274),
    .X(gpio2_out[23]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output275 (.A(net275),
    .X(gpio2_out[24]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output276 (.A(net276),
    .X(gpio2_out[25]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output277 (.A(net277),
    .X(gpio2_out[26]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output278 (.A(net278),
    .X(gpio2_out[27]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output279 (.A(net279),
    .X(gpio2_out[28]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output280 (.A(net280),
    .X(gpio2_out[29]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output281 (.A(net281),
    .X(gpio2_out[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output282 (.A(net282),
    .X(gpio2_out[30]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output283 (.A(net283),
    .X(gpio2_out[31]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output284 (.A(net284),
    .X(gpio2_out[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output285 (.A(net285),
    .X(gpio2_out[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output286 (.A(net286),
    .X(gpio2_out[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output287 (.A(net287),
    .X(gpio2_out[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output288 (.A(net288),
    .X(gpio2_out[7]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output289 (.A(net289),
    .X(gpio2_out[8]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output290 (.A(net290),
    .X(gpio2_out[9]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output291 (.A(net291),
    .X(spi_cs_n),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output292 (.A(net292),
    .X(spi_mosi),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output293 (.A(net293),
    .X(spi_sclk),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_buf_1 output99 (.A(net99),
    .X(gpio0_dir[0]),
    .VDD(VPWR),
    .VSS(VGND));
 boot_spi_macro u_boot_spi (.VDD(VDD),
    .VSS(VSS),
    .boot_done(boot_done),
    .boot_we(boot_we),
    .clk_i(clknet_1_0__leaf_clk_i),
    .cpu_rst_n(cpu_rst_n),
    .rst_ni(net294),
    .spi_cs_n(net291),
    .spi_miso(net98),
    .spi_mosi(net292),
    .spi_sclk(net293),
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
 picorv32_macro u_cpu (.VDD(VDD),
    .VSS(VSS),
    .clk_i(clknet_1_0__leaf_clk_i),
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
 interconnect_macro u_ic (.VDD(VDD),
    .VSS(VSS),
    .clk_i(clknet_1_1__leaf_clk_i),
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
    .rst_ni(net294),
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
 peripherals_macro u_periph0 (.VDD(VDD),
    .VSS(VSS),
    .clk_i(clknet_1_0__leaf_clk_i),
    .rst_ni(net294),
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
    .gpio_dir({net123,
    net122,
    net120,
    net119,
    net118,
    net117,
    net116,
    net115,
    net114,
    net113,
    net112,
    net111,
    net109,
    net108,
    net107,
    net106,
    net105,
    net104,
    net103,
    net102,
    net101,
    net100,
    net130,
    net129,
    net128,
    net127,
    net126,
    net125,
    net124,
    net121,
    net110,
    net99}),
    .gpio_in({net25,
    net24,
    net22,
    net21,
    net20,
    net19,
    net18,
    net17,
    net16,
    net15,
    net14,
    net13,
    net11,
    net10,
    net9,
    net8,
    net7,
    net6,
    net5,
    net4,
    net3,
    net2,
    net32,
    net31,
    net30,
    net29,
    net28,
    net27,
    net26,
    net23,
    net12,
    net1}),
    .gpio_out({net155,
    net154,
    net152,
    net151,
    net150,
    net149,
    net148,
    net147,
    net146,
    net145,
    net144,
    net143,
    net141,
    net140,
    net139,
    net138,
    net137,
    net136,
    net135,
    net134,
    net133,
    net132,
    net162,
    net161,
    net160,
    net159,
    net158,
    net157,
    net156,
    net153,
    net142,
    net131}),
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
 peripherals_macro u_periph1 (.VDD(VDD),
    .VSS(VSS),
    .clk_i(clknet_1_1__leaf_clk_i),
    .rst_ni(net294),
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
    .gpio_dir({net187,
    net186,
    net184,
    net183,
    net182,
    net181,
    net180,
    net179,
    net178,
    net177,
    net176,
    net175,
    net173,
    net172,
    net171,
    net170,
    net169,
    net168,
    net167,
    net166,
    net165,
    net164,
    net194,
    net193,
    net192,
    net191,
    net190,
    net189,
    net188,
    net185,
    net174,
    net163}),
    .gpio_in({net57,
    net56,
    net54,
    net53,
    net52,
    net51,
    net50,
    net49,
    net48,
    net47,
    net46,
    net45,
    net43,
    net42,
    net41,
    net40,
    net39,
    net38,
    net37,
    net36,
    net35,
    net34,
    net64,
    net63,
    net62,
    net61,
    net60,
    net59,
    net58,
    net55,
    net44,
    net33}),
    .gpio_out({net219,
    net218,
    net216,
    net215,
    net214,
    net213,
    net212,
    net211,
    net210,
    net209,
    net208,
    net207,
    net205,
    net204,
    net203,
    net202,
    net201,
    net200,
    net199,
    net198,
    net197,
    net196,
    net226,
    net225,
    net224,
    net223,
    net222,
    net221,
    net220,
    net217,
    net206,
    net195}),
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
 peripherals_macro u_periph2 (.VDD(VDD),
    .VSS(VSS),
    .clk_i(clknet_1_1__leaf_clk_i),
    .rst_ni(net294),
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
    .gpio_dir({net251,
    net250,
    net248,
    net247,
    net246,
    net245,
    net244,
    net243,
    net242,
    net241,
    net240,
    net239,
    net237,
    net236,
    net235,
    net234,
    net233,
    net232,
    net231,
    net230,
    net229,
    net228,
    net258,
    net257,
    net256,
    net255,
    net254,
    net253,
    net252,
    net249,
    net238,
    net227}),
    .gpio_in({net89,
    net88,
    net86,
    net85,
    net84,
    net83,
    net82,
    net81,
    net80,
    net79,
    net78,
    net77,
    net75,
    net74,
    net73,
    net72,
    net71,
    net70,
    net69,
    net68,
    net67,
    net66,
    net96,
    net95,
    net94,
    net93,
    net92,
    net91,
    net90,
    net87,
    net76,
    net65}),
    .gpio_out({net283,
    net282,
    net280,
    net279,
    net278,
    net277,
    net276,
    net275,
    net274,
    net273,
    net272,
    net271,
    net269,
    net268,
    net267,
    net266,
    net265,
    net264,
    net263,
    net262,
    net261,
    net260,
    net290,
    net289,
    net288,
    net287,
    net286,
    net285,
    net284,
    net281,
    net270,
    net259}),
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
 ram_macro u_ram (.VGND(VGND),
    .VPWR(VPWR),
    .boot_we(boot_we),
    .clk_i(clknet_1_0__leaf_clk_i),
    .rst_ni(net97),
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
