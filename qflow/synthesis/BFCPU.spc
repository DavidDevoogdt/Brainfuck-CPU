*SPICE netlist created from BLIF module BFCPU by blif2BSpice
.include /usr/local/share/qflow/tech/osu018/osu018_stdcells.sp
.subckt BFCPU vdd gnd clk INPD<0> INPD<1> INPD<2> INPD<3> INPD<4> INPD<5> INPD<6> INPD<7> INPD<8> INPD<9> INPD<10> INPD<11> INPD<12> INPD<13> INPD<14> INPD<15> RDATA<0> RDATA<1> RDATA<2> RDATA<3> RDATA<4> RDATA<5> RDATA<6> RDATA<7> RF WF NEXTOP<0> NEXTOP<1> NEXTOP<2> IR OW OUTPD<0> OUTPD<1> OUTPD<2> OUTPD<3> OUTPD<4> OUTPD<5> OUTPD<6> OUTPD<7> OUTPD<8> OUTPD<9> OUTPD<10> OUTPD<11> OUTPD<12> OUTPD<13> OUTPD<14> OUTPD<15> reset RD WD WDATA<0> WDATA<1> WDATA<2> WDATA<3> WDATA<4> WDATA<5> WDATA<6> WDATA<7> DP<0> DP<1> DP<2> DP<3> DP<4> DP<5> DP<6> DP<7> DP<8> DP<9> DP<10> DP<11> DP<12> DP<13> DP<14> PCDELTA<0> PCDELTA<1> PCDELTA<2> PCDELTA<3> PCDELTA<4> PCDELTA<5> PCDELTA<6> PCDELTA<7> PCDELTA<8> PCDELTA<9> PCDELTA<10> PCDELTA<11> PCDELTA<12> PCDELTA<13> PCDELTA<14> PCDELTA<15> 
XBUFX4_1 vdd gnd DC1.SGN DC1.SGN_bF$buf5 BUFX4
XBUFX4_2 vdd gnd DC1.SGN DC1.SGN_bF$buf4 BUFX4
XBUFX4_3 vdd gnd DC1.SGN DC1.SGN_bF$buf3 BUFX4
XBUFX4_4 vdd gnd DC1.SGN DC1.SGN_bF$buf2 BUFX4
XBUFX4_5 vdd gnd DC1.SGN DC1.SGN_bF$buf1 BUFX4
XBUFX4_6 vdd gnd DC1.SGN DC1.SGN_bF$buf0 BUFX4
XBUFX4_7 vdd gnd clk clk_bF$buf5 BUFX4
XBUFX4_8 vdd gnd clk clk_bF$buf4 BUFX4
XBUFX4_9 vdd gnd clk clk_bF$buf3 BUFX4
XBUFX4_10 vdd gnd clk clk_bF$buf2 BUFX4
XBUFX4_11 vdd gnd clk clk_bF$buf1 BUFX4
XBUFX4_12 vdd gnd clk clk_bF$buf0 BUFX4
XBUFX4_13 vdd gnd _119_ _119__bF$buf4 BUFX4
XBUFX4_14 vdd gnd _119_ _119__bF$buf3 BUFX4
XBUFX4_15 vdd gnd _119_ _119__bF$buf2 BUFX4
XBUFX4_16 vdd gnd _119_ _119__bF$buf1 BUFX4
XBUFX4_17 vdd gnd _119_ _119__bF$buf0 BUFX4
XBUFX4_18 vdd gnd OPC1.PCDELTA<15> OPC1.PCDELTA_15_bF$buf4 BUFX4
XBUFX4_19 vdd gnd OPC1.PCDELTA<15> OPC1.PCDELTA_15_bF$buf3 BUFX4
XBUFX4_20 vdd gnd OPC1.PCDELTA<15> OPC1.PCDELTA_15_bF$buf2 BUFX4
XBUFX4_21 vdd gnd OPC1.PCDELTA<15> OPC1.PCDELTA_15_bF$buf1 BUFX4
XBUFX4_22 vdd gnd OPC1.PCDELTA<15> OPC1.PCDELTA_15_bF$buf0 BUFX4
XINVX1_1 OPC1.INST<3> _0_ vdd gnd INVX1
XNAND2X1_1 vdd _1_ gnd OPC1.INST<2> _0_ NAND2X1
XOR2X2_1 _2_ DC1.SGN_bF$buf3 vdd gnd OPC1.INST<1> OR2X2
XNOR2X1_1 vdd _1_ gnd DC1.OUTP _2_ NOR2X1
XINVX1_2 OPC1.INST<2> _3_ vdd gnd INVX1
XNAND2X1_2 vdd _4_ gnd OPC1.INST<1> _3_ NAND2X1
XNOR2X1_2 vdd _4_ gnd DC1.DOP OPC1.INST<3> NOR2X1
XNOR2X1_3 vdd OPC1.INST<3> gnd _5_ OPC1.INST<1> NOR2X1
XAND2X2_1 vdd gnd _5_ _3_ DPC1.DPOP AND2X2
XNAND2X1_3 vdd _6_ gnd DC1.SGN_bF$buf3 OPC1.INST<3> NAND2X1
XNOR2X1_4 vdd _4_ gnd DC1.LD _6_ NOR2X1
XNAND2X1_4 vdd _7_ gnd OPC1.INST<3> OPC1.INST<2> NAND2X1
XNOR2X1_5 vdd _2_ gnd _10_ _7_ NOR2X1
XINVX1_3 OPC1.INST<1> _8_ vdd gnd INVX1
XNAND2X1_5 vdd _9_ gnd DC1.SGN_bF$buf3 _8_ NAND2X1
XNOR2X1_6 vdd _9_ gnd _11_ _7_ NOR2X1
XNOR2X1_7 vdd _9_ gnd DC1.INP _1_ NOR2X1
XBUFX2_1 vdd gnd DPC1.DP<0> DP<0> BUFX2
XBUFX2_2 vdd gnd DPC1.DP<1> DP<1> BUFX2
XBUFX2_3 vdd gnd DPC1.DP<2> DP<2> BUFX2
XBUFX2_4 vdd gnd DPC1.DP<3> DP<3> BUFX2
XBUFX2_5 vdd gnd DPC1.DP<4> DP<4> BUFX2
XBUFX2_6 vdd gnd DPC1.DP<5> DP<5> BUFX2
XBUFX2_7 vdd gnd DPC1.DP<6> DP<6> BUFX2
XBUFX2_8 vdd gnd DPC1.DP<7> DP<7> BUFX2
XBUFX2_9 vdd gnd DPC1.DP<8> DP<8> BUFX2
XBUFX2_10 vdd gnd DPC1.DP<9> DP<9> BUFX2
XBUFX2_11 vdd gnd DPC1.DP<10> DP<10> BUFX2
XBUFX2_12 vdd gnd DPC1.DP<11> DP<11> BUFX2
XBUFX2_13 vdd gnd DPC1.DP<12> DP<12> BUFX2
XBUFX2_14 vdd gnd DPC1.DP<13> DP<13> BUFX2
XBUFX2_15 vdd gnd DPC1.DP<14> DP<14> BUFX2
XBUFX2_16 vdd gnd DC1.IR IR BUFX2
XBUFX2_17 vdd gnd DC1.OUTPD<0> OUTPD<0> BUFX2
XBUFX2_18 vdd gnd DC1.OUTPD<1> OUTPD<1> BUFX2
XBUFX2_19 vdd gnd DC1.OUTPD<2> OUTPD<2> BUFX2
XBUFX2_20 vdd gnd DC1.OUTPD<3> OUTPD<3> BUFX2
XBUFX2_21 vdd gnd DC1.OUTPD<4> OUTPD<4> BUFX2
XBUFX2_22 vdd gnd DC1.OUTPD<5> OUTPD<5> BUFX2
XBUFX2_23 vdd gnd DC1.OUTPD<6> OUTPD<6> BUFX2
XBUFX2_24 vdd gnd DC1.OUTPD<7> OUTPD<7> BUFX2
XBUFX2_25 vdd gnd DC1.OUTPD<8> OUTPD<8> BUFX2
XBUFX2_26 vdd gnd DC1.OUTPD<9> OUTPD<9> BUFX2
XBUFX2_27 vdd gnd DC1.OUTPD<10> OUTPD<10> BUFX2
XBUFX2_28 vdd gnd DC1.OUTPD<11> OUTPD<11> BUFX2
XBUFX2_29 vdd gnd DC1.OUTPD<12> OUTPD<12> BUFX2
XBUFX2_30 vdd gnd DC1.OUTPD<13> OUTPD<13> BUFX2
XBUFX2_31 vdd gnd DC1.OUTPD<14> OUTPD<14> BUFX2
XBUFX2_32 vdd gnd DC1.OUTPD<15> OUTPD<15> BUFX2
XBUFX2_33 vdd gnd DC1.OW OW BUFX2
XBUFX2_34 vdd gnd OPC1.PCDELTA<0> PCDELTA<0> BUFX2
XBUFX2_35 vdd gnd OPC1.PCDELTA_15_bF$buf2 PCDELTA<1> BUFX2
XBUFX2_36 vdd gnd OPC1.PCDELTA_15_bF$buf4 PCDELTA<2> BUFX2
XBUFX2_37 vdd gnd OPC1.PCDELTA_15_bF$buf3 PCDELTA<3> BUFX2
XBUFX2_38 vdd gnd OPC1.PCDELTA_15_bF$buf0 PCDELTA<4> BUFX2
XBUFX2_39 vdd gnd OPC1.PCDELTA_15_bF$buf3 PCDELTA<5> BUFX2
XBUFX2_40 vdd gnd OPC1.PCDELTA_15_bF$buf1 PCDELTA<6> BUFX2
XBUFX2_41 vdd gnd OPC1.PCDELTA_15_bF$buf1 PCDELTA<7> BUFX2
XBUFX2_42 vdd gnd OPC1.PCDELTA_15_bF$buf1 PCDELTA<8> BUFX2
XBUFX2_43 vdd gnd OPC1.PCDELTA_15_bF$buf1 PCDELTA<9> BUFX2
XBUFX2_44 vdd gnd OPC1.PCDELTA_15_bF$buf4 PCDELTA<10> BUFX2
XBUFX2_45 vdd gnd OPC1.PCDELTA_15_bF$buf4 PCDELTA<11> BUFX2
XBUFX2_46 vdd gnd OPC1.PCDELTA_15_bF$buf0 PCDELTA<12> BUFX2
XBUFX2_47 vdd gnd OPC1.PCDELTA_15_bF$buf4 PCDELTA<13> BUFX2
XBUFX2_48 vdd gnd OPC1.PCDELTA_15_bF$buf4 PCDELTA<14> BUFX2
XBUFX2_49 vdd gnd OPC1.PCDELTA_15_bF$buf3 PCDELTA<15> BUFX2
XBUFX2_50 vdd gnd _10_ RD BUFX2
XBUFX2_51 vdd gnd _11_ WD BUFX2
XBUFX2_52 vdd gnd DC1.WDATA<0> WDATA<0> BUFX2
XBUFX2_53 vdd gnd DC1.WDATA<1> WDATA<1> BUFX2
XBUFX2_54 vdd gnd DC1.WDATA<2> WDATA<2> BUFX2
XBUFX2_55 vdd gnd DC1.WDATA<3> WDATA<3> BUFX2
XBUFX2_56 vdd gnd DC1.WDATA<4> WDATA<4> BUFX2
XBUFX2_57 vdd gnd DC1.WDATA<5> WDATA<5> BUFX2
XBUFX2_58 vdd gnd DC1.WDATA<6> WDATA<6> BUFX2
XBUFX2_59 vdd gnd DC1.WDATA<7> WDATA<7> BUFX2
XBUFX2_60 vdd gnd _12_ reset BUFX2
XDFFPOSX1_1 vdd vdd gnd _12_ clk_bF$buf4 DFFPOSX1
XINVX4_1 vdd gnd _107_ DC1.WDATA<2> INVX4
XINVX2_1 vdd gnd _108_ DC1.WDATA<5> INVX2
XNOR2X1_8 vdd DC1.WDATA<4> gnd _109_ DC1.WDATA<3> NOR2X1
XNAND3X1_1 _108_ vdd gnd _107_ _109_ _110_ NAND3X1
XINVX2_2 vdd gnd _111_ DC1.WDATA<7> INVX2
XINVX4_2 vdd gnd _112_ DC1.WDATA<6> INVX4
XNOR2X1_9 vdd DC1.WDATA<0> gnd _113_ DC1.WDATA<1> NOR2X1
XNAND3X1_2 _112_ vdd gnd _111_ _113_ _114_ NAND3X1
XNOR2X1_10 vdd _114_ gnd DC1.IZ _110_ NOR2X1
XINVX2_3 vdd gnd _115_ DC1.LD INVX2
XNAND2X1_6 vdd _116_ gnd DC1.OUTP _115_ NAND2X1
XNOR2X1_11 vdd DC1.DOP gnd _117_ DC1.INP NOR2X1
XINVX1_4 _117_ _118_ vdd gnd INVX1
XNOR2X1_12 vdd _118_ gnd _119_ _116_ NOR2X1
XXOR2X1_1 _15_ vdd DC1.OW _119__bF$buf4 gnd XOR2X1
XINVX2_4 vdd gnd _120_ DC1.INP INVX2
XNOR2X1_13 vdd _120_ gnd _121_ DC1.DOP NOR2X1
XXOR2X1_2 _13_ vdd DC1.IR _121_ gnd XOR2X1
XINVX2_5 vdd gnd _122_ DC1.WDATA<0> INVX2
XNAND2X1_7 vdd _123_ gnd _122_ _115_ NAND2X1
XOAI21X1_1 gnd vdd _115_ RDATA<0> _124_ _123_ OAI21X1
XAOI22X1_1 gnd vdd _121_ INPD<0> _125_ _122_ DC1.DOP AOI22X1
XOAI21X1_2 gnd vdd _118_ _124_ _16_<0> _125_ OAI21X1
XAND2X2_2 vdd gnd DC1.WDATA<1> DC1.WDATA<0> _126_ AND2X2
XNOR2X1_14 vdd _126_ gnd _127_ _113_ NOR2X1
XXNOR2X1_1 _127_ DC1.SGN_bF$buf2 gnd vdd _17_ XNOR2X1
XINVX1_5 DC1.WDATA<1> _18_ vdd gnd INVX1
XNAND2X1_8 vdd _19_ gnd DC1.LD RDATA<1> NAND2X1
XOAI21X1_3 gnd vdd _18_ DC1.LD _20_ _19_ OAI21X1
XMUX2X1_1 _120_ vdd gnd _21_ _20_ INPD<1> MUX2X1
XMUX2X1_2 DC1.DOP vdd gnd _16_<1> _17_ _21_ MUX2X1
XNAND2X1_9 vdd _22_ gnd DC1.LD RDATA<2> NAND2X1
XOAI21X1_4 gnd vdd _107_ DC1.LD _23_ _22_ OAI21X1
XMUX2X1_3 _120_ vdd gnd _24_ _23_ INPD<2> MUX2X1
XMUX2X1_4 DC1.SGN_bF$buf2 vdd gnd _25_ _113_ _126_ MUX2X1
XAND2X2_3 vdd gnd _25_ _107_ _26_ AND2X2
XOAI21X1_5 gnd vdd _25_ _107_ _27_ DC1.DOP OAI21X1
XOAI22X1_1 gnd vdd _27_ _26_ DC1.DOP _24_ _16_<2> OAI22X1
XNOR3X1_1 vdd gnd DC1.WDATA<0> DC1.WDATA<2> DC1.WDATA<1> _28_ NOR3X1
XNAND2X1_10 vdd _29_ gnd DC1.SGN_bF$buf3 _28_ NAND2X1
XNAND2X1_11 vdd _30_ gnd DC1.WDATA<2> _126_ NAND2X1
XOAI21X1_6 gnd vdd _30_ DC1.SGN_bF$buf3 _31_ _29_ OAI21X1
XAND2X2_4 vdd gnd _31_ DC1.WDATA<3> _32_ AND2X2
XOAI21X1_7 gnd vdd _31_ DC1.WDATA<3> _33_ DC1.DOP OAI21X1
XINVX1_6 DC1.WDATA<3> _34_ vdd gnd INVX1
XNAND2X1_12 vdd _35_ gnd DC1.LD RDATA<3> NAND2X1
XOAI21X1_8 gnd vdd _34_ DC1.LD _36_ _35_ OAI21X1
XINVX1_7 INPD<3> _37_ vdd gnd INVX1
XAOI21X1_1 gnd vdd DC1.INP _37_ _38_ DC1.DOP AOI21X1
XOAI21X1_9 gnd vdd _36_ DC1.INP _39_ _38_ OAI21X1
XOAI21X1_10 gnd vdd _32_ _33_ _16_<3> _39_ OAI21X1
XINVX2_6 vdd gnd _40_ DC1.WDATA<4> INVX2
XINVX1_8 DC1.SGN_bF$buf3 _41_ vdd gnd INVX1
XNAND2X1_13 vdd _42_ gnd DC1.WDATA<1> DC1.WDATA<0> NAND2X1
XNAND2X1_14 vdd _43_ gnd DC1.WDATA<3> DC1.WDATA<2> NAND2X1
XNOR2X1_15 vdd _43_ gnd _44_ _42_ NOR2X1
XNOR2X1_16 vdd _41_ gnd _45_ DC1.WDATA<3> NOR2X1
XAOI22X1_2 gnd vdd _44_ _41_ _46_ _28_ _45_ AOI22X1
XAND2X2_5 vdd gnd _46_ _40_ _47_ AND2X2
XOAI21X1_11 gnd vdd _46_ _40_ _48_ DC1.DOP OAI21X1
XNAND2X1_15 vdd _49_ gnd DC1.LD RDATA<4> NAND2X1
XOAI21X1_12 gnd vdd _40_ DC1.LD _50_ _49_ OAI21X1
XINVX1_9 INPD<4> _51_ vdd gnd INVX1
XAOI21X1_2 gnd vdd DC1.INP _51_ _52_ DC1.DOP AOI21X1
XOAI21X1_13 gnd vdd _50_ DC1.INP _53_ _52_ OAI21X1
XOAI21X1_14 gnd vdd _47_ _48_ _16_<4> _53_ OAI21X1
XNAND3X1_3 _109_ vdd gnd DC1.SGN_bF$buf2 _28_ _54_ NAND3X1
XAND2X2_6 vdd gnd DC1.WDATA<3> DC1.WDATA<2> _55_ AND2X2
XNAND3X1_4 _126_ vdd gnd DC1.WDATA<4> _55_ _56_ NAND3X1
XOAI21X1_15 gnd vdd _56_ DC1.SGN_bF$buf2 _57_ _54_ OAI21X1
XAND2X2_7 vdd gnd _57_ DC1.WDATA<5> _58_ AND2X2
XOAI21X1_16 gnd vdd _57_ DC1.WDATA<5> _59_ DC1.DOP OAI21X1
XNAND2X1_16 vdd _60_ gnd DC1.LD RDATA<5> NAND2X1
XOAI21X1_17 gnd vdd _108_ DC1.LD _61_ _60_ OAI21X1
XINVX1_10 INPD<5> _62_ vdd gnd INVX1
XAOI21X1_3 gnd vdd DC1.INP _62_ _63_ DC1.DOP AOI21X1
XOAI21X1_18 gnd vdd _61_ DC1.INP _64_ _63_ OAI21X1
XOAI21X1_19 gnd vdd _58_ _59_ _16_<5> _64_ OAI21X1
XNOR3X1_2 vdd gnd DC1.WDATA<5> DC1.WDATA<4> DC1.WDATA<3> _65_ NOR3X1
XNAND3X1_5 _28_ vdd gnd DC1.SGN_bF$buf4 _65_ _66_ NAND3X1
XAND2X2_8 vdd gnd DC1.WDATA<5> DC1.WDATA<4> _67_ AND2X2
XNAND3X1_6 _55_ vdd gnd _126_ _67_ _68_ NAND3X1
XOAI21X1_20 gnd vdd _68_ DC1.SGN_bF$buf4 _69_ _66_ OAI21X1
XAND2X2_9 vdd gnd _69_ DC1.WDATA<6> _70_ AND2X2
XOAI21X1_21 gnd vdd _69_ DC1.WDATA<6> _71_ DC1.DOP OAI21X1
XNAND2X1_17 vdd _72_ gnd DC1.LD RDATA<6> NAND2X1
XOAI21X1_22 gnd vdd _112_ DC1.LD _73_ _72_ OAI21X1
XINVX1_11 INPD<6> _74_ vdd gnd INVX1
XAOI21X1_4 gnd vdd DC1.INP _74_ _75_ DC1.DOP AOI21X1
XOAI21X1_23 gnd vdd _73_ DC1.INP _76_ _75_ OAI21X1
XOAI21X1_24 gnd vdd _70_ _71_ _16_<6> _76_ OAI21X1
XNAND2X1_18 vdd _77_ gnd DC1.WDATA<5> DC1.WDATA<4> NAND2X1
XNOR3X1_3 vdd gnd _43_ _77_ _42_ _78_ NOR3X1
XNAND3X1_7 DC1.WDATA<6> vdd gnd DC1.WDATA<7> _78_ _79_ NAND3X1
XOAI21X1_25 gnd vdd _68_ _112_ _80_ _111_ OAI21X1
XAOI21X1_5 gnd vdd _79_ _80_ _81_ DC1.SGN_bF$buf2 AOI21X1
XNAND3X1_8 _28_ vdd gnd _112_ _65_ _82_ NAND3X1
XAND2X2_10 vdd gnd _82_ DC1.WDATA<7> _83_ AND2X2
XOAI21X1_26 gnd vdd _110_ _114_ _84_ DC1.SGN_bF$buf2 OAI21X1
XOAI21X1_27 gnd vdd _83_ _84_ _85_ DC1.DOP OAI21X1
XNAND2X1_19 vdd _86_ gnd DC1.LD RDATA<7> NAND2X1
XOAI21X1_28 gnd vdd _111_ DC1.LD _87_ _86_ OAI21X1
XINVX1_12 INPD<7> _88_ vdd gnd INVX1
XAOI21X1_6 gnd vdd DC1.INP _88_ _89_ DC1.DOP AOI21X1
XOAI21X1_29 gnd vdd _87_ DC1.INP _90_ _89_ OAI21X1
XOAI21X1_30 gnd vdd _85_ _81_ _16_<7> _90_ OAI21X1
XNOR2X1_17 vdd _119__bF$buf1 gnd _91_ DC1.OUTPD<0> NOR2X1
XAOI21X1_7 gnd vdd _122_ _119__bF$buf1 _14_<0> _91_ AOI21X1
XNOR2X1_18 vdd _119__bF$buf3 gnd _92_ DC1.OUTPD<1> NOR2X1
XAOI21X1_8 gnd vdd _18_ _119__bF$buf3 _14_<1> _92_ AOI21X1
XNOR2X1_19 vdd _119__bF$buf3 gnd _93_ DC1.OUTPD<2> NOR2X1
XAOI21X1_9 gnd vdd _107_ _119__bF$buf3 _14_<2> _93_ AOI21X1
XNOR2X1_20 vdd _119__bF$buf2 gnd _94_ DC1.OUTPD<3> NOR2X1
XAOI21X1_10 gnd vdd _34_ _119__bF$buf2 _14_<3> _94_ AOI21X1
XNOR2X1_21 vdd _119__bF$buf2 gnd _95_ DC1.OUTPD<4> NOR2X1
XAOI21X1_11 gnd vdd _40_ _119__bF$buf2 _14_<4> _95_ AOI21X1
XNOR2X1_22 vdd _119__bF$buf4 gnd _96_ DC1.OUTPD<5> NOR2X1
XAOI21X1_12 gnd vdd _108_ _119__bF$buf4 _14_<5> _96_ AOI21X1
XNOR2X1_23 vdd _119__bF$buf4 gnd _97_ DC1.OUTPD<6> NOR2X1
XAOI21X1_13 gnd vdd _112_ _119__bF$buf2 _14_<6> _97_ AOI21X1
XNOR2X1_24 vdd _119__bF$buf1 gnd _98_ DC1.OUTPD<7> NOR2X1
XAOI21X1_14 gnd vdd _111_ _119__bF$buf1 _14_<7> _98_ AOI21X1
XINVX1_13 DC1.OUTPD<8> _99_ vdd gnd INVX1
XNOR2X1_25 vdd _119__bF$buf0 gnd _14_<8> _99_ NOR2X1
XINVX1_14 DC1.OUTPD<9> _100_ vdd gnd INVX1
XNOR2X1_26 vdd _119__bF$buf0 gnd _14_<9> _100_ NOR2X1
XINVX1_15 DC1.OUTPD<10> _101_ vdd gnd INVX1
XNOR2X1_27 vdd _119__bF$buf0 gnd _14_<10> _101_ NOR2X1
XINVX1_16 DC1.OUTPD<11> _102_ vdd gnd INVX1
XNOR2X1_28 vdd _119__bF$buf3 gnd _14_<11> _102_ NOR2X1
XINVX1_17 DC1.OUTPD<12> _103_ vdd gnd INVX1
XNOR2X1_29 vdd _119__bF$buf0 gnd _14_<12> _103_ NOR2X1
XINVX1_18 DC1.OUTPD<13> _104_ vdd gnd INVX1
XNOR2X1_30 vdd _119__bF$buf1 gnd _14_<13> _104_ NOR2X1
XINVX1_19 DC1.OUTPD<14> _105_ vdd gnd INVX1
XNOR2X1_31 vdd _119__bF$buf0 gnd _14_<14> _105_ NOR2X1
XINVX1_20 DC1.OUTPD<15> _106_ vdd gnd INVX1
XNOR2X1_32 vdd _119__bF$buf4 gnd _14_<15> _106_ NOR2X1
XDFFPOSX1_2 vdd _14_<0> gnd DC1.OUTPD<0> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_3 vdd _14_<1> gnd DC1.OUTPD<1> clk_bF$buf1 DFFPOSX1
XDFFPOSX1_4 vdd _14_<2> gnd DC1.OUTPD<2> clk_bF$buf1 DFFPOSX1
XDFFPOSX1_5 vdd _14_<3> gnd DC1.OUTPD<3> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_6 vdd _14_<4> gnd DC1.OUTPD<4> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_7 vdd _14_<5> gnd DC1.OUTPD<5> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_8 vdd _14_<6> gnd DC1.OUTPD<6> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_9 vdd _14_<7> gnd DC1.OUTPD<7> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_10 vdd _14_<8> gnd DC1.OUTPD<8> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_11 vdd _14_<9> gnd DC1.OUTPD<9> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_12 vdd _14_<10> gnd DC1.OUTPD<10> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_13 vdd _14_<11> gnd DC1.OUTPD<11> clk_bF$buf1 DFFPOSX1
XDFFPOSX1_14 vdd _14_<12> gnd DC1.OUTPD<12> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_15 vdd _14_<13> gnd DC1.OUTPD<13> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_16 vdd _14_<14> gnd DC1.OUTPD<14> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_17 vdd _14_<15> gnd DC1.OUTPD<15> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_18 vdd _16_<0> gnd DC1.WDATA<0> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_19 vdd _16_<1> gnd DC1.WDATA<1> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_20 vdd _16_<2> gnd DC1.WDATA<2> clk_bF$buf1 DFFPOSX1
XDFFPOSX1_21 vdd _16_<3> gnd DC1.WDATA<3> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_22 vdd _16_<4> gnd DC1.WDATA<4> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_23 vdd _16_<5> gnd DC1.WDATA<5> clk_bF$buf1 DFFPOSX1
XDFFPOSX1_24 vdd _16_<6> gnd DC1.WDATA<6> clk_bF$buf1 DFFPOSX1
XDFFPOSX1_25 vdd _16_<7> gnd DC1.WDATA<7> clk_bF$buf1 DFFPOSX1
XDFFPOSX1_26 vdd _13_ gnd DC1.IR clk_bF$buf0 DFFPOSX1
XDFFPOSX1_27 vdd _15_ gnd DC1.OW clk_bF$buf2 DFFPOSX1
XXOR2X1_3 _128_<0> vdd DPC1.DPOP DPC1.DP<0> gnd XOR2X1
XINVX1_21 DPC1.DP<0> _146_ vdd gnd INVX1
XNOR2X1_33 vdd _146_ gnd _147_ DC1.SGN_bF$buf0 NOR2X1
XINVX8_1 vdd gnd DC1.SGN_bF$buf4 _148_ INVX8
XNOR2X1_34 vdd _148_ gnd _149_ DPC1.DP<0> NOR2X1
XOAI21X1_31 gnd vdd _147_ _149_ _150_ DPC1.DPOP OAI21X1
XXNOR2X1_2 _150_ DPC1.DP<1> gnd vdd _128_<1> XNOR2X1
XAND2X2_11 vdd gnd DPC1.DP<0> DPC1.DP<1> _151_ AND2X2
XOR2X2_2 _152_ DC1.SGN_bF$buf0 vdd gnd _151_ OR2X2
XOAI21X1_32 gnd vdd DPC1.DP<0> DPC1.DP<1> _153_ DC1.SGN_bF$buf0 OAI21X1
XNAND3X1_9 _153_ vdd gnd DPC1.DPOP _152_ _154_ NAND3X1
XXNOR2X1_3 _154_ DPC1.DP<2> gnd vdd _128_<2> XNOR2X1
XINVX2_7 vdd gnd _155_ DPC1.DP<3> INVX2
XNAND2X1_20 vdd _156_ gnd DPC1.DP<2> _151_ NAND2X1
XNOR3X1_4 vdd gnd DPC1.DP<1> DPC1.DP<2> DPC1.DP<0> _157_ NOR3X1
XOAI21X1_33 gnd vdd _157_ _148_ _158_ DPC1.DPOP OAI21X1
XAOI21X1_15 gnd vdd _148_ _156_ _159_ _158_ AOI21X1
XXNOR2X1_4 _159_ _155_ gnd vdd _128_<3> XNOR2X1
XNAND3X1_10 _155_ vdd gnd DC1.SGN_bF$buf0 _157_ _160_ NAND3X1
XAND2X2_12 vdd gnd DPC1.DP<2> DPC1.DP<3> _161_ AND2X2
XNAND2X1_21 vdd _162_ gnd _161_ _151_ NAND2X1
XOAI21X1_34 gnd vdd _162_ DC1.SGN_bF$buf0 _163_ _160_ OAI21X1
XNAND2X1_22 vdd _164_ gnd DPC1.DPOP _163_ NAND2X1
XXNOR2X1_5 _164_ DPC1.DP<4> gnd vdd _128_<4> XNOR2X1
XINVX1_22 DPC1.DP<4> _165_ vdd gnd INVX1
XOAI21X1_35 gnd vdd _162_ _165_ _166_ _148_ OAI21X1
XINVX2_8 vdd gnd _167_ DPC1.DPOP INVX2
XNAND3X1_11 _165_ vdd gnd _155_ _157_ _168_ NAND3X1
XAOI21X1_16 gnd vdd DC1.SGN_bF$buf4 _168_ _169_ _167_ AOI21X1
XNAND2X1_23 vdd _170_ gnd _166_ _169_ NAND2X1
XXNOR2X1_6 _170_ DPC1.DP<5> gnd vdd _128_<5> XNOR2X1
XOAI21X1_36 gnd vdd _168_ DPC1.DP<5> _171_ DC1.SGN_bF$buf4 OAI21X1
XNAND2X1_24 vdd _172_ gnd DPC1.DP<4> DPC1.DP<5> NAND2X1
XNOR2X1_35 vdd _162_ gnd _173_ _172_ NOR2X1
XINVX1_23 _173_ _174_ vdd gnd INVX1
XAOI21X1_17 gnd vdd _148_ _174_ _175_ _167_ AOI21X1
XNAND2X1_25 vdd _176_ gnd _171_ _175_ NAND2X1
XXNOR2X1_7 _176_ DPC1.DP<6> gnd vdd _128_<6> XNOR2X1
XNOR3X1_5 vdd gnd DPC1.DP<6> _168_ DPC1.DP<5> _177_ NOR3X1
XNAND2X1_26 vdd _178_ gnd DPC1.DP<6> _173_ NAND2X1
XAOI21X1_18 gnd vdd _148_ _178_ _179_ _167_ AOI21X1
XOAI21X1_37 gnd vdd _148_ _177_ _180_ _179_ OAI21X1
XXNOR2X1_8 _180_ DPC1.DP<7> gnd vdd _128_<7> XNOR2X1
XINVX1_24 DPC1.DP<7> _181_ vdd gnd INVX1
XAND2X2_13 vdd gnd _177_ _181_ _182_ AND2X2
XNAND2X1_27 vdd _183_ gnd DPC1.DP<6> DPC1.DP<7> NAND2X1
XOR2X2_3 _184_ _183_ vdd gnd _172_ OR2X2
XNOR2X1_36 vdd _184_ gnd _185_ _162_ NOR2X1
XNOR2X1_37 vdd _185_ gnd _186_ DC1.SGN_bF$buf0 NOR2X1
XNOR2X1_38 vdd _186_ gnd _187_ _167_ NOR2X1
XOAI21X1_38 gnd vdd _182_ _148_ _188_ _187_ OAI21X1
XXNOR2X1_9 _188_ DPC1.DP<8> gnd vdd _128_<8> XNOR2X1
XINVX1_25 DPC1.DP<8> _189_ vdd gnd INVX1
XNAND3X1_12 _189_ vdd gnd _181_ _177_ _190_ NAND3X1
XOAI21X1_39 gnd vdd DC1.SGN_bF$buf1 DPC1.DP<8> _191_ _187_ OAI21X1
XAOI21X1_19 gnd vdd DC1.SGN_bF$buf1 _190_ _192_ _191_ AOI21X1
XXOR2X1_4 _128_<9> vdd DPC1.DP<9> _192_ gnd XOR2X1
XNOR2X1_39 vdd _190_ gnd _193_ DPC1.DP<9> NOR2X1
XNAND3X1_13 DPC1.DP<9> vdd gnd DPC1.DP<8> _185_ _194_ NAND3X1
XAOI21X1_20 gnd vdd _148_ _194_ _195_ _167_ AOI21X1
XOAI21X1_40 gnd vdd _193_ _148_ _196_ _195_ OAI21X1
XXNOR2X1_10 _196_ DPC1.DP<10> gnd vdd _128_<10> XNOR2X1
XNOR3X1_6 vdd gnd DPC1.DP<10> _190_ DPC1.DP<9> _197_ NOR3X1
XINVX1_26 DPC1.DP<10> _198_ vdd gnd INVX1
XOAI21X1_41 gnd vdd _194_ _198_ _199_ _148_ OAI21X1
XAND2X2_14 vdd gnd _199_ DPC1.DPOP _200_ AND2X2
XOAI21X1_42 gnd vdd _148_ _197_ _201_ _200_ OAI21X1
XXNOR2X1_11 _201_ DPC1.DP<11> gnd vdd _128_<11> XNOR2X1
XINVX2_9 vdd gnd _129_ DPC1.DP<12> INVX2
XINVX1_27 DPC1.DP<11> _130_ vdd gnd INVX1
XAOI21X1_21 gnd vdd _130_ _197_ _131_ _148_ AOI21X1
XNOR3X1_7 vdd gnd _130_ _194_ _198_ _132_ NOR3X1
XOAI21X1_43 gnd vdd _132_ DC1.SGN_bF$buf1 _133_ DPC1.DPOP OAI21X1
XNOR2X1_40 vdd _131_ gnd _134_ _133_ NOR2X1
XXNOR2X1_12 _134_ _129_ gnd vdd _128_<12> XNOR2X1
XINVX1_28 DPC1.DP<13> _135_ vdd gnd INVX1
XNAND2X1_28 vdd _136_ gnd _148_ _129_ NAND2X1
XNAND2X1_29 vdd _137_ gnd DC1.SGN_bF$buf1 DPC1.DP<12> NAND2X1
XNAND2X1_30 vdd _138_ gnd _137_ _136_ NAND2X1
XNOR3X1_8 vdd gnd _138_ _131_ _133_ _139_ NOR3X1
XXNOR2X1_13 _139_ _135_ gnd vdd _128_<13> XNOR2X1
XOAI21X1_44 gnd vdd DC1.SGN_bF$buf4 DPC1.DP<13> _140_ _137_ OAI21X1
XAOI21X1_22 gnd vdd DC1.SGN_bF$buf1 DPC1.DP<13> _141_ _140_ AOI21X1
XNAND3X1_14 _136_ vdd gnd DPC1.DPOP _141_ _142_ NAND3X1
XINVX1_29 _142_ _143_ vdd gnd INVX1
XOAI21X1_45 gnd vdd _132_ DC1.SGN_bF$buf1 _144_ _143_ OAI21X1
XNOR2X1_41 vdd _131_ gnd _145_ _144_ NOR2X1
XXOR2X1_5 _128_<14> vdd DPC1.DP<14> _145_ gnd XOR2X1
XDFFPOSX1_28 vdd _128_<0> gnd DPC1.DP<0> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_29 vdd _128_<1> gnd DPC1.DP<1> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_30 vdd _128_<2> gnd DPC1.DP<2> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_31 vdd _128_<3> gnd DPC1.DP<3> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_32 vdd _128_<4> gnd DPC1.DP<4> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_33 vdd _128_<5> gnd DPC1.DP<5> clk_bF$buf5 DFFPOSX1
XDFFPOSX1_34 vdd _128_<6> gnd DPC1.DP<6> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_35 vdd _128_<7> gnd DPC1.DP<7> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_36 vdd _128_<8> gnd DPC1.DP<8> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_37 vdd _128_<9> gnd DPC1.DP<9> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_38 vdd _128_<10> gnd DPC1.DP<10> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_39 vdd _128_<11> gnd DPC1.DP<11> clk_bF$buf3 DFFPOSX1
XDFFPOSX1_40 vdd _128_<12> gnd DPC1.DP<12> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_41 vdd _128_<13> gnd DPC1.DP<13> clk_bF$buf0 DFFPOSX1
XDFFPOSX1_42 vdd _128_<14> gnd DPC1.DP<14> clk_bF$buf3 DFFPOSX1
XAND2X2_15 vdd gnd OPC1.INST<2> OPC1.INST<1> _212_ AND2X2
XINVX2_10 vdd gnd _213_ OPC1.INST<3> INVX2
XOAI21X1_46 gnd vdd OPC1.INST<2> OPC1.INST<1> _214_ _213_ OAI21X1
XNOR2X1_42 vdd _214_ gnd _215_ _212_ NOR2X1
XNAND2X1_31 vdd _216_ gnd NEXTOP<2> NEXTOP<1> NAND2X1
XINVX1_30 _216_ _217_ vdd gnd INVX1
XNOR2X1_43 vdd NEXTOP<1> gnd _218_ NEXTOP<2> NOR2X1
XNOR2X1_44 vdd _217_ gnd _219_ _218_ NOR2X1
XINVX1_31 _219_ _220_ vdd gnd INVX1
XOAI21X1_47 gnd vdd _220_ NEXTOP<0> _221_ _215_ OAI21X1
XINVX1_32 OPC1.INST<2> _222_ vdd gnd INVX1
XNAND2X1_32 vdd _223_ gnd OPC1.INST<3> _222_ NAND2X1
XNOR2X1_45 vdd DC1.SGN_bF$buf5 gnd _224_ OPC1.INST<3> NOR2X1
XNAND2X1_33 vdd _225_ gnd _224_ _212_ NAND2X1
XINVX2_11 vdd gnd _226_ DC1.SGN_bF$buf5 INVX2
XINVX4_3 vdd gnd _227_ OPC1.INST<1> INVX4
XNAND3X1_15 _226_ vdd gnd RF _227_ _228_ NAND3X1
XINVX4_4 vdd gnd _229_ DC1.IZ INVX4
XNAND2X1_34 vdd _230_ gnd NEXTOP<0> _229_ NAND2X1
XOAI22X1_2 gnd vdd _230_ _225_ _223_ _228_ _231_ OAI22X1
XNAND2X1_35 vdd _232_ gnd DC1.SGN_bF$buf5 _227_ NAND2X1
XINVX2_12 vdd gnd _233_ WF INVX2
XNOR2X1_46 vdd _233_ gnd _234_ NEXTOP<0> NOR2X1
XNOR3X1_9 vdd gnd _223_ _234_ _232_ _235_ NOR3X1
XINVX1_33 NEXTOP<2> _236_ vdd gnd INVX1
XINVX2_13 vdd gnd _237_ NEXTOP<1> INVX2
XOAI21X1_48 gnd vdd _236_ NEXTOP<0> _238_ _237_ OAI21X1
XNOR2X1_47 vdd OPC1.INST<2> gnd _239_ OPC1.INST<3> NOR2X1
XNAND3X1_16 _227_ vdd gnd NEXTOP<0> _239_ _240_ NAND3X1
XNOR2X1_48 vdd _240_ gnd _241_ _238_ NOR2X1
XNOR3X1_10 vdd gnd _235_ _231_ _241_ _242_ NOR3X1
XNOR3X1_11 vdd gnd OPC1.bracketcount<7> _216_ NEXTOP<0> _243_ NOR3X1
XNAND2X1_36 vdd _244_ gnd DC1.SGN_bF$buf5 OPC1.INST<1> NAND2X1
XNAND2X1_37 vdd _245_ gnd OPC1.INST<3> OPC1.INST<2> NAND2X1
XOR2X2_4 _246_ _245_ vdd gnd _244_ OR2X2
XNOR2X1_49 vdd _246_ gnd _247_ _243_ NOR2X1
XAND2X2_16 vdd gnd OPC1.INST<3> OPC1.INST<2> _248_ AND2X2
XNAND3X1_17 _227_ vdd gnd DC1.SGN_bF$buf5 _248_ _249_ NAND3X1
XNAND3X1_18 DC1.SGN_bF$buf5 vdd gnd _213_ _212_ _250_ NAND3X1
XNOR2X1_50 vdd _229_ gnd _251_ NEXTOP<0> NOR2X1
XOAI21X1_49 gnd vdd _250_ _251_ _252_ _249_ OAI21X1
XINVX1_34 NEXTOP<0> _253_ vdd gnd INVX1
XNAND3X1_19 OPC1.INST<1> vdd gnd OPC1.INST<3> _222_ _254_ NAND3X1
XNOR2X1_51 vdd _254_ gnd _255_ _253_ NOR2X1
XNOR3X1_12 vdd gnd _255_ _252_ _247_ _256_ NOR3X1
XNAND3X1_20 _242_ vdd gnd _221_ _256_ OPC1.NEXTSTATE<0> NAND3X1
XNAND2X1_38 vdd _257_ gnd OPC1.INST<2> _213_ NAND2X1
XOAI21X1_50 gnd vdd _257_ _244_ _258_ _254_ OAI21X1
XNOR3X1_13 vdd gnd _233_ _223_ _232_ _259_ NOR3X1
XOAI21X1_51 gnd vdd _259_ _258_ _260_ NEXTOP<1> OAI21X1
XNAND2X1_39 vdd _261_ gnd OPC1.INST<3> _212_ NAND2X1
XINVX1_35 _261_ _262_ vdd gnd INVX1
XAOI21X1_23 gnd vdd _237_ _229_ _263_ _225_ AOI21X1
XNOR2X1_52 vdd _263_ gnd _264_ _262_ NOR2X1
XNOR2X1_53 vdd _228_ gnd _265_ _223_ NOR2X1
XNOR3X1_14 vdd gnd _244_ _257_ DC1.IZ _266_ NOR3X1
XNAND2X1_40 vdd _267_ gnd NEXTOP<1> _236_ NAND2X1
XNOR3X1_15 vdd gnd _212_ _214_ _267_ _268_ NOR3X1
XNOR3X1_16 vdd gnd _265_ _268_ _266_ _269_ NOR3X1
XNAND3X1_21 _260_ vdd gnd _264_ _269_ OPC1.NEXTSTATE<1> NAND3X1
XNAND3X1_22 NEXTOP<1> vdd gnd NEXTOP<2> NEXTOP<0> _270_ NAND3X1
XOAI21X1_52 gnd vdd _270_ OPC1.bracketcount<7> _271_ _226_ OAI21X1
XOAI21X1_53 gnd vdd _243_ _226_ _272_ _271_ OAI21X1
XNAND2X1_41 vdd _273_ gnd _262_ _272_ NAND2X1
XOAI21X1_54 gnd vdd _227_ _223_ _274_ _225_ OAI21X1
XOAI21X1_55 gnd vdd _259_ _274_ _275_ NEXTOP<2> OAI21X1
XNOR2X1_54 vdd _237_ gnd _276_ NEXTOP<2> NOR2X1
XNOR3X1_17 vdd gnd _212_ _276_ _214_ _277_ NOR3X1
XNOR2X1_55 vdd _229_ gnd _278_ NEXTOP<2> NOR2X1
XNOR3X1_18 vdd gnd _257_ _278_ _244_ _279_ NOR3X1
XNAND2X1_42 vdd _280_ gnd _227_ _239_ NAND2X1
XOAI22X1_3 gnd vdd _229_ _225_ _280_ _218_ _281_ OAI22X1
XNOR3X1_19 vdd gnd _279_ _281_ _277_ _282_ NOR3X1
XNAND3X1_23 _275_ vdd gnd _273_ _282_ OPC1.NEXTSTATE<2> NAND3X1
XOAI21X1_56 gnd vdd _217_ _218_ _283_ _215_ OAI21X1
XNOR2X1_56 vdd _223_ gnd _284_ _232_ NOR2X1
XNAND2X1_43 vdd _285_ gnd OPC1.INST<3> _227_ NAND2X1
XOAI21X1_57 gnd vdd _285_ DC1.SGN_bF$buf5 _286_ _245_ OAI21X1
XAOI21X1_24 gnd vdd _233_ _284_ _287_ _286_ AOI21X1
XNOR2X1_57 vdd _225_ gnd _288_ _229_ NOR2X1
XAOI21X1_25 gnd vdd NEXTOP<2> _253_ _289_ NEXTOP<1> AOI21X1
XNOR2X1_58 vdd _280_ gnd _203_ _289_ NOR2X1
XNOR3X1_20 vdd gnd _266_ _288_ _203_ _204_ NOR3X1
XNAND3X1_24 _287_ vdd gnd _283_ _204_ OPC1.NEXTSTATE<3> NAND3X1
XNAND2X1_44 vdd _205_ gnd _219_ _215_ NAND2X1
XNOR2X1_59 vdd _225_ gnd _206_ DC1.IZ NOR2X1
XINVX1_36 _250_ _207_ vdd gnd INVX1
XAOI21X1_26 gnd vdd DC1.IZ _207_ _208_ _206_ AOI21X1
XOAI22X1_4 gnd vdd _238_ _280_ _213_ _227_ _209_ OAI22X1
XNOR2X1_60 vdd _209_ gnd _210_ _259_ NOR2X1
XNAND3X1_25 _210_ vdd gnd _205_ _208_ OPC1.PCDELTA<0> NAND3X1
XINVX1_37 _266_ _211_ vdd gnd INVX1
XOAI21X1_58 gnd vdd _243_ _246_ OPC1.PCDELTA<15> _211_ OAI21X1
XOAI21X1_59 gnd vdd _229_ _225_ _202_ _211_ OAI21X1
XDFFPOSX1_43 vdd OPC1.NEXTSTATE<0> gnd DC1.SGN clk_bF$buf4 DFFPOSX1
XDFFPOSX1_44 vdd OPC1.NEXTSTATE<1> gnd OPC1.INST<1> clk_bF$buf4 DFFPOSX1
XDFFPOSX1_45 vdd OPC1.NEXTSTATE<2> gnd OPC1.INST<2> clk_bF$buf2 DFFPOSX1
XDFFPOSX1_46 vdd OPC1.NEXTSTATE<3> gnd OPC1.INST<3> clk_bF$buf4 DFFPOSX1
XBUFX2_61 vdd gnd DC1.SGN_bF$buf4 OPC1.INST<0> BUFX2
XBUFX2_62 vdd gnd OPC1.PCDELTA_15_bF$buf1 OPC1.PCDELTA<1> BUFX2
XBUFX2_63 vdd gnd OPC1.PCDELTA_15_bF$buf2 OPC1.PCDELTA<2> BUFX2
XBUFX2_64 vdd gnd OPC1.PCDELTA_15_bF$buf2 OPC1.PCDELTA<3> BUFX2
XBUFX2_65 vdd gnd OPC1.PCDELTA_15_bF$buf4 OPC1.PCDELTA<4> BUFX2
XBUFX2_66 vdd gnd OPC1.PCDELTA_15_bF$buf0 OPC1.PCDELTA<5> BUFX2
XBUFX2_67 vdd gnd OPC1.PCDELTA_15_bF$buf0 OPC1.PCDELTA<6> BUFX2
XBUFX2_68 vdd gnd OPC1.PCDELTA_15_bF$buf1 OPC1.PCDELTA<7> BUFX2
XBUFX2_69 vdd gnd OPC1.PCDELTA_15_bF$buf2 OPC1.PCDELTA<8> BUFX2
XBUFX2_70 vdd gnd OPC1.PCDELTA_15_bF$buf3 OPC1.PCDELTA<9> BUFX2
XBUFX2_71 vdd gnd OPC1.PCDELTA_15_bF$buf3 OPC1.PCDELTA<10> BUFX2
XBUFX2_72 vdd gnd OPC1.PCDELTA_15_bF$buf0 OPC1.PCDELTA<11> BUFX2
XBUFX2_73 vdd gnd OPC1.PCDELTA_15_bF$buf2 OPC1.PCDELTA<12> BUFX2
XBUFX2_74 vdd gnd OPC1.PCDELTA_15_bF$buf3 OPC1.PCDELTA<13> BUFX2
XBUFX2_75 vdd gnd OPC1.PCDELTA_15_bF$buf2 OPC1.PCDELTA<14> BUFX2
.ends BFCPU
 