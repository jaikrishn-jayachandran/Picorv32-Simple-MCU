module boot_spi_macro (boot_done,
    boot_we,
    clk_i,
    cpu_rst_n,
    rst_ni,
    spi_cs_n,
    spi_miso,
    spi_mosi,
    spi_sclk,
    VDD,
    VSS,
    boot_addr,
    boot_wdata);
 output boot_done;
 output boot_we;
 input clk_i;
 output cpu_rst_n;
 input rst_ni;
 output spi_cs_n;
 input spi_miso;
 output spi_mosi;
 output spi_sclk;
 inout VDD;
 inout VSS;
 output [31:0] boot_addr;
 output [31:0] boot_wdata;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
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
 wire net291;
 wire net292;
 wire net293;
 wire net294;
 wire net295;
 wire net296;
 wire net297;
 wire net298;
 wire net299;
 wire net300;
 wire net301;
 wire net302;
 wire net303;
 wire net304;
 wire net305;
 wire net306;
 wire net307;
 wire net308;
 wire net309;
 wire net310;
 wire net311;
 wire net312;
 wire net313;
 wire net314;
 wire net315;
 wire net316;
 wire net317;
 wire net318;
 wire net319;
 wire net320;
 wire net321;
 wire net322;
 wire net323;
 wire net324;
 wire net325;
 wire net326;
 wire net327;
 wire net328;
 wire net329;
 wire clknet_0_clk_i;
 wire net159;
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
 wire net160;
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
 wire net65;
 wire net66;
 wire net67;
 wire net1;
 wire net68;
 wire spi_done;
 wire net2;
 wire net69;
 wire \spi_rx[0] ;
 wire \spi_rx[1] ;
 wire \spi_rx[2] ;
 wire \spi_rx[3] ;
 wire \spi_rx[4] ;
 wire \spi_rx[5] ;
 wire \spi_rx[6] ;
 wire \spi_rx[7] ;
 wire net70;
 wire spi_start;
 wire \spi_tx[0] ;
 wire \u_boot_ctrl.byte_cnt[0] ;
 wire \u_boot_ctrl.byte_cnt[1] ;
 wire \u_boot_ctrl.state[0] ;
 wire \u_boot_ctrl.state[1] ;
 wire \u_boot_ctrl.state[2] ;
 wire \u_boot_ctrl.state[3] ;
 wire \u_boot_ctrl.state[4] ;
 wire \u_boot_ctrl.state[5] ;
 wire \u_boot_ctrl.state[7] ;
 wire \u_boot_ctrl.state[8] ;
 wire \u_boot_ctrl.state[9] ;
 wire \u_boot_ctrl.word_asm[0] ;
 wire \u_boot_ctrl.word_asm[10] ;
 wire \u_boot_ctrl.word_asm[11] ;
 wire \u_boot_ctrl.word_asm[12] ;
 wire \u_boot_ctrl.word_asm[13] ;
 wire \u_boot_ctrl.word_asm[14] ;
 wire \u_boot_ctrl.word_asm[15] ;
 wire \u_boot_ctrl.word_asm[16] ;
 wire \u_boot_ctrl.word_asm[17] ;
 wire \u_boot_ctrl.word_asm[18] ;
 wire \u_boot_ctrl.word_asm[19] ;
 wire \u_boot_ctrl.word_asm[1] ;
 wire \u_boot_ctrl.word_asm[20] ;
 wire \u_boot_ctrl.word_asm[21] ;
 wire \u_boot_ctrl.word_asm[22] ;
 wire \u_boot_ctrl.word_asm[23] ;
 wire \u_boot_ctrl.word_asm[24] ;
 wire \u_boot_ctrl.word_asm[25] ;
 wire \u_boot_ctrl.word_asm[26] ;
 wire \u_boot_ctrl.word_asm[27] ;
 wire \u_boot_ctrl.word_asm[28] ;
 wire \u_boot_ctrl.word_asm[29] ;
 wire \u_boot_ctrl.word_asm[2] ;
 wire \u_boot_ctrl.word_asm[30] ;
 wire \u_boot_ctrl.word_asm[31] ;
 wire \u_boot_ctrl.word_asm[3] ;
 wire \u_boot_ctrl.word_asm[4] ;
 wire \u_boot_ctrl.word_asm[5] ;
 wire \u_boot_ctrl.word_asm[6] ;
 wire \u_boot_ctrl.word_asm[7] ;
 wire \u_boot_ctrl.word_asm[8] ;
 wire \u_boot_ctrl.word_asm[9] ;
 wire \u_boot_ctrl.word_cnt[0] ;
 wire \u_boot_ctrl.word_cnt[10] ;
 wire \u_boot_ctrl.word_cnt[11] ;
 wire \u_boot_ctrl.word_cnt[12] ;
 wire \u_boot_ctrl.word_cnt[13] ;
 wire \u_boot_ctrl.word_cnt[14] ;
 wire \u_boot_ctrl.word_cnt[15] ;
 wire \u_boot_ctrl.word_cnt[16] ;
 wire \u_boot_ctrl.word_cnt[17] ;
 wire \u_boot_ctrl.word_cnt[18] ;
 wire \u_boot_ctrl.word_cnt[19] ;
 wire \u_boot_ctrl.word_cnt[1] ;
 wire \u_boot_ctrl.word_cnt[20] ;
 wire \u_boot_ctrl.word_cnt[21] ;
 wire \u_boot_ctrl.word_cnt[22] ;
 wire \u_boot_ctrl.word_cnt[23] ;
 wire \u_boot_ctrl.word_cnt[24] ;
 wire \u_boot_ctrl.word_cnt[25] ;
 wire \u_boot_ctrl.word_cnt[26] ;
 wire \u_boot_ctrl.word_cnt[27] ;
 wire \u_boot_ctrl.word_cnt[28] ;
 wire \u_boot_ctrl.word_cnt[29] ;
 wire \u_boot_ctrl.word_cnt[2] ;
 wire \u_boot_ctrl.word_cnt[30] ;
 wire \u_boot_ctrl.word_cnt[31] ;
 wire \u_boot_ctrl.word_cnt[3] ;
 wire \u_boot_ctrl.word_cnt[4] ;
 wire \u_boot_ctrl.word_cnt[5] ;
 wire \u_boot_ctrl.word_cnt[6] ;
 wire \u_boot_ctrl.word_cnt[7] ;
 wire \u_boot_ctrl.word_cnt[8] ;
 wire \u_boot_ctrl.word_cnt[9] ;
 wire \u_spi.bit_cnt[0] ;
 wire \u_spi.bit_cnt[1] ;
 wire \u_spi.bit_cnt[2] ;
 wire \u_spi.bit_cnt[3] ;
 wire \u_spi.busy ;
 wire \u_spi.div_cnt[0] ;
 wire \u_spi.div_cnt[1] ;
 wire \u_spi.div_cnt[2] ;
 wire \u_spi.div_cnt[3] ;
 wire \u_spi.tx_shift[0] ;
 wire \u_spi.tx_shift[1] ;
 wire \u_spi.tx_shift[2] ;
 wire \u_spi.tx_shift[3] ;
 wire \u_spi.tx_shift[4] ;
 wire \u_spi.tx_shift[5] ;
 wire \u_spi.tx_shift[6] ;
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
 wire net97;
 wire net98;
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
 wire net;
 wire clknet_4_0_0_clk_i;
 wire clknet_4_1_0_clk_i;
 wire clknet_4_2_0_clk_i;
 wire clknet_4_3_0_clk_i;
 wire clknet_4_4_0_clk_i;
 wire clknet_4_5_0_clk_i;
 wire clknet_4_6_0_clk_i;
 wire clknet_4_7_0_clk_i;
 wire clknet_4_8_0_clk_i;
 wire clknet_4_9_0_clk_i;
 wire clknet_4_10_0_clk_i;
 wire clknet_4_11_0_clk_i;
 wire clknet_4_12_0_clk_i;
 wire clknet_4_13_0_clk_i;
 wire clknet_4_14_0_clk_i;
 wire clknet_4_15_0_clk_i;
 wire clknet_5_0__leaf_clk_i;
 wire clknet_5_1__leaf_clk_i;
 wire clknet_5_2__leaf_clk_i;
 wire clknet_5_3__leaf_clk_i;
 wire clknet_5_4__leaf_clk_i;
 wire clknet_5_5__leaf_clk_i;
 wire clknet_5_6__leaf_clk_i;
 wire clknet_5_7__leaf_clk_i;
 wire clknet_5_8__leaf_clk_i;
 wire clknet_5_9__leaf_clk_i;
 wire clknet_5_10__leaf_clk_i;
 wire clknet_5_11__leaf_clk_i;
 wire clknet_5_12__leaf_clk_i;
 wire clknet_5_13__leaf_clk_i;
 wire clknet_5_14__leaf_clk_i;
 wire clknet_5_15__leaf_clk_i;
 wire clknet_5_16__leaf_clk_i;
 wire clknet_5_17__leaf_clk_i;
 wire clknet_5_18__leaf_clk_i;
 wire clknet_5_19__leaf_clk_i;
 wire clknet_5_20__leaf_clk_i;
 wire clknet_5_21__leaf_clk_i;
 wire clknet_5_22__leaf_clk_i;
 wire clknet_5_23__leaf_clk_i;
 wire clknet_5_24__leaf_clk_i;
 wire clknet_5_25__leaf_clk_i;
 wire clknet_5_26__leaf_clk_i;
 wire clknet_5_27__leaf_clk_i;
 wire clknet_5_28__leaf_clk_i;
 wire clknet_5_29__leaf_clk_i;
 wire clknet_5_30__leaf_clk_i;
 wire clknet_5_31__leaf_clk_i;

 sg13g2_inv_1 _0699_ (.VDD(VDD),
    .Y(_0170_),
    .A(net120),
    .VSS(VSS));
 sg13g2_inv_1 _0700_ (.VDD(VDD),
    .Y(_0171_),
    .A(net33),
    .VSS(VSS));
 sg13g2_inv_1 _0701_ (.VDD(VDD),
    .Y(_0172_),
    .A(\u_boot_ctrl.word_cnt[31] ),
    .VSS(VSS));
 sg13g2_inv_1 _0702_ (.VDD(VDD),
    .Y(_0173_),
    .A(\u_boot_ctrl.word_cnt[30] ),
    .VSS(VSS));
 sg13g2_inv_1 _0703_ (.VDD(VDD),
    .Y(_0174_),
    .A(\u_boot_ctrl.word_cnt[29] ),
    .VSS(VSS));
 sg13g2_inv_1 _0704_ (.VDD(VDD),
    .Y(_0175_),
    .A(\u_boot_ctrl.word_cnt[28] ),
    .VSS(VSS));
 sg13g2_inv_1 _0705_ (.VDD(VDD),
    .Y(_0176_),
    .A(\u_boot_ctrl.word_cnt[27] ),
    .VSS(VSS));
 sg13g2_inv_1 _0706_ (.VDD(VDD),
    .Y(_0177_),
    .A(\u_boot_ctrl.word_cnt[26] ),
    .VSS(VSS));
 sg13g2_inv_1 _0707_ (.VDD(VDD),
    .Y(_0178_),
    .A(\u_boot_ctrl.word_cnt[25] ),
    .VSS(VSS));
 sg13g2_inv_1 _0708_ (.VDD(VDD),
    .Y(_0179_),
    .A(\u_boot_ctrl.word_cnt[23] ),
    .VSS(VSS));
 sg13g2_inv_1 _0709_ (.VDD(VDD),
    .Y(_0180_),
    .A(\u_boot_ctrl.word_cnt[22] ),
    .VSS(VSS));
 sg13g2_inv_1 _0710_ (.VDD(VDD),
    .Y(_0181_),
    .A(\u_boot_ctrl.word_cnt[21] ),
    .VSS(VSS));
 sg13g2_inv_1 _0711_ (.VDD(VDD),
    .Y(_0182_),
    .A(\u_boot_ctrl.word_cnt[20] ),
    .VSS(VSS));
 sg13g2_inv_1 _0712_ (.VDD(VDD),
    .Y(_0183_),
    .A(\u_boot_ctrl.word_cnt[19] ),
    .VSS(VSS));
 sg13g2_inv_1 _0713_ (.VDD(VDD),
    .Y(_0184_),
    .A(\u_boot_ctrl.word_cnt[18] ),
    .VSS(VSS));
 sg13g2_inv_1 _0714_ (.VDD(VDD),
    .Y(_0185_),
    .A(\u_boot_ctrl.word_cnt[17] ),
    .VSS(VSS));
 sg13g2_inv_1 _0715_ (.VDD(VDD),
    .Y(_0186_),
    .A(\u_boot_ctrl.word_cnt[15] ),
    .VSS(VSS));
 sg13g2_inv_1 _0716_ (.VDD(VDD),
    .Y(_0003_),
    .A(net155),
    .VSS(VSS));
 sg13g2_nand2_1 _0717_ (.Y(_0187_),
    .A(net128),
    .B(net115),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand3_1 _0718_ (.B(\u_boot_ctrl.byte_cnt[0] ),
    .C(net154),
    .A(\u_boot_ctrl.byte_cnt[1] ),
    .Y(_0188_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0719_ (.A(net89),
    .B(_0188_),
    .Y(_0002_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _0720_ (.A(net148),
    .B(\u_boot_ctrl.state[0] ),
    .X(_0001_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _0721_ (.A(net101),
    .B(net148),
    .X(_0000_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and3_1 _0722_ (.X(_0189_),
    .A(net154),
    .B(net128),
    .C(\u_boot_ctrl.state[3] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0723_ (.A(net128),
    .B(net140),
    .Y(_0190_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21o_1 _0724_ (.A2(_0190_),
    .A1(\u_boot_ctrl.state[8] ),
    .B1(_0189_),
    .X(_0009_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and3_1 _0725_ (.X(_0191_),
    .A(net154),
    .B(net128),
    .C(\u_boot_ctrl.state[2] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21o_1 _0726_ (.A2(_0190_),
    .A1(\u_boot_ctrl.state[7] ),
    .B1(_0191_),
    .X(_0008_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0727_ (.A(\u_boot_ctrl.word_cnt[25] ),
    .B(\u_boot_ctrl.word_cnt[24] ),
    .C(\u_boot_ctrl.word_cnt[23] ),
    .D(\u_boot_ctrl.word_cnt[22] ),
    .Y(_0192_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0728_ (.A(\u_boot_ctrl.word_cnt[21] ),
    .B(\u_boot_ctrl.word_cnt[20] ),
    .C(\u_boot_ctrl.word_cnt[19] ),
    .D(\u_boot_ctrl.word_cnt[18] ),
    .Y(_0193_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0729_ (.A(\u_boot_ctrl.word_cnt[13] ),
    .B(net132),
    .C(\u_boot_ctrl.word_cnt[11] ),
    .D(\u_boot_ctrl.word_cnt[10] ),
    .Y(_0194_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0730_ (.A(\u_boot_ctrl.word_cnt[17] ),
    .B(\u_boot_ctrl.word_cnt[16] ),
    .C(\u_boot_ctrl.word_cnt[15] ),
    .D(\u_boot_ctrl.word_cnt[14] ),
    .Y(_0195_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and4_1 _0731_ (.A(_0192_),
    .B(_0193_),
    .C(_0194_),
    .D(_0195_),
    .X(_0196_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0732_ (.B(_0193_),
    .C(_0194_),
    .A(_0192_),
    .Y(_0197_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0195_));
 sg13g2_nand2_1 _0733_ (.Y(_0198_),
    .A(\u_boot_ctrl.word_cnt[9] ),
    .B(\u_boot_ctrl.word_cnt[8] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0734_ (.A(\u_boot_ctrl.word_cnt[31] ),
    .B(\u_boot_ctrl.word_cnt[30] ),
    .C(_0198_),
    .Y(_0199_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0735_ (.B(_0173_),
    .C(\u_boot_ctrl.word_cnt[9] ),
    .A(_0172_),
    .Y(_0200_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[8] ));
 sg13g2_nor2_1 _0736_ (.A(\u_boot_ctrl.word_cnt[29] ),
    .B(\u_boot_ctrl.word_cnt[28] ),
    .Y(_0201_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0737_ (.A(\u_boot_ctrl.word_cnt[27] ),
    .B(\u_boot_ctrl.word_cnt[26] ),
    .Y(_0202_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0738_ (.A(\u_boot_ctrl.word_cnt[29] ),
    .B(\u_boot_ctrl.word_cnt[28] ),
    .C(\u_boot_ctrl.word_cnt[27] ),
    .D(\u_boot_ctrl.word_cnt[26] ),
    .Y(_0203_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2_1 _0739_ (.Y(_0204_),
    .A(_0201_),
    .B(_0202_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0740_ (.B(\u_boot_ctrl.word_cnt[6] ),
    .C(\u_boot_ctrl.word_cnt[5] ),
    .A(\u_boot_ctrl.word_cnt[7] ),
    .Y(_0205_),
    .VDD(VDD),
    .VSS(VSS),
    .D(net133));
 sg13g2_nand4_1 _0741_ (.B(\u_boot_ctrl.word_cnt[3] ),
    .C(\u_boot_ctrl.word_cnt[2] ),
    .A(\u_boot_ctrl.word_cnt[4] ),
    .Y(_0206_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[1] ));
 sg13g2_nor2_1 _0742_ (.A(_0205_),
    .B(_0206_),
    .Y(_0207_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and4_1 _0743_ (.A(\u_boot_ctrl.word_cnt[3] ),
    .B(\u_boot_ctrl.word_cnt[2] ),
    .C(\u_boot_ctrl.word_cnt[1] ),
    .D(net133),
    .X(_0208_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0744_ (.B(\u_boot_ctrl.word_cnt[2] ),
    .C(\u_boot_ctrl.word_cnt[1] ),
    .A(\u_boot_ctrl.word_cnt[3] ),
    .Y(_0209_),
    .VDD(VDD),
    .VSS(VSS),
    .D(net133));
 sg13g2_and4_1 _0745_ (.A(\u_boot_ctrl.word_cnt[7] ),
    .B(\u_boot_ctrl.word_cnt[6] ),
    .C(\u_boot_ctrl.word_cnt[5] ),
    .D(\u_boot_ctrl.word_cnt[4] ),
    .X(_0210_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0746_ (.B(\u_boot_ctrl.word_cnt[6] ),
    .C(\u_boot_ctrl.word_cnt[5] ),
    .A(\u_boot_ctrl.word_cnt[7] ),
    .Y(_0211_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[4] ));
 sg13g2_nor2_1 _0747_ (.A(net85),
    .B(_0211_),
    .Y(_0212_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0748_ (.A(_0200_),
    .B(_0204_),
    .C(net85),
    .D(_0211_),
    .Y(_0213_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0749_ (.B(_0203_),
    .C(_0208_),
    .A(_0199_),
    .Y(_0214_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0210_));
 sg13g2_nand3_1 _0750_ (.B(_0196_),
    .C(_0213_),
    .A(\u_boot_ctrl.state[1] ),
    .Y(_0215_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0751_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0171_),
    .A2(_0215_),
    .Y(_0007_),
    .B1(net140));
 sg13g2_o21ai_1 _0752_ (.B1(\u_boot_ctrl.state[1] ),
    .VDD(VDD),
    .Y(_0216_),
    .VSS(VSS),
    .A1(_0197_),
    .A2(_0214_));
 sg13g2_nand3_1 _0753_ (.B(\u_boot_ctrl.byte_cnt[0] ),
    .C(net128),
    .A(\u_boot_ctrl.byte_cnt[1] ),
    .Y(_0217_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a22oi_1 _0754_ (.Y(_0218_),
    .B1(net115),
    .B2(_0217_),
    .A2(\u_boot_ctrl.state[7] ),
    .A1(net128),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0755_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0216_),
    .A2(_0218_),
    .Y(_0006_),
    .B1(net140));
 sg13g2_a22oi_1 _0756_ (.Y(_0219_),
    .B1(_0190_),
    .B2(\u_boot_ctrl.state[3] ),
    .A2(\u_boot_ctrl.state[5] ),
    .A1(net154),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_inv_1 _0757_ (.VDD(VDD),
    .Y(_0005_),
    .A(_0219_),
    .VSS(VSS));
 sg13g2_and3_1 _0758_ (.X(_0220_),
    .A(net154),
    .B(net128),
    .C(\u_boot_ctrl.state[8] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21o_1 _0759_ (.A2(_0190_),
    .A1(\u_boot_ctrl.state[2] ),
    .B1(_0220_),
    .X(_0004_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0760_ (.A(\u_boot_ctrl.state[2] ),
    .B(\u_boot_ctrl.state[7] ),
    .C(\u_boot_ctrl.state[8] ),
    .Y(_0221_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0761_ (.A(net115),
    .B(net140),
    .Y(_0222_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0762_ (.B1(_0222_),
    .VDD(VDD),
    .Y(_0223_),
    .VSS(VSS),
    .A1(\spi_tx[0] ),
    .A2(\u_boot_ctrl.state[3] ));
 sg13g2_nor4_1 _0763_ (.A(\u_boot_ctrl.state[2] ),
    .B(\u_boot_ctrl.state[7] ),
    .C(\u_boot_ctrl.state[8] ),
    .D(_0223_),
    .Y(_0010_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0764_ (.B1(net155),
    .VDD(VDD),
    .Y(_0224_),
    .VSS(VSS),
    .A1(net109),
    .A2(net23));
 sg13g2_nor2b_1 _0765_ (.A(\u_boot_ctrl.word_cnt[0] ),
    .B_N(net109),
    .Y(_0225_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0766_ (.A(_0224_),
    .B(_0225_),
    .Y(_0011_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0767_ (.A(\u_boot_ctrl.word_cnt[1] ),
    .B_N(net104),
    .Y(_0226_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0768_ (.B1(net147),
    .VDD(VDD),
    .Y(_0227_),
    .VSS(VSS),
    .A1(net104),
    .A2(net26));
 sg13g2_nor2_1 _0769_ (.A(_0227_),
    .B(_0226_),
    .Y(_0012_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0770_ (.A(\u_boot_ctrl.word_cnt[2] ),
    .B_N(net104),
    .Y(_0228_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0771_ (.B1(net147),
    .VDD(VDD),
    .Y(_0229_),
    .VSS(VSS),
    .A1(net104),
    .A2(net27));
 sg13g2_nor2_1 _0772_ (.A(_0229_),
    .B(_0228_),
    .Y(_0013_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0773_ (.A(\u_boot_ctrl.word_cnt[3] ),
    .B_N(net104),
    .Y(_0230_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0774_ (.B1(net147),
    .VDD(VDD),
    .Y(_0231_),
    .VSS(VSS),
    .A1(net104),
    .A2(net28));
 sg13g2_nor2_1 _0775_ (.A(_0231_),
    .B(_0230_),
    .Y(_0014_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0776_ (.A(\u_boot_ctrl.word_cnt[4] ),
    .B_N(net109),
    .Y(_0232_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0777_ (.B1(net155),
    .VDD(VDD),
    .Y(_0233_),
    .VSS(VSS),
    .A1(net109),
    .A2(net29));
 sg13g2_nor2_1 _0778_ (.A(_0233_),
    .B(_0232_),
    .Y(_0015_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0779_ (.A(\u_boot_ctrl.word_cnt[5] ),
    .B_N(net109),
    .Y(_0234_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0780_ (.B1(net155),
    .VDD(VDD),
    .Y(_0235_),
    .VSS(VSS),
    .A1(net109),
    .A2(net30));
 sg13g2_nor2_1 _0781_ (.A(_0235_),
    .B(_0234_),
    .Y(_0016_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0782_ (.A(\u_boot_ctrl.word_cnt[6] ),
    .B_N(net109),
    .Y(_0236_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0783_ (.B1(net155),
    .VDD(VDD),
    .Y(_0237_),
    .VSS(VSS),
    .A1(net110),
    .A2(net31));
 sg13g2_nor2_1 _0784_ (.A(_0237_),
    .B(_0236_),
    .Y(_0017_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0785_ (.A(\u_boot_ctrl.word_cnt[7] ),
    .B_N(net104),
    .Y(_0238_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0786_ (.B1(net147),
    .VDD(VDD),
    .Y(_0239_),
    .VSS(VSS),
    .A1(net110),
    .A2(net32));
 sg13g2_nor2_1 _0787_ (.A(_0239_),
    .B(_0238_),
    .Y(_0018_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0788_ (.A(\u_boot_ctrl.word_cnt[8] ),
    .B_N(net102),
    .Y(_0240_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0789_ (.B1(net145),
    .VDD(VDD),
    .Y(_0241_),
    .VSS(VSS),
    .A1(net102),
    .A2(net3));
 sg13g2_nor2_1 _0790_ (.A(_0241_),
    .B(_0240_),
    .Y(_0019_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0791_ (.A(\u_boot_ctrl.word_cnt[9] ),
    .B_N(net102),
    .Y(_0242_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0792_ (.B1(net146),
    .VDD(VDD),
    .Y(_0243_),
    .VSS(VSS),
    .A1(net102),
    .A2(net4));
 sg13g2_nor2_1 _0793_ (.A(_0243_),
    .B(_0242_),
    .Y(_0020_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0794_ (.A(\u_boot_ctrl.word_cnt[10] ),
    .B_N(net103),
    .Y(_0244_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0795_ (.B1(net146),
    .VDD(VDD),
    .Y(_0245_),
    .VSS(VSS),
    .A1(net103),
    .A2(net5));
 sg13g2_nor2_1 _0796_ (.A(_0245_),
    .B(_0244_),
    .Y(_0021_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0797_ (.A(\u_boot_ctrl.word_cnt[11] ),
    .B_N(net103),
    .Y(_0246_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0798_ (.B1(net146),
    .VDD(VDD),
    .Y(_0247_),
    .VSS(VSS),
    .A1(net103),
    .A2(net6));
 sg13g2_nor2_1 _0799_ (.A(_0247_),
    .B(_0246_),
    .Y(_0022_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0800_ (.A(net132),
    .B_N(net102),
    .Y(_0248_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0801_ (.B1(net146),
    .VDD(VDD),
    .Y(_0249_),
    .VSS(VSS),
    .A1(net102),
    .A2(net7));
 sg13g2_nor2_1 _0802_ (.A(_0249_),
    .B(_0248_),
    .Y(_0023_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0803_ (.A(\u_boot_ctrl.word_cnt[13] ),
    .B_N(net102),
    .Y(_0250_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0804_ (.B1(net146),
    .VDD(VDD),
    .Y(_0251_),
    .VSS(VSS),
    .A1(net102),
    .A2(net8));
 sg13g2_nor2_1 _0805_ (.A(_0251_),
    .B(_0250_),
    .Y(_0024_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0806_ (.A(\u_boot_ctrl.word_cnt[14] ),
    .B_N(net100),
    .Y(_0252_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0807_ (.B1(net145),
    .VDD(VDD),
    .Y(_0253_),
    .VSS(VSS),
    .A1(net100),
    .A2(net9));
 sg13g2_nor2_1 _0808_ (.A(_0253_),
    .B(_0252_),
    .Y(_0025_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0809_ (.B1(net145),
    .VDD(VDD),
    .Y(_0254_),
    .VSS(VSS),
    .A1(net100),
    .A2(net10));
 sg13g2_a21oi_1 _0810_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net100),
    .A2(_0186_),
    .Y(_0026_),
    .B1(_0254_));
 sg13g2_nor2b_1 _0811_ (.A(\u_boot_ctrl.word_cnt[16] ),
    .B_N(net101),
    .Y(_0255_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0812_ (.B1(net147),
    .VDD(VDD),
    .Y(_0256_),
    .VSS(VSS),
    .A1(net105),
    .A2(net11));
 sg13g2_nor2_1 _0813_ (.A(_0256_),
    .B(_0255_),
    .Y(_0027_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0814_ (.B1(net147),
    .VDD(VDD),
    .Y(_0257_),
    .VSS(VSS),
    .A1(net110),
    .A2(net12));
 sg13g2_a21oi_1 _0815_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net104),
    .A2(_0185_),
    .Y(_0028_),
    .B1(_0257_));
 sg13g2_o21ai_1 _0816_ (.B1(net145),
    .VDD(VDD),
    .Y(_0258_),
    .VSS(VSS),
    .A1(net99),
    .A2(net13));
 sg13g2_a21oi_1 _0817_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net100),
    .A2(_0184_),
    .Y(_0029_),
    .B1(_0258_));
 sg13g2_o21ai_1 _0818_ (.B1(net144),
    .VDD(VDD),
    .Y(_0259_),
    .VSS(VSS),
    .A1(net93),
    .A2(net14));
 sg13g2_a21oi_1 _0819_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net94),
    .A2(_0183_),
    .Y(_0030_),
    .B1(_0259_));
 sg13g2_o21ai_1 _0820_ (.B1(net144),
    .VDD(VDD),
    .Y(_0260_),
    .VSS(VSS),
    .A1(net94),
    .A2(net15));
 sg13g2_a21oi_1 _0821_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net94),
    .A2(_0182_),
    .Y(_0031_),
    .B1(_0260_));
 sg13g2_o21ai_1 _0822_ (.B1(net144),
    .VDD(VDD),
    .Y(_0261_),
    .VSS(VSS),
    .A1(net94),
    .A2(net16));
 sg13g2_a21oi_1 _0823_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net94),
    .A2(_0181_),
    .Y(_0032_),
    .B1(_0261_));
 sg13g2_o21ai_1 _0824_ (.B1(net149),
    .VDD(VDD),
    .Y(_0262_),
    .VSS(VSS),
    .A1(net94),
    .A2(net17));
 sg13g2_a21oi_1 _0825_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net94),
    .A2(_0180_),
    .Y(_0033_),
    .B1(_0262_));
 sg13g2_o21ai_1 _0826_ (.B1(net144),
    .VDD(VDD),
    .Y(_0263_),
    .VSS(VSS),
    .A1(net93),
    .A2(net18));
 sg13g2_a21oi_1 _0827_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net93),
    .A2(_0179_),
    .Y(_0034_),
    .B1(_0263_));
 sg13g2_mux2_1 _0828_ (.A0(net19),
    .A1(\u_boot_ctrl.word_cnt[24] ),
    .S(net93),
    .X(_0264_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _0829_ (.A(_0264_),
    .B(net144),
    .X(_0035_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0830_ (.B1(net144),
    .VDD(VDD),
    .Y(_0265_),
    .VSS(VSS),
    .A1(net93),
    .A2(net20));
 sg13g2_a21oi_1 _0831_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net93),
    .A2(_0178_),
    .Y(_0036_),
    .B1(_0265_));
 sg13g2_o21ai_1 _0832_ (.B1(net144),
    .VDD(VDD),
    .Y(_0266_),
    .VSS(VSS),
    .A1(net93),
    .A2(net21));
 sg13g2_a21oi_1 _0833_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net93),
    .A2(_0177_),
    .Y(_0037_),
    .B1(_0266_));
 sg13g2_o21ai_1 _0834_ (.B1(net145),
    .VDD(VDD),
    .Y(_0267_),
    .VSS(VSS),
    .A1(net99),
    .A2(net22));
 sg13g2_a21oi_1 _0835_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net99),
    .A2(_0176_),
    .Y(_0038_),
    .B1(_0267_));
 sg13g2_and2_1 _0836_ (.A(net99),
    .B(\u_boot_ctrl.word_cnt[28] ),
    .X(_0268_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _0837_ (.A0(net24),
    .A1(\u_boot_ctrl.word_cnt[28] ),
    .S(net99),
    .X(_0269_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _0838_ (.A(_0269_),
    .B(net145),
    .X(_0039_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0839_ (.B1(net145),
    .VDD(VDD),
    .Y(_0270_),
    .VSS(VSS),
    .A1(net99),
    .A2(net25));
 sg13g2_a21oi_1 _0840_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net99),
    .A2(_0174_),
    .Y(_0040_),
    .B1(_0270_));
 sg13g2_nand2b_1 _0841_ (.Y(_0271_),
    .B(\u_boot_ctrl.state[0] ),
    .A_N(net105),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _0842_ (.A(net84),
    .B(net147),
    .X(_0272_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2_1 _0843_ (.Y(_0273_),
    .A(net84),
    .B(net146),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0844_ (.B1(net148),
    .VDD(VDD),
    .Y(_0274_),
    .VSS(VSS),
    .A1(net105),
    .A2(net133));
 sg13g2_nor2_1 _0845_ (.A(net109),
    .B(\u_boot_ctrl.state[0] ),
    .Y(_0275_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_or2_1 _0846_ (.VSS(VSS),
    .VDD(VDD),
    .X(_0276_),
    .B(\u_boot_ctrl.state[0] ),
    .A(net105));
 sg13g2_a21oi_1 _0847_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net81),
    .A2(net133),
    .Y(_0041_),
    .B1(_0274_));
 sg13g2_a21o_1 _0848_ (.A2(net133),
    .A1(net82),
    .B1(\u_boot_ctrl.word_cnt[1] ),
    .X(_0277_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand3_1 _0849_ (.B(net133),
    .C(\u_boot_ctrl.word_cnt[1] ),
    .A(net82),
    .Y(_0278_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and4_1 _0850_ (.A(_0277_),
    .B(net147),
    .C(net84),
    .D(_0278_),
    .X(_0042_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _0851_ (.A(\u_boot_ctrl.word_cnt[2] ),
    .B_N(_0278_),
    .Y(_0279_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and4_1 _0852_ (.A(net82),
    .B(net133),
    .C(\u_boot_ctrl.word_cnt[1] ),
    .D(\u_boot_ctrl.word_cnt[2] ),
    .X(_0280_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0853_ (.A(_0280_),
    .B(net74),
    .C(_0279_),
    .Y(_0043_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0854_ (.A(\u_boot_ctrl.word_cnt[3] ),
    .B(_0280_),
    .Y(_0281_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0855_ (.A(net83),
    .B(net85),
    .Y(_0282_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0856_ (.A(_0282_),
    .B(net74),
    .C(_0281_),
    .Y(_0044_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0857_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0208_),
    .A2(net82),
    .Y(_0283_),
    .B1(\u_boot_ctrl.word_cnt[4] ));
 sg13g2_o21ai_1 _0858_ (.B1(\u_boot_ctrl.word_cnt[4] ),
    .VDD(VDD),
    .Y(_0284_),
    .VSS(VSS),
    .A1(net105),
    .A2(\u_boot_ctrl.state[0] ));
 sg13g2_nor2_1 _0859_ (.A(net85),
    .B(_0284_),
    .Y(_0285_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0860_ (.A(_0285_),
    .B(net74),
    .C(_0283_),
    .Y(_0045_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0861_ (.B1(_0272_),
    .VDD(VDD),
    .Y(_0286_),
    .VSS(VSS),
    .A1(\u_boot_ctrl.word_cnt[5] ),
    .A2(_0285_));
 sg13g2_a21oi_1 _0862_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_boot_ctrl.word_cnt[5] ),
    .A2(_0285_),
    .Y(_0046_),
    .B1(_0286_));
 sg13g2_a21oi_1 _0863_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_boot_ctrl.word_cnt[5] ),
    .A2(_0285_),
    .Y(_0287_),
    .B1(\u_boot_ctrl.word_cnt[6] ));
 sg13g2_and3_1 _0864_ (.X(_0288_),
    .A(\u_boot_ctrl.word_cnt[6] ),
    .B(\u_boot_ctrl.word_cnt[5] ),
    .C(_0285_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0865_ (.A(_0273_),
    .B(_0287_),
    .C(_0288_),
    .Y(_0047_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0866_ (.A(\u_boot_ctrl.word_cnt[7] ),
    .B(_0288_),
    .Y(_0289_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0867_ (.A(net83),
    .B(_0211_),
    .C(_0209_),
    .Y(_0290_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0868_ (.A(_0290_),
    .B(_0273_),
    .C(_0289_),
    .Y(_0048_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0869_ (.A(net83),
    .B(_0211_),
    .C(_0209_),
    .Y(_0291_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0870_ (.B1(_0272_),
    .VDD(VDD),
    .Y(_0292_),
    .VSS(VSS),
    .A1(\u_boot_ctrl.word_cnt[8] ),
    .A2(_0291_));
 sg13g2_a21oi_1 _0871_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_boot_ctrl.word_cnt[8] ),
    .A2(_0290_),
    .Y(_0049_),
    .B1(_0292_));
 sg13g2_a21oi_1 _0872_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_boot_ctrl.word_cnt[8] ),
    .A2(_0291_),
    .Y(_0293_),
    .B1(\u_boot_ctrl.word_cnt[9] ));
 sg13g2_nor4_1 _0873_ (.A(_0198_),
    .B(net85),
    .C(_0211_),
    .D(net83),
    .Y(_0294_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0874_ (.A(_0294_),
    .B(net74),
    .C(_0293_),
    .Y(_0050_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0875_ (.B1(_0272_),
    .VDD(VDD),
    .Y(_0295_),
    .VSS(VSS),
    .A1(\u_boot_ctrl.word_cnt[10] ),
    .A2(_0294_));
 sg13g2_a21oi_1 _0876_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_boot_ctrl.word_cnt[10] ),
    .A2(_0294_),
    .Y(_0051_),
    .B1(_0295_));
 sg13g2_a21oi_1 _0877_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_boot_ctrl.word_cnt[10] ),
    .A2(_0294_),
    .Y(_0296_),
    .B1(\u_boot_ctrl.word_cnt[11] ));
 sg13g2_nand4_1 _0878_ (.B(\u_boot_ctrl.word_cnt[10] ),
    .C(\u_boot_ctrl.word_cnt[9] ),
    .A(\u_boot_ctrl.word_cnt[11] ),
    .Y(_0297_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[8] ));
 sg13g2_nor4_1 _0879_ (.A(net83),
    .B(_0297_),
    .C(net85),
    .D(_0211_),
    .Y(_0298_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0880_ (.A(_0298_),
    .B(net74),
    .C(_0296_),
    .Y(_0052_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0881_ (.B1(_0272_),
    .VDD(VDD),
    .Y(_0299_),
    .VSS(VSS),
    .A1(net132),
    .A2(_0298_));
 sg13g2_a21oi_1 _0882_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net132),
    .A2(_0298_),
    .Y(_0053_),
    .B1(_0299_));
 sg13g2_a21oi_1 _0883_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net132),
    .A2(_0298_),
    .Y(_0300_),
    .B1(\u_boot_ctrl.word_cnt[13] ));
 sg13g2_and2_1 _0884_ (.A(\u_boot_ctrl.word_cnt[13] ),
    .B(net132),
    .X(_0301_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0885_ (.B(\u_boot_ctrl.word_cnt[12] ),
    .C(\u_boot_ctrl.word_cnt[11] ),
    .A(\u_boot_ctrl.word_cnt[13] ),
    .Y(_0302_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[10] ));
 sg13g2_and3_1 _0886_ (.X(_0303_),
    .A(\u_boot_ctrl.word_cnt[13] ),
    .B(net132),
    .C(_0298_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0887_ (.A(net74),
    .B(_0300_),
    .C(_0303_),
    .Y(_0054_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0888_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0298_),
    .A2(_0301_),
    .Y(_0304_),
    .B1(\u_boot_ctrl.word_cnt[14] ));
 sg13g2_and4_1 _0889_ (.A(\u_boot_ctrl.word_cnt[14] ),
    .B(\u_boot_ctrl.word_cnt[13] ),
    .C(net132),
    .D(_0298_),
    .X(_0305_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand3_1 _0890_ (.B(_0298_),
    .C(_0301_),
    .A(\u_boot_ctrl.word_cnt[14] ),
    .Y(_0306_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0891_ (.A(net74),
    .B(_0304_),
    .C(_0305_),
    .Y(_0055_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0892_ (.B(\u_boot_ctrl.word_cnt[14] ),
    .C(\u_boot_ctrl.word_cnt[9] ),
    .A(\u_boot_ctrl.word_cnt[15] ),
    .Y(_0307_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[8] ));
 sg13g2_nor2_1 _0893_ (.A(_0302_),
    .B(_0307_),
    .Y(_0308_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0894_ (.A(_0205_),
    .B(_0206_),
    .C(_0302_),
    .D(_0307_),
    .Y(_0309_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0895_ (.B(\u_boot_ctrl.word_cnt[14] ),
    .C(\u_boot_ctrl.word_cnt[13] ),
    .A(\u_boot_ctrl.word_cnt[15] ),
    .Y(_0310_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[12] ));
 sg13g2_nor2_1 _0896_ (.A(_0297_),
    .B(_0310_),
    .Y(_0311_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0897_ (.A(net85),
    .B(_0211_),
    .C(_0297_),
    .D(_0310_),
    .Y(_0312_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _0898_ (.A(net85),
    .B(_0211_),
    .C(_0297_),
    .D(_0310_),
    .Y(_0313_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a221oi_1 _0899_ (.VDD(VDD),
    .VSS(VSS),
    .B2(_0186_),
    .C1(net74),
    .B1(_0306_),
    .A1(net81),
    .Y(_0056_),
    .A2(_0312_));
 sg13g2_and4_1 _0900_ (.A(net81),
    .B(net73),
    .C(_0208_),
    .D(_0210_),
    .X(_0314_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21o_1 _0901_ (.A2(net73),
    .A1(_0291_),
    .B1(\u_boot_ctrl.word_cnt[16] ),
    .X(_0315_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0902_ (.B(_0207_),
    .C(_0308_),
    .A(\u_boot_ctrl.word_cnt[16] ),
    .Y(_0316_),
    .VDD(VDD),
    .VSS(VSS),
    .D(net81));
 sg13g2_and4_1 _0903_ (.A(_0315_),
    .B(net148),
    .C(_0271_),
    .D(_0316_),
    .X(_0057_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _0904_ (.A(\u_boot_ctrl.word_cnt[17] ),
    .B(\u_boot_ctrl.word_cnt[16] ),
    .X(_0317_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0905_ (.B(_0282_),
    .C(net73),
    .A(_0210_),
    .Y(_0318_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0317_));
 sg13g2_a221oi_1 _0906_ (.VDD(VDD),
    .VSS(VSS),
    .B2(_0314_),
    .C1(net75),
    .B1(_0317_),
    .A1(_0185_),
    .Y(_0058_),
    .A2(_0316_));
 sg13g2_nand4_1 _0907_ (.B(_0309_),
    .C(_0317_),
    .A(\u_boot_ctrl.word_cnt[18] ),
    .Y(_0319_),
    .VDD(VDD),
    .VSS(VSS),
    .D(net81));
 sg13g2_and4_1 _0908_ (.A(\u_boot_ctrl.word_cnt[18] ),
    .B(_0210_),
    .C(_0282_),
    .D(net73),
    .X(_0320_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a221oi_1 _0909_ (.VDD(VDD),
    .VSS(VSS),
    .B2(_0317_),
    .C1(net75),
    .B1(_0320_),
    .A1(_0184_),
    .Y(_0059_),
    .A2(_0318_));
 sg13g2_and4_1 _0910_ (.A(\u_boot_ctrl.word_cnt[19] ),
    .B(\u_boot_ctrl.word_cnt[18] ),
    .C(\u_boot_ctrl.word_cnt[17] ),
    .D(\u_boot_ctrl.word_cnt[16] ),
    .X(_0321_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0911_ (.B(\u_boot_ctrl.word_cnt[18] ),
    .C(\u_boot_ctrl.word_cnt[17] ),
    .A(\u_boot_ctrl.word_cnt[19] ),
    .Y(_0322_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[16] ));
 sg13g2_nand4_1 _0912_ (.B(net72),
    .C(_0321_),
    .A(_0212_),
    .Y(_0323_),
    .VDD(VDD),
    .VSS(VSS),
    .D(net81));
 sg13g2_a221oi_1 _0913_ (.VDD(VDD),
    .VSS(VSS),
    .B2(_0183_),
    .C1(net75),
    .B1(_0319_),
    .A1(_0314_),
    .Y(_0060_),
    .A2(_0321_));
 sg13g2_nand4_1 _0914_ (.B(_0291_),
    .C(net72),
    .A(\u_boot_ctrl.word_cnt[20] ),
    .Y(_0324_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0321_));
 sg13g2_nand3_1 _0915_ (.B(net148),
    .C(net84),
    .A(_0324_),
    .Y(_0325_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0916_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0182_),
    .A2(_0323_),
    .Y(_0061_),
    .B1(_0325_));
 sg13g2_nor3_1 _0917_ (.A(_0181_),
    .B(_0182_),
    .C(_0322_),
    .Y(_0326_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a221oi_1 _0918_ (.VDD(VDD),
    .VSS(VSS),
    .B2(_0314_),
    .C1(net75),
    .B1(_0326_),
    .A1(_0181_),
    .Y(_0062_),
    .A2(_0324_));
 sg13g2_nand4_1 _0919_ (.B(_0282_),
    .C(net72),
    .A(_0210_),
    .Y(_0327_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0326_));
 sg13g2_nand3_1 _0920_ (.B(\u_boot_ctrl.word_cnt[21] ),
    .C(\u_boot_ctrl.word_cnt[20] ),
    .A(\u_boot_ctrl.word_cnt[22] ),
    .Y(_0328_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0921_ (.A(_0322_),
    .B(_0328_),
    .Y(_0329_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0922_ (.B(_0308_),
    .C(_0329_),
    .A(_0207_),
    .Y(_0330_),
    .VDD(VDD),
    .VSS(VSS),
    .D(net81));
 sg13g2_nand3_1 _0923_ (.B(net149),
    .C(net84),
    .A(_0330_),
    .Y(_0331_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0924_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0180_),
    .A2(_0327_),
    .Y(_0063_),
    .B1(_0331_));
 sg13g2_nand3_1 _0925_ (.B(\u_boot_ctrl.word_cnt[23] ),
    .C(net84),
    .A(_0330_),
    .Y(_0332_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0926_ (.B(_0313_),
    .C(_0329_),
    .A(net101),
    .Y(_0333_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0179_));
 sg13g2_a21oi_1 _0927_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0332_),
    .A2(_0333_),
    .Y(_0064_),
    .B1(net140));
 sg13g2_nor3_1 _0928_ (.A(_0179_),
    .B(_0322_),
    .C(_0328_),
    .Y(_0334_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0929_ (.B(\u_boot_ctrl.word_cnt[22] ),
    .C(\u_boot_ctrl.word_cnt[21] ),
    .A(\u_boot_ctrl.word_cnt[23] ),
    .Y(_0335_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_boot_ctrl.word_cnt[20] ));
 sg13g2_nor2_1 _0930_ (.A(_0322_),
    .B(_0335_),
    .Y(_0336_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and4_1 _0931_ (.A(_0210_),
    .B(_0282_),
    .C(net72),
    .D(_0336_),
    .X(_0337_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0932_ (.A(\u_boot_ctrl.word_cnt[24] ),
    .B(_0337_),
    .Y(_0338_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0933_ (.B(_0291_),
    .C(net72),
    .A(\u_boot_ctrl.word_cnt[24] ),
    .Y(_0339_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0336_));
 sg13g2_nand3_1 _0934_ (.B(net144),
    .C(net84),
    .A(_0339_),
    .Y(_0340_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0935_ (.A(_0340_),
    .B(_0338_),
    .Y(_0065_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _0936_ (.A(\u_boot_ctrl.word_cnt[25] ),
    .B(\u_boot_ctrl.word_cnt[24] ),
    .X(_0341_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0937_ (.B(net72),
    .C(_0336_),
    .A(_0291_),
    .Y(_0342_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0341_));
 sg13g2_a221oi_1 _0938_ (.VDD(VDD),
    .VSS(VSS),
    .B2(_0337_),
    .C1(net75),
    .B1(_0341_),
    .A1(_0178_),
    .Y(_0066_),
    .A2(_0339_));
 sg13g2_and3_1 _0939_ (.X(_0343_),
    .A(\u_boot_ctrl.word_cnt[26] ),
    .B(\u_boot_ctrl.word_cnt[25] ),
    .C(\u_boot_ctrl.word_cnt[24] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a221oi_1 _0940_ (.VDD(VDD),
    .VSS(VSS),
    .B2(_0337_),
    .C1(net75),
    .B1(_0343_),
    .A1(_0177_),
    .Y(_0067_),
    .A2(_0342_));
 sg13g2_nand4_1 _0941_ (.B(_0312_),
    .C(_0334_),
    .A(net99),
    .Y(_0344_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0343_));
 sg13g2_and4_1 _0942_ (.A(\u_boot_ctrl.word_cnt[27] ),
    .B(\u_boot_ctrl.word_cnt[26] ),
    .C(\u_boot_ctrl.word_cnt[25] ),
    .D(\u_boot_ctrl.word_cnt[24] ),
    .X(_0345_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0943_ (.B(_0334_),
    .C(_0345_),
    .A(_0312_),
    .Y(_0346_),
    .VDD(VDD),
    .VSS(VSS),
    .D(net81));
 sg13g2_nand2_1 _0944_ (.Y(_0347_),
    .A(_0346_),
    .B(_0272_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and4_1 _0945_ (.A(_0212_),
    .B(net72),
    .C(_0336_),
    .D(_0345_),
    .X(_0348_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0946_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0176_),
    .A2(_0344_),
    .Y(_0068_),
    .B1(_0347_));
 sg13g2_nand4_1 _0947_ (.B(net72),
    .C(_0336_),
    .A(_0291_),
    .Y(_0349_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0345_));
 sg13g2_nor2_1 _0948_ (.A(_0175_),
    .B(net83),
    .Y(_0350_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a221oi_1 _0949_ (.VDD(VDD),
    .VSS(VSS),
    .B2(_0348_),
    .C1(net75),
    .B1(_0350_),
    .A1(_0175_),
    .Y(_0069_),
    .A2(_0349_));
 sg13g2_nand4_1 _0950_ (.B(_0312_),
    .C(_0334_),
    .A(_0268_),
    .Y(_0351_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0345_));
 sg13g2_and3_1 _0951_ (.X(_0352_),
    .A(net100),
    .B(\u_boot_ctrl.word_cnt[29] ),
    .C(\u_boot_ctrl.word_cnt[28] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand3_1 _0952_ (.B(\u_boot_ctrl.word_cnt[29] ),
    .C(\u_boot_ctrl.word_cnt[28] ),
    .A(net100),
    .Y(_0353_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0953_ (.B(_0334_),
    .C(_0345_),
    .A(_0309_),
    .Y(_0354_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0352_));
 sg13g2_nand2_1 _0954_ (.Y(_0355_),
    .A(_0354_),
    .B(_0272_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0955_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0174_),
    .A2(_0351_),
    .Y(_0070_),
    .B1(_0355_));
 sg13g2_nor2_1 _0956_ (.A(_0173_),
    .B(_0353_),
    .Y(_0356_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0957_ (.B(_0336_),
    .C(_0345_),
    .A(_0313_),
    .Y(_0357_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0356_));
 sg13g2_nand2_1 _0958_ (.Y(_0358_),
    .A(_0357_),
    .B(_0272_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0959_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0173_),
    .A2(_0354_),
    .Y(_0071_),
    .B1(_0358_));
 sg13g2_nand2_1 _0960_ (.Y(_0359_),
    .A(net84),
    .B(\u_boot_ctrl.word_cnt[31] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _0961_ (.A(_0172_),
    .B(_0173_),
    .C(_0353_),
    .Y(_0360_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _0962_ (.B(_0336_),
    .C(_0345_),
    .A(_0313_),
    .Y(_0361_),
    .VDD(VDD),
    .VSS(VSS),
    .D(_0360_));
 sg13g2_nand2_1 _0963_ (.Y(_0362_),
    .A(_0361_),
    .B(net145),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0964_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0357_),
    .A2(_0359_),
    .Y(_0072_),
    .B1(_0362_));
 sg13g2_nor2_1 _0965_ (.A(net115),
    .B(net83),
    .Y(_0363_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0966_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net128),
    .A2(net115),
    .Y(_0364_),
    .B1(_0363_));
 sg13g2_o21ai_1 _0967_ (.B1(net89),
    .VDD(VDD),
    .Y(_0365_),
    .VSS(VSS),
    .A1(net115),
    .A2(net83));
 sg13g2_nor3_1 _0968_ (.A(net108),
    .B(\u_boot_ctrl.state[0] ),
    .C(net89),
    .Y(_0366_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0969_ (.B1(net154),
    .VDD(VDD),
    .Y(_0367_),
    .VSS(VSS),
    .A1(\u_boot_ctrl.byte_cnt[0] ),
    .A2(_0366_));
 sg13g2_a21oi_1 _0970_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_boot_ctrl.byte_cnt[0] ),
    .A2(_0365_),
    .Y(_0073_),
    .B1(_0367_));
 sg13g2_a21oi_1 _0971_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_boot_ctrl.byte_cnt[1] ),
    .A2(\u_boot_ctrl.byte_cnt[0] ),
    .Y(_0368_),
    .B1(net89));
 sg13g2_a22oi_1 _0972_ (.Y(_0369_),
    .B1(_0368_),
    .B2(_0275_),
    .A2(_0364_),
    .A1(\u_boot_ctrl.byte_cnt[1] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _0973_ (.B1(net154),
    .VDD(VDD),
    .Y(_0370_),
    .VSS(VSS),
    .A1(\u_boot_ctrl.byte_cnt[1] ),
    .A2(\u_boot_ctrl.byte_cnt[0] ));
 sg13g2_nor2_1 _0974_ (.A(_0370_),
    .B(_0369_),
    .Y(_0074_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0975_ (.A(\spi_rx[0] ),
    .B(net91),
    .Y(_0371_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0976_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net129),
    .A2(net116),
    .Y(_0372_),
    .B1(\u_boot_ctrl.word_asm[0] ));
 sg13g2_nor3_1 _0977_ (.A(_0372_),
    .B(net141),
    .C(_0371_),
    .Y(_0075_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0978_ (.A(\spi_rx[1] ),
    .B(net89),
    .Y(_0373_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0979_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net131),
    .A2(net115),
    .Y(_0374_),
    .B1(\u_boot_ctrl.word_asm[1] ));
 sg13g2_nor3_1 _0980_ (.A(_0374_),
    .B(net141),
    .C(_0373_),
    .Y(_0076_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0981_ (.A(\spi_rx[2] ),
    .B(net91),
    .Y(_0375_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0982_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net129),
    .A2(net116),
    .Y(_0376_),
    .B1(\u_boot_ctrl.word_asm[2] ));
 sg13g2_nor3_1 _0983_ (.A(_0376_),
    .B(net141),
    .C(_0375_),
    .Y(_0077_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0984_ (.A(\spi_rx[3] ),
    .B(net88),
    .Y(_0377_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0985_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net126),
    .A2(net113),
    .Y(_0378_),
    .B1(\u_boot_ctrl.word_asm[3] ));
 sg13g2_nor3_1 _0986_ (.A(_0378_),
    .B(net137),
    .C(_0377_),
    .Y(_0078_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0987_ (.A(\spi_rx[4] ),
    .B(net88),
    .Y(_0379_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0988_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net126),
    .A2(net113),
    .Y(_0380_),
    .B1(\u_boot_ctrl.word_asm[4] ));
 sg13g2_nor3_1 _0989_ (.A(_0380_),
    .B(net137),
    .C(_0379_),
    .Y(_0079_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0990_ (.A(\spi_rx[5] ),
    .B(net86),
    .Y(_0381_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0991_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net125),
    .A2(net112),
    .Y(_0382_),
    .B1(\u_boot_ctrl.word_asm[5] ));
 sg13g2_nor3_1 _0992_ (.A(_0382_),
    .B(net136),
    .C(_0381_),
    .Y(_0080_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0993_ (.A(\spi_rx[6] ),
    .B(net86),
    .Y(_0383_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0994_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net127),
    .A2(net114),
    .Y(_0384_),
    .B1(\u_boot_ctrl.word_asm[6] ));
 sg13g2_nor3_1 _0995_ (.A(_0384_),
    .B(net135),
    .C(_0383_),
    .Y(_0081_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0996_ (.A(\spi_rx[7] ),
    .B(net86),
    .Y(_0385_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _0997_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net125),
    .A2(net112),
    .Y(_0386_),
    .B1(\u_boot_ctrl.word_asm[7] ));
 sg13g2_nor3_1 _0998_ (.A(_0386_),
    .B(net136),
    .C(_0385_),
    .Y(_0082_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _0999_ (.A(\u_boot_ctrl.word_asm[0] ),
    .B(net89),
    .Y(_0387_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1000_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net129),
    .A2(net116),
    .Y(_0388_),
    .B1(\u_boot_ctrl.word_asm[8] ));
 sg13g2_nor3_1 _1001_ (.A(_0388_),
    .B(net141),
    .C(_0387_),
    .Y(_0083_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1002_ (.A(\u_boot_ctrl.word_asm[1] ),
    .B(net89),
    .Y(_0389_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1003_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net129),
    .A2(net118),
    .Y(_0390_),
    .B1(\u_boot_ctrl.word_asm[9] ));
 sg13g2_nor3_1 _1004_ (.A(_0390_),
    .B(net142),
    .C(_0389_),
    .Y(_0084_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1005_ (.A(\u_boot_ctrl.word_asm[2] ),
    .B(net91),
    .Y(_0391_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1006_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net129),
    .A2(net116),
    .Y(_0392_),
    .B1(\u_boot_ctrl.word_asm[10] ));
 sg13g2_nor3_1 _1007_ (.A(_0392_),
    .B(net141),
    .C(_0391_),
    .Y(_0085_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1008_ (.A(\u_boot_ctrl.word_asm[3] ),
    .B(net88),
    .Y(_0393_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1009_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net129),
    .A2(net116),
    .Y(_0394_),
    .B1(\u_boot_ctrl.word_asm[11] ));
 sg13g2_nor3_1 _1010_ (.A(_0394_),
    .B(net137),
    .C(_0393_),
    .Y(_0086_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1011_ (.A(\u_boot_ctrl.word_asm[4] ),
    .B(net88),
    .Y(_0395_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1012_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net126),
    .A2(net113),
    .Y(_0396_),
    .B1(\u_boot_ctrl.word_asm[12] ));
 sg13g2_nor3_1 _1013_ (.A(_0396_),
    .B(net137),
    .C(_0395_),
    .Y(_0087_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1014_ (.A(\u_boot_ctrl.word_asm[5] ),
    .B(net86),
    .Y(_0397_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1015_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net125),
    .A2(net112),
    .Y(_0398_),
    .B1(\u_boot_ctrl.word_asm[13] ));
 sg13g2_nor3_1 _1016_ (.A(_0398_),
    .B(net136),
    .C(_0397_),
    .Y(_0088_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1017_ (.A(\u_boot_ctrl.word_asm[6] ),
    .B(net86),
    .Y(_0399_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1018_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net127),
    .A2(net114),
    .Y(_0400_),
    .B1(\u_boot_ctrl.word_asm[14] ));
 sg13g2_nor3_1 _1019_ (.A(_0400_),
    .B(net135),
    .C(_0399_),
    .Y(_0089_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1020_ (.A(\u_boot_ctrl.word_asm[7] ),
    .B(net86),
    .Y(_0401_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1021_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net125),
    .A2(net112),
    .Y(_0402_),
    .B1(\u_boot_ctrl.word_asm[15] ));
 sg13g2_nor3_1 _1022_ (.A(_0402_),
    .B(net136),
    .C(_0401_),
    .Y(_0090_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1023_ (.A(\u_boot_ctrl.word_asm[8] ),
    .B(net89),
    .Y(_0403_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1024_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net130),
    .A2(net116),
    .Y(_0404_),
    .B1(\u_boot_ctrl.word_asm[16] ));
 sg13g2_nor3_1 _1025_ (.A(_0404_),
    .B(net142),
    .C(_0403_),
    .Y(_0091_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1026_ (.A(\u_boot_ctrl.word_asm[9] ),
    .B(net90),
    .Y(_0405_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1027_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net130),
    .A2(net117),
    .Y(_0406_),
    .B1(\u_boot_ctrl.word_asm[17] ));
 sg13g2_nor3_1 _1028_ (.A(_0406_),
    .B(net142),
    .C(_0405_),
    .Y(_0092_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1029_ (.A(\u_boot_ctrl.word_asm[10] ),
    .B(net91),
    .Y(_0407_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1030_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net130),
    .A2(net117),
    .Y(_0408_),
    .B1(\u_boot_ctrl.word_asm[18] ));
 sg13g2_nor3_1 _1031_ (.A(_0408_),
    .B(net141),
    .C(_0407_),
    .Y(_0093_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1032_ (.A(\u_boot_ctrl.word_asm[11] ),
    .B(net91),
    .Y(_0409_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1033_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net129),
    .A2(net116),
    .Y(_0410_),
    .B1(\u_boot_ctrl.word_asm[19] ));
 sg13g2_nor3_1 _1034_ (.A(_0410_),
    .B(net137),
    .C(_0409_),
    .Y(_0094_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1035_ (.A(\u_boot_ctrl.word_asm[12] ),
    .B(net88),
    .Y(_0411_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1036_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net126),
    .A2(net113),
    .Y(_0412_),
    .B1(\u_boot_ctrl.word_asm[20] ));
 sg13g2_nor3_1 _1037_ (.A(_0412_),
    .B(net138),
    .C(_0411_),
    .Y(_0095_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1038_ (.A(\u_boot_ctrl.word_asm[13] ),
    .B(net87),
    .Y(_0413_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1039_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net125),
    .A2(net112),
    .Y(_0414_),
    .B1(\u_boot_ctrl.word_asm[21] ));
 sg13g2_nor3_1 _1040_ (.A(_0414_),
    .B(net136),
    .C(_0413_),
    .Y(_0096_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1041_ (.A(\u_boot_ctrl.word_asm[14] ),
    .B(net86),
    .Y(_0415_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1042_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net127),
    .A2(net114),
    .Y(_0416_),
    .B1(\u_boot_ctrl.word_asm[22] ));
 sg13g2_nor3_1 _1043_ (.A(_0416_),
    .B(net135),
    .C(_0415_),
    .Y(_0097_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1044_ (.A(\u_boot_ctrl.word_asm[15] ),
    .B(net87),
    .Y(_0417_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1045_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net125),
    .A2(net112),
    .Y(_0418_),
    .B1(\u_boot_ctrl.word_asm[23] ));
 sg13g2_nor3_1 _1046_ (.A(_0418_),
    .B(net136),
    .C(_0417_),
    .Y(_0098_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1047_ (.A(\u_boot_ctrl.word_asm[16] ),
    .B(net90),
    .Y(_0419_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1048_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net130),
    .A2(net117),
    .Y(_0420_),
    .B1(\u_boot_ctrl.word_asm[24] ));
 sg13g2_nor3_1 _1049_ (.A(_0420_),
    .B(net142),
    .C(_0419_),
    .Y(_0099_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1050_ (.A(\u_boot_ctrl.word_asm[17] ),
    .B(net90),
    .Y(_0421_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1051_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net130),
    .A2(net117),
    .Y(_0422_),
    .B1(\u_boot_ctrl.word_asm[25] ));
 sg13g2_nor3_1 _1052_ (.A(_0422_),
    .B(net142),
    .C(_0421_),
    .Y(_0100_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1053_ (.A(\u_boot_ctrl.word_asm[18] ),
    .B(net90),
    .Y(_0423_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1054_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net130),
    .A2(net117),
    .Y(_0424_),
    .B1(\u_boot_ctrl.word_asm[26] ));
 sg13g2_nor3_1 _1055_ (.A(_0424_),
    .B(net142),
    .C(_0423_),
    .Y(_0101_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1056_ (.A(\u_boot_ctrl.word_asm[19] ),
    .B(net91),
    .Y(_0425_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1057_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net129),
    .A2(net116),
    .Y(_0426_),
    .B1(\u_boot_ctrl.word_asm[27] ));
 sg13g2_nor3_1 _1058_ (.A(_0426_),
    .B(net142),
    .C(_0425_),
    .Y(_0102_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1059_ (.A(\u_boot_ctrl.word_asm[20] ),
    .B(net88),
    .Y(_0427_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1060_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net126),
    .A2(net113),
    .Y(_0428_),
    .B1(\u_boot_ctrl.word_asm[28] ));
 sg13g2_nor3_1 _1061_ (.A(_0428_),
    .B(net138),
    .C(_0427_),
    .Y(_0103_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1062_ (.A(\u_boot_ctrl.word_asm[21] ),
    .B(net87),
    .Y(_0429_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1063_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net125),
    .A2(net112),
    .Y(_0430_),
    .B1(\u_boot_ctrl.word_asm[29] ));
 sg13g2_nor3_1 _1064_ (.A(_0430_),
    .B(net136),
    .C(_0429_),
    .Y(_0104_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1065_ (.A(\u_boot_ctrl.word_asm[22] ),
    .B(net86),
    .Y(_0431_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1066_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net127),
    .A2(net114),
    .Y(_0432_),
    .B1(\u_boot_ctrl.word_asm[30] ));
 sg13g2_nor3_1 _1067_ (.A(_0432_),
    .B(net135),
    .C(_0431_),
    .Y(_0105_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1068_ (.A(\u_boot_ctrl.word_asm[23] ),
    .B(net87),
    .Y(_0433_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1069_ (.VSS(VSS),
    .VDD(VDD),
    .A1(net125),
    .A2(net112),
    .Y(_0434_),
    .B1(\u_boot_ctrl.word_asm[31] ));
 sg13g2_nor3_1 _1070_ (.A(_0434_),
    .B(net136),
    .C(_0433_),
    .Y(_0106_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1071_ (.A(net115),
    .B(\u_boot_ctrl.state[3] ),
    .Y(_0435_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1072_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0221_),
    .A2(_0435_),
    .Y(_0107_),
    .B1(net140));
 sg13g2_mux2_1 _1073_ (.A0(net34),
    .A1(\u_boot_ctrl.word_asm[0] ),
    .S(net107),
    .X(_0436_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1074_ (.A(_0436_),
    .B(net156),
    .X(_0109_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1075_ (.A0(net45),
    .A1(\u_boot_ctrl.word_asm[1] ),
    .S(net108),
    .X(_0437_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1076_ (.A(_0437_),
    .B(net154),
    .X(_0110_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1077_ (.A0(net56),
    .A1(\u_boot_ctrl.word_asm[2] ),
    .S(net97),
    .X(_0438_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1078_ (.A(_0438_),
    .B(net151),
    .X(_0111_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1079_ (.A0(net59),
    .A1(\u_boot_ctrl.word_asm[3] ),
    .S(net97),
    .X(_0439_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1080_ (.A(_0439_),
    .B(net151),
    .X(_0112_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1081_ (.A0(net60),
    .A1(\u_boot_ctrl.word_asm[4] ),
    .S(net97),
    .X(_0440_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1082_ (.A(_0440_),
    .B(net151),
    .X(_0113_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1083_ (.A0(net61),
    .A1(\u_boot_ctrl.word_asm[5] ),
    .S(net95),
    .X(_0441_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1084_ (.A(_0441_),
    .B(net150),
    .X(_0114_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1085_ (.A0(net62),
    .A1(\u_boot_ctrl.word_asm[6] ),
    .S(net96),
    .X(_0442_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1086_ (.A(_0442_),
    .B(net153),
    .X(_0115_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1087_ (.A0(net63),
    .A1(\u_boot_ctrl.word_asm[7] ),
    .S(net95),
    .X(_0443_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1088_ (.A(_0443_),
    .B(net150),
    .X(_0116_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1089_ (.A0(net64),
    .A1(\u_boot_ctrl.word_asm[8] ),
    .S(net107),
    .X(_0444_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1090_ (.A(_0444_),
    .B(net156),
    .X(_0117_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1091_ (.A0(net65),
    .A1(\u_boot_ctrl.word_asm[9] ),
    .S(net107),
    .X(_0445_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1092_ (.A(_0445_),
    .B(net156),
    .X(_0118_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1093_ (.A0(net35),
    .A1(\u_boot_ctrl.word_asm[10] ),
    .S(net107),
    .X(_0446_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1094_ (.A(_0446_),
    .B(net156),
    .X(_0119_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1095_ (.A0(net36),
    .A1(\u_boot_ctrl.word_asm[11] ),
    .S(net97),
    .X(_0447_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1096_ (.A(_0447_),
    .B(net151),
    .X(_0120_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1097_ (.A0(net37),
    .A1(\u_boot_ctrl.word_asm[12] ),
    .S(net97),
    .X(_0448_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1098_ (.A(_0448_),
    .B(net151),
    .X(_0121_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1099_ (.A0(net38),
    .A1(\u_boot_ctrl.word_asm[13] ),
    .S(net95),
    .X(_0449_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1100_ (.A(_0449_),
    .B(net150),
    .X(_0122_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1101_ (.A0(net39),
    .A1(\u_boot_ctrl.word_asm[14] ),
    .S(net96),
    .X(_0450_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1102_ (.A(_0450_),
    .B(net153),
    .X(_0123_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1103_ (.A0(net40),
    .A1(\u_boot_ctrl.word_asm[15] ),
    .S(net95),
    .X(_0451_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1104_ (.A(_0451_),
    .B(net150),
    .X(_0124_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1105_ (.A0(net41),
    .A1(\u_boot_ctrl.word_asm[16] ),
    .S(net107),
    .X(_0452_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1106_ (.A(_0452_),
    .B(net156),
    .X(_0125_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1107_ (.A0(net42),
    .A1(\u_boot_ctrl.word_asm[17] ),
    .S(net110),
    .X(_0453_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1108_ (.A(_0453_),
    .B(net157),
    .X(_0126_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1109_ (.A0(net43),
    .A1(\u_boot_ctrl.word_asm[18] ),
    .S(net107),
    .X(_0454_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1110_ (.A(_0454_),
    .B(net156),
    .X(_0127_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1111_ (.A0(net44),
    .A1(\u_boot_ctrl.word_asm[19] ),
    .S(net97),
    .X(_0455_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1112_ (.A(_0455_),
    .B(net151),
    .X(_0128_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1113_ (.A0(net46),
    .A1(\u_boot_ctrl.word_asm[20] ),
    .S(net97),
    .X(_0456_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1114_ (.A(_0456_),
    .B(net151),
    .X(_0129_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1115_ (.A0(net47),
    .A1(\u_boot_ctrl.word_asm[21] ),
    .S(net95),
    .X(_0457_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1116_ (.A(_0457_),
    .B(net150),
    .X(_0130_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1117_ (.A0(net48),
    .A1(\u_boot_ctrl.word_asm[22] ),
    .S(net96),
    .X(_0458_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1118_ (.A(_0458_),
    .B(net153),
    .X(_0131_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1119_ (.A0(net49),
    .A1(\u_boot_ctrl.word_asm[23] ),
    .S(net95),
    .X(_0459_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1120_ (.A(_0459_),
    .B(net150),
    .X(_0132_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1121_ (.A0(net50),
    .A1(\u_boot_ctrl.word_asm[24] ),
    .S(net107),
    .X(_0460_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1122_ (.A(_0460_),
    .B(net156),
    .X(_0133_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1123_ (.A0(net51),
    .A1(\u_boot_ctrl.word_asm[25] ),
    .S(net107),
    .X(_0461_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1124_ (.A(_0461_),
    .B(net157),
    .X(_0134_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1125_ (.A0(net52),
    .A1(\u_boot_ctrl.word_asm[26] ),
    .S(net108),
    .X(_0462_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1126_ (.A(_0462_),
    .B(net156),
    .X(_0135_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1127_ (.A0(net53),
    .A1(\u_boot_ctrl.word_asm[27] ),
    .S(net98),
    .X(_0463_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1128_ (.A(_0463_),
    .B(net151),
    .X(_0136_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1129_ (.A0(net54),
    .A1(\u_boot_ctrl.word_asm[28] ),
    .S(net97),
    .X(_0464_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1130_ (.A(_0464_),
    .B(net152),
    .X(_0137_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1131_ (.A0(net55),
    .A1(\u_boot_ctrl.word_asm[29] ),
    .S(net96),
    .X(_0465_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1132_ (.A(_0465_),
    .B(net150),
    .X(_0138_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1133_ (.A0(net57),
    .A1(\u_boot_ctrl.word_asm[30] ),
    .S(net95),
    .X(_0466_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1134_ (.A(_0466_),
    .B(net150),
    .X(_0139_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_mux2_1 _1135_ (.A0(net58),
    .A1(\u_boot_ctrl.word_asm[31] ),
    .S(net95),
    .X(_0467_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1136_ (.A(_0467_),
    .B(net152),
    .X(_0140_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2b_1 _1137_ (.Y(_0468_),
    .B(\u_boot_ctrl.state[0] ),
    .A_N(\u_boot_ctrl.state[1] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2_1 _1138_ (.Y(_0469_),
    .A(_0468_),
    .B(net68),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand3_1 _1139_ (.B(_0469_),
    .C(net155),
    .A(_0215_),
    .Y(_0141_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2b_1 _1140_ (.Y(_0470_),
    .B(net67),
    .A_N(\u_boot_ctrl.state[0] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1141_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0171_),
    .A2(_0470_),
    .Y(_0142_),
    .B1(net143));
 sg13g2_and2_1 _1142_ (.A(net119),
    .B(\u_spi.div_cnt[0] ),
    .X(_0471_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and3_1 _1143_ (.X(_0472_),
    .A(net119),
    .B(\u_spi.div_cnt[1] ),
    .C(\u_spi.div_cnt[0] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and4_1 _1144_ (.A(net119),
    .B(\u_spi.div_cnt[2] ),
    .C(\u_spi.div_cnt[1] ),
    .D(\u_spi.div_cnt[0] ),
    .X(_0473_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand4_1 _1145_ (.B(\u_spi.div_cnt[2] ),
    .C(\u_spi.div_cnt[1] ),
    .A(net119),
    .Y(_0474_),
    .VDD(VDD),
    .VSS(VSS),
    .D(\u_spi.div_cnt[0] ));
 sg13g2_nor3_1 _1146_ (.A(net92),
    .B(net122),
    .C(net78),
    .Y(_0475_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand3b_1 _1147_ (.B(_0473_),
    .C(net120),
    .Y(_0476_),
    .VDD(VDD),
    .VSS(VSS),
    .A_N(net124));
 sg13g2_nor3_1 _1148_ (.A(\u_spi.bit_cnt[2] ),
    .B(\u_spi.bit_cnt[1] ),
    .C(\u_spi.bit_cnt[3] ),
    .Y(_0477_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand3_1 _1149_ (.B(net71),
    .C(_0477_),
    .A(\u_spi.bit_cnt[0] ),
    .Y(_0478_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1150_ (.A(net134),
    .B(_0478_),
    .Y(_0143_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2b_1 _1151_ (.A(net119),
    .B_N(spi_start),
    .Y(_0479_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2b_1 _1152_ (.Y(_0480_),
    .B(spi_start),
    .A_N(net119),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2_1 _1153_ (.Y(_0481_),
    .A(_0480_),
    .B(net153),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1154_ (.A(net119),
    .B(\u_spi.div_cnt[0] ),
    .Y(_0482_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1155_ (.A(net140),
    .B(_0471_),
    .C(net76),
    .D(_0482_),
    .Y(_0144_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1156_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_spi.busy ),
    .A2(\u_spi.div_cnt[0] ),
    .Y(_0483_),
    .B1(\u_spi.div_cnt[1] ));
 sg13g2_nor4_1 _1157_ (.A(net77),
    .B(net140),
    .C(_0472_),
    .D(_0483_),
    .Y(_0145_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1158_ (.VSS(VSS),
    .VDD(VDD),
    .A1(\u_spi.div_cnt[1] ),
    .A2(_0471_),
    .Y(_0484_),
    .B1(\u_spi.div_cnt[2] ));
 sg13g2_nor4_1 _1159_ (.A(net134),
    .B(_0473_),
    .C(net77),
    .D(_0484_),
    .Y(_0146_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and4_1 _1160_ (.A(net80),
    .B(_0480_),
    .C(net124),
    .D(net153),
    .X(_0147_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_or4_1 _1161_ (.A(net92),
    .B(\u_spi.bit_cnt[0] ),
    .C(net122),
    .D(net78),
    .X(_0485_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1162_ (.A(\u_spi.bit_cnt[2] ),
    .B(\u_spi.bit_cnt[1] ),
    .C(\u_spi.bit_cnt[0] ),
    .Y(_0486_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2_1 _1163_ (.Y(_0487_),
    .A(_0475_),
    .B(_0486_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1164_ (.A(\u_spi.bit_cnt[2] ),
    .B(\u_spi.bit_cnt[1] ),
    .C(\u_spi.bit_cnt[0] ),
    .D(\u_spi.bit_cnt[3] ),
    .Y(_0488_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a221oi_1 _1165_ (.VDD(VDD),
    .VSS(VSS),
    .B2(\u_spi.bit_cnt[3] ),
    .C1(net77),
    .B1(_0487_),
    .A1(_0475_),
    .Y(_0489_),
    .A2(_0488_));
 sg13g2_nor2_1 _1166_ (.A(net134),
    .B(_0489_),
    .Y(_0148_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand2_1 _1167_ (.Y(_0490_),
    .A(_0476_),
    .B(\u_spi.bit_cnt[0] ),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1168_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0485_),
    .A2(_0490_),
    .Y(_0149_),
    .B1(_0481_));
 sg13g2_o21ai_1 _1169_ (.B1(\u_spi.bit_cnt[1] ),
    .VDD(VDD),
    .Y(_0491_),
    .VSS(VSS),
    .A1(\u_spi.bit_cnt[0] ),
    .A2(_0476_));
 sg13g2_or3_1 _1170_ (.A(\u_spi.bit_cnt[1] ),
    .B(\u_spi.bit_cnt[0] ),
    .C(_0476_),
    .X(_0492_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1171_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0491_),
    .A2(_0492_),
    .Y(_0150_),
    .B1(_0481_));
 sg13g2_o21ai_1 _1172_ (.B1(\u_spi.bit_cnt[2] ),
    .VDD(VDD),
    .Y(_0493_),
    .VSS(VSS),
    .A1(\u_spi.bit_cnt[1] ),
    .A2(_0485_));
 sg13g2_a21oi_1 _1173_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0487_),
    .A2(_0493_),
    .Y(_0151_),
    .B1(_0481_));
 sg13g2_nand3_1 _1174_ (.B(net153),
    .C(net77),
    .A(\spi_tx[0] ),
    .Y(_0494_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nand3_1 _1175_ (.B(net153),
    .C(\u_spi.tx_shift[0] ),
    .A(_0480_),
    .Y(_0495_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21oi_1 _1176_ (.VSS(VSS),
    .VDD(VDD),
    .A1(_0494_),
    .A2(_0495_),
    .Y(_0152_),
    .B1(_0475_));
 sg13g2_nor3_1 _1177_ (.A(net76),
    .B(net139),
    .C(net71),
    .Y(_0496_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a22oi_1 _1178_ (.Y(_0497_),
    .B1(_0494_),
    .B2(_0495_),
    .A2(_0480_),
    .A1(_0476_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_a21o_1 _1179_ (.A2(_0496_),
    .A1(\u_spi.tx_shift[1] ),
    .B1(_0497_),
    .X(_0153_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1180_ (.A(net92),
    .B(\u_spi.tx_shift[1] ),
    .C(net122),
    .D(net78),
    .Y(_0498_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1181_ (.A(\u_spi.tx_shift[2] ),
    .B(net71),
    .Y(_0499_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1182_ (.A(net135),
    .B(net76),
    .C(_0498_),
    .D(_0499_),
    .Y(_0154_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1183_ (.A(\u_spi.tx_shift[3] ),
    .B(net71),
    .Y(_0500_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1184_ (.A(net92),
    .B(\u_spi.tx_shift[2] ),
    .C(net122),
    .D(net78),
    .Y(_0501_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1185_ (.A(net134),
    .B(net76),
    .C(_0500_),
    .D(_0501_),
    .Y(_0155_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1186_ (.A(\u_spi.tx_shift[4] ),
    .B(net71),
    .Y(_0502_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1187_ (.A(net92),
    .B(\u_spi.tx_shift[3] ),
    .C(net122),
    .D(net78),
    .Y(_0503_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1188_ (.A(net134),
    .B(net76),
    .C(_0502_),
    .D(_0503_),
    .Y(_0156_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1189_ (.A(\u_spi.tx_shift[5] ),
    .B(net71),
    .Y(_0504_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1190_ (.A(net92),
    .B(\u_spi.tx_shift[4] ),
    .C(net122),
    .D(net78),
    .Y(_0505_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1191_ (.A(net134),
    .B(net76),
    .C(_0504_),
    .D(_0505_),
    .Y(_0157_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1192_ (.A(\u_spi.tx_shift[6] ),
    .B(net71),
    .Y(_0506_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1193_ (.A(net92),
    .B(\u_spi.tx_shift[5] ),
    .C(net122),
    .D(net78),
    .Y(_0507_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1194_ (.A(net134),
    .B(net76),
    .C(_0506_),
    .D(_0507_),
    .Y(_0158_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1195_ (.A(net69),
    .B(net71),
    .Y(_0508_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1196_ (.A(net92),
    .B(\u_spi.tx_shift[6] ),
    .C(net122),
    .D(net78),
    .Y(_0509_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1197_ (.A(net134),
    .B(net76),
    .C(_0508_),
    .D(_0509_),
    .Y(_0159_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1198_ (.A(net120),
    .B(net123),
    .C(net79),
    .Y(_0510_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1199_ (.A(net120),
    .B(net2),
    .C(net124),
    .D(net80),
    .Y(_0511_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1200_ (.A(\spi_rx[0] ),
    .B(_0510_),
    .Y(_0512_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1201_ (.A(net141),
    .B(_0511_),
    .C(_0512_),
    .Y(_0160_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1202_ (.A(net120),
    .B(\spi_rx[0] ),
    .C(net124),
    .D(net80),
    .Y(_0513_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1203_ (.A(\spi_rx[1] ),
    .B(_0510_),
    .Y(_0514_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1204_ (.A(net141),
    .B(_0513_),
    .C(_0514_),
    .Y(_0161_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1205_ (.A(net121),
    .B(\spi_rx[1] ),
    .C(net124),
    .D(net80),
    .Y(_0515_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1206_ (.A(\spi_rx[2] ),
    .B(_0510_),
    .Y(_0516_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1207_ (.A(net137),
    .B(_0515_),
    .C(_0516_),
    .Y(_0162_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1208_ (.A(net121),
    .B(\spi_rx[2] ),
    .C(net124),
    .D(net80),
    .Y(_0517_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1209_ (.A(\spi_rx[3] ),
    .B(_0510_),
    .Y(_0518_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1210_ (.A(net137),
    .B(_0517_),
    .C(_0518_),
    .Y(_0163_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1211_ (.A(net121),
    .B(\spi_rx[3] ),
    .C(net124),
    .D(net80),
    .Y(_0519_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1212_ (.A(\spi_rx[4] ),
    .B(_0510_),
    .Y(_0520_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1213_ (.A(net137),
    .B(_0519_),
    .C(_0520_),
    .Y(_0164_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1214_ (.A(net120),
    .B(\spi_rx[4] ),
    .C(net123),
    .D(net79),
    .Y(_0521_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1215_ (.A(\spi_rx[5] ),
    .B(_0510_),
    .Y(_0522_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1216_ (.A(net135),
    .B(_0521_),
    .C(_0522_),
    .Y(_0165_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1217_ (.A(net120),
    .B(\spi_rx[5] ),
    .C(net123),
    .D(net79),
    .Y(_0523_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1218_ (.A(\spi_rx[6] ),
    .B(_0510_),
    .Y(_0524_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1219_ (.A(net135),
    .B(_0523_),
    .C(_0524_),
    .Y(_0166_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor4_1 _1220_ (.A(net120),
    .B(\spi_rx[6] ),
    .C(net123),
    .D(net79),
    .Y(_0525_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor2_1 _1221_ (.A(\spi_rx[7] ),
    .B(_0510_),
    .Y(_0526_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_nor3_1 _1222_ (.A(net135),
    .B(_0525_),
    .C(_0526_),
    .Y(_0167_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _1223_ (.B1(_0170_),
    .VDD(VDD),
    .Y(_0527_),
    .VSS(VSS),
    .A1(net123),
    .A2(net79));
 sg13g2_and4_1 _1224_ (.A(_0476_),
    .B(_0480_),
    .C(_0527_),
    .D(net153),
    .X(_0168_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_o21ai_1 _1225_ (.B1(_0478_),
    .VDD(VDD),
    .Y(_0528_),
    .VSS(VSS),
    .A1(net119),
    .A2(spi_start));
 sg13g2_nor2_1 _1226_ (.A(net139),
    .B(_0528_),
    .Y(_0169_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_and2_1 _1227_ (.A(net110),
    .B(net157),
    .X(_0108_),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_dfrbpq_1 _1228_ (.RESET_B(net320),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0010_),
    .Q(\spi_tx[0] ),
    .CLK(clknet_5_7__leaf_clk_i));
 sg13g2_tiehi _1228__320 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net320));
 sg13g2_dfrbpq_1 _1229_ (.RESET_B(net238),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0011_),
    .Q(net23),
    .CLK(clknet_5_29__leaf_clk_i));
 sg13g2_tiehi _1229__238 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net238));
 sg13g2_dfrbpq_1 _1230_ (.RESET_B(net236),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0012_),
    .Q(net26),
    .CLK(clknet_5_31__leaf_clk_i));
 sg13g2_tiehi _1230__236 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net236));
 sg13g2_dfrbpq_1 _1231_ (.RESET_B(net234),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0013_),
    .Q(net27),
    .CLK(clknet_5_23__leaf_clk_i));
 sg13g2_tiehi _1231__234 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net234));
 sg13g2_dfrbpq_1 _1232_ (.RESET_B(net232),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0014_),
    .Q(net28),
    .CLK(clknet_5_29__leaf_clk_i));
 sg13g2_tiehi _1232__232 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net232));
 sg13g2_dfrbpq_1 _1233_ (.RESET_B(net230),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0015_),
    .Q(net29),
    .CLK(clknet_5_28__leaf_clk_i));
 sg13g2_tiehi _1233__230 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net230));
 sg13g2_dfrbpq_1 _1234_ (.RESET_B(net228),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0016_),
    .Q(net30),
    .CLK(clknet_5_28__leaf_clk_i));
 sg13g2_tiehi _1234__228 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net228));
 sg13g2_dfrbpq_1 _1235_ (.RESET_B(net226),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0017_),
    .Q(net31),
    .CLK(clknet_5_28__leaf_clk_i));
 sg13g2_tiehi _1235__226 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net226));
 sg13g2_dfrbpq_1 _1236_ (.RESET_B(net224),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0018_),
    .Q(net32),
    .CLK(clknet_5_29__leaf_clk_i));
 sg13g2_tiehi _1236__224 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net224));
 sg13g2_dfrbpq_1 _1237_ (.RESET_B(net222),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0019_),
    .Q(net3),
    .CLK(clknet_5_22__leaf_clk_i));
 sg13g2_tiehi _1237__222 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net222));
 sg13g2_dfrbpq_1 _1238_ (.RESET_B(net220),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0020_),
    .Q(net4),
    .CLK(clknet_5_23__leaf_clk_i));
 sg13g2_tiehi _1238__220 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net220));
 sg13g2_dfrbpq_1 _1239_ (.RESET_B(net218),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0021_),
    .Q(net5),
    .CLK(clknet_5_23__leaf_clk_i));
 sg13g2_tiehi _1239__218 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net218));
 sg13g2_dfrbpq_1 _1240_ (.RESET_B(net216),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0022_),
    .Q(net6),
    .CLK(clknet_5_21__leaf_clk_i));
 sg13g2_tiehi _1240__216 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net216));
 sg13g2_dfrbpq_1 _1241_ (.RESET_B(net214),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0023_),
    .Q(net7),
    .CLK(clknet_5_21__leaf_clk_i));
 sg13g2_tiehi _1241__214 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net214));
 sg13g2_dfrbpq_1 _1242_ (.RESET_B(net212),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0024_),
    .Q(net8),
    .CLK(clknet_5_21__leaf_clk_i));
 sg13g2_tiehi _1242__212 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net212));
 sg13g2_dfrbpq_1 _1243_ (.RESET_B(net210),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0025_),
    .Q(net9),
    .CLK(clknet_5_20__leaf_clk_i));
 sg13g2_tiehi _1243__210 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net210));
 sg13g2_dfrbpq_1 _1244_ (.RESET_B(net208),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0026_),
    .Q(net10),
    .CLK(clknet_5_20__leaf_clk_i));
 sg13g2_tiehi _1244__208 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net208));
 sg13g2_dfrbpq_1 _1245_ (.RESET_B(net206),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0027_),
    .Q(net11),
    .CLK(clknet_5_30__leaf_clk_i));
 sg13g2_tiehi _1245__206 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net206));
 sg13g2_dfrbpq_1 _1246_ (.RESET_B(net204),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0028_),
    .Q(net12),
    .CLK(clknet_5_31__leaf_clk_i));
 sg13g2_tiehi _1246__204 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net204));
 sg13g2_dfrbpq_1 _1247_ (.RESET_B(net202),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0029_),
    .Q(net13),
    .CLK(clknet_5_17__leaf_clk_i));
 sg13g2_tiehi _1247__202 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net202));
 sg13g2_dfrbpq_1 _1248_ (.RESET_B(net200),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0030_),
    .Q(net14),
    .CLK(clknet_5_18__leaf_clk_i));
 sg13g2_tiehi _1248__200 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net200));
 sg13g2_dfrbpq_1 _1249_ (.RESET_B(net198),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0031_),
    .Q(net15),
    .CLK(clknet_5_18__leaf_clk_i));
 sg13g2_tiehi _1249__198 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net198));
 sg13g2_dfrbpq_1 _1250_ (.RESET_B(net196),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0032_),
    .Q(net16),
    .CLK(clknet_5_19__leaf_clk_i));
 sg13g2_tiehi _1250__196 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net196));
 sg13g2_dfrbpq_1 _1251_ (.RESET_B(net194),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0033_),
    .Q(net17),
    .CLK(clknet_5_18__leaf_clk_i));
 sg13g2_tiehi _1251__194 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net194));
 sg13g2_dfrbpq_1 _1252_ (.RESET_B(net192),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0034_),
    .Q(net18),
    .CLK(clknet_5_5__leaf_clk_i));
 sg13g2_tiehi _1252__192 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net192));
 sg13g2_dfrbpq_1 _1253_ (.RESET_B(net190),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0035_),
    .Q(net19),
    .CLK(clknet_5_5__leaf_clk_i));
 sg13g2_tiehi _1253__190 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net190));
 sg13g2_dfrbpq_1 _1254_ (.RESET_B(net188),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0036_),
    .Q(net20),
    .CLK(clknet_5_16__leaf_clk_i));
 sg13g2_tiehi _1254__188 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net188));
 sg13g2_dfrbpq_1 _1255_ (.RESET_B(net186),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0037_),
    .Q(net21),
    .CLK(clknet_5_16__leaf_clk_i));
 sg13g2_tiehi _1255__186 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net186));
 sg13g2_dfrbpq_1 _1256_ (.RESET_B(net184),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0038_),
    .Q(net22),
    .CLK(clknet_5_17__leaf_clk_i));
 sg13g2_tiehi _1256__184 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net184));
 sg13g2_dfrbpq_1 _1257_ (.RESET_B(net182),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0039_),
    .Q(net24),
    .CLK(clknet_5_17__leaf_clk_i));
 sg13g2_tiehi _1257__182 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net182));
 sg13g2_dfrbpq_1 _1258_ (.RESET_B(net180),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0040_),
    .Q(net25),
    .CLK(clknet_5_17__leaf_clk_i));
 sg13g2_tiehi _1258__180 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net180));
 sg13g2_dfrbpq_1 _1259_ (.RESET_B(net178),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0041_),
    .Q(\u_boot_ctrl.word_cnt[0] ),
    .CLK(clknet_5_29__leaf_clk_i));
 sg13g2_tiehi _1259__178 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net178));
 sg13g2_dfrbpq_1 _1260_ (.RESET_B(net176),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0042_),
    .Q(\u_boot_ctrl.word_cnt[1] ),
    .CLK(clknet_5_31__leaf_clk_i));
 sg13g2_tiehi _1260__176 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net176));
 sg13g2_dfrbpq_1 _1261_ (.RESET_B(net174),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0043_),
    .Q(\u_boot_ctrl.word_cnt[2] ),
    .CLK(clknet_5_22__leaf_clk_i));
 sg13g2_tiehi _1261__174 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net174));
 sg13g2_dfrbpq_1 _1262_ (.RESET_B(net172),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0044_),
    .Q(\u_boot_ctrl.word_cnt[3] ),
    .CLK(clknet_5_22__leaf_clk_i));
 sg13g2_tiehi _1262__172 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net172));
 sg13g2_dfrbpq_1 _1263_ (.RESET_B(net170),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0045_),
    .Q(\u_boot_ctrl.word_cnt[4] ),
    .CLK(clknet_5_28__leaf_clk_i));
 sg13g2_tiehi _1263__170 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net170));
 sg13g2_dfrbpq_1 _1264_ (.RESET_B(net168),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0046_),
    .Q(\u_boot_ctrl.word_cnt[5] ),
    .CLK(clknet_5_31__leaf_clk_i));
 sg13g2_tiehi _1264__168 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net168));
 sg13g2_dfrbpq_1 _1265_ (.RESET_B(net166),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0047_),
    .Q(\u_boot_ctrl.word_cnt[6] ),
    .CLK(clknet_5_29__leaf_clk_i));
 sg13g2_tiehi _1265__166 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net166));
 sg13g2_dfrbpq_1 _1266_ (.RESET_B(net164),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0048_),
    .Q(\u_boot_ctrl.word_cnt[7] ),
    .CLK(clknet_5_31__leaf_clk_i));
 sg13g2_tiehi _1266__164 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net164));
 sg13g2_dfrbpq_1 _1267_ (.RESET_B(net162),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0049_),
    .Q(\u_boot_ctrl.word_cnt[8] ),
    .CLK(clknet_5_22__leaf_clk_i));
 sg13g2_tiehi _1267__162 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net162));
 sg13g2_dfrbpq_1 _1268_ (.RESET_B(net160),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0050_),
    .Q(\u_boot_ctrl.word_cnt[9] ),
    .CLK(clknet_5_23__leaf_clk_i));
 sg13g2_tiehi _1268__160 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net160));
 sg13g2_dfrbpq_1 _1269_ (.RESET_B(net318),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0051_),
    .Q(\u_boot_ctrl.word_cnt[10] ),
    .CLK(clknet_5_23__leaf_clk_i));
 sg13g2_tiehi _1269__318 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net318));
 sg13g2_dfrbpq_1 _1270_ (.RESET_B(net316),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0052_),
    .Q(\u_boot_ctrl.word_cnt[11] ),
    .CLK(clknet_5_21__leaf_clk_i));
 sg13g2_tiehi _1270__316 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net316));
 sg13g2_dfrbpq_1 _1271_ (.RESET_B(net314),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0053_),
    .Q(\u_boot_ctrl.word_cnt[12] ),
    .CLK(clknet_5_20__leaf_clk_i));
 sg13g2_tiehi _1271__314 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net314));
 sg13g2_dfrbpq_1 _1272_ (.RESET_B(net312),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0054_),
    .Q(\u_boot_ctrl.word_cnt[13] ),
    .CLK(clknet_5_21__leaf_clk_i));
 sg13g2_tiehi _1272__312 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net312));
 sg13g2_dfrbpq_1 _1273_ (.RESET_B(net310),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0055_),
    .Q(\u_boot_ctrl.word_cnt[14] ),
    .CLK(clknet_5_20__leaf_clk_i));
 sg13g2_tiehi _1273__310 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net310));
 sg13g2_dfrbpq_1 _1274_ (.RESET_B(net308),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0056_),
    .Q(\u_boot_ctrl.word_cnt[15] ),
    .CLK(clknet_5_20__leaf_clk_i));
 sg13g2_tiehi _1274__308 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net308));
 sg13g2_dfrbpq_1 _1275_ (.RESET_B(net306),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0057_),
    .Q(\u_boot_ctrl.word_cnt[16] ),
    .CLK(clknet_5_25__leaf_clk_i));
 sg13g2_tiehi _1275__306 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net306));
 sg13g2_dfrbpq_1 _1276_ (.RESET_B(net304),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0058_),
    .Q(\u_boot_ctrl.word_cnt[17] ),
    .CLK(clknet_5_25__leaf_clk_i));
 sg13g2_tiehi _1276__304 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net304));
 sg13g2_dfrbpq_1 _1277_ (.RESET_B(net302),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0059_),
    .Q(\u_boot_ctrl.word_cnt[18] ),
    .CLK(clknet_5_19__leaf_clk_i));
 sg13g2_tiehi _1277__302 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net302));
 sg13g2_dfrbpq_1 _1278_ (.RESET_B(net300),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0060_),
    .Q(\u_boot_ctrl.word_cnt[19] ),
    .CLK(clknet_5_19__leaf_clk_i));
 sg13g2_tiehi _1278__300 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net300));
 sg13g2_dfrbpq_1 _1279_ (.RESET_B(net298),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0061_),
    .Q(\u_boot_ctrl.word_cnt[20] ),
    .CLK(clknet_5_18__leaf_clk_i));
 sg13g2_tiehi _1279__298 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net298));
 sg13g2_dfrbpq_1 _1280_ (.RESET_B(net296),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0062_),
    .Q(\u_boot_ctrl.word_cnt[21] ),
    .CLK(clknet_5_19__leaf_clk_i));
 sg13g2_tiehi _1280__296 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net296));
 sg13g2_dfrbpq_1 _1281_ (.RESET_B(net294),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0063_),
    .Q(\u_boot_ctrl.word_cnt[22] ),
    .CLK(clknet_5_18__leaf_clk_i));
 sg13g2_tiehi _1281__294 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net294));
 sg13g2_dfrbpq_1 _1282_ (.RESET_B(net292),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0064_),
    .Q(\u_boot_ctrl.word_cnt[23] ),
    .CLK(clknet_5_16__leaf_clk_i));
 sg13g2_tiehi _1282__292 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net292));
 sg13g2_dfrbpq_1 _1283_ (.RESET_B(net290),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0065_),
    .Q(\u_boot_ctrl.word_cnt[24] ),
    .CLK(clknet_5_18__leaf_clk_i));
 sg13g2_tiehi _1283__290 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net290));
 sg13g2_dfrbpq_1 _1284_ (.RESET_B(net288),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0066_),
    .Q(\u_boot_ctrl.word_cnt[25] ),
    .CLK(clknet_5_16__leaf_clk_i));
 sg13g2_tiehi _1284__288 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net288));
 sg13g2_dfrbpq_1 _1285_ (.RESET_B(net286),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0067_),
    .Q(\u_boot_ctrl.word_cnt[26] ),
    .CLK(clknet_5_16__leaf_clk_i));
 sg13g2_tiehi _1285__286 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net286));
 sg13g2_dfrbpq_1 _1286_ (.RESET_B(net284),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0068_),
    .Q(\u_boot_ctrl.word_cnt[27] ),
    .CLK(clknet_5_17__leaf_clk_i));
 sg13g2_tiehi _1286__284 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net284));
 sg13g2_dfrbpq_1 _1287_ (.RESET_B(net282),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0069_),
    .Q(\u_boot_ctrl.word_cnt[28] ),
    .CLK(clknet_5_16__leaf_clk_i));
 sg13g2_tiehi _1287__282 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net282));
 sg13g2_dfrbpq_1 _1288_ (.RESET_B(net280),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0070_),
    .Q(\u_boot_ctrl.word_cnt[29] ),
    .CLK(clknet_5_20__leaf_clk_i));
 sg13g2_tiehi _1288__280 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net280));
 sg13g2_dfrbpq_1 _1289_ (.RESET_B(net278),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0071_),
    .Q(\u_boot_ctrl.word_cnt[30] ),
    .CLK(clknet_5_22__leaf_clk_i));
 sg13g2_tiehi _1289__278 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net278));
 sg13g2_dfrbpq_1 _1290_ (.RESET_B(net276),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0072_),
    .Q(\u_boot_ctrl.word_cnt[31] ),
    .CLK(clknet_5_19__leaf_clk_i));
 sg13g2_tiehi _1290__276 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net276));
 sg13g2_dfrbpq_1 _1291_ (.RESET_B(net274),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0073_),
    .Q(\u_boot_ctrl.byte_cnt[0] ),
    .CLK(clknet_5_24__leaf_clk_i));
 sg13g2_tiehi _1291__274 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net274));
 sg13g2_dfrbpq_1 _1292_ (.RESET_B(net272),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0074_),
    .Q(\u_boot_ctrl.byte_cnt[1] ),
    .CLK(clknet_5_24__leaf_clk_i));
 sg13g2_tiehi _1292__272 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net272));
 sg13g2_dfrbpq_1 _1293_ (.RESET_B(net270),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0075_),
    .Q(\u_boot_ctrl.word_asm[0] ),
    .CLK(clknet_5_12__leaf_clk_i));
 sg13g2_tiehi _1293__270 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net270));
 sg13g2_dfrbpq_1 _1294_ (.RESET_B(net268),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0076_),
    .Q(\u_boot_ctrl.word_asm[1] ),
    .CLK(clknet_5_13__leaf_clk_i));
 sg13g2_tiehi _1294__268 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net268));
 sg13g2_dfrbpq_1 _1295_ (.RESET_B(net266),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0077_),
    .Q(\u_boot_ctrl.word_asm[2] ),
    .CLK(clknet_5_12__leaf_clk_i));
 sg13g2_tiehi _1295__266 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net266));
 sg13g2_dfrbpq_1 _1296_ (.RESET_B(net264),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0078_),
    .Q(\u_boot_ctrl.word_asm[3] ),
    .CLK(clknet_5_8__leaf_clk_i));
 sg13g2_tiehi _1296__264 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net264));
 sg13g2_dfrbpq_1 _1297_ (.RESET_B(net262),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0079_),
    .Q(\u_boot_ctrl.word_asm[4] ),
    .CLK(clknet_5_1__leaf_clk_i));
 sg13g2_tiehi _1297__262 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net262));
 sg13g2_dfrbpq_1 _1298_ (.RESET_B(net260),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0080_),
    .Q(\u_boot_ctrl.word_asm[5] ),
    .CLK(clknet_5_0__leaf_clk_i));
 sg13g2_tiehi _1298__260 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net260));
 sg13g2_dfrbpq_1 _1299_ (.RESET_B(net258),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0081_),
    .Q(\u_boot_ctrl.word_asm[6] ),
    .CLK(clknet_5_2__leaf_clk_i));
 sg13g2_tiehi _1299__258 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net258));
 sg13g2_dfrbpq_1 _1300_ (.RESET_B(net256),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0082_),
    .Q(\u_boot_ctrl.word_asm[7] ),
    .CLK(clknet_5_3__leaf_clk_i));
 sg13g2_tiehi _1300__256 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net256));
 sg13g2_dfrbpq_1 _1301_ (.RESET_B(net254),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0083_),
    .Q(\u_boot_ctrl.word_asm[8] ),
    .CLK(clknet_5_12__leaf_clk_i));
 sg13g2_tiehi _1301__254 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net254));
 sg13g2_dfrbpq_1 _1302_ (.RESET_B(net252),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0084_),
    .Q(\u_boot_ctrl.word_asm[9] ),
    .CLK(clknet_5_26__leaf_clk_i));
 sg13g2_tiehi _1302__252 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net252));
 sg13g2_dfrbpq_1 _1303_ (.RESET_B(net250),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0085_),
    .Q(\u_boot_ctrl.word_asm[10] ),
    .CLK(clknet_5_15__leaf_clk_i));
 sg13g2_tiehi _1303__250 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net250));
 sg13g2_dfrbpq_1 _1304_ (.RESET_B(net248),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0086_),
    .Q(\u_boot_ctrl.word_asm[11] ),
    .CLK(clknet_5_8__leaf_clk_i));
 sg13g2_tiehi _1304__248 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net248));
 sg13g2_dfrbpq_1 _1305_ (.RESET_B(net246),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0087_),
    .Q(\u_boot_ctrl.word_asm[12] ),
    .CLK(clknet_5_8__leaf_clk_i));
 sg13g2_tiehi _1305__246 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net246));
 sg13g2_dfrbpq_1 _1306_ (.RESET_B(net244),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0088_),
    .Q(\u_boot_ctrl.word_asm[13] ),
    .CLK(clknet_5_0__leaf_clk_i));
 sg13g2_tiehi _1306__244 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net244));
 sg13g2_dfrbpq_1 _1307_ (.RESET_B(net242),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0089_),
    .Q(\u_boot_ctrl.word_asm[14] ),
    .CLK(clknet_5_2__leaf_clk_i));
 sg13g2_tiehi _1307__242 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net242));
 sg13g2_dfrbpq_1 _1308_ (.RESET_B(net240),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0090_),
    .Q(\u_boot_ctrl.word_asm[15] ),
    .CLK(clknet_5_3__leaf_clk_i));
 sg13g2_tiehi _1308__240 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net240));
 sg13g2_dfrbpq_1 _1309_ (.RESET_B(net237),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0091_),
    .Q(\u_boot_ctrl.word_asm[16] ),
    .CLK(clknet_5_13__leaf_clk_i));
 sg13g2_tiehi _1309__237 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net237));
 sg13g2_dfrbpq_1 _1310_ (.RESET_B(net233),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0092_),
    .Q(\u_boot_ctrl.word_asm[17] ),
    .CLK(clknet_5_26__leaf_clk_i));
 sg13g2_tiehi _1310__233 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net233));
 sg13g2_dfrbpq_1 _1311_ (.RESET_B(net229),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0093_),
    .Q(\u_boot_ctrl.word_asm[18] ),
    .CLK(clknet_5_15__leaf_clk_i));
 sg13g2_tiehi _1311__229 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net229));
 sg13g2_dfrbpq_1 _1312_ (.RESET_B(net225),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0094_),
    .Q(\u_boot_ctrl.word_asm[19] ),
    .CLK(clknet_5_9__leaf_clk_i));
 sg13g2_tiehi _1312__225 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net225));
 sg13g2_dfrbpq_1 _1313_ (.RESET_B(net221),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0095_),
    .Q(\u_boot_ctrl.word_asm[20] ),
    .CLK(clknet_5_9__leaf_clk_i));
 sg13g2_tiehi _1313__221 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net221));
 sg13g2_dfrbpq_1 _1314_ (.RESET_B(net217),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0096_),
    .Q(\u_boot_ctrl.word_asm[21] ),
    .CLK(clknet_5_10__leaf_clk_i));
 sg13g2_tiehi _1314__217 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net217));
 sg13g2_dfrbpq_1 _1315_ (.RESET_B(net213),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0097_),
    .Q(\u_boot_ctrl.word_asm[22] ),
    .CLK(clknet_5_2__leaf_clk_i));
 sg13g2_tiehi _1315__213 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net213));
 sg13g2_dfrbpq_1 _1316_ (.RESET_B(net209),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0098_),
    .Q(\u_boot_ctrl.word_asm[23] ),
    .CLK(clknet_5_3__leaf_clk_i));
 sg13g2_tiehi _1316__209 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net209));
 sg13g2_dfrbpq_1 _1317_ (.RESET_B(net205),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0099_),
    .Q(\u_boot_ctrl.word_asm[24] ),
    .CLK(clknet_5_26__leaf_clk_i));
 sg13g2_tiehi _1317__205 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net205));
 sg13g2_dfrbpq_1 _1318_ (.RESET_B(net201),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0100_),
    .Q(\u_boot_ctrl.word_asm[25] ),
    .CLK(clknet_5_26__leaf_clk_i));
 sg13g2_tiehi _1318__201 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net201));
 sg13g2_dfrbpq_1 _1319_ (.RESET_B(net197),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0101_),
    .Q(\u_boot_ctrl.word_asm[26] ),
    .CLK(clknet_5_15__leaf_clk_i));
 sg13g2_tiehi _1319__197 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net197));
 sg13g2_dfrbpq_1 _1320_ (.RESET_B(net193),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0102_),
    .Q(\u_boot_ctrl.word_asm[27] ),
    .CLK(clknet_5_14__leaf_clk_i));
 sg13g2_tiehi _1320__193 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net193));
 sg13g2_dfrbpq_1 _1321_ (.RESET_B(net189),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0103_),
    .Q(\u_boot_ctrl.word_asm[28] ),
    .CLK(clknet_5_9__leaf_clk_i));
 sg13g2_tiehi _1321__189 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net189));
 sg13g2_dfrbpq_1 _1322_ (.RESET_B(net185),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0104_),
    .Q(\u_boot_ctrl.word_asm[29] ),
    .CLK(clknet_5_10__leaf_clk_i));
 sg13g2_tiehi _1322__185 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net185));
 sg13g2_dfrbpq_1 _1323_ (.RESET_B(net181),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0105_),
    .Q(\u_boot_ctrl.word_asm[30] ),
    .CLK(clknet_5_0__leaf_clk_i));
 sg13g2_tiehi _1323__181 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net181));
 sg13g2_dfrbpq_1 _1324_ (.RESET_B(net177),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0106_),
    .Q(\u_boot_ctrl.word_asm[31] ),
    .CLK(clknet_5_10__leaf_clk_i));
 sg13g2_tiehi _1324__177 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net177));
 sg13g2_dfrbpq_1 _1325_ (.RESET_B(net173),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0107_),
    .Q(spi_start),
    .CLK(clknet_5_25__leaf_clk_i));
 sg13g2_tiehi _1325__173 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net173));
 sg13g2_dfrbpq_1 _1326_ (.RESET_B(net171),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0108_),
    .Q(net66),
    .CLK(clknet_5_27__leaf_clk_i));
 sg13g2_tiehi _1326__171 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net171));
 sg13g2_dfrbpq_1 _1327_ (.RESET_B(net169),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0109_),
    .Q(net34),
    .CLK(clknet_5_13__leaf_clk_i));
 sg13g2_tiehi _1327__169 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net169));
 sg13g2_dfrbpq_1 _1328_ (.RESET_B(net165),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0110_),
    .Q(net45),
    .CLK(clknet_5_27__leaf_clk_i));
 sg13g2_tiehi _1328__165 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net165));
 sg13g2_dfrbpq_1 _1329_ (.RESET_B(net161),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0111_),
    .Q(net56),
    .CLK(clknet_5_14__leaf_clk_i));
 sg13g2_tiehi _1329__161 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net161));
 sg13g2_dfrbpq_1 _1330_ (.RESET_B(net317),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0112_),
    .Q(net59),
    .CLK(clknet_5_8__leaf_clk_i));
 sg13g2_tiehi _1330__317 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net317));
 sg13g2_dfrbpq_1 _1331_ (.RESET_B(net313),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0113_),
    .Q(net60),
    .CLK(clknet_5_8__leaf_clk_i));
 sg13g2_tiehi _1331__313 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net313));
 sg13g2_dfrbpq_1 _1332_ (.RESET_B(net309),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0114_),
    .Q(net61),
    .CLK(clknet_5_0__leaf_clk_i));
 sg13g2_tiehi _1332__309 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net309));
 sg13g2_dfrbpq_1 _1333_ (.RESET_B(net305),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0115_),
    .Q(net62),
    .CLK(clknet_5_4__leaf_clk_i));
 sg13g2_tiehi _1333__305 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net305));
 sg13g2_dfrbpq_1 _1334_ (.RESET_B(net301),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0116_),
    .Q(net63),
    .CLK(clknet_5_3__leaf_clk_i));
 sg13g2_tiehi _1334__301 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net301));
 sg13g2_dfrbpq_1 _1335_ (.RESET_B(net297),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0117_),
    .Q(net64),
    .CLK(clknet_5_13__leaf_clk_i));
 sg13g2_tiehi _1335__297 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net297));
 sg13g2_dfrbpq_1 _1336_ (.RESET_B(net293),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0118_),
    .Q(net65),
    .CLK(clknet_5_13__leaf_clk_i));
 sg13g2_tiehi _1336__293 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net293));
 sg13g2_dfrbpq_1 _1337_ (.RESET_B(net289),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0119_),
    .Q(net35),
    .CLK(clknet_5_14__leaf_clk_i));
 sg13g2_tiehi _1337__289 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net289));
 sg13g2_dfrbpq_1 _1338_ (.RESET_B(net285),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0120_),
    .Q(net36),
    .CLK(clknet_5_9__leaf_clk_i));
 sg13g2_tiehi _1338__285 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net285));
 sg13g2_dfrbpq_1 _1339_ (.RESET_B(net281),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0121_),
    .Q(net37),
    .CLK(clknet_5_11__leaf_clk_i));
 sg13g2_tiehi _1339__281 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net281));
 sg13g2_dfrbpq_1 _1340_ (.RESET_B(net277),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0122_),
    .Q(net38),
    .CLK(clknet_5_10__leaf_clk_i));
 sg13g2_tiehi _1340__277 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net277));
 sg13g2_dfrbpq_1 _1341_ (.RESET_B(net273),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0123_),
    .Q(net39),
    .CLK(clknet_5_2__leaf_clk_i));
 sg13g2_tiehi _1341__273 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net273));
 sg13g2_dfrbpq_1 _1342_ (.RESET_B(net269),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0124_),
    .Q(net40),
    .CLK(clknet_5_3__leaf_clk_i));
 sg13g2_tiehi _1342__269 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net269));
 sg13g2_dfrbpq_1 _1343_ (.RESET_B(net265),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0125_),
    .Q(net41),
    .CLK(clknet_5_26__leaf_clk_i));
 sg13g2_tiehi _1343__265 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net265));
 sg13g2_dfrbpq_1 _1344_ (.RESET_B(net261),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0126_),
    .Q(net42),
    .CLK(clknet_5_27__leaf_clk_i));
 sg13g2_tiehi _1344__261 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net261));
 sg13g2_dfrbpq_1 _1345_ (.RESET_B(net257),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0127_),
    .Q(net43),
    .CLK(clknet_5_15__leaf_clk_i));
 sg13g2_tiehi _1345__257 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net257));
 sg13g2_dfrbpq_1 _1346_ (.RESET_B(net253),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0128_),
    .Q(net44),
    .CLK(clknet_5_14__leaf_clk_i));
 sg13g2_tiehi _1346__253 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net253));
 sg13g2_dfrbpq_1 _1347_ (.RESET_B(net249),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0129_),
    .Q(net46),
    .CLK(clknet_5_11__leaf_clk_i));
 sg13g2_tiehi _1347__249 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net249));
 sg13g2_dfrbpq_1 _1348_ (.RESET_B(net245),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0130_),
    .Q(net47),
    .CLK(clknet_5_11__leaf_clk_i));
 sg13g2_tiehi _1348__245 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net245));
 sg13g2_dfrbpq_1 _1349_ (.RESET_B(net241),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0131_),
    .Q(net48),
    .CLK(clknet_5_2__leaf_clk_i));
 sg13g2_tiehi _1349__241 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net241));
 sg13g2_dfrbpq_1 _1350_ (.RESET_B(net235),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0132_),
    .Q(net49),
    .CLK(clknet_5_10__leaf_clk_i));
 sg13g2_tiehi _1350__235 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net235));
 sg13g2_dfrbpq_1 _1351_ (.RESET_B(net227),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0133_),
    .Q(net50),
    .CLK(clknet_5_27__leaf_clk_i));
 sg13g2_tiehi _1351__227 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net227));
 sg13g2_dfrbpq_1 _1352_ (.RESET_B(net219),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0134_),
    .Q(net51),
    .CLK(clknet_5_27__leaf_clk_i));
 sg13g2_tiehi _1352__219 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net219));
 sg13g2_dfrbpq_1 _1353_ (.RESET_B(net211),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0135_),
    .Q(net52),
    .CLK(clknet_5_15__leaf_clk_i));
 sg13g2_tiehi _1353__211 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net211));
 sg13g2_dfrbpq_1 _1354_ (.RESET_B(net203),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0136_),
    .Q(net53),
    .CLK(clknet_5_14__leaf_clk_i));
 sg13g2_tiehi _1354__203 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net203));
 sg13g2_dfrbpq_1 _1355_ (.RESET_B(net195),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0137_),
    .Q(net54),
    .CLK(clknet_5_9__leaf_clk_i));
 sg13g2_tiehi _1355__195 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net195));
 sg13g2_dfrbpq_1 _1356_ (.RESET_B(net187),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0138_),
    .Q(net55),
    .CLK(clknet_5_11__leaf_clk_i));
 sg13g2_tiehi _1356__187 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net187));
 sg13g2_dfrbpq_1 _1357_ (.RESET_B(net179),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0139_),
    .Q(net57),
    .CLK(clknet_5_2__leaf_clk_i));
 sg13g2_tiehi _1357__179 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net179));
 sg13g2_dfrbpq_1 _1358_ (.RESET_B(net167),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0140_),
    .Q(net58),
    .CLK(clknet_5_11__leaf_clk_i));
 sg13g2_tiehi _1358__167 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net167));
 sg13g2_dfrbpq_1 _1359_ (.RESET_B(net319),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0141_),
    .Q(net68),
    .CLK(clknet_5_30__leaf_clk_i));
 sg13g2_tiehi _1359__319 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net319));
 sg13g2_dfrbpq_1 _1360_ (.RESET_B(net311),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0142_),
    .Q(net67),
    .CLK(clknet_5_28__leaf_clk_i));
 sg13g2_tiehi _1360__311 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net311));
 sg13g2_dfrbpq_1 _1361_ (.RESET_B(net303),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0143_),
    .Q(spi_done),
    .CLK(clknet_5_7__leaf_clk_i));
 sg13g2_tiehi _1361__303 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net303));
 sg13g2_dfrbpq_1 _1362_ (.RESET_B(net299),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0144_),
    .Q(\u_spi.div_cnt[0] ),
    .CLK(clknet_5_7__leaf_clk_i));
 sg13g2_tiehi _1362__299 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net299));
 sg13g2_dfrbpq_1 _1363_ (.RESET_B(net291),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0145_),
    .Q(\u_spi.div_cnt[1] ),
    .CLK(clknet_5_7__leaf_clk_i));
 sg13g2_tiehi _1363__291 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net291));
 sg13g2_dfrbpq_1 _1364_ (.RESET_B(net283),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0146_),
    .Q(\u_spi.div_cnt[2] ),
    .CLK(clknet_5_6__leaf_clk_i));
 sg13g2_tiehi _1364__283 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net283));
 sg13g2_dfrbpq_1 _1365_ (.RESET_B(net275),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0147_),
    .Q(\u_spi.div_cnt[3] ),
    .CLK(clknet_5_1__leaf_clk_i));
 sg13g2_tiehi _1365__275 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net275));
 sg13g2_dfrbpq_1 _1366_ (.RESET_B(net267),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0148_),
    .Q(\u_spi.bit_cnt[3] ),
    .CLK(clknet_5_5__leaf_clk_i));
 sg13g2_tiehi _1366__267 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net267));
 sg13g2_dfrbpq_1 _1367_ (.RESET_B(net259),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0149_),
    .Q(\u_spi.bit_cnt[0] ),
    .CLK(clknet_5_4__leaf_clk_i));
 sg13g2_tiehi _1367__259 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net259));
 sg13g2_dfrbpq_1 _1368_ (.RESET_B(net251),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0150_),
    .Q(\u_spi.bit_cnt[1] ),
    .CLK(clknet_5_7__leaf_clk_i));
 sg13g2_tiehi _1368__251 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net251));
 sg13g2_dfrbpq_1 _1369_ (.RESET_B(net243),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0151_),
    .Q(\u_spi.bit_cnt[2] ),
    .CLK(clknet_5_5__leaf_clk_i));
 sg13g2_tiehi _1369__243 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net243));
 sg13g2_dfrbpq_1 _1370_ (.RESET_B(net231),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0152_),
    .Q(\u_spi.tx_shift[0] ),
    .CLK(clknet_5_6__leaf_clk_i));
 sg13g2_tiehi _1370__231 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net231));
 sg13g2_dfrbpq_1 _1371_ (.RESET_B(net215),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0153_),
    .Q(\u_spi.tx_shift[1] ),
    .CLK(clknet_5_6__leaf_clk_i));
 sg13g2_tiehi _1371__215 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net215));
 sg13g2_dfrbpq_1 _1372_ (.RESET_B(net199),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0154_),
    .Q(\u_spi.tx_shift[2] ),
    .CLK(clknet_5_6__leaf_clk_i));
 sg13g2_tiehi _1372__199 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net199));
 sg13g2_dfrbpq_1 _1373_ (.RESET_B(net183),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0155_),
    .Q(\u_spi.tx_shift[3] ),
    .CLK(clknet_5_6__leaf_clk_i));
 sg13g2_tiehi _1373__183 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net183));
 sg13g2_dfrbpq_1 _1374_ (.RESET_B(net163),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0156_),
    .Q(\u_spi.tx_shift[4] ),
    .CLK(clknet_5_4__leaf_clk_i));
 sg13g2_tiehi _1374__163 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net163));
 sg13g2_dfrbpq_1 _1375_ (.RESET_B(net307),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0157_),
    .Q(\u_spi.tx_shift[5] ),
    .CLK(clknet_5_4__leaf_clk_i));
 sg13g2_tiehi _1375__307 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net307));
 sg13g2_dfrbpq_1 _1376_ (.RESET_B(net287),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0158_),
    .Q(\u_spi.tx_shift[6] ),
    .CLK(clknet_5_4__leaf_clk_i));
 sg13g2_tiehi _1376__287 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net287));
 sg13g2_dfrbpq_1 _1377_ (.RESET_B(net271),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0159_),
    .Q(net69),
    .CLK(clknet_5_4__leaf_clk_i));
 sg13g2_tiehi _1377__271 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net271));
 sg13g2_dfrbpq_1 _1378_ (.RESET_B(net255),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0160_),
    .Q(\spi_rx[0] ),
    .CLK(clknet_5_12__leaf_clk_i));
 sg13g2_tiehi _1378__255 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net255));
 sg13g2_dfrbpq_1 _1379_ (.RESET_B(net239),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0161_),
    .Q(\spi_rx[1] ),
    .CLK(clknet_5_12__leaf_clk_i));
 sg13g2_tiehi _1379__239 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net239));
 sg13g2_dfrbpq_1 _1380_ (.RESET_B(net207),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0162_),
    .Q(\spi_rx[2] ),
    .CLK(clknet_5_12__leaf_clk_i));
 sg13g2_tiehi _1380__207 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net207));
 sg13g2_dfrbpq_1 _1381_ (.RESET_B(net175),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0163_),
    .Q(\spi_rx[3] ),
    .CLK(clknet_5_8__leaf_clk_i));
 sg13g2_tiehi _1381__175 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net175));
 sg13g2_dfrbpq_1 _1382_ (.RESET_B(net295),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0164_),
    .Q(\spi_rx[4] ),
    .CLK(clknet_5_1__leaf_clk_i));
 sg13g2_tiehi _1382__295 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net295));
 sg13g2_dfrbpq_1 _1383_ (.RESET_B(net263),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0165_),
    .Q(\spi_rx[5] ),
    .CLK(clknet_5_1__leaf_clk_i));
 sg13g2_tiehi _1383__263 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net263));
 sg13g2_dfrbpq_1 _1384_ (.RESET_B(net223),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0166_),
    .Q(\spi_rx[6] ),
    .CLK(clknet_5_0__leaf_clk_i));
 sg13g2_tiehi _1384__223 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net223));
 sg13g2_dfrbpq_1 _1385_ (.RESET_B(net315),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0167_),
    .Q(\spi_rx[7] ),
    .CLK(clknet_5_0__leaf_clk_i));
 sg13g2_tiehi _1385__315 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net315));
 sg13g2_dfrbpq_1 _1386_ (.RESET_B(net247),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0168_),
    .Q(net70),
    .CLK(clknet_5_1__leaf_clk_i));
 sg13g2_tiehi _1386__247 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net247));
 sg13g2_dfrbpq_1 _1387_ (.RESET_B(net321),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0169_),
    .Q(\u_spi.busy ),
    .CLK(clknet_5_5__leaf_clk_i));
 sg13g2_tiehi _1387__321 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net321));
 sg13g2_dfrbpq_1 _1388_ (.RESET_B(net322),
    .VSS(VSS),
    .VDD(VDD),
    .D(net143),
    .Q(\u_boot_ctrl.state[0] ),
    .CLK(clknet_5_28__leaf_clk_i));
 sg13g2_tiehi _1388__322 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net322));
 sg13g2_dfrbpq_1 _1389_ (.RESET_B(net323),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0000_),
    .Q(\u_boot_ctrl.state[1] ),
    .CLK(clknet_5_25__leaf_clk_i));
 sg13g2_tiehi _1389__323 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net323));
 sg13g2_dfrbpq_1 _1390_ (.RESET_B(net324),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0004_),
    .Q(\u_boot_ctrl.state[2] ),
    .CLK(clknet_5_24__leaf_clk_i));
 sg13g2_tiehi _1390__324 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net324));
 sg13g2_dfrbpq_1 _1391_ (.RESET_B(net325),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0005_),
    .Q(\u_boot_ctrl.state[3] ),
    .CLK(clknet_5_24__leaf_clk_i));
 sg13g2_tiehi _1391__325 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net325));
 sg13g2_dfrbpq_1 _1392_ (.RESET_B(net326),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0006_),
    .Q(\u_boot_ctrl.state[4] ),
    .CLK(clknet_5_30__leaf_clk_i));
 sg13g2_tiehi _1392__326 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net326));
 sg13g2_dfrbpq_1 _1393_ (.RESET_B(net327),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0001_),
    .Q(\u_boot_ctrl.state[5] ),
    .CLK(clknet_5_25__leaf_clk_i));
 sg13g2_tiehi _1393__327 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net327));
 sg13g2_dfrbpq_1 _1394_ (.RESET_B(net328),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0007_),
    .Q(net33),
    .CLK(clknet_5_30__leaf_clk_i));
 sg13g2_tiehi _1394__328 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net328));
 sg13g2_dfrbpq_1 _1395_ (.RESET_B(net329),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0008_),
    .Q(\u_boot_ctrl.state[7] ),
    .CLK(clknet_5_30__leaf_clk_i));
 sg13g2_tiehi _1395__329 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net329));
 sg13g2_dfrbpq_1 _1396_ (.RESET_B(net191),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0009_),
    .Q(\u_boot_ctrl.state[8] ),
    .CLK(clknet_5_24__leaf_clk_i));
 sg13g2_tiehi _1396__191 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net191));
 sg13g2_dfrbpq_1 _1397_ (.RESET_B(net279),
    .VSS(VSS),
    .VDD(VDD),
    .D(_0002_),
    .Q(\u_boot_ctrl.state[9] ),
    .CLK(clknet_5_24__leaf_clk_i));
 sg13g2_tiehi _1397__279 (.VDD(VDD),
    .VSS(VSS),
    .L_HI(net279));
 sg13g2_tielo boot_spi_macro (.VDD(VDD),
    .VSS(VSS),
    .L_LO(net));
 sg13g2_tielo boot_spi_macro_159 (.VDD(VDD),
    .VSS(VSS),
    .L_LO(net159));
 sg13g2_buf_16 clkbuf_0_clk_i (.X(clknet_0_clk_i),
    .A(clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_0_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_0_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_10_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_10_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_11_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_11_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_12_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_12_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_13_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_13_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_14_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_14_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_15_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_15_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_1_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_1_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_2_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_2_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_3_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_3_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_4_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_4_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_5_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_5_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_6_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_6_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_7_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_7_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_8_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_8_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_8 clkbuf_4_9_0_clk_i (.A(clknet_0_clk_i),
    .X(clknet_4_9_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_0__f_clk_i (.X(clknet_5_0__leaf_clk_i),
    .A(clknet_4_0_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_10__f_clk_i (.X(clknet_5_10__leaf_clk_i),
    .A(clknet_4_5_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_11__f_clk_i (.X(clknet_5_11__leaf_clk_i),
    .A(clknet_4_5_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_12__f_clk_i (.X(clknet_5_12__leaf_clk_i),
    .A(clknet_4_6_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_13__f_clk_i (.X(clknet_5_13__leaf_clk_i),
    .A(clknet_4_6_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_14__f_clk_i (.X(clknet_5_14__leaf_clk_i),
    .A(clknet_4_7_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_15__f_clk_i (.X(clknet_5_15__leaf_clk_i),
    .A(clknet_4_7_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_16__f_clk_i (.X(clknet_5_16__leaf_clk_i),
    .A(clknet_4_8_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_17__f_clk_i (.X(clknet_5_17__leaf_clk_i),
    .A(clknet_4_8_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_18__f_clk_i (.X(clknet_5_18__leaf_clk_i),
    .A(clknet_4_9_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_19__f_clk_i (.X(clknet_5_19__leaf_clk_i),
    .A(clknet_4_9_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_1__f_clk_i (.X(clknet_5_1__leaf_clk_i),
    .A(clknet_4_0_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_20__f_clk_i (.X(clknet_5_20__leaf_clk_i),
    .A(clknet_4_10_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_21__f_clk_i (.X(clknet_5_21__leaf_clk_i),
    .A(clknet_4_10_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_22__f_clk_i (.X(clknet_5_22__leaf_clk_i),
    .A(clknet_4_11_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_23__f_clk_i (.X(clknet_5_23__leaf_clk_i),
    .A(clknet_4_11_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_24__f_clk_i (.X(clknet_5_24__leaf_clk_i),
    .A(clknet_4_12_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_25__f_clk_i (.X(clknet_5_25__leaf_clk_i),
    .A(clknet_4_12_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_26__f_clk_i (.X(clknet_5_26__leaf_clk_i),
    .A(clknet_4_13_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_27__f_clk_i (.X(clknet_5_27__leaf_clk_i),
    .A(clknet_4_13_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_28__f_clk_i (.X(clknet_5_28__leaf_clk_i),
    .A(clknet_4_14_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_29__f_clk_i (.X(clknet_5_29__leaf_clk_i),
    .A(clknet_4_14_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_2__f_clk_i (.X(clknet_5_2__leaf_clk_i),
    .A(clknet_4_1_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_30__f_clk_i (.X(clknet_5_30__leaf_clk_i),
    .A(clknet_4_15_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_31__f_clk_i (.X(clknet_5_31__leaf_clk_i),
    .A(clknet_4_15_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_3__f_clk_i (.X(clknet_5_3__leaf_clk_i),
    .A(clknet_4_1_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_4__f_clk_i (.X(clknet_5_4__leaf_clk_i),
    .A(clknet_4_2_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_5__f_clk_i (.X(clknet_5_5__leaf_clk_i),
    .A(clknet_4_2_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_6__f_clk_i (.X(clknet_5_6__leaf_clk_i),
    .A(clknet_4_3_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_7__f_clk_i (.X(clknet_5_7__leaf_clk_i),
    .A(clknet_4_3_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_8__f_clk_i (.X(clknet_5_8__leaf_clk_i),
    .A(clknet_4_4_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_16 clkbuf_5_9__f_clk_i (.X(clknet_5_9__leaf_clk_i),
    .A(clknet_4_4_0_clk_i),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_inv_1 clkload0 (.VDD(VDD),
    .A(clknet_5_1__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload1 (.VDD(VDD),
    .A(clknet_5_3__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload2 (.VDD(VDD),
    .A(clknet_5_5__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload3 (.VDD(VDD),
    .A(clknet_5_9__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload4 (.VDD(VDD),
    .A(clknet_5_13__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload5 (.VDD(VDD),
    .A(clknet_5_17__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload6 (.VDD(VDD),
    .A(clknet_5_19__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload7 (.VDD(VDD),
    .A(clknet_5_21__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload8 (.VDD(VDD),
    .A(clknet_5_25__leaf_clk_i),
    .VSS(VSS));
 sg13g2_inv_1 clkload9 (.VDD(VDD),
    .A(clknet_5_29__leaf_clk_i),
    .VSS(VSS));
 sg13g2_buf_1 fanout100 (.A(net101),
    .X(net100),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout101 (.A(net106),
    .X(net101),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout102 (.A(net106),
    .X(net102),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout103 (.A(net106),
    .X(net103),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout104 (.A(net105),
    .X(net104),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout105 (.A(net106),
    .X(net105),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout106 (.A(net111),
    .X(net106),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout107 (.A(net108),
    .X(net107),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout108 (.A(net111),
    .X(net108),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout109 (.A(net110),
    .X(net109),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout110 (.A(net111),
    .X(net110),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout111 (.A(\u_boot_ctrl.state[9] ),
    .X(net111),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout112 (.A(net114),
    .X(net112),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout113 (.A(net114),
    .X(net113),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout114 (.A(\u_boot_ctrl.state[4] ),
    .X(net114),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout115 (.A(net118),
    .X(net115),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout116 (.A(net118),
    .X(net116),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout117 (.A(net118),
    .X(net117),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout118 (.A(\u_boot_ctrl.state[4] ),
    .X(net118),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout119 (.A(\u_spi.busy ),
    .X(net119),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout120 (.A(net121),
    .X(net120),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout121 (.A(net70),
    .X(net121),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout122 (.A(net123),
    .X(net122),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout123 (.A(net124),
    .X(net123),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout124 (.A(\u_spi.div_cnt[3] ),
    .X(net124),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout125 (.A(net127),
    .X(net125),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout126 (.A(net127),
    .X(net126),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout127 (.A(spi_done),
    .X(net127),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout128 (.A(net131),
    .X(net128),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout129 (.A(net131),
    .X(net129),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout130 (.A(net131),
    .X(net130),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout131 (.A(spi_done),
    .X(net131),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout132 (.A(\u_boot_ctrl.word_cnt[12] ),
    .X(net132),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout133 (.A(\u_boot_ctrl.word_cnt[0] ),
    .X(net133),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout134 (.A(net139),
    .X(net134),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout135 (.A(net138),
    .X(net135),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout136 (.A(net138),
    .X(net136),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout137 (.A(net138),
    .X(net137),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout138 (.A(net139),
    .X(net138),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout139 (.A(_0003_),
    .X(net139),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout140 (.A(net143),
    .X(net140),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout141 (.A(net142),
    .X(net141),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout142 (.A(net143),
    .X(net142),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout143 (.A(_0003_),
    .X(net143),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout144 (.A(net149),
    .X(net144),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout145 (.A(net149),
    .X(net145),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout146 (.A(net149),
    .X(net146),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout147 (.A(net148),
    .X(net147),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout148 (.A(net149),
    .X(net148),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout149 (.A(net158),
    .X(net149),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout150 (.A(net152),
    .X(net150),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout151 (.A(net152),
    .X(net151),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout152 (.A(net158),
    .X(net152),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout153 (.A(net158),
    .X(net153),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout154 (.A(net157),
    .X(net154),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout155 (.A(net157),
    .X(net155),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout156 (.A(net157),
    .X(net156),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout157 (.A(net158),
    .X(net157),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout158 (.A(net1),
    .X(net158),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout71 (.A(_0475_),
    .X(net71),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout72 (.A(_0311_),
    .X(net72),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout73 (.A(_0311_),
    .X(net73),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout74 (.A(net75),
    .X(net74),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout75 (.A(_0273_),
    .X(net75),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout76 (.A(_0479_),
    .X(net76),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout77 (.A(_0479_),
    .X(net77),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout78 (.A(net79),
    .X(net78),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout79 (.A(net80),
    .X(net79),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout80 (.A(_0474_),
    .X(net80),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout81 (.A(_0276_),
    .X(net81),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout82 (.A(_0276_),
    .X(net82),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout83 (.A(_0275_),
    .X(net83),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout84 (.A(_0271_),
    .X(net84),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout85 (.A(_0209_),
    .X(net85),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout86 (.A(net88),
    .X(net86),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout87 (.A(net88),
    .X(net87),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout88 (.A(_0187_),
    .X(net88),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout89 (.A(net91),
    .X(net89),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout90 (.A(net91),
    .X(net90),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout91 (.A(_0187_),
    .X(net91),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout92 (.A(_0170_),
    .X(net92),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout93 (.A(net98),
    .X(net93),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout94 (.A(net98),
    .X(net94),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout95 (.A(net96),
    .X(net95),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout96 (.A(net98),
    .X(net96),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout97 (.A(net98),
    .X(net97),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout98 (.A(net111),
    .X(net98),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 fanout99 (.A(net101),
    .X(net99),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 input1 (.A(rst_ni),
    .X(net1),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 input2 (.A(spi_miso),
    .X(net2),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output10 (.A(net10),
    .X(boot_addr[17]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output11 (.A(net11),
    .X(boot_addr[18]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output12 (.A(net12),
    .X(boot_addr[19]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output13 (.A(net13),
    .X(boot_addr[20]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output14 (.A(net14),
    .X(boot_addr[21]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output15 (.A(net15),
    .X(boot_addr[22]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output16 (.A(net16),
    .X(boot_addr[23]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output17 (.A(net17),
    .X(boot_addr[24]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output18 (.A(net18),
    .X(boot_addr[25]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output19 (.A(net19),
    .X(boot_addr[26]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output20 (.A(net20),
    .X(boot_addr[27]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output21 (.A(net21),
    .X(boot_addr[28]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output22 (.A(net22),
    .X(boot_addr[29]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output23 (.A(net23),
    .X(boot_addr[2]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output24 (.A(net24),
    .X(boot_addr[30]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output25 (.A(net25),
    .X(boot_addr[31]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output26 (.A(net26),
    .X(boot_addr[3]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output27 (.A(net27),
    .X(boot_addr[4]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output28 (.A(net28),
    .X(boot_addr[5]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output29 (.A(net29),
    .X(boot_addr[6]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output3 (.A(net3),
    .X(boot_addr[10]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output30 (.A(net30),
    .X(boot_addr[7]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output31 (.A(net31),
    .X(boot_addr[8]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output32 (.A(net32),
    .X(boot_addr[9]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output33 (.A(net33),
    .X(boot_done),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output34 (.A(net34),
    .X(boot_wdata[0]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output35 (.A(net35),
    .X(boot_wdata[10]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output36 (.A(net36),
    .X(boot_wdata[11]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output37 (.A(net37),
    .X(boot_wdata[12]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output38 (.A(net38),
    .X(boot_wdata[13]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output39 (.A(net39),
    .X(boot_wdata[14]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output4 (.A(net4),
    .X(boot_addr[11]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output40 (.A(net40),
    .X(boot_wdata[15]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output41 (.A(net41),
    .X(boot_wdata[16]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output42 (.A(net42),
    .X(boot_wdata[17]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output43 (.A(net43),
    .X(boot_wdata[18]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output44 (.A(net44),
    .X(boot_wdata[19]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output45 (.A(net45),
    .X(boot_wdata[1]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output46 (.A(net46),
    .X(boot_wdata[20]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output47 (.A(net47),
    .X(boot_wdata[21]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output48 (.A(net48),
    .X(boot_wdata[22]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output49 (.A(net49),
    .X(boot_wdata[23]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output5 (.A(net5),
    .X(boot_addr[12]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output50 (.A(net50),
    .X(boot_wdata[24]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output51 (.A(net51),
    .X(boot_wdata[25]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output52 (.A(net52),
    .X(boot_wdata[26]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output53 (.A(net53),
    .X(boot_wdata[27]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output54 (.A(net54),
    .X(boot_wdata[28]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output55 (.A(net55),
    .X(boot_wdata[29]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output56 (.A(net56),
    .X(boot_wdata[2]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output57 (.A(net57),
    .X(boot_wdata[30]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output58 (.A(net58),
    .X(boot_wdata[31]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output59 (.A(net59),
    .X(boot_wdata[3]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output6 (.A(net6),
    .X(boot_addr[13]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output60 (.A(net60),
    .X(boot_wdata[4]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output61 (.A(net61),
    .X(boot_wdata[5]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output62 (.A(net62),
    .X(boot_wdata[6]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output63 (.A(net63),
    .X(boot_wdata[7]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output64 (.A(net64),
    .X(boot_wdata[8]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output65 (.A(net65),
    .X(boot_wdata[9]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output66 (.A(net66),
    .X(boot_we),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output67 (.A(net67),
    .X(cpu_rst_n),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output68 (.A(net68),
    .X(spi_cs_n),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output69 (.A(net69),
    .X(spi_mosi),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output7 (.A(net7),
    .X(boot_addr[14]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output70 (.A(net121),
    .X(spi_sclk),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output8 (.A(net8),
    .X(boot_addr[15]),
    .VDD(VDD),
    .VSS(VSS));
 sg13g2_buf_1 output9 (.A(net9),
    .X(boot_addr[16]),
    .VDD(VDD),
    .VSS(VSS));
 assign boot_addr[0] = net;
 assign boot_addr[1] = net159;
endmodule
