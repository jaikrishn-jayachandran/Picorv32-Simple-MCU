module boot_spi_macro (boot_done,
    boot_we,
    clk_i,
    cpu_rst_n,
    rst_ni,
    spi_cs_n,
    spi_miso,
    spi_mosi,
    spi_sclk,
    boot_addr,
    boot_wdata,
    VDD,
    VSS);
 output boot_done;
 output boot_we;
 input clk_i;
 output cpu_rst_n;
 input rst_ni;
 output spi_cs_n;
 input spi_miso;
 output spi_mosi;
 output spi_sclk;
 output [31:0] boot_addr;
 output [31:0] boot_wdata;
 inout VDD;
 inout VSS;

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
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire spi_done;
 wire \spi_rx[0] ;
 wire \spi_rx[1] ;
 wire \spi_rx[2] ;
 wire \spi_rx[3] ;
 wire \spi_rx[4] ;
 wire \spi_rx[5] ;
 wire \spi_rx[6] ;
 wire \spi_rx[7] ;
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

 sg13g2_inv_1 _0699_ (.Y(_0170_),
    .A(spi_sclk));
 sg13g2_inv_1 _0700_ (.Y(_0171_),
    .A(boot_done));
 sg13g2_inv_1 _0701_ (.Y(_0172_),
    .A(\u_boot_ctrl.word_cnt[31] ));
 sg13g2_inv_1 _0702_ (.Y(_0173_),
    .A(\u_boot_ctrl.word_cnt[30] ));
 sg13g2_inv_1 _0703_ (.Y(_0174_),
    .A(\u_boot_ctrl.word_cnt[29] ));
 sg13g2_inv_1 _0704_ (.Y(_0175_),
    .A(\u_boot_ctrl.word_cnt[28] ));
 sg13g2_inv_1 _0705_ (.Y(_0176_),
    .A(\u_boot_ctrl.word_cnt[27] ));
 sg13g2_inv_1 _0706_ (.Y(_0177_),
    .A(\u_boot_ctrl.word_cnt[26] ));
 sg13g2_inv_1 _0707_ (.Y(_0178_),
    .A(\u_boot_ctrl.word_cnt[25] ));
 sg13g2_inv_1 _0708_ (.Y(_0179_),
    .A(\u_boot_ctrl.word_cnt[23] ));
 sg13g2_inv_1 _0709_ (.Y(_0180_),
    .A(\u_boot_ctrl.word_cnt[22] ));
 sg13g2_inv_1 _0710_ (.Y(_0181_),
    .A(\u_boot_ctrl.word_cnt[21] ));
 sg13g2_inv_1 _0711_ (.Y(_0182_),
    .A(\u_boot_ctrl.word_cnt[20] ));
 sg13g2_inv_1 _0712_ (.Y(_0183_),
    .A(\u_boot_ctrl.word_cnt[19] ));
 sg13g2_inv_1 _0713_ (.Y(_0184_),
    .A(\u_boot_ctrl.word_cnt[18] ));
 sg13g2_inv_1 _0714_ (.Y(_0185_),
    .A(\u_boot_ctrl.word_cnt[17] ));
 sg13g2_inv_1 _0715_ (.Y(_0186_),
    .A(\u_boot_ctrl.word_cnt[15] ));
 sg13g2_inv_1 _0716_ (.Y(_0003_),
    .A(rst_ni));
 sg13g2_nand2_1 _0717_ (.Y(_0187_),
    .A(spi_done),
    .B(\u_boot_ctrl.state[4] ));
 sg13g2_nand3_1 _0718_ (.B(\u_boot_ctrl.byte_cnt[0] ),
    .C(rst_ni),
    .A(\u_boot_ctrl.byte_cnt[1] ),
    .Y(_0188_));
 sg13g2_nor2_1 _0719_ (.A(_0187_),
    .B(_0188_),
    .Y(_0002_));
 sg13g2_and2_1 _0720_ (.A(rst_ni),
    .B(\u_boot_ctrl.state[0] ),
    .X(_0001_));
 sg13g2_and2_1 _0721_ (.A(\u_boot_ctrl.state[9] ),
    .B(rst_ni),
    .X(_0000_));
 sg13g2_and3_1 _0722_ (.X(_0189_),
    .A(rst_ni),
    .B(spi_done),
    .C(\u_boot_ctrl.state[3] ));
 sg13g2_nor2_1 _0723_ (.A(spi_done),
    .B(_0003_),
    .Y(_0190_));
 sg13g2_a21o_1 _0724_ (.A2(_0190_),
    .A1(\u_boot_ctrl.state[8] ),
    .B1(_0189_),
    .X(_0009_));
 sg13g2_and3_1 _0725_ (.X(_0191_),
    .A(rst_ni),
    .B(spi_done),
    .C(\u_boot_ctrl.state[2] ));
 sg13g2_a21o_1 _0726_ (.A2(_0190_),
    .A1(\u_boot_ctrl.state[7] ),
    .B1(_0191_),
    .X(_0008_));
 sg13g2_nor4_1 _0727_ (.A(\u_boot_ctrl.word_cnt[25] ),
    .B(\u_boot_ctrl.word_cnt[24] ),
    .C(\u_boot_ctrl.word_cnt[23] ),
    .D(\u_boot_ctrl.word_cnt[22] ),
    .Y(_0192_));
 sg13g2_nor4_1 _0728_ (.A(\u_boot_ctrl.word_cnt[21] ),
    .B(\u_boot_ctrl.word_cnt[20] ),
    .C(\u_boot_ctrl.word_cnt[19] ),
    .D(\u_boot_ctrl.word_cnt[18] ),
    .Y(_0193_));
 sg13g2_nor4_1 _0729_ (.A(\u_boot_ctrl.word_cnt[13] ),
    .B(\u_boot_ctrl.word_cnt[12] ),
    .C(\u_boot_ctrl.word_cnt[11] ),
    .D(\u_boot_ctrl.word_cnt[10] ),
    .Y(_0194_));
 sg13g2_nor4_1 _0730_ (.A(\u_boot_ctrl.word_cnt[17] ),
    .B(\u_boot_ctrl.word_cnt[16] ),
    .C(\u_boot_ctrl.word_cnt[15] ),
    .D(\u_boot_ctrl.word_cnt[14] ),
    .Y(_0195_));
 sg13g2_and4_1 _0731_ (.A(_0192_),
    .B(_0193_),
    .C(_0194_),
    .D(_0195_),
    .X(_0196_));
 sg13g2_nand4_1 _0732_ (.B(_0193_),
    .C(_0194_),
    .A(_0192_),
    .Y(_0197_),
    .D(_0195_));
 sg13g2_nand2_1 _0733_ (.Y(_0198_),
    .A(\u_boot_ctrl.word_cnt[9] ),
    .B(\u_boot_ctrl.word_cnt[8] ));
 sg13g2_nor3_1 _0734_ (.A(\u_boot_ctrl.word_cnt[31] ),
    .B(\u_boot_ctrl.word_cnt[30] ),
    .C(_0198_),
    .Y(_0199_));
 sg13g2_nand4_1 _0735_ (.B(_0173_),
    .C(\u_boot_ctrl.word_cnt[9] ),
    .A(_0172_),
    .Y(_0200_),
    .D(\u_boot_ctrl.word_cnt[8] ));
 sg13g2_nor2_1 _0736_ (.A(\u_boot_ctrl.word_cnt[29] ),
    .B(\u_boot_ctrl.word_cnt[28] ),
    .Y(_0201_));
 sg13g2_nor2_1 _0737_ (.A(\u_boot_ctrl.word_cnt[27] ),
    .B(\u_boot_ctrl.word_cnt[26] ),
    .Y(_0202_));
 sg13g2_nor4_1 _0738_ (.A(\u_boot_ctrl.word_cnt[29] ),
    .B(\u_boot_ctrl.word_cnt[28] ),
    .C(\u_boot_ctrl.word_cnt[27] ),
    .D(\u_boot_ctrl.word_cnt[26] ),
    .Y(_0203_));
 sg13g2_nand2_1 _0739_ (.Y(_0204_),
    .A(_0201_),
    .B(_0202_));
 sg13g2_nand4_1 _0740_ (.B(\u_boot_ctrl.word_cnt[6] ),
    .C(\u_boot_ctrl.word_cnt[5] ),
    .A(\u_boot_ctrl.word_cnt[7] ),
    .Y(_0205_),
    .D(\u_boot_ctrl.word_cnt[0] ));
 sg13g2_nand4_1 _0741_ (.B(\u_boot_ctrl.word_cnt[3] ),
    .C(\u_boot_ctrl.word_cnt[2] ),
    .A(\u_boot_ctrl.word_cnt[4] ),
    .Y(_0206_),
    .D(\u_boot_ctrl.word_cnt[1] ));
 sg13g2_nor2_1 _0742_ (.A(_0205_),
    .B(_0206_),
    .Y(_0207_));
 sg13g2_and4_1 _0743_ (.A(\u_boot_ctrl.word_cnt[3] ),
    .B(\u_boot_ctrl.word_cnt[2] ),
    .C(\u_boot_ctrl.word_cnt[1] ),
    .D(\u_boot_ctrl.word_cnt[0] ),
    .X(_0208_));
 sg13g2_nand4_1 _0744_ (.B(\u_boot_ctrl.word_cnt[2] ),
    .C(\u_boot_ctrl.word_cnt[1] ),
    .A(\u_boot_ctrl.word_cnt[3] ),
    .Y(_0209_),
    .D(\u_boot_ctrl.word_cnt[0] ));
 sg13g2_and4_1 _0745_ (.A(\u_boot_ctrl.word_cnt[7] ),
    .B(\u_boot_ctrl.word_cnt[6] ),
    .C(\u_boot_ctrl.word_cnt[5] ),
    .D(\u_boot_ctrl.word_cnt[4] ),
    .X(_0210_));
 sg13g2_nand4_1 _0746_ (.B(\u_boot_ctrl.word_cnt[6] ),
    .C(\u_boot_ctrl.word_cnt[5] ),
    .A(\u_boot_ctrl.word_cnt[7] ),
    .Y(_0211_),
    .D(\u_boot_ctrl.word_cnt[4] ));
 sg13g2_nor2_1 _0747_ (.A(_0209_),
    .B(_0211_),
    .Y(_0212_));
 sg13g2_nor4_1 _0748_ (.A(_0200_),
    .B(_0204_),
    .C(_0209_),
    .D(_0211_),
    .Y(_0213_));
 sg13g2_nand4_1 _0749_ (.B(_0203_),
    .C(_0208_),
    .A(_0199_),
    .Y(_0214_),
    .D(_0210_));
 sg13g2_nand3_1 _0750_ (.B(_0196_),
    .C(_0213_),
    .A(\u_boot_ctrl.state[1] ),
    .Y(_0215_));
 sg13g2_a21oi_1 _0751_ (.A1(_0171_),
    .A2(_0215_),
    .Y(_0007_),
    .B1(_0003_));
 sg13g2_o21ai_1 _0752_ (.B1(\u_boot_ctrl.state[1] ),
    .Y(_0216_),
    .A1(_0197_),
    .A2(_0214_));
 sg13g2_nand3_1 _0753_ (.B(\u_boot_ctrl.byte_cnt[0] ),
    .C(spi_done),
    .A(\u_boot_ctrl.byte_cnt[1] ),
    .Y(_0217_));
 sg13g2_a22oi_1 _0754_ (.Y(_0218_),
    .B1(\u_boot_ctrl.state[4] ),
    .B2(_0217_),
    .A2(\u_boot_ctrl.state[7] ),
    .A1(spi_done));
 sg13g2_a21oi_1 _0755_ (.A1(_0216_),
    .A2(_0218_),
    .Y(_0006_),
    .B1(_0003_));
 sg13g2_a22oi_1 _0756_ (.Y(_0219_),
    .B1(_0190_),
    .B2(\u_boot_ctrl.state[3] ),
    .A2(\u_boot_ctrl.state[5] ),
    .A1(rst_ni));
 sg13g2_inv_1 _0757_ (.Y(_0005_),
    .A(_0219_));
 sg13g2_and3_1 _0758_ (.X(_0220_),
    .A(rst_ni),
    .B(spi_done),
    .C(\u_boot_ctrl.state[8] ));
 sg13g2_a21o_1 _0759_ (.A2(_0190_),
    .A1(\u_boot_ctrl.state[2] ),
    .B1(_0220_),
    .X(_0004_));
 sg13g2_nor3_1 _0760_ (.A(\u_boot_ctrl.state[2] ),
    .B(\u_boot_ctrl.state[7] ),
    .C(\u_boot_ctrl.state[8] ),
    .Y(_0221_));
 sg13g2_nor2_1 _0761_ (.A(\u_boot_ctrl.state[4] ),
    .B(_0003_),
    .Y(_0222_));
 sg13g2_o21ai_1 _0762_ (.B1(_0222_),
    .Y(_0223_),
    .A1(\spi_tx[0] ),
    .A2(\u_boot_ctrl.state[3] ));
 sg13g2_nor4_1 _0763_ (.A(\u_boot_ctrl.state[2] ),
    .B(\u_boot_ctrl.state[7] ),
    .C(\u_boot_ctrl.state[8] ),
    .D(_0223_),
    .Y(_0010_));
 sg13g2_o21ai_1 _0764_ (.B1(rst_ni),
    .Y(_0224_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[2]));
 sg13g2_nor2b_1 _0765_ (.A(\u_boot_ctrl.word_cnt[0] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0225_));
 sg13g2_nor2_1 _0766_ (.A(_0224_),
    .B(_0225_),
    .Y(_0011_));
 sg13g2_nor2b_1 _0767_ (.A(\u_boot_ctrl.word_cnt[1] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0226_));
 sg13g2_o21ai_1 _0768_ (.B1(rst_ni),
    .Y(_0227_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[3]));
 sg13g2_nor2_1 _0769_ (.A(_0227_),
    .B(_0226_),
    .Y(_0012_));
 sg13g2_nor2b_1 _0770_ (.A(\u_boot_ctrl.word_cnt[2] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0228_));
 sg13g2_o21ai_1 _0771_ (.B1(rst_ni),
    .Y(_0229_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[4]));
 sg13g2_nor2_1 _0772_ (.A(_0229_),
    .B(_0228_),
    .Y(_0013_));
 sg13g2_nor2b_1 _0773_ (.A(\u_boot_ctrl.word_cnt[3] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0230_));
 sg13g2_o21ai_1 _0774_ (.B1(rst_ni),
    .Y(_0231_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[5]));
 sg13g2_nor2_1 _0775_ (.A(_0231_),
    .B(_0230_),
    .Y(_0014_));
 sg13g2_nor2b_1 _0776_ (.A(\u_boot_ctrl.word_cnt[4] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0232_));
 sg13g2_o21ai_1 _0777_ (.B1(rst_ni),
    .Y(_0233_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[6]));
 sg13g2_nor2_1 _0778_ (.A(_0233_),
    .B(_0232_),
    .Y(_0015_));
 sg13g2_nor2b_1 _0779_ (.A(\u_boot_ctrl.word_cnt[5] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0234_));
 sg13g2_o21ai_1 _0780_ (.B1(rst_ni),
    .Y(_0235_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[7]));
 sg13g2_nor2_1 _0781_ (.A(_0235_),
    .B(_0234_),
    .Y(_0016_));
 sg13g2_nor2b_1 _0782_ (.A(\u_boot_ctrl.word_cnt[6] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0236_));
 sg13g2_o21ai_1 _0783_ (.B1(rst_ni),
    .Y(_0237_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[8]));
 sg13g2_nor2_1 _0784_ (.A(_0237_),
    .B(_0236_),
    .Y(_0017_));
 sg13g2_nor2b_1 _0785_ (.A(\u_boot_ctrl.word_cnt[7] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0238_));
 sg13g2_o21ai_1 _0786_ (.B1(rst_ni),
    .Y(_0239_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[9]));
 sg13g2_nor2_1 _0787_ (.A(_0239_),
    .B(_0238_),
    .Y(_0018_));
 sg13g2_nor2b_1 _0788_ (.A(\u_boot_ctrl.word_cnt[8] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0240_));
 sg13g2_o21ai_1 _0789_ (.B1(rst_ni),
    .Y(_0241_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[10]));
 sg13g2_nor2_1 _0790_ (.A(_0241_),
    .B(_0240_),
    .Y(_0019_));
 sg13g2_nor2b_1 _0791_ (.A(\u_boot_ctrl.word_cnt[9] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0242_));
 sg13g2_o21ai_1 _0792_ (.B1(rst_ni),
    .Y(_0243_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[11]));
 sg13g2_nor2_1 _0793_ (.A(_0243_),
    .B(_0242_),
    .Y(_0020_));
 sg13g2_nor2b_1 _0794_ (.A(\u_boot_ctrl.word_cnt[10] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0244_));
 sg13g2_o21ai_1 _0795_ (.B1(rst_ni),
    .Y(_0245_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[12]));
 sg13g2_nor2_1 _0796_ (.A(_0245_),
    .B(_0244_),
    .Y(_0021_));
 sg13g2_nor2b_1 _0797_ (.A(\u_boot_ctrl.word_cnt[11] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0246_));
 sg13g2_o21ai_1 _0798_ (.B1(rst_ni),
    .Y(_0247_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[13]));
 sg13g2_nor2_1 _0799_ (.A(_0247_),
    .B(_0246_),
    .Y(_0022_));
 sg13g2_nor2b_1 _0800_ (.A(\u_boot_ctrl.word_cnt[12] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0248_));
 sg13g2_o21ai_1 _0801_ (.B1(rst_ni),
    .Y(_0249_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[14]));
 sg13g2_nor2_1 _0802_ (.A(_0249_),
    .B(_0248_),
    .Y(_0023_));
 sg13g2_nor2b_1 _0803_ (.A(\u_boot_ctrl.word_cnt[13] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0250_));
 sg13g2_o21ai_1 _0804_ (.B1(rst_ni),
    .Y(_0251_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[15]));
 sg13g2_nor2_1 _0805_ (.A(_0251_),
    .B(_0250_),
    .Y(_0024_));
 sg13g2_nor2b_1 _0806_ (.A(\u_boot_ctrl.word_cnt[14] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0252_));
 sg13g2_o21ai_1 _0807_ (.B1(rst_ni),
    .Y(_0253_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[16]));
 sg13g2_nor2_1 _0808_ (.A(_0253_),
    .B(_0252_),
    .Y(_0025_));
 sg13g2_o21ai_1 _0809_ (.B1(rst_ni),
    .Y(_0254_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[17]));
 sg13g2_a21oi_1 _0810_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0186_),
    .Y(_0026_),
    .B1(_0254_));
 sg13g2_nor2b_1 _0811_ (.A(\u_boot_ctrl.word_cnt[16] ),
    .B_N(\u_boot_ctrl.state[9] ),
    .Y(_0255_));
 sg13g2_o21ai_1 _0812_ (.B1(rst_ni),
    .Y(_0256_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[18]));
 sg13g2_nor2_1 _0813_ (.A(_0256_),
    .B(_0255_),
    .Y(_0027_));
 sg13g2_o21ai_1 _0814_ (.B1(rst_ni),
    .Y(_0257_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[19]));
 sg13g2_a21oi_1 _0815_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0185_),
    .Y(_0028_),
    .B1(_0257_));
 sg13g2_o21ai_1 _0816_ (.B1(rst_ni),
    .Y(_0258_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[20]));
 sg13g2_a21oi_1 _0817_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0184_),
    .Y(_0029_),
    .B1(_0258_));
 sg13g2_o21ai_1 _0818_ (.B1(rst_ni),
    .Y(_0259_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[21]));
 sg13g2_a21oi_1 _0819_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0183_),
    .Y(_0030_),
    .B1(_0259_));
 sg13g2_o21ai_1 _0820_ (.B1(rst_ni),
    .Y(_0260_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[22]));
 sg13g2_a21oi_1 _0821_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0182_),
    .Y(_0031_),
    .B1(_0260_));
 sg13g2_o21ai_1 _0822_ (.B1(rst_ni),
    .Y(_0261_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[23]));
 sg13g2_a21oi_1 _0823_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0181_),
    .Y(_0032_),
    .B1(_0261_));
 sg13g2_o21ai_1 _0824_ (.B1(rst_ni),
    .Y(_0262_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[24]));
 sg13g2_a21oi_1 _0825_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0180_),
    .Y(_0033_),
    .B1(_0262_));
 sg13g2_o21ai_1 _0826_ (.B1(rst_ni),
    .Y(_0263_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[25]));
 sg13g2_a21oi_1 _0827_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0179_),
    .Y(_0034_),
    .B1(_0263_));
 sg13g2_mux2_1 _0828_ (.A0(boot_addr[26]),
    .A1(\u_boot_ctrl.word_cnt[24] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0264_));
 sg13g2_and2_1 _0829_ (.A(_0264_),
    .B(rst_ni),
    .X(_0035_));
 sg13g2_o21ai_1 _0830_ (.B1(rst_ni),
    .Y(_0265_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[27]));
 sg13g2_a21oi_1 _0831_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0178_),
    .Y(_0036_),
    .B1(_0265_));
 sg13g2_o21ai_1 _0832_ (.B1(rst_ni),
    .Y(_0266_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[28]));
 sg13g2_a21oi_1 _0833_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0177_),
    .Y(_0037_),
    .B1(_0266_));
 sg13g2_o21ai_1 _0834_ (.B1(rst_ni),
    .Y(_0267_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[29]));
 sg13g2_a21oi_1 _0835_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0176_),
    .Y(_0038_),
    .B1(_0267_));
 sg13g2_and2_1 _0836_ (.A(\u_boot_ctrl.state[9] ),
    .B(\u_boot_ctrl.word_cnt[28] ),
    .X(_0268_));
 sg13g2_mux2_1 _0837_ (.A0(boot_addr[30]),
    .A1(\u_boot_ctrl.word_cnt[28] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0269_));
 sg13g2_and2_1 _0838_ (.A(_0269_),
    .B(rst_ni),
    .X(_0039_));
 sg13g2_o21ai_1 _0839_ (.B1(rst_ni),
    .Y(_0270_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(boot_addr[31]));
 sg13g2_a21oi_1 _0840_ (.A1(\u_boot_ctrl.state[9] ),
    .A2(_0174_),
    .Y(_0040_),
    .B1(_0270_));
 sg13g2_nand2b_1 _0841_ (.Y(_0271_),
    .B(\u_boot_ctrl.state[0] ),
    .A_N(\u_boot_ctrl.state[9] ));
 sg13g2_and2_1 _0842_ (.A(_0271_),
    .B(rst_ni),
    .X(_0272_));
 sg13g2_nand2_1 _0843_ (.Y(_0273_),
    .A(_0271_),
    .B(rst_ni));
 sg13g2_o21ai_1 _0844_ (.B1(rst_ni),
    .Y(_0274_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(\u_boot_ctrl.word_cnt[0] ));
 sg13g2_nor2_1 _0845_ (.A(\u_boot_ctrl.state[9] ),
    .B(\u_boot_ctrl.state[0] ),
    .Y(_0275_));
 sg13g2_or2_1 _0846_ (.X(_0276_),
    .B(\u_boot_ctrl.state[0] ),
    .A(\u_boot_ctrl.state[9] ));
 sg13g2_a21oi_1 _0847_ (.A1(_0276_),
    .A2(\u_boot_ctrl.word_cnt[0] ),
    .Y(_0041_),
    .B1(_0274_));
 sg13g2_a21o_1 _0848_ (.A2(\u_boot_ctrl.word_cnt[0] ),
    .A1(_0276_),
    .B1(\u_boot_ctrl.word_cnt[1] ),
    .X(_0277_));
 sg13g2_nand3_1 _0849_ (.B(\u_boot_ctrl.word_cnt[0] ),
    .C(\u_boot_ctrl.word_cnt[1] ),
    .A(_0276_),
    .Y(_0278_));
 sg13g2_and4_1 _0850_ (.A(_0277_),
    .B(rst_ni),
    .C(_0271_),
    .D(_0278_),
    .X(_0042_));
 sg13g2_nor2b_1 _0851_ (.A(\u_boot_ctrl.word_cnt[2] ),
    .B_N(_0278_),
    .Y(_0279_));
 sg13g2_and4_1 _0852_ (.A(_0276_),
    .B(\u_boot_ctrl.word_cnt[0] ),
    .C(\u_boot_ctrl.word_cnt[1] ),
    .D(\u_boot_ctrl.word_cnt[2] ),
    .X(_0280_));
 sg13g2_nor3_1 _0853_ (.A(_0280_),
    .B(_0273_),
    .C(_0279_),
    .Y(_0043_));
 sg13g2_nor2_1 _0854_ (.A(\u_boot_ctrl.word_cnt[3] ),
    .B(_0280_),
    .Y(_0281_));
 sg13g2_nor2_1 _0855_ (.A(_0275_),
    .B(_0209_),
    .Y(_0282_));
 sg13g2_nor3_1 _0856_ (.A(_0282_),
    .B(_0273_),
    .C(_0281_),
    .Y(_0044_));
 sg13g2_a21oi_1 _0857_ (.A1(_0208_),
    .A2(_0276_),
    .Y(_0283_),
    .B1(\u_boot_ctrl.word_cnt[4] ));
 sg13g2_o21ai_1 _0858_ (.B1(\u_boot_ctrl.word_cnt[4] ),
    .Y(_0284_),
    .A1(\u_boot_ctrl.state[9] ),
    .A2(\u_boot_ctrl.state[0] ));
 sg13g2_nor2_1 _0859_ (.A(_0209_),
    .B(_0284_),
    .Y(_0285_));
 sg13g2_nor3_1 _0860_ (.A(_0285_),
    .B(_0273_),
    .C(_0283_),
    .Y(_0045_));
 sg13g2_o21ai_1 _0861_ (.B1(_0272_),
    .Y(_0286_),
    .A1(\u_boot_ctrl.word_cnt[5] ),
    .A2(_0285_));
 sg13g2_a21oi_1 _0862_ (.A1(\u_boot_ctrl.word_cnt[5] ),
    .A2(_0285_),
    .Y(_0046_),
    .B1(_0286_));
 sg13g2_a21oi_1 _0863_ (.A1(\u_boot_ctrl.word_cnt[5] ),
    .A2(_0285_),
    .Y(_0287_),
    .B1(\u_boot_ctrl.word_cnt[6] ));
 sg13g2_and3_1 _0864_ (.X(_0288_),
    .A(\u_boot_ctrl.word_cnt[6] ),
    .B(\u_boot_ctrl.word_cnt[5] ),
    .C(_0285_));
 sg13g2_nor3_1 _0865_ (.A(_0273_),
    .B(_0287_),
    .C(_0288_),
    .Y(_0047_));
 sg13g2_nor2_1 _0866_ (.A(\u_boot_ctrl.word_cnt[7] ),
    .B(_0288_),
    .Y(_0289_));
 sg13g2_nor3_1 _0867_ (.A(_0275_),
    .B(_0211_),
    .C(_0209_),
    .Y(_0290_));
 sg13g2_nor3_1 _0868_ (.A(_0290_),
    .B(_0273_),
    .C(_0289_),
    .Y(_0048_));
 sg13g2_nor3_1 _0869_ (.A(_0275_),
    .B(_0211_),
    .C(_0209_),
    .Y(_0291_));
 sg13g2_o21ai_1 _0870_ (.B1(_0272_),
    .Y(_0292_),
    .A1(\u_boot_ctrl.word_cnt[8] ),
    .A2(_0291_));
 sg13g2_a21oi_1 _0871_ (.A1(\u_boot_ctrl.word_cnt[8] ),
    .A2(_0290_),
    .Y(_0049_),
    .B1(_0292_));
 sg13g2_a21oi_1 _0872_ (.A1(\u_boot_ctrl.word_cnt[8] ),
    .A2(_0291_),
    .Y(_0293_),
    .B1(\u_boot_ctrl.word_cnt[9] ));
 sg13g2_nor4_1 _0873_ (.A(_0198_),
    .B(_0209_),
    .C(_0211_),
    .D(_0275_),
    .Y(_0294_));
 sg13g2_nor3_1 _0874_ (.A(_0294_),
    .B(_0273_),
    .C(_0293_),
    .Y(_0050_));
 sg13g2_o21ai_1 _0875_ (.B1(_0272_),
    .Y(_0295_),
    .A1(\u_boot_ctrl.word_cnt[10] ),
    .A2(_0294_));
 sg13g2_a21oi_1 _0876_ (.A1(\u_boot_ctrl.word_cnt[10] ),
    .A2(_0294_),
    .Y(_0051_),
    .B1(_0295_));
 sg13g2_a21oi_1 _0877_ (.A1(\u_boot_ctrl.word_cnt[10] ),
    .A2(_0294_),
    .Y(_0296_),
    .B1(\u_boot_ctrl.word_cnt[11] ));
 sg13g2_nand4_1 _0878_ (.B(\u_boot_ctrl.word_cnt[10] ),
    .C(\u_boot_ctrl.word_cnt[9] ),
    .A(\u_boot_ctrl.word_cnt[11] ),
    .Y(_0297_),
    .D(\u_boot_ctrl.word_cnt[8] ));
 sg13g2_nor4_1 _0879_ (.A(_0275_),
    .B(_0297_),
    .C(_0209_),
    .D(_0211_),
    .Y(_0298_));
 sg13g2_nor3_1 _0880_ (.A(_0298_),
    .B(_0273_),
    .C(_0296_),
    .Y(_0052_));
 sg13g2_o21ai_1 _0881_ (.B1(_0272_),
    .Y(_0299_),
    .A1(\u_boot_ctrl.word_cnt[12] ),
    .A2(_0298_));
 sg13g2_a21oi_1 _0882_ (.A1(\u_boot_ctrl.word_cnt[12] ),
    .A2(_0298_),
    .Y(_0053_),
    .B1(_0299_));
 sg13g2_a21oi_1 _0883_ (.A1(\u_boot_ctrl.word_cnt[12] ),
    .A2(_0298_),
    .Y(_0300_),
    .B1(\u_boot_ctrl.word_cnt[13] ));
 sg13g2_and2_1 _0884_ (.A(\u_boot_ctrl.word_cnt[13] ),
    .B(\u_boot_ctrl.word_cnt[12] ),
    .X(_0301_));
 sg13g2_nand4_1 _0885_ (.B(\u_boot_ctrl.word_cnt[12] ),
    .C(\u_boot_ctrl.word_cnt[11] ),
    .A(\u_boot_ctrl.word_cnt[13] ),
    .Y(_0302_),
    .D(\u_boot_ctrl.word_cnt[10] ));
 sg13g2_and3_1 _0886_ (.X(_0303_),
    .A(\u_boot_ctrl.word_cnt[13] ),
    .B(\u_boot_ctrl.word_cnt[12] ),
    .C(_0298_));
 sg13g2_nor3_1 _0887_ (.A(_0273_),
    .B(_0300_),
    .C(_0303_),
    .Y(_0054_));
 sg13g2_a21oi_1 _0888_ (.A1(_0298_),
    .A2(_0301_),
    .Y(_0304_),
    .B1(\u_boot_ctrl.word_cnt[14] ));
 sg13g2_and4_1 _0889_ (.A(\u_boot_ctrl.word_cnt[14] ),
    .B(\u_boot_ctrl.word_cnt[13] ),
    .C(\u_boot_ctrl.word_cnt[12] ),
    .D(_0298_),
    .X(_0305_));
 sg13g2_nand3_1 _0890_ (.B(_0298_),
    .C(_0301_),
    .A(\u_boot_ctrl.word_cnt[14] ),
    .Y(_0306_));
 sg13g2_nor3_1 _0891_ (.A(_0273_),
    .B(_0304_),
    .C(_0305_),
    .Y(_0055_));
 sg13g2_nand4_1 _0892_ (.B(\u_boot_ctrl.word_cnt[14] ),
    .C(\u_boot_ctrl.word_cnt[9] ),
    .A(\u_boot_ctrl.word_cnt[15] ),
    .Y(_0307_),
    .D(\u_boot_ctrl.word_cnt[8] ));
 sg13g2_nor2_1 _0893_ (.A(_0302_),
    .B(_0307_),
    .Y(_0308_));
 sg13g2_nor4_1 _0894_ (.A(_0205_),
    .B(_0206_),
    .C(_0302_),
    .D(_0307_),
    .Y(_0309_));
 sg13g2_nand4_1 _0895_ (.B(\u_boot_ctrl.word_cnt[14] ),
    .C(\u_boot_ctrl.word_cnt[13] ),
    .A(\u_boot_ctrl.word_cnt[15] ),
    .Y(_0310_),
    .D(\u_boot_ctrl.word_cnt[12] ));
 sg13g2_nor2_1 _0896_ (.A(_0297_),
    .B(_0310_),
    .Y(_0311_));
 sg13g2_nor4_1 _0897_ (.A(_0209_),
    .B(_0211_),
    .C(_0297_),
    .D(_0310_),
    .Y(_0312_));
 sg13g2_nor4_1 _0898_ (.A(_0209_),
    .B(_0211_),
    .C(_0297_),
    .D(_0310_),
    .Y(_0313_));
 sg13g2_a221oi_1 _0899_ (.B2(_0186_),
    .C1(_0273_),
    .B1(_0306_),
    .A1(_0276_),
    .Y(_0056_),
    .A2(_0312_));
 sg13g2_and4_1 _0900_ (.A(_0276_),
    .B(_0311_),
    .C(_0208_),
    .D(_0210_),
    .X(_0314_));
 sg13g2_a21o_1 _0901_ (.A2(_0311_),
    .A1(_0291_),
    .B1(\u_boot_ctrl.word_cnt[16] ),
    .X(_0315_));
 sg13g2_nand4_1 _0902_ (.B(_0207_),
    .C(_0308_),
    .A(\u_boot_ctrl.word_cnt[16] ),
    .Y(_0316_),
    .D(_0276_));
 sg13g2_and4_1 _0903_ (.A(_0315_),
    .B(rst_ni),
    .C(_0271_),
    .D(_0316_),
    .X(_0057_));
 sg13g2_and2_1 _0904_ (.A(\u_boot_ctrl.word_cnt[17] ),
    .B(\u_boot_ctrl.word_cnt[16] ),
    .X(_0317_));
 sg13g2_nand4_1 _0905_ (.B(_0282_),
    .C(_0311_),
    .A(_0210_),
    .Y(_0318_),
    .D(_0317_));
 sg13g2_a221oi_1 _0906_ (.B2(_0314_),
    .C1(_0273_),
    .B1(_0317_),
    .A1(_0185_),
    .Y(_0058_),
    .A2(_0316_));
 sg13g2_nand4_1 _0907_ (.B(_0309_),
    .C(_0317_),
    .A(\u_boot_ctrl.word_cnt[18] ),
    .Y(_0319_),
    .D(_0276_));
 sg13g2_and4_1 _0908_ (.A(\u_boot_ctrl.word_cnt[18] ),
    .B(_0210_),
    .C(_0282_),
    .D(_0311_),
    .X(_0320_));
 sg13g2_a221oi_1 _0909_ (.B2(_0317_),
    .C1(_0273_),
    .B1(_0320_),
    .A1(_0184_),
    .Y(_0059_),
    .A2(_0318_));
 sg13g2_and4_1 _0910_ (.A(\u_boot_ctrl.word_cnt[19] ),
    .B(\u_boot_ctrl.word_cnt[18] ),
    .C(\u_boot_ctrl.word_cnt[17] ),
    .D(\u_boot_ctrl.word_cnt[16] ),
    .X(_0321_));
 sg13g2_nand4_1 _0911_ (.B(\u_boot_ctrl.word_cnt[18] ),
    .C(\u_boot_ctrl.word_cnt[17] ),
    .A(\u_boot_ctrl.word_cnt[19] ),
    .Y(_0322_),
    .D(\u_boot_ctrl.word_cnt[16] ));
 sg13g2_nand4_1 _0912_ (.B(_0311_),
    .C(_0321_),
    .A(_0212_),
    .Y(_0323_),
    .D(_0276_));
 sg13g2_a221oi_1 _0913_ (.B2(_0183_),
    .C1(_0273_),
    .B1(_0319_),
    .A1(_0314_),
    .Y(_0060_),
    .A2(_0321_));
 sg13g2_nand4_1 _0914_ (.B(_0291_),
    .C(_0311_),
    .A(\u_boot_ctrl.word_cnt[20] ),
    .Y(_0324_),
    .D(_0321_));
 sg13g2_nand3_1 _0915_ (.B(rst_ni),
    .C(_0271_),
    .A(_0324_),
    .Y(_0325_));
 sg13g2_a21oi_1 _0916_ (.A1(_0182_),
    .A2(_0323_),
    .Y(_0061_),
    .B1(_0325_));
 sg13g2_nor3_1 _0917_ (.A(_0181_),
    .B(_0182_),
    .C(_0322_),
    .Y(_0326_));
 sg13g2_a221oi_1 _0918_ (.B2(_0314_),
    .C1(_0273_),
    .B1(_0326_),
    .A1(_0181_),
    .Y(_0062_),
    .A2(_0324_));
 sg13g2_nand4_1 _0919_ (.B(_0282_),
    .C(_0311_),
    .A(_0210_),
    .Y(_0327_),
    .D(_0326_));
 sg13g2_nand3_1 _0920_ (.B(\u_boot_ctrl.word_cnt[21] ),
    .C(\u_boot_ctrl.word_cnt[20] ),
    .A(\u_boot_ctrl.word_cnt[22] ),
    .Y(_0328_));
 sg13g2_nor2_1 _0921_ (.A(_0322_),
    .B(_0328_),
    .Y(_0329_));
 sg13g2_nand4_1 _0922_ (.B(_0308_),
    .C(_0329_),
    .A(_0207_),
    .Y(_0330_),
    .D(_0276_));
 sg13g2_nand3_1 _0923_ (.B(rst_ni),
    .C(_0271_),
    .A(_0330_),
    .Y(_0331_));
 sg13g2_a21oi_1 _0924_ (.A1(_0180_),
    .A2(_0327_),
    .Y(_0063_),
    .B1(_0331_));
 sg13g2_nand3_1 _0925_ (.B(\u_boot_ctrl.word_cnt[23] ),
    .C(_0271_),
    .A(_0330_),
    .Y(_0332_));
 sg13g2_nand4_1 _0926_ (.B(_0313_),
    .C(_0329_),
    .A(\u_boot_ctrl.state[9] ),
    .Y(_0333_),
    .D(_0179_));
 sg13g2_a21oi_1 _0927_ (.A1(_0332_),
    .A2(_0333_),
    .Y(_0064_),
    .B1(_0003_));
 sg13g2_nor3_1 _0928_ (.A(_0179_),
    .B(_0322_),
    .C(_0328_),
    .Y(_0334_));
 sg13g2_nand4_1 _0929_ (.B(\u_boot_ctrl.word_cnt[22] ),
    .C(\u_boot_ctrl.word_cnt[21] ),
    .A(\u_boot_ctrl.word_cnt[23] ),
    .Y(_0335_),
    .D(\u_boot_ctrl.word_cnt[20] ));
 sg13g2_nor2_1 _0930_ (.A(_0322_),
    .B(_0335_),
    .Y(_0336_));
 sg13g2_and4_1 _0931_ (.A(_0210_),
    .B(_0282_),
    .C(_0311_),
    .D(_0336_),
    .X(_0337_));
 sg13g2_nor2_1 _0932_ (.A(\u_boot_ctrl.word_cnt[24] ),
    .B(_0337_),
    .Y(_0338_));
 sg13g2_nand4_1 _0933_ (.B(_0291_),
    .C(_0311_),
    .A(\u_boot_ctrl.word_cnt[24] ),
    .Y(_0339_),
    .D(_0336_));
 sg13g2_nand3_1 _0934_ (.B(rst_ni),
    .C(_0271_),
    .A(_0339_),
    .Y(_0340_));
 sg13g2_nor2_1 _0935_ (.A(_0340_),
    .B(_0338_),
    .Y(_0065_));
 sg13g2_and2_1 _0936_ (.A(\u_boot_ctrl.word_cnt[25] ),
    .B(\u_boot_ctrl.word_cnt[24] ),
    .X(_0341_));
 sg13g2_nand4_1 _0937_ (.B(_0311_),
    .C(_0336_),
    .A(_0291_),
    .Y(_0342_),
    .D(_0341_));
 sg13g2_a221oi_1 _0938_ (.B2(_0337_),
    .C1(_0273_),
    .B1(_0341_),
    .A1(_0178_),
    .Y(_0066_),
    .A2(_0339_));
 sg13g2_and3_1 _0939_ (.X(_0343_),
    .A(\u_boot_ctrl.word_cnt[26] ),
    .B(\u_boot_ctrl.word_cnt[25] ),
    .C(\u_boot_ctrl.word_cnt[24] ));
 sg13g2_a221oi_1 _0940_ (.B2(_0337_),
    .C1(_0273_),
    .B1(_0343_),
    .A1(_0177_),
    .Y(_0067_),
    .A2(_0342_));
 sg13g2_nand4_1 _0941_ (.B(_0312_),
    .C(_0334_),
    .A(\u_boot_ctrl.state[9] ),
    .Y(_0344_),
    .D(_0343_));
 sg13g2_and4_1 _0942_ (.A(\u_boot_ctrl.word_cnt[27] ),
    .B(\u_boot_ctrl.word_cnt[26] ),
    .C(\u_boot_ctrl.word_cnt[25] ),
    .D(\u_boot_ctrl.word_cnt[24] ),
    .X(_0345_));
 sg13g2_nand4_1 _0943_ (.B(_0334_),
    .C(_0345_),
    .A(_0312_),
    .Y(_0346_),
    .D(_0276_));
 sg13g2_nand2_1 _0944_ (.Y(_0347_),
    .A(_0346_),
    .B(_0272_));
 sg13g2_and4_1 _0945_ (.A(_0212_),
    .B(_0311_),
    .C(_0336_),
    .D(_0345_),
    .X(_0348_));
 sg13g2_a21oi_1 _0946_ (.A1(_0176_),
    .A2(_0344_),
    .Y(_0068_),
    .B1(_0347_));
 sg13g2_nand4_1 _0947_ (.B(_0311_),
    .C(_0336_),
    .A(_0291_),
    .Y(_0349_),
    .D(_0345_));
 sg13g2_nor2_1 _0948_ (.A(_0175_),
    .B(_0275_),
    .Y(_0350_));
 sg13g2_a221oi_1 _0949_ (.B2(_0348_),
    .C1(_0273_),
    .B1(_0350_),
    .A1(_0175_),
    .Y(_0069_),
    .A2(_0349_));
 sg13g2_nand4_1 _0950_ (.B(_0312_),
    .C(_0334_),
    .A(_0268_),
    .Y(_0351_),
    .D(_0345_));
 sg13g2_and3_1 _0951_ (.X(_0352_),
    .A(\u_boot_ctrl.state[9] ),
    .B(\u_boot_ctrl.word_cnt[29] ),
    .C(\u_boot_ctrl.word_cnt[28] ));
 sg13g2_nand3_1 _0952_ (.B(\u_boot_ctrl.word_cnt[29] ),
    .C(\u_boot_ctrl.word_cnt[28] ),
    .A(\u_boot_ctrl.state[9] ),
    .Y(_0353_));
 sg13g2_nand4_1 _0953_ (.B(_0334_),
    .C(_0345_),
    .A(_0309_),
    .Y(_0354_),
    .D(_0352_));
 sg13g2_nand2_1 _0954_ (.Y(_0355_),
    .A(_0354_),
    .B(_0272_));
 sg13g2_a21oi_1 _0955_ (.A1(_0174_),
    .A2(_0351_),
    .Y(_0070_),
    .B1(_0355_));
 sg13g2_nor2_1 _0956_ (.A(_0173_),
    .B(_0353_),
    .Y(_0356_));
 sg13g2_nand4_1 _0957_ (.B(_0336_),
    .C(_0345_),
    .A(_0313_),
    .Y(_0357_),
    .D(_0356_));
 sg13g2_nand2_1 _0958_ (.Y(_0358_),
    .A(_0357_),
    .B(_0272_));
 sg13g2_a21oi_1 _0959_ (.A1(_0173_),
    .A2(_0354_),
    .Y(_0071_),
    .B1(_0358_));
 sg13g2_nand2_1 _0960_ (.Y(_0359_),
    .A(_0271_),
    .B(\u_boot_ctrl.word_cnt[31] ));
 sg13g2_nor3_1 _0961_ (.A(_0172_),
    .B(_0173_),
    .C(_0353_),
    .Y(_0360_));
 sg13g2_nand4_1 _0962_ (.B(_0336_),
    .C(_0345_),
    .A(_0313_),
    .Y(_0361_),
    .D(_0360_));
 sg13g2_nand2_1 _0963_ (.Y(_0362_),
    .A(_0361_),
    .B(rst_ni));
 sg13g2_a21oi_1 _0964_ (.A1(_0357_),
    .A2(_0359_),
    .Y(_0072_),
    .B1(_0362_));
 sg13g2_nor2_1 _0965_ (.A(\u_boot_ctrl.state[4] ),
    .B(_0275_),
    .Y(_0363_));
 sg13g2_a21oi_1 _0966_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0364_),
    .B1(_0363_));
 sg13g2_o21ai_1 _0967_ (.B1(_0187_),
    .Y(_0365_),
    .A1(\u_boot_ctrl.state[4] ),
    .A2(_0275_));
 sg13g2_nor3_1 _0968_ (.A(\u_boot_ctrl.state[9] ),
    .B(\u_boot_ctrl.state[0] ),
    .C(_0187_),
    .Y(_0366_));
 sg13g2_o21ai_1 _0969_ (.B1(rst_ni),
    .Y(_0367_),
    .A1(\u_boot_ctrl.byte_cnt[0] ),
    .A2(_0366_));
 sg13g2_a21oi_1 _0970_ (.A1(\u_boot_ctrl.byte_cnt[0] ),
    .A2(_0365_),
    .Y(_0073_),
    .B1(_0367_));
 sg13g2_a21oi_1 _0971_ (.A1(\u_boot_ctrl.byte_cnt[1] ),
    .A2(\u_boot_ctrl.byte_cnt[0] ),
    .Y(_0368_),
    .B1(_0187_));
 sg13g2_a22oi_1 _0972_ (.Y(_0369_),
    .B1(_0368_),
    .B2(_0275_),
    .A2(_0364_),
    .A1(\u_boot_ctrl.byte_cnt[1] ));
 sg13g2_o21ai_1 _0973_ (.B1(rst_ni),
    .Y(_0370_),
    .A1(\u_boot_ctrl.byte_cnt[1] ),
    .A2(\u_boot_ctrl.byte_cnt[0] ));
 sg13g2_nor2_1 _0974_ (.A(_0370_),
    .B(_0369_),
    .Y(_0074_));
 sg13g2_nor2_1 _0975_ (.A(\spi_rx[0] ),
    .B(_0187_),
    .Y(_0371_));
 sg13g2_a21oi_1 _0976_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0372_),
    .B1(\u_boot_ctrl.word_asm[0] ));
 sg13g2_nor3_1 _0977_ (.A(_0372_),
    .B(_0003_),
    .C(_0371_),
    .Y(_0075_));
 sg13g2_nor2_1 _0978_ (.A(\spi_rx[1] ),
    .B(_0187_),
    .Y(_0373_));
 sg13g2_a21oi_1 _0979_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0374_),
    .B1(\u_boot_ctrl.word_asm[1] ));
 sg13g2_nor3_1 _0980_ (.A(_0374_),
    .B(_0003_),
    .C(_0373_),
    .Y(_0076_));
 sg13g2_nor2_1 _0981_ (.A(\spi_rx[2] ),
    .B(_0187_),
    .Y(_0375_));
 sg13g2_a21oi_1 _0982_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0376_),
    .B1(\u_boot_ctrl.word_asm[2] ));
 sg13g2_nor3_1 _0983_ (.A(_0376_),
    .B(_0003_),
    .C(_0375_),
    .Y(_0077_));
 sg13g2_nor2_1 _0984_ (.A(\spi_rx[3] ),
    .B(_0187_),
    .Y(_0377_));
 sg13g2_a21oi_1 _0985_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0378_),
    .B1(\u_boot_ctrl.word_asm[3] ));
 sg13g2_nor3_1 _0986_ (.A(_0378_),
    .B(_0003_),
    .C(_0377_),
    .Y(_0078_));
 sg13g2_nor2_1 _0987_ (.A(\spi_rx[4] ),
    .B(_0187_),
    .Y(_0379_));
 sg13g2_a21oi_1 _0988_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0380_),
    .B1(\u_boot_ctrl.word_asm[4] ));
 sg13g2_nor3_1 _0989_ (.A(_0380_),
    .B(_0003_),
    .C(_0379_),
    .Y(_0079_));
 sg13g2_nor2_1 _0990_ (.A(\spi_rx[5] ),
    .B(_0187_),
    .Y(_0381_));
 sg13g2_a21oi_1 _0991_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0382_),
    .B1(\u_boot_ctrl.word_asm[5] ));
 sg13g2_nor3_1 _0992_ (.A(_0382_),
    .B(_0003_),
    .C(_0381_),
    .Y(_0080_));
 sg13g2_nor2_1 _0993_ (.A(\spi_rx[6] ),
    .B(_0187_),
    .Y(_0383_));
 sg13g2_a21oi_1 _0994_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0384_),
    .B1(\u_boot_ctrl.word_asm[6] ));
 sg13g2_nor3_1 _0995_ (.A(_0384_),
    .B(_0003_),
    .C(_0383_),
    .Y(_0081_));
 sg13g2_nor2_1 _0996_ (.A(\spi_rx[7] ),
    .B(_0187_),
    .Y(_0385_));
 sg13g2_a21oi_1 _0997_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0386_),
    .B1(\u_boot_ctrl.word_asm[7] ));
 sg13g2_nor3_1 _0998_ (.A(_0386_),
    .B(_0003_),
    .C(_0385_),
    .Y(_0082_));
 sg13g2_nor2_1 _0999_ (.A(\u_boot_ctrl.word_asm[0] ),
    .B(_0187_),
    .Y(_0387_));
 sg13g2_a21oi_1 _1000_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0388_),
    .B1(\u_boot_ctrl.word_asm[8] ));
 sg13g2_nor3_1 _1001_ (.A(_0388_),
    .B(_0003_),
    .C(_0387_),
    .Y(_0083_));
 sg13g2_nor2_1 _1002_ (.A(\u_boot_ctrl.word_asm[1] ),
    .B(_0187_),
    .Y(_0389_));
 sg13g2_a21oi_1 _1003_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0390_),
    .B1(\u_boot_ctrl.word_asm[9] ));
 sg13g2_nor3_1 _1004_ (.A(_0390_),
    .B(_0003_),
    .C(_0389_),
    .Y(_0084_));
 sg13g2_nor2_1 _1005_ (.A(\u_boot_ctrl.word_asm[2] ),
    .B(_0187_),
    .Y(_0391_));
 sg13g2_a21oi_1 _1006_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0392_),
    .B1(\u_boot_ctrl.word_asm[10] ));
 sg13g2_nor3_1 _1007_ (.A(_0392_),
    .B(_0003_),
    .C(_0391_),
    .Y(_0085_));
 sg13g2_nor2_1 _1008_ (.A(\u_boot_ctrl.word_asm[3] ),
    .B(_0187_),
    .Y(_0393_));
 sg13g2_a21oi_1 _1009_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0394_),
    .B1(\u_boot_ctrl.word_asm[11] ));
 sg13g2_nor3_1 _1010_ (.A(_0394_),
    .B(_0003_),
    .C(_0393_),
    .Y(_0086_));
 sg13g2_nor2_1 _1011_ (.A(\u_boot_ctrl.word_asm[4] ),
    .B(_0187_),
    .Y(_0395_));
 sg13g2_a21oi_1 _1012_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0396_),
    .B1(\u_boot_ctrl.word_asm[12] ));
 sg13g2_nor3_1 _1013_ (.A(_0396_),
    .B(_0003_),
    .C(_0395_),
    .Y(_0087_));
 sg13g2_nor2_1 _1014_ (.A(\u_boot_ctrl.word_asm[5] ),
    .B(_0187_),
    .Y(_0397_));
 sg13g2_a21oi_1 _1015_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0398_),
    .B1(\u_boot_ctrl.word_asm[13] ));
 sg13g2_nor3_1 _1016_ (.A(_0398_),
    .B(_0003_),
    .C(_0397_),
    .Y(_0088_));
 sg13g2_nor2_1 _1017_ (.A(\u_boot_ctrl.word_asm[6] ),
    .B(_0187_),
    .Y(_0399_));
 sg13g2_a21oi_1 _1018_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0400_),
    .B1(\u_boot_ctrl.word_asm[14] ));
 sg13g2_nor3_1 _1019_ (.A(_0400_),
    .B(_0003_),
    .C(_0399_),
    .Y(_0089_));
 sg13g2_nor2_1 _1020_ (.A(\u_boot_ctrl.word_asm[7] ),
    .B(_0187_),
    .Y(_0401_));
 sg13g2_a21oi_1 _1021_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0402_),
    .B1(\u_boot_ctrl.word_asm[15] ));
 sg13g2_nor3_1 _1022_ (.A(_0402_),
    .B(_0003_),
    .C(_0401_),
    .Y(_0090_));
 sg13g2_nor2_1 _1023_ (.A(\u_boot_ctrl.word_asm[8] ),
    .B(_0187_),
    .Y(_0403_));
 sg13g2_a21oi_1 _1024_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0404_),
    .B1(\u_boot_ctrl.word_asm[16] ));
 sg13g2_nor3_1 _1025_ (.A(_0404_),
    .B(_0003_),
    .C(_0403_),
    .Y(_0091_));
 sg13g2_nor2_1 _1026_ (.A(\u_boot_ctrl.word_asm[9] ),
    .B(_0187_),
    .Y(_0405_));
 sg13g2_a21oi_1 _1027_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0406_),
    .B1(\u_boot_ctrl.word_asm[17] ));
 sg13g2_nor3_1 _1028_ (.A(_0406_),
    .B(_0003_),
    .C(_0405_),
    .Y(_0092_));
 sg13g2_nor2_1 _1029_ (.A(\u_boot_ctrl.word_asm[10] ),
    .B(_0187_),
    .Y(_0407_));
 sg13g2_a21oi_1 _1030_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0408_),
    .B1(\u_boot_ctrl.word_asm[18] ));
 sg13g2_nor3_1 _1031_ (.A(_0408_),
    .B(_0003_),
    .C(_0407_),
    .Y(_0093_));
 sg13g2_nor2_1 _1032_ (.A(\u_boot_ctrl.word_asm[11] ),
    .B(_0187_),
    .Y(_0409_));
 sg13g2_a21oi_1 _1033_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0410_),
    .B1(\u_boot_ctrl.word_asm[19] ));
 sg13g2_nor3_1 _1034_ (.A(_0410_),
    .B(_0003_),
    .C(_0409_),
    .Y(_0094_));
 sg13g2_nor2_1 _1035_ (.A(\u_boot_ctrl.word_asm[12] ),
    .B(_0187_),
    .Y(_0411_));
 sg13g2_a21oi_1 _1036_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0412_),
    .B1(\u_boot_ctrl.word_asm[20] ));
 sg13g2_nor3_1 _1037_ (.A(_0412_),
    .B(_0003_),
    .C(_0411_),
    .Y(_0095_));
 sg13g2_nor2_1 _1038_ (.A(\u_boot_ctrl.word_asm[13] ),
    .B(_0187_),
    .Y(_0413_));
 sg13g2_a21oi_1 _1039_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0414_),
    .B1(\u_boot_ctrl.word_asm[21] ));
 sg13g2_nor3_1 _1040_ (.A(_0414_),
    .B(_0003_),
    .C(_0413_),
    .Y(_0096_));
 sg13g2_nor2_1 _1041_ (.A(\u_boot_ctrl.word_asm[14] ),
    .B(_0187_),
    .Y(_0415_));
 sg13g2_a21oi_1 _1042_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0416_),
    .B1(\u_boot_ctrl.word_asm[22] ));
 sg13g2_nor3_1 _1043_ (.A(_0416_),
    .B(_0003_),
    .C(_0415_),
    .Y(_0097_));
 sg13g2_nor2_1 _1044_ (.A(\u_boot_ctrl.word_asm[15] ),
    .B(_0187_),
    .Y(_0417_));
 sg13g2_a21oi_1 _1045_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0418_),
    .B1(\u_boot_ctrl.word_asm[23] ));
 sg13g2_nor3_1 _1046_ (.A(_0418_),
    .B(_0003_),
    .C(_0417_),
    .Y(_0098_));
 sg13g2_nor2_1 _1047_ (.A(\u_boot_ctrl.word_asm[16] ),
    .B(_0187_),
    .Y(_0419_));
 sg13g2_a21oi_1 _1048_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0420_),
    .B1(\u_boot_ctrl.word_asm[24] ));
 sg13g2_nor3_1 _1049_ (.A(_0420_),
    .B(_0003_),
    .C(_0419_),
    .Y(_0099_));
 sg13g2_nor2_1 _1050_ (.A(\u_boot_ctrl.word_asm[17] ),
    .B(_0187_),
    .Y(_0421_));
 sg13g2_a21oi_1 _1051_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0422_),
    .B1(\u_boot_ctrl.word_asm[25] ));
 sg13g2_nor3_1 _1052_ (.A(_0422_),
    .B(_0003_),
    .C(_0421_),
    .Y(_0100_));
 sg13g2_nor2_1 _1053_ (.A(\u_boot_ctrl.word_asm[18] ),
    .B(_0187_),
    .Y(_0423_));
 sg13g2_a21oi_1 _1054_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0424_),
    .B1(\u_boot_ctrl.word_asm[26] ));
 sg13g2_nor3_1 _1055_ (.A(_0424_),
    .B(_0003_),
    .C(_0423_),
    .Y(_0101_));
 sg13g2_nor2_1 _1056_ (.A(\u_boot_ctrl.word_asm[19] ),
    .B(_0187_),
    .Y(_0425_));
 sg13g2_a21oi_1 _1057_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0426_),
    .B1(\u_boot_ctrl.word_asm[27] ));
 sg13g2_nor3_1 _1058_ (.A(_0426_),
    .B(_0003_),
    .C(_0425_),
    .Y(_0102_));
 sg13g2_nor2_1 _1059_ (.A(\u_boot_ctrl.word_asm[20] ),
    .B(_0187_),
    .Y(_0427_));
 sg13g2_a21oi_1 _1060_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0428_),
    .B1(\u_boot_ctrl.word_asm[28] ));
 sg13g2_nor3_1 _1061_ (.A(_0428_),
    .B(_0003_),
    .C(_0427_),
    .Y(_0103_));
 sg13g2_nor2_1 _1062_ (.A(\u_boot_ctrl.word_asm[21] ),
    .B(_0187_),
    .Y(_0429_));
 sg13g2_a21oi_1 _1063_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0430_),
    .B1(\u_boot_ctrl.word_asm[29] ));
 sg13g2_nor3_1 _1064_ (.A(_0430_),
    .B(_0003_),
    .C(_0429_),
    .Y(_0104_));
 sg13g2_nor2_1 _1065_ (.A(\u_boot_ctrl.word_asm[22] ),
    .B(_0187_),
    .Y(_0431_));
 sg13g2_a21oi_1 _1066_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0432_),
    .B1(\u_boot_ctrl.word_asm[30] ));
 sg13g2_nor3_1 _1067_ (.A(_0432_),
    .B(_0003_),
    .C(_0431_),
    .Y(_0105_));
 sg13g2_nor2_1 _1068_ (.A(\u_boot_ctrl.word_asm[23] ),
    .B(_0187_),
    .Y(_0433_));
 sg13g2_a21oi_1 _1069_ (.A1(spi_done),
    .A2(\u_boot_ctrl.state[4] ),
    .Y(_0434_),
    .B1(\u_boot_ctrl.word_asm[31] ));
 sg13g2_nor3_1 _1070_ (.A(_0434_),
    .B(_0003_),
    .C(_0433_),
    .Y(_0106_));
 sg13g2_nor2_1 _1071_ (.A(\u_boot_ctrl.state[4] ),
    .B(\u_boot_ctrl.state[3] ),
    .Y(_0435_));
 sg13g2_a21oi_1 _1072_ (.A1(_0221_),
    .A2(_0435_),
    .Y(_0107_),
    .B1(_0003_));
 sg13g2_mux2_1 _1073_ (.A0(boot_wdata[0]),
    .A1(\u_boot_ctrl.word_asm[0] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0436_));
 sg13g2_and2_1 _1074_ (.A(_0436_),
    .B(rst_ni),
    .X(_0109_));
 sg13g2_mux2_1 _1075_ (.A0(boot_wdata[1]),
    .A1(\u_boot_ctrl.word_asm[1] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0437_));
 sg13g2_and2_1 _1076_ (.A(_0437_),
    .B(rst_ni),
    .X(_0110_));
 sg13g2_mux2_1 _1077_ (.A0(boot_wdata[2]),
    .A1(\u_boot_ctrl.word_asm[2] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0438_));
 sg13g2_and2_1 _1078_ (.A(_0438_),
    .B(rst_ni),
    .X(_0111_));
 sg13g2_mux2_1 _1079_ (.A0(boot_wdata[3]),
    .A1(\u_boot_ctrl.word_asm[3] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0439_));
 sg13g2_and2_1 _1080_ (.A(_0439_),
    .B(rst_ni),
    .X(_0112_));
 sg13g2_mux2_1 _1081_ (.A0(boot_wdata[4]),
    .A1(\u_boot_ctrl.word_asm[4] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0440_));
 sg13g2_and2_1 _1082_ (.A(_0440_),
    .B(rst_ni),
    .X(_0113_));
 sg13g2_mux2_1 _1083_ (.A0(boot_wdata[5]),
    .A1(\u_boot_ctrl.word_asm[5] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0441_));
 sg13g2_and2_1 _1084_ (.A(_0441_),
    .B(rst_ni),
    .X(_0114_));
 sg13g2_mux2_1 _1085_ (.A0(boot_wdata[6]),
    .A1(\u_boot_ctrl.word_asm[6] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0442_));
 sg13g2_and2_1 _1086_ (.A(_0442_),
    .B(rst_ni),
    .X(_0115_));
 sg13g2_mux2_1 _1087_ (.A0(boot_wdata[7]),
    .A1(\u_boot_ctrl.word_asm[7] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0443_));
 sg13g2_and2_1 _1088_ (.A(_0443_),
    .B(rst_ni),
    .X(_0116_));
 sg13g2_mux2_1 _1089_ (.A0(boot_wdata[8]),
    .A1(\u_boot_ctrl.word_asm[8] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0444_));
 sg13g2_and2_1 _1090_ (.A(_0444_),
    .B(rst_ni),
    .X(_0117_));
 sg13g2_mux2_1 _1091_ (.A0(boot_wdata[9]),
    .A1(\u_boot_ctrl.word_asm[9] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0445_));
 sg13g2_and2_1 _1092_ (.A(_0445_),
    .B(rst_ni),
    .X(_0118_));
 sg13g2_mux2_1 _1093_ (.A0(boot_wdata[10]),
    .A1(\u_boot_ctrl.word_asm[10] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0446_));
 sg13g2_and2_1 _1094_ (.A(_0446_),
    .B(rst_ni),
    .X(_0119_));
 sg13g2_mux2_1 _1095_ (.A0(boot_wdata[11]),
    .A1(\u_boot_ctrl.word_asm[11] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0447_));
 sg13g2_and2_1 _1096_ (.A(_0447_),
    .B(rst_ni),
    .X(_0120_));
 sg13g2_mux2_1 _1097_ (.A0(boot_wdata[12]),
    .A1(\u_boot_ctrl.word_asm[12] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0448_));
 sg13g2_and2_1 _1098_ (.A(_0448_),
    .B(rst_ni),
    .X(_0121_));
 sg13g2_mux2_1 _1099_ (.A0(boot_wdata[13]),
    .A1(\u_boot_ctrl.word_asm[13] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0449_));
 sg13g2_and2_1 _1100_ (.A(_0449_),
    .B(rst_ni),
    .X(_0122_));
 sg13g2_mux2_1 _1101_ (.A0(boot_wdata[14]),
    .A1(\u_boot_ctrl.word_asm[14] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0450_));
 sg13g2_and2_1 _1102_ (.A(_0450_),
    .B(rst_ni),
    .X(_0123_));
 sg13g2_mux2_1 _1103_ (.A0(boot_wdata[15]),
    .A1(\u_boot_ctrl.word_asm[15] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0451_));
 sg13g2_and2_1 _1104_ (.A(_0451_),
    .B(rst_ni),
    .X(_0124_));
 sg13g2_mux2_1 _1105_ (.A0(boot_wdata[16]),
    .A1(\u_boot_ctrl.word_asm[16] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0452_));
 sg13g2_and2_1 _1106_ (.A(_0452_),
    .B(rst_ni),
    .X(_0125_));
 sg13g2_mux2_1 _1107_ (.A0(boot_wdata[17]),
    .A1(\u_boot_ctrl.word_asm[17] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0453_));
 sg13g2_and2_1 _1108_ (.A(_0453_),
    .B(rst_ni),
    .X(_0126_));
 sg13g2_mux2_1 _1109_ (.A0(boot_wdata[18]),
    .A1(\u_boot_ctrl.word_asm[18] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0454_));
 sg13g2_and2_1 _1110_ (.A(_0454_),
    .B(rst_ni),
    .X(_0127_));
 sg13g2_mux2_1 _1111_ (.A0(boot_wdata[19]),
    .A1(\u_boot_ctrl.word_asm[19] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0455_));
 sg13g2_and2_1 _1112_ (.A(_0455_),
    .B(rst_ni),
    .X(_0128_));
 sg13g2_mux2_1 _1113_ (.A0(boot_wdata[20]),
    .A1(\u_boot_ctrl.word_asm[20] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0456_));
 sg13g2_and2_1 _1114_ (.A(_0456_),
    .B(rst_ni),
    .X(_0129_));
 sg13g2_mux2_1 _1115_ (.A0(boot_wdata[21]),
    .A1(\u_boot_ctrl.word_asm[21] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0457_));
 sg13g2_and2_1 _1116_ (.A(_0457_),
    .B(rst_ni),
    .X(_0130_));
 sg13g2_mux2_1 _1117_ (.A0(boot_wdata[22]),
    .A1(\u_boot_ctrl.word_asm[22] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0458_));
 sg13g2_and2_1 _1118_ (.A(_0458_),
    .B(rst_ni),
    .X(_0131_));
 sg13g2_mux2_1 _1119_ (.A0(boot_wdata[23]),
    .A1(\u_boot_ctrl.word_asm[23] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0459_));
 sg13g2_and2_1 _1120_ (.A(_0459_),
    .B(rst_ni),
    .X(_0132_));
 sg13g2_mux2_1 _1121_ (.A0(boot_wdata[24]),
    .A1(\u_boot_ctrl.word_asm[24] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0460_));
 sg13g2_and2_1 _1122_ (.A(_0460_),
    .B(rst_ni),
    .X(_0133_));
 sg13g2_mux2_1 _1123_ (.A0(boot_wdata[25]),
    .A1(\u_boot_ctrl.word_asm[25] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0461_));
 sg13g2_and2_1 _1124_ (.A(_0461_),
    .B(rst_ni),
    .X(_0134_));
 sg13g2_mux2_1 _1125_ (.A0(boot_wdata[26]),
    .A1(\u_boot_ctrl.word_asm[26] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0462_));
 sg13g2_and2_1 _1126_ (.A(_0462_),
    .B(rst_ni),
    .X(_0135_));
 sg13g2_mux2_1 _1127_ (.A0(boot_wdata[27]),
    .A1(\u_boot_ctrl.word_asm[27] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0463_));
 sg13g2_and2_1 _1128_ (.A(_0463_),
    .B(rst_ni),
    .X(_0136_));
 sg13g2_mux2_1 _1129_ (.A0(boot_wdata[28]),
    .A1(\u_boot_ctrl.word_asm[28] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0464_));
 sg13g2_and2_1 _1130_ (.A(_0464_),
    .B(rst_ni),
    .X(_0137_));
 sg13g2_mux2_1 _1131_ (.A0(boot_wdata[29]),
    .A1(\u_boot_ctrl.word_asm[29] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0465_));
 sg13g2_and2_1 _1132_ (.A(_0465_),
    .B(rst_ni),
    .X(_0138_));
 sg13g2_mux2_1 _1133_ (.A0(boot_wdata[30]),
    .A1(\u_boot_ctrl.word_asm[30] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0466_));
 sg13g2_and2_1 _1134_ (.A(_0466_),
    .B(rst_ni),
    .X(_0139_));
 sg13g2_mux2_1 _1135_ (.A0(boot_wdata[31]),
    .A1(\u_boot_ctrl.word_asm[31] ),
    .S(\u_boot_ctrl.state[9] ),
    .X(_0467_));
 sg13g2_and2_1 _1136_ (.A(_0467_),
    .B(rst_ni),
    .X(_0140_));
 sg13g2_nand2b_1 _1137_ (.Y(_0468_),
    .B(\u_boot_ctrl.state[0] ),
    .A_N(\u_boot_ctrl.state[1] ));
 sg13g2_nand2_1 _1138_ (.Y(_0469_),
    .A(_0468_),
    .B(spi_cs_n));
 sg13g2_nand3_1 _1139_ (.B(_0469_),
    .C(rst_ni),
    .A(_0215_),
    .Y(_0141_));
 sg13g2_nand2b_1 _1140_ (.Y(_0470_),
    .B(cpu_rst_n),
    .A_N(\u_boot_ctrl.state[0] ));
 sg13g2_a21oi_1 _1141_ (.A1(_0171_),
    .A2(_0470_),
    .Y(_0142_),
    .B1(_0003_));
 sg13g2_and2_1 _1142_ (.A(\u_spi.busy ),
    .B(\u_spi.div_cnt[0] ),
    .X(_0471_));
 sg13g2_and3_1 _1143_ (.X(_0472_),
    .A(\u_spi.busy ),
    .B(\u_spi.div_cnt[1] ),
    .C(\u_spi.div_cnt[0] ));
 sg13g2_and4_1 _1144_ (.A(\u_spi.busy ),
    .B(\u_spi.div_cnt[2] ),
    .C(\u_spi.div_cnt[1] ),
    .D(\u_spi.div_cnt[0] ),
    .X(_0473_));
 sg13g2_nand4_1 _1145_ (.B(\u_spi.div_cnt[2] ),
    .C(\u_spi.div_cnt[1] ),
    .A(\u_spi.busy ),
    .Y(_0474_),
    .D(\u_spi.div_cnt[0] ));
 sg13g2_nor3_1 _1146_ (.A(_0170_),
    .B(\u_spi.div_cnt[3] ),
    .C(_0474_),
    .Y(_0475_));
 sg13g2_nand3b_1 _1147_ (.B(_0473_),
    .C(spi_sclk),
    .Y(_0476_),
    .A_N(\u_spi.div_cnt[3] ));
 sg13g2_nor3_1 _1148_ (.A(\u_spi.bit_cnt[2] ),
    .B(\u_spi.bit_cnt[1] ),
    .C(\u_spi.bit_cnt[3] ),
    .Y(_0477_));
 sg13g2_nand3_1 _1149_ (.B(_0475_),
    .C(_0477_),
    .A(\u_spi.bit_cnt[0] ),
    .Y(_0478_));
 sg13g2_nor2_1 _1150_ (.A(_0003_),
    .B(_0478_),
    .Y(_0143_));
 sg13g2_nor2b_1 _1151_ (.A(\u_spi.busy ),
    .B_N(spi_start),
    .Y(_0479_));
 sg13g2_nand2b_1 _1152_ (.Y(_0480_),
    .B(spi_start),
    .A_N(\u_spi.busy ));
 sg13g2_nand2_1 _1153_ (.Y(_0481_),
    .A(_0480_),
    .B(rst_ni));
 sg13g2_nor2_1 _1154_ (.A(\u_spi.busy ),
    .B(\u_spi.div_cnt[0] ),
    .Y(_0482_));
 sg13g2_nor4_1 _1155_ (.A(_0003_),
    .B(_0471_),
    .C(_0479_),
    .D(_0482_),
    .Y(_0144_));
 sg13g2_a21oi_1 _1156_ (.A1(\u_spi.busy ),
    .A2(\u_spi.div_cnt[0] ),
    .Y(_0483_),
    .B1(\u_spi.div_cnt[1] ));
 sg13g2_nor4_1 _1157_ (.A(_0479_),
    .B(_0003_),
    .C(_0472_),
    .D(_0483_),
    .Y(_0145_));
 sg13g2_a21oi_1 _1158_ (.A1(\u_spi.div_cnt[1] ),
    .A2(_0471_),
    .Y(_0484_),
    .B1(\u_spi.div_cnt[2] ));
 sg13g2_nor4_1 _1159_ (.A(_0003_),
    .B(_0473_),
    .C(_0479_),
    .D(_0484_),
    .Y(_0146_));
 sg13g2_and4_1 _1160_ (.A(_0474_),
    .B(_0480_),
    .C(\u_spi.div_cnt[3] ),
    .D(rst_ni),
    .X(_0147_));
 sg13g2_or4_1 _1161_ (.A(_0170_),
    .B(\u_spi.bit_cnt[0] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .X(_0485_));
 sg13g2_nor3_1 _1162_ (.A(\u_spi.bit_cnt[2] ),
    .B(\u_spi.bit_cnt[1] ),
    .C(\u_spi.bit_cnt[0] ),
    .Y(_0486_));
 sg13g2_nand2_1 _1163_ (.Y(_0487_),
    .A(_0475_),
    .B(_0486_));
 sg13g2_nor4_1 _1164_ (.A(\u_spi.bit_cnt[2] ),
    .B(\u_spi.bit_cnt[1] ),
    .C(\u_spi.bit_cnt[0] ),
    .D(\u_spi.bit_cnt[3] ),
    .Y(_0488_));
 sg13g2_a221oi_1 _1165_ (.B2(\u_spi.bit_cnt[3] ),
    .C1(_0479_),
    .B1(_0487_),
    .A1(_0475_),
    .Y(_0489_),
    .A2(_0488_));
 sg13g2_nor2_1 _1166_ (.A(_0003_),
    .B(_0489_),
    .Y(_0148_));
 sg13g2_nand2_1 _1167_ (.Y(_0490_),
    .A(_0476_),
    .B(\u_spi.bit_cnt[0] ));
 sg13g2_a21oi_1 _1168_ (.A1(_0485_),
    .A2(_0490_),
    .Y(_0149_),
    .B1(_0481_));
 sg13g2_o21ai_1 _1169_ (.B1(\u_spi.bit_cnt[1] ),
    .Y(_0491_),
    .A1(\u_spi.bit_cnt[0] ),
    .A2(_0476_));
 sg13g2_or3_1 _1170_ (.A(\u_spi.bit_cnt[1] ),
    .B(\u_spi.bit_cnt[0] ),
    .C(_0476_),
    .X(_0492_));
 sg13g2_a21oi_1 _1171_ (.A1(_0491_),
    .A2(_0492_),
    .Y(_0150_),
    .B1(_0481_));
 sg13g2_o21ai_1 _1172_ (.B1(\u_spi.bit_cnt[2] ),
    .Y(_0493_),
    .A1(\u_spi.bit_cnt[1] ),
    .A2(_0485_));
 sg13g2_a21oi_1 _1173_ (.A1(_0487_),
    .A2(_0493_),
    .Y(_0151_),
    .B1(_0481_));
 sg13g2_nand3_1 _1174_ (.B(rst_ni),
    .C(_0479_),
    .A(\spi_tx[0] ),
    .Y(_0494_));
 sg13g2_nand3_1 _1175_ (.B(rst_ni),
    .C(\u_spi.tx_shift[0] ),
    .A(_0480_),
    .Y(_0495_));
 sg13g2_a21oi_1 _1176_ (.A1(_0494_),
    .A2(_0495_),
    .Y(_0152_),
    .B1(_0475_));
 sg13g2_nor3_1 _1177_ (.A(_0479_),
    .B(_0003_),
    .C(_0475_),
    .Y(_0496_));
 sg13g2_a22oi_1 _1178_ (.Y(_0497_),
    .B1(_0494_),
    .B2(_0495_),
    .A2(_0480_),
    .A1(_0476_));
 sg13g2_a21o_1 _1179_ (.A2(_0496_),
    .A1(\u_spi.tx_shift[1] ),
    .B1(_0497_),
    .X(_0153_));
 sg13g2_nor4_1 _1180_ (.A(_0170_),
    .B(\u_spi.tx_shift[1] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0498_));
 sg13g2_nor2_1 _1181_ (.A(\u_spi.tx_shift[2] ),
    .B(_0475_),
    .Y(_0499_));
 sg13g2_nor4_1 _1182_ (.A(_0003_),
    .B(_0479_),
    .C(_0498_),
    .D(_0499_),
    .Y(_0154_));
 sg13g2_nor2_1 _1183_ (.A(\u_spi.tx_shift[3] ),
    .B(_0475_),
    .Y(_0500_));
 sg13g2_nor4_1 _1184_ (.A(_0170_),
    .B(\u_spi.tx_shift[2] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0501_));
 sg13g2_nor4_1 _1185_ (.A(_0003_),
    .B(_0479_),
    .C(_0500_),
    .D(_0501_),
    .Y(_0155_));
 sg13g2_nor2_1 _1186_ (.A(\u_spi.tx_shift[4] ),
    .B(_0475_),
    .Y(_0502_));
 sg13g2_nor4_1 _1187_ (.A(_0170_),
    .B(\u_spi.tx_shift[3] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0503_));
 sg13g2_nor4_1 _1188_ (.A(_0003_),
    .B(_0479_),
    .C(_0502_),
    .D(_0503_),
    .Y(_0156_));
 sg13g2_nor2_1 _1189_ (.A(\u_spi.tx_shift[5] ),
    .B(_0475_),
    .Y(_0504_));
 sg13g2_nor4_1 _1190_ (.A(_0170_),
    .B(\u_spi.tx_shift[4] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0505_));
 sg13g2_nor4_1 _1191_ (.A(_0003_),
    .B(_0479_),
    .C(_0504_),
    .D(_0505_),
    .Y(_0157_));
 sg13g2_nor2_1 _1192_ (.A(\u_spi.tx_shift[6] ),
    .B(_0475_),
    .Y(_0506_));
 sg13g2_nor4_1 _1193_ (.A(_0170_),
    .B(\u_spi.tx_shift[5] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0507_));
 sg13g2_nor4_1 _1194_ (.A(_0003_),
    .B(_0479_),
    .C(_0506_),
    .D(_0507_),
    .Y(_0158_));
 sg13g2_nor2_1 _1195_ (.A(spi_mosi),
    .B(_0475_),
    .Y(_0508_));
 sg13g2_nor4_1 _1196_ (.A(_0170_),
    .B(\u_spi.tx_shift[6] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0509_));
 sg13g2_nor4_1 _1197_ (.A(_0003_),
    .B(_0479_),
    .C(_0508_),
    .D(_0509_),
    .Y(_0159_));
 sg13g2_nor3_1 _1198_ (.A(spi_sclk),
    .B(\u_spi.div_cnt[3] ),
    .C(_0474_),
    .Y(_0510_));
 sg13g2_nor4_1 _1199_ (.A(spi_sclk),
    .B(spi_miso),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0511_));
 sg13g2_nor2_1 _1200_ (.A(\spi_rx[0] ),
    .B(_0510_),
    .Y(_0512_));
 sg13g2_nor3_1 _1201_ (.A(_0003_),
    .B(_0511_),
    .C(_0512_),
    .Y(_0160_));
 sg13g2_nor4_1 _1202_ (.A(spi_sclk),
    .B(\spi_rx[0] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0513_));
 sg13g2_nor2_1 _1203_ (.A(\spi_rx[1] ),
    .B(_0510_),
    .Y(_0514_));
 sg13g2_nor3_1 _1204_ (.A(_0003_),
    .B(_0513_),
    .C(_0514_),
    .Y(_0161_));
 sg13g2_nor4_1 _1205_ (.A(spi_sclk),
    .B(\spi_rx[1] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0515_));
 sg13g2_nor2_1 _1206_ (.A(\spi_rx[2] ),
    .B(_0510_),
    .Y(_0516_));
 sg13g2_nor3_1 _1207_ (.A(_0003_),
    .B(_0515_),
    .C(_0516_),
    .Y(_0162_));
 sg13g2_nor4_1 _1208_ (.A(spi_sclk),
    .B(\spi_rx[2] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0517_));
 sg13g2_nor2_1 _1209_ (.A(\spi_rx[3] ),
    .B(_0510_),
    .Y(_0518_));
 sg13g2_nor3_1 _1210_ (.A(_0003_),
    .B(_0517_),
    .C(_0518_),
    .Y(_0163_));
 sg13g2_nor4_1 _1211_ (.A(spi_sclk),
    .B(\spi_rx[3] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0519_));
 sg13g2_nor2_1 _1212_ (.A(\spi_rx[4] ),
    .B(_0510_),
    .Y(_0520_));
 sg13g2_nor3_1 _1213_ (.A(_0003_),
    .B(_0519_),
    .C(_0520_),
    .Y(_0164_));
 sg13g2_nor4_1 _1214_ (.A(spi_sclk),
    .B(\spi_rx[4] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0521_));
 sg13g2_nor2_1 _1215_ (.A(\spi_rx[5] ),
    .B(_0510_),
    .Y(_0522_));
 sg13g2_nor3_1 _1216_ (.A(_0003_),
    .B(_0521_),
    .C(_0522_),
    .Y(_0165_));
 sg13g2_nor4_1 _1217_ (.A(spi_sclk),
    .B(\spi_rx[5] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0523_));
 sg13g2_nor2_1 _1218_ (.A(\spi_rx[6] ),
    .B(_0510_),
    .Y(_0524_));
 sg13g2_nor3_1 _1219_ (.A(_0003_),
    .B(_0523_),
    .C(_0524_),
    .Y(_0166_));
 sg13g2_nor4_1 _1220_ (.A(spi_sclk),
    .B(\spi_rx[6] ),
    .C(\u_spi.div_cnt[3] ),
    .D(_0474_),
    .Y(_0525_));
 sg13g2_nor2_1 _1221_ (.A(\spi_rx[7] ),
    .B(_0510_),
    .Y(_0526_));
 sg13g2_nor3_1 _1222_ (.A(_0003_),
    .B(_0525_),
    .C(_0526_),
    .Y(_0167_));
 sg13g2_o21ai_1 _1223_ (.B1(_0170_),
    .Y(_0527_),
    .A1(\u_spi.div_cnt[3] ),
    .A2(_0474_));
 sg13g2_and4_1 _1224_ (.A(_0476_),
    .B(_0480_),
    .C(_0527_),
    .D(rst_ni),
    .X(_0168_));
 sg13g2_o21ai_1 _1225_ (.B1(_0478_),
    .Y(_0528_),
    .A1(\u_spi.busy ),
    .A2(spi_start));
 sg13g2_nor2_1 _1226_ (.A(_0003_),
    .B(_0528_),
    .Y(_0169_));
 sg13g2_and2_1 _1227_ (.A(\u_boot_ctrl.state[9] ),
    .B(rst_ni),
    .X(_0108_));
 sg13g2_dfrbpq_1 _1228_ (.RESET_B(_0689_),
    .D(_0010_),
    .Q(\spi_tx[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1229_ (.RESET_B(_0607_),
    .D(_0011_),
    .Q(boot_addr[2]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1230_ (.RESET_B(_0605_),
    .D(_0012_),
    .Q(boot_addr[3]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1231_ (.RESET_B(_0603_),
    .D(_0013_),
    .Q(boot_addr[4]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1232_ (.RESET_B(_0601_),
    .D(_0014_),
    .Q(boot_addr[5]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1233_ (.RESET_B(_0599_),
    .D(_0015_),
    .Q(boot_addr[6]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1234_ (.RESET_B(_0597_),
    .D(_0016_),
    .Q(boot_addr[7]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1235_ (.RESET_B(_0595_),
    .D(_0017_),
    .Q(boot_addr[8]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1236_ (.RESET_B(_0593_),
    .D(_0018_),
    .Q(boot_addr[9]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1237_ (.RESET_B(_0591_),
    .D(_0019_),
    .Q(boot_addr[10]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1238_ (.RESET_B(_0589_),
    .D(_0020_),
    .Q(boot_addr[11]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1239_ (.RESET_B(_0587_),
    .D(_0021_),
    .Q(boot_addr[12]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1240_ (.RESET_B(_0585_),
    .D(_0022_),
    .Q(boot_addr[13]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1241_ (.RESET_B(_0583_),
    .D(_0023_),
    .Q(boot_addr[14]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1242_ (.RESET_B(_0581_),
    .D(_0024_),
    .Q(boot_addr[15]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1243_ (.RESET_B(_0579_),
    .D(_0025_),
    .Q(boot_addr[16]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1244_ (.RESET_B(_0577_),
    .D(_0026_),
    .Q(boot_addr[17]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1245_ (.RESET_B(_0575_),
    .D(_0027_),
    .Q(boot_addr[18]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1246_ (.RESET_B(_0573_),
    .D(_0028_),
    .Q(boot_addr[19]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1247_ (.RESET_B(_0571_),
    .D(_0029_),
    .Q(boot_addr[20]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1248_ (.RESET_B(_0569_),
    .D(_0030_),
    .Q(boot_addr[21]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1249_ (.RESET_B(_0567_),
    .D(_0031_),
    .Q(boot_addr[22]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1250_ (.RESET_B(_0565_),
    .D(_0032_),
    .Q(boot_addr[23]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1251_ (.RESET_B(_0563_),
    .D(_0033_),
    .Q(boot_addr[24]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1252_ (.RESET_B(_0561_),
    .D(_0034_),
    .Q(boot_addr[25]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1253_ (.RESET_B(_0559_),
    .D(_0035_),
    .Q(boot_addr[26]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1254_ (.RESET_B(_0557_),
    .D(_0036_),
    .Q(boot_addr[27]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1255_ (.RESET_B(_0555_),
    .D(_0037_),
    .Q(boot_addr[28]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1256_ (.RESET_B(_0553_),
    .D(_0038_),
    .Q(boot_addr[29]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1257_ (.RESET_B(_0551_),
    .D(_0039_),
    .Q(boot_addr[30]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1258_ (.RESET_B(_0549_),
    .D(_0040_),
    .Q(boot_addr[31]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1259_ (.RESET_B(_0547_),
    .D(_0041_),
    .Q(\u_boot_ctrl.word_cnt[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1260_ (.RESET_B(_0545_),
    .D(_0042_),
    .Q(\u_boot_ctrl.word_cnt[1] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1261_ (.RESET_B(_0543_),
    .D(_0043_),
    .Q(\u_boot_ctrl.word_cnt[2] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1262_ (.RESET_B(_0541_),
    .D(_0044_),
    .Q(\u_boot_ctrl.word_cnt[3] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1263_ (.RESET_B(_0539_),
    .D(_0045_),
    .Q(\u_boot_ctrl.word_cnt[4] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1264_ (.RESET_B(_0537_),
    .D(_0046_),
    .Q(\u_boot_ctrl.word_cnt[5] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1265_ (.RESET_B(_0535_),
    .D(_0047_),
    .Q(\u_boot_ctrl.word_cnt[6] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1266_ (.RESET_B(_0533_),
    .D(_0048_),
    .Q(\u_boot_ctrl.word_cnt[7] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1267_ (.RESET_B(_0531_),
    .D(_0049_),
    .Q(\u_boot_ctrl.word_cnt[8] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1268_ (.RESET_B(_0529_),
    .D(_0050_),
    .Q(\u_boot_ctrl.word_cnt[9] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1269_ (.RESET_B(_0687_),
    .D(_0051_),
    .Q(\u_boot_ctrl.word_cnt[10] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1270_ (.RESET_B(_0685_),
    .D(_0052_),
    .Q(\u_boot_ctrl.word_cnt[11] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1271_ (.RESET_B(_0683_),
    .D(_0053_),
    .Q(\u_boot_ctrl.word_cnt[12] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1272_ (.RESET_B(_0681_),
    .D(_0054_),
    .Q(\u_boot_ctrl.word_cnt[13] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1273_ (.RESET_B(_0679_),
    .D(_0055_),
    .Q(\u_boot_ctrl.word_cnt[14] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1274_ (.RESET_B(_0677_),
    .D(_0056_),
    .Q(\u_boot_ctrl.word_cnt[15] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1275_ (.RESET_B(_0675_),
    .D(_0057_),
    .Q(\u_boot_ctrl.word_cnt[16] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1276_ (.RESET_B(_0673_),
    .D(_0058_),
    .Q(\u_boot_ctrl.word_cnt[17] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1277_ (.RESET_B(_0671_),
    .D(_0059_),
    .Q(\u_boot_ctrl.word_cnt[18] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1278_ (.RESET_B(_0669_),
    .D(_0060_),
    .Q(\u_boot_ctrl.word_cnt[19] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1279_ (.RESET_B(_0667_),
    .D(_0061_),
    .Q(\u_boot_ctrl.word_cnt[20] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1280_ (.RESET_B(_0665_),
    .D(_0062_),
    .Q(\u_boot_ctrl.word_cnt[21] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1281_ (.RESET_B(_0663_),
    .D(_0063_),
    .Q(\u_boot_ctrl.word_cnt[22] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1282_ (.RESET_B(_0661_),
    .D(_0064_),
    .Q(\u_boot_ctrl.word_cnt[23] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1283_ (.RESET_B(_0659_),
    .D(_0065_),
    .Q(\u_boot_ctrl.word_cnt[24] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1284_ (.RESET_B(_0657_),
    .D(_0066_),
    .Q(\u_boot_ctrl.word_cnt[25] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1285_ (.RESET_B(_0655_),
    .D(_0067_),
    .Q(\u_boot_ctrl.word_cnt[26] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1286_ (.RESET_B(_0653_),
    .D(_0068_),
    .Q(\u_boot_ctrl.word_cnt[27] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1287_ (.RESET_B(_0651_),
    .D(_0069_),
    .Q(\u_boot_ctrl.word_cnt[28] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1288_ (.RESET_B(_0649_),
    .D(_0070_),
    .Q(\u_boot_ctrl.word_cnt[29] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1289_ (.RESET_B(_0647_),
    .D(_0071_),
    .Q(\u_boot_ctrl.word_cnt[30] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1290_ (.RESET_B(_0645_),
    .D(_0072_),
    .Q(\u_boot_ctrl.word_cnt[31] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1291_ (.RESET_B(_0643_),
    .D(_0073_),
    .Q(\u_boot_ctrl.byte_cnt[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1292_ (.RESET_B(_0641_),
    .D(_0074_),
    .Q(\u_boot_ctrl.byte_cnt[1] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1293_ (.RESET_B(_0639_),
    .D(_0075_),
    .Q(\u_boot_ctrl.word_asm[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1294_ (.RESET_B(_0637_),
    .D(_0076_),
    .Q(\u_boot_ctrl.word_asm[1] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1295_ (.RESET_B(_0635_),
    .D(_0077_),
    .Q(\u_boot_ctrl.word_asm[2] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1296_ (.RESET_B(_0633_),
    .D(_0078_),
    .Q(\u_boot_ctrl.word_asm[3] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1297_ (.RESET_B(_0631_),
    .D(_0079_),
    .Q(\u_boot_ctrl.word_asm[4] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1298_ (.RESET_B(_0629_),
    .D(_0080_),
    .Q(\u_boot_ctrl.word_asm[5] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1299_ (.RESET_B(_0627_),
    .D(_0081_),
    .Q(\u_boot_ctrl.word_asm[6] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1300_ (.RESET_B(_0625_),
    .D(_0082_),
    .Q(\u_boot_ctrl.word_asm[7] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1301_ (.RESET_B(_0623_),
    .D(_0083_),
    .Q(\u_boot_ctrl.word_asm[8] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1302_ (.RESET_B(_0621_),
    .D(_0084_),
    .Q(\u_boot_ctrl.word_asm[9] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1303_ (.RESET_B(_0619_),
    .D(_0085_),
    .Q(\u_boot_ctrl.word_asm[10] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1304_ (.RESET_B(_0617_),
    .D(_0086_),
    .Q(\u_boot_ctrl.word_asm[11] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1305_ (.RESET_B(_0615_),
    .D(_0087_),
    .Q(\u_boot_ctrl.word_asm[12] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1306_ (.RESET_B(_0613_),
    .D(_0088_),
    .Q(\u_boot_ctrl.word_asm[13] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1307_ (.RESET_B(_0611_),
    .D(_0089_),
    .Q(\u_boot_ctrl.word_asm[14] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1308_ (.RESET_B(_0609_),
    .D(_0090_),
    .Q(\u_boot_ctrl.word_asm[15] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1309_ (.RESET_B(_0606_),
    .D(_0091_),
    .Q(\u_boot_ctrl.word_asm[16] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1310_ (.RESET_B(_0602_),
    .D(_0092_),
    .Q(\u_boot_ctrl.word_asm[17] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1311_ (.RESET_B(_0598_),
    .D(_0093_),
    .Q(\u_boot_ctrl.word_asm[18] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1312_ (.RESET_B(_0594_),
    .D(_0094_),
    .Q(\u_boot_ctrl.word_asm[19] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1313_ (.RESET_B(_0590_),
    .D(_0095_),
    .Q(\u_boot_ctrl.word_asm[20] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1314_ (.RESET_B(_0586_),
    .D(_0096_),
    .Q(\u_boot_ctrl.word_asm[21] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1315_ (.RESET_B(_0582_),
    .D(_0097_),
    .Q(\u_boot_ctrl.word_asm[22] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1316_ (.RESET_B(_0578_),
    .D(_0098_),
    .Q(\u_boot_ctrl.word_asm[23] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1317_ (.RESET_B(_0574_),
    .D(_0099_),
    .Q(\u_boot_ctrl.word_asm[24] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1318_ (.RESET_B(_0570_),
    .D(_0100_),
    .Q(\u_boot_ctrl.word_asm[25] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1319_ (.RESET_B(_0566_),
    .D(_0101_),
    .Q(\u_boot_ctrl.word_asm[26] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1320_ (.RESET_B(_0562_),
    .D(_0102_),
    .Q(\u_boot_ctrl.word_asm[27] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1321_ (.RESET_B(_0558_),
    .D(_0103_),
    .Q(\u_boot_ctrl.word_asm[28] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1322_ (.RESET_B(_0554_),
    .D(_0104_),
    .Q(\u_boot_ctrl.word_asm[29] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1323_ (.RESET_B(_0550_),
    .D(_0105_),
    .Q(\u_boot_ctrl.word_asm[30] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1324_ (.RESET_B(_0546_),
    .D(_0106_),
    .Q(\u_boot_ctrl.word_asm[31] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1325_ (.RESET_B(_0542_),
    .D(_0107_),
    .Q(spi_start),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1326_ (.RESET_B(_0540_),
    .D(_0108_),
    .Q(boot_we),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1327_ (.RESET_B(_0538_),
    .D(_0109_),
    .Q(boot_wdata[0]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1328_ (.RESET_B(_0534_),
    .D(_0110_),
    .Q(boot_wdata[1]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1329_ (.RESET_B(_0530_),
    .D(_0111_),
    .Q(boot_wdata[2]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1330_ (.RESET_B(_0686_),
    .D(_0112_),
    .Q(boot_wdata[3]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1331_ (.RESET_B(_0682_),
    .D(_0113_),
    .Q(boot_wdata[4]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1332_ (.RESET_B(_0678_),
    .D(_0114_),
    .Q(boot_wdata[5]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1333_ (.RESET_B(_0674_),
    .D(_0115_),
    .Q(boot_wdata[6]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1334_ (.RESET_B(_0670_),
    .D(_0116_),
    .Q(boot_wdata[7]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1335_ (.RESET_B(_0666_),
    .D(_0117_),
    .Q(boot_wdata[8]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1336_ (.RESET_B(_0662_),
    .D(_0118_),
    .Q(boot_wdata[9]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1337_ (.RESET_B(_0658_),
    .D(_0119_),
    .Q(boot_wdata[10]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1338_ (.RESET_B(_0654_),
    .D(_0120_),
    .Q(boot_wdata[11]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1339_ (.RESET_B(_0650_),
    .D(_0121_),
    .Q(boot_wdata[12]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1340_ (.RESET_B(_0646_),
    .D(_0122_),
    .Q(boot_wdata[13]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1341_ (.RESET_B(_0642_),
    .D(_0123_),
    .Q(boot_wdata[14]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1342_ (.RESET_B(_0638_),
    .D(_0124_),
    .Q(boot_wdata[15]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1343_ (.RESET_B(_0634_),
    .D(_0125_),
    .Q(boot_wdata[16]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1344_ (.RESET_B(_0630_),
    .D(_0126_),
    .Q(boot_wdata[17]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1345_ (.RESET_B(_0626_),
    .D(_0127_),
    .Q(boot_wdata[18]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1346_ (.RESET_B(_0622_),
    .D(_0128_),
    .Q(boot_wdata[19]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1347_ (.RESET_B(_0618_),
    .D(_0129_),
    .Q(boot_wdata[20]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1348_ (.RESET_B(_0614_),
    .D(_0130_),
    .Q(boot_wdata[21]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1349_ (.RESET_B(_0610_),
    .D(_0131_),
    .Q(boot_wdata[22]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1350_ (.RESET_B(_0604_),
    .D(_0132_),
    .Q(boot_wdata[23]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1351_ (.RESET_B(_0596_),
    .D(_0133_),
    .Q(boot_wdata[24]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1352_ (.RESET_B(_0588_),
    .D(_0134_),
    .Q(boot_wdata[25]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1353_ (.RESET_B(_0580_),
    .D(_0135_),
    .Q(boot_wdata[26]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1354_ (.RESET_B(_0572_),
    .D(_0136_),
    .Q(boot_wdata[27]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1355_ (.RESET_B(_0564_),
    .D(_0137_),
    .Q(boot_wdata[28]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1356_ (.RESET_B(_0556_),
    .D(_0138_),
    .Q(boot_wdata[29]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1357_ (.RESET_B(_0548_),
    .D(_0139_),
    .Q(boot_wdata[30]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1358_ (.RESET_B(_0536_),
    .D(_0140_),
    .Q(boot_wdata[31]),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1359_ (.RESET_B(_0688_),
    .D(_0141_),
    .Q(spi_cs_n),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1360_ (.RESET_B(_0680_),
    .D(_0142_),
    .Q(cpu_rst_n),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1361_ (.RESET_B(_0672_),
    .D(_0143_),
    .Q(spi_done),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1362_ (.RESET_B(_0668_),
    .D(_0144_),
    .Q(\u_spi.div_cnt[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1363_ (.RESET_B(_0660_),
    .D(_0145_),
    .Q(\u_spi.div_cnt[1] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1364_ (.RESET_B(_0652_),
    .D(_0146_),
    .Q(\u_spi.div_cnt[2] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1365_ (.RESET_B(_0644_),
    .D(_0147_),
    .Q(\u_spi.div_cnt[3] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1366_ (.RESET_B(_0636_),
    .D(_0148_),
    .Q(\u_spi.bit_cnt[3] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1367_ (.RESET_B(_0628_),
    .D(_0149_),
    .Q(\u_spi.bit_cnt[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1368_ (.RESET_B(_0620_),
    .D(_0150_),
    .Q(\u_spi.bit_cnt[1] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1369_ (.RESET_B(_0612_),
    .D(_0151_),
    .Q(\u_spi.bit_cnt[2] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1370_ (.RESET_B(_0600_),
    .D(_0152_),
    .Q(\u_spi.tx_shift[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1371_ (.RESET_B(_0584_),
    .D(_0153_),
    .Q(\u_spi.tx_shift[1] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1372_ (.RESET_B(_0568_),
    .D(_0154_),
    .Q(\u_spi.tx_shift[2] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1373_ (.RESET_B(_0552_),
    .D(_0155_),
    .Q(\u_spi.tx_shift[3] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1374_ (.RESET_B(_0532_),
    .D(_0156_),
    .Q(\u_spi.tx_shift[4] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1375_ (.RESET_B(_0676_),
    .D(_0157_),
    .Q(\u_spi.tx_shift[5] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1376_ (.RESET_B(_0656_),
    .D(_0158_),
    .Q(\u_spi.tx_shift[6] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1377_ (.RESET_B(_0640_),
    .D(_0159_),
    .Q(spi_mosi),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1378_ (.RESET_B(_0624_),
    .D(_0160_),
    .Q(\spi_rx[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1379_ (.RESET_B(_0608_),
    .D(_0161_),
    .Q(\spi_rx[1] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1380_ (.RESET_B(_0576_),
    .D(_0162_),
    .Q(\spi_rx[2] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1381_ (.RESET_B(_0544_),
    .D(_0163_),
    .Q(\spi_rx[3] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1382_ (.RESET_B(_0664_),
    .D(_0164_),
    .Q(\spi_rx[4] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1383_ (.RESET_B(_0632_),
    .D(_0165_),
    .Q(\spi_rx[5] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1384_ (.RESET_B(_0592_),
    .D(_0166_),
    .Q(\spi_rx[6] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1385_ (.RESET_B(_0684_),
    .D(_0167_),
    .Q(\spi_rx[7] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1386_ (.RESET_B(_0616_),
    .D(_0168_),
    .Q(spi_sclk),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1387_ (.RESET_B(_0690_),
    .D(_0169_),
    .Q(\u_spi.busy ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1388_ (.RESET_B(_0691_),
    .D(_0003_),
    .Q(\u_boot_ctrl.state[0] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1389_ (.RESET_B(_0692_),
    .D(_0000_),
    .Q(\u_boot_ctrl.state[1] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1390_ (.RESET_B(_0693_),
    .D(_0004_),
    .Q(\u_boot_ctrl.state[2] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1391_ (.RESET_B(_0694_),
    .D(_0005_),
    .Q(\u_boot_ctrl.state[3] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1392_ (.RESET_B(_0695_),
    .D(_0006_),
    .Q(\u_boot_ctrl.state[4] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1393_ (.RESET_B(_0696_),
    .D(_0001_),
    .Q(\u_boot_ctrl.state[5] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1394_ (.RESET_B(_0697_),
    .D(_0007_),
    .Q(boot_done),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1395_ (.RESET_B(_0698_),
    .D(_0008_),
    .Q(\u_boot_ctrl.state[7] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1396_ (.RESET_B(_0560_),
    .D(_0009_),
    .Q(\u_boot_ctrl.state[8] ),
    .CLK(clk_i));
 sg13g2_dfrbpq_1 _1397_ (.RESET_B(_0648_),
    .D(_0002_),
    .Q(\u_boot_ctrl.state[9] ),
    .CLK(clk_i));
 sg13g2_tiehi _1398_ (.L_HI(_0529_));
 sg13g2_tiehi _1399_ (.L_HI(_0530_));
 sg13g2_tiehi _1400_ (.L_HI(_0531_));
 sg13g2_tiehi _1401_ (.L_HI(_0532_));
 sg13g2_tiehi _1402_ (.L_HI(_0533_));
 sg13g2_tiehi _1403_ (.L_HI(_0534_));
 sg13g2_tiehi _1404_ (.L_HI(_0535_));
 sg13g2_tiehi _1405_ (.L_HI(_0536_));
 sg13g2_tiehi _1406_ (.L_HI(_0537_));
 sg13g2_tiehi _1407_ (.L_HI(_0538_));
 sg13g2_tiehi _1408_ (.L_HI(_0539_));
 sg13g2_tiehi _1409_ (.L_HI(_0540_));
 sg13g2_tiehi _1410_ (.L_HI(_0541_));
 sg13g2_tiehi _1411_ (.L_HI(_0542_));
 sg13g2_tiehi _1412_ (.L_HI(_0543_));
 sg13g2_tiehi _1413_ (.L_HI(_0544_));
 sg13g2_tiehi _1414_ (.L_HI(_0545_));
 sg13g2_tiehi _1415_ (.L_HI(_0546_));
 sg13g2_tiehi _1416_ (.L_HI(_0547_));
 sg13g2_tiehi _1417_ (.L_HI(_0548_));
 sg13g2_tiehi _1418_ (.L_HI(_0549_));
 sg13g2_tiehi _1419_ (.L_HI(_0550_));
 sg13g2_tiehi _1420_ (.L_HI(_0551_));
 sg13g2_tiehi _1421_ (.L_HI(_0552_));
 sg13g2_tiehi _1422_ (.L_HI(_0553_));
 sg13g2_tiehi _1423_ (.L_HI(_0554_));
 sg13g2_tiehi _1424_ (.L_HI(_0555_));
 sg13g2_tiehi _1425_ (.L_HI(_0556_));
 sg13g2_tiehi _1426_ (.L_HI(_0557_));
 sg13g2_tiehi _1427_ (.L_HI(_0558_));
 sg13g2_tiehi _1428_ (.L_HI(_0559_));
 sg13g2_tiehi _1429_ (.L_HI(_0560_));
 sg13g2_tiehi _1430_ (.L_HI(_0561_));
 sg13g2_tiehi _1431_ (.L_HI(_0562_));
 sg13g2_tiehi _1432_ (.L_HI(_0563_));
 sg13g2_tiehi _1433_ (.L_HI(_0564_));
 sg13g2_tiehi _1434_ (.L_HI(_0565_));
 sg13g2_tiehi _1435_ (.L_HI(_0566_));
 sg13g2_tiehi _1436_ (.L_HI(_0567_));
 sg13g2_tiehi _1437_ (.L_HI(_0568_));
 sg13g2_tiehi _1438_ (.L_HI(_0569_));
 sg13g2_tiehi _1439_ (.L_HI(_0570_));
 sg13g2_tiehi _1440_ (.L_HI(_0571_));
 sg13g2_tiehi _1441_ (.L_HI(_0572_));
 sg13g2_tiehi _1442_ (.L_HI(_0573_));
 sg13g2_tiehi _1443_ (.L_HI(_0574_));
 sg13g2_tiehi _1444_ (.L_HI(_0575_));
 sg13g2_tiehi _1445_ (.L_HI(_0576_));
 sg13g2_tiehi _1446_ (.L_HI(_0577_));
 sg13g2_tiehi _1447_ (.L_HI(_0578_));
 sg13g2_tiehi _1448_ (.L_HI(_0579_));
 sg13g2_tiehi _1449_ (.L_HI(_0580_));
 sg13g2_tiehi _1450_ (.L_HI(_0581_));
 sg13g2_tiehi _1451_ (.L_HI(_0582_));
 sg13g2_tiehi _1452_ (.L_HI(_0583_));
 sg13g2_tiehi _1453_ (.L_HI(_0584_));
 sg13g2_tiehi _1454_ (.L_HI(_0585_));
 sg13g2_tiehi _1455_ (.L_HI(_0586_));
 sg13g2_tiehi _1456_ (.L_HI(_0587_));
 sg13g2_tiehi _1457_ (.L_HI(_0588_));
 sg13g2_tiehi _1458_ (.L_HI(_0589_));
 sg13g2_tiehi _1459_ (.L_HI(_0590_));
 sg13g2_tiehi _1460_ (.L_HI(_0591_));
 sg13g2_tiehi _1461_ (.L_HI(_0592_));
 sg13g2_tiehi _1462_ (.L_HI(_0593_));
 sg13g2_tiehi _1463_ (.L_HI(_0594_));
 sg13g2_tiehi _1464_ (.L_HI(_0595_));
 sg13g2_tiehi _1465_ (.L_HI(_0596_));
 sg13g2_tiehi _1466_ (.L_HI(_0597_));
 sg13g2_tiehi _1467_ (.L_HI(_0598_));
 sg13g2_tiehi _1468_ (.L_HI(_0599_));
 sg13g2_tiehi _1469_ (.L_HI(_0600_));
 sg13g2_tiehi _1470_ (.L_HI(_0601_));
 sg13g2_tiehi _1471_ (.L_HI(_0602_));
 sg13g2_tiehi _1472_ (.L_HI(_0603_));
 sg13g2_tiehi _1473_ (.L_HI(_0604_));
 sg13g2_tiehi _1474_ (.L_HI(_0605_));
 sg13g2_tiehi _1475_ (.L_HI(_0606_));
 sg13g2_tiehi _1476_ (.L_HI(_0607_));
 sg13g2_tiehi _1477_ (.L_HI(_0608_));
 sg13g2_tiehi _1478_ (.L_HI(_0609_));
 sg13g2_tiehi _1479_ (.L_HI(_0610_));
 sg13g2_tiehi _1480_ (.L_HI(_0611_));
 sg13g2_tiehi _1481_ (.L_HI(_0612_));
 sg13g2_tiehi _1482_ (.L_HI(_0613_));
 sg13g2_tiehi _1483_ (.L_HI(_0614_));
 sg13g2_tiehi _1484_ (.L_HI(_0615_));
 sg13g2_tiehi _1485_ (.L_HI(_0616_));
 sg13g2_tiehi _1486_ (.L_HI(_0617_));
 sg13g2_tiehi _1487_ (.L_HI(_0618_));
 sg13g2_tiehi _1488_ (.L_HI(_0619_));
 sg13g2_tiehi _1489_ (.L_HI(_0620_));
 sg13g2_tiehi _1490_ (.L_HI(_0621_));
 sg13g2_tiehi _1491_ (.L_HI(_0622_));
 sg13g2_tiehi _1492_ (.L_HI(_0623_));
 sg13g2_tiehi _1493_ (.L_HI(_0624_));
 sg13g2_tiehi _1494_ (.L_HI(_0625_));
 sg13g2_tiehi _1495_ (.L_HI(_0626_));
 sg13g2_tiehi _1496_ (.L_HI(_0627_));
 sg13g2_tiehi _1497_ (.L_HI(_0628_));
 sg13g2_tiehi _1498_ (.L_HI(_0629_));
 sg13g2_tiehi _1499_ (.L_HI(_0630_));
 sg13g2_tiehi _1500_ (.L_HI(_0631_));
 sg13g2_tiehi _1501_ (.L_HI(_0632_));
 sg13g2_tiehi _1502_ (.L_HI(_0633_));
 sg13g2_tiehi _1503_ (.L_HI(_0634_));
 sg13g2_tiehi _1504_ (.L_HI(_0635_));
 sg13g2_tiehi _1505_ (.L_HI(_0636_));
 sg13g2_tiehi _1506_ (.L_HI(_0637_));
 sg13g2_tiehi _1507_ (.L_HI(_0638_));
 sg13g2_tiehi _1508_ (.L_HI(_0639_));
 sg13g2_tiehi _1509_ (.L_HI(_0640_));
 sg13g2_tiehi _1510_ (.L_HI(_0641_));
 sg13g2_tiehi _1511_ (.L_HI(_0642_));
 sg13g2_tiehi _1512_ (.L_HI(_0643_));
 sg13g2_tiehi _1513_ (.L_HI(_0644_));
 sg13g2_tiehi _1514_ (.L_HI(_0645_));
 sg13g2_tiehi _1515_ (.L_HI(_0646_));
 sg13g2_tiehi _1516_ (.L_HI(_0647_));
 sg13g2_tiehi _1517_ (.L_HI(_0648_));
 sg13g2_tiehi _1518_ (.L_HI(_0649_));
 sg13g2_tiehi _1519_ (.L_HI(_0650_));
 sg13g2_tiehi _1520_ (.L_HI(_0651_));
 sg13g2_tiehi _1521_ (.L_HI(_0652_));
 sg13g2_tiehi _1522_ (.L_HI(_0653_));
 sg13g2_tiehi _1523_ (.L_HI(_0654_));
 sg13g2_tiehi _1524_ (.L_HI(_0655_));
 sg13g2_tiehi _1525_ (.L_HI(_0656_));
 sg13g2_tiehi _1526_ (.L_HI(_0657_));
 sg13g2_tiehi _1527_ (.L_HI(_0658_));
 sg13g2_tiehi _1528_ (.L_HI(_0659_));
 sg13g2_tiehi _1529_ (.L_HI(_0660_));
 sg13g2_tiehi _1530_ (.L_HI(_0661_));
 sg13g2_tiehi _1531_ (.L_HI(_0662_));
 sg13g2_tiehi _1532_ (.L_HI(_0663_));
 sg13g2_tiehi _1533_ (.L_HI(_0664_));
 sg13g2_tiehi _1534_ (.L_HI(_0665_));
 sg13g2_tiehi _1535_ (.L_HI(_0666_));
 sg13g2_tiehi _1536_ (.L_HI(_0667_));
 sg13g2_tiehi _1537_ (.L_HI(_0668_));
 sg13g2_tiehi _1538_ (.L_HI(_0669_));
 sg13g2_tiehi _1539_ (.L_HI(_0670_));
 sg13g2_tiehi _1540_ (.L_HI(_0671_));
 sg13g2_tiehi _1541_ (.L_HI(_0672_));
 sg13g2_tiehi _1542_ (.L_HI(_0673_));
 sg13g2_tiehi _1543_ (.L_HI(_0674_));
 sg13g2_tiehi _1544_ (.L_HI(_0675_));
 sg13g2_tiehi _1545_ (.L_HI(_0676_));
 sg13g2_tiehi _1546_ (.L_HI(_0677_));
 sg13g2_tiehi _1547_ (.L_HI(_0678_));
 sg13g2_tiehi _1548_ (.L_HI(_0679_));
 sg13g2_tiehi _1549_ (.L_HI(_0680_));
 sg13g2_tiehi _1550_ (.L_HI(_0681_));
 sg13g2_tiehi _1551_ (.L_HI(_0682_));
 sg13g2_tiehi _1552_ (.L_HI(_0683_));
 sg13g2_tiehi _1553_ (.L_HI(_0684_));
 sg13g2_tiehi _1554_ (.L_HI(_0685_));
 sg13g2_tiehi _1555_ (.L_HI(_0686_));
 sg13g2_tiehi _1556_ (.L_HI(_0687_));
 sg13g2_tiehi _1557_ (.L_HI(_0688_));
 sg13g2_tiehi _1558_ (.L_HI(_0689_));
 sg13g2_tiehi _1559_ (.L_HI(_0690_));
 sg13g2_tiehi _1560_ (.L_HI(_0691_));
 sg13g2_tiehi _1561_ (.L_HI(_0692_));
 sg13g2_tiehi _1562_ (.L_HI(_0693_));
 sg13g2_tiehi _1563_ (.L_HI(_0694_));
 sg13g2_tiehi _1564_ (.L_HI(_0695_));
 sg13g2_tiehi _1565_ (.L_HI(_0696_));
 sg13g2_tiehi _1566_ (.L_HI(_0697_));
 sg13g2_tiehi _1567_ (.L_HI(_0698_));
 sg13g2_tielo _1568_ (.L_LO(boot_addr[0]));
 sg13g2_tielo _1569_ (.L_LO(boot_addr[1]));
endmodule
