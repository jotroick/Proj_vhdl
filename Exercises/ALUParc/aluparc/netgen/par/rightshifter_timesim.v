////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: I.24
//  \   \         Application: netgen
//  /   /         Filename: rightshifter_timesim.v
// /___/   /\     Timestamp: Sun Apr 15 18:36:52 2007
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf rightshifter.pcf -sdf_anno true -sdf_path netgen/par -w -dir netgen/par -ofmt verilog -sim rightshifter.ncd rightshifter_timesim.v 
// Device	: xa3s200ftg256-4 (PRODUCTION 1.37 2005-11-04)
// Input file	: rightshifter.ncd
// Output file	: D:\Documentos\XILINXPROYECTOS\aluparc\netgen\par\rightshifter_timesim.v
// # of Modules	: 1
// Design Name	: rightshifter
// Xilinx        : D:\PROGRAMAS\Xilinxs
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module rightshifter (
  CLKR, DESR, DINR, RIGHT
);
  input CLKR;
  input [3 : 0] DESR;
  input [3 : 0] DINR;
  output [3 : 0] RIGHT;
  wire GLOBAL_LOGIC0;
  wire CLKR_BUFGP;
  wire Mcompar__n0001_ge_cyo;
  wire \rightshifter_Result<1>_cyo ;
  wire \rightshifter_Result<3>_cyo ;
  wire \rightshifter_Result<5>_cyo ;
  wire \rightshifter_Result<7>_cyo ;
  wire \rightshifter_Result<9>_cyo ;
  wire \rightshifter_Result<11>_cyo ;
  wire \rightshifter_Result<13>_cyo ;
  wire \rightshifter_Result<15>_cyo ;
  wire \rightshifter_Result<17>_cyo ;
  wire \rightshifter_Result<19>_cyo ;
  wire \rightshifter_Result<21>_cyo ;
  wire \rightshifter_Result<23>_cyo ;
  wire \rightshifter_Result<25>_cyo ;
  wire \rightshifter_Result<27>_cyo ;
  wire GLOBAL_LOGIC1;
  wire DESR_0_IBUF_0;
  wire DESR_1_IBUF_1;
  wire DESR_2_IBUF_2;
  wire \i<0>/DXMUX_3 ;
  wire \i<0>/LOGIC_ONE_4 ;
  wire \i<0>/CYINIT_5 ;
  wire \i<0>/CYSELF_6 ;
  wire \i<0>/DYMUX_7 ;
  wire \i<0>/XORG_8 ;
  wire \i<0>/CYMUXG_9 ;
  wire \rightshifter_Result<0>_cyo ;
  wire \i<0>/LOGIC_ZERO_10 ;
  wire \i<0>/CYSELG_11 ;
  wire \i<0>/G ;
  wire \i<0>/SRINV_12 ;
  wire \i<0>/CLKINV_13 ;
  wire \i<2>/DXMUX_14 ;
  wire \i<2>/XORF_15 ;
  wire \i<2>/CYINIT_16 ;
  wire \i<2>/F ;
  wire \i<2>/DYMUX_17 ;
  wire \i<2>/XORG_18 ;
  wire \rightshifter_Result<2>_cyo ;
  wire \i<2>/CYSELF_19 ;
  wire \i<2>/CYMUXFAST_20 ;
  wire \i<2>/CYAND_21 ;
  wire \i<2>/FASTCARRY_22 ;
  wire \i<2>/CYMUXG2_23 ;
  wire \i<2>/CYMUXF2_24 ;
  wire \i<2>/LOGIC_ZERO_25 ;
  wire \i<2>/CYSELG_26 ;
  wire \i<2>/G ;
  wire \i<2>/SRINV_27 ;
  wire \i<2>/CLKINV_28 ;
  wire \i<4>/DXMUX_29 ;
  wire \i<4>/XORF_30 ;
  wire \i<4>/CYINIT_31 ;
  wire \i<4>/F ;
  wire \i<4>/DYMUX_32 ;
  wire \i<4>/XORG_33 ;
  wire \rightshifter_Result<4>_cyo ;
  wire \i<4>/CYSELF_34 ;
  wire \i<4>/CYMUXFAST_35 ;
  wire \i<4>/CYAND_36 ;
  wire \i<4>/FASTCARRY_37 ;
  wire \i<4>/CYMUXG2_38 ;
  wire \i<4>/CYMUXF2_39 ;
  wire \i<4>/LOGIC_ZERO_40 ;
  wire \i<4>/CYSELG_41 ;
  wire \i<4>/G ;
  wire \i<4>/SRINV_42 ;
  wire \i<4>/CLKINV_43 ;
  wire \i<6>/DXMUX_44 ;
  wire \i<6>/XORF_45 ;
  wire \i<6>/CYINIT_46 ;
  wire \i<6>/F ;
  wire \i<6>/DYMUX_47 ;
  wire \i<6>/XORG_48 ;
  wire \rightshifter_Result<6>_cyo ;
  wire \i<6>/CYSELF_49 ;
  wire \i<6>/CYMUXFAST_50 ;
  wire \i<6>/CYAND_51 ;
  wire \i<6>/FASTCARRY_52 ;
  wire \i<6>/CYMUXG2_53 ;
  wire \i<6>/CYMUXF2_54 ;
  wire \i<6>/LOGIC_ZERO_55 ;
  wire \i<6>/CYSELG_56 ;
  wire \i<6>/G ;
  wire \i<6>/SRINV_57 ;
  wire \i<6>/CLKINV_58 ;
  wire \i<8>/DXMUX_59 ;
  wire \i<8>/XORF_60 ;
  wire \i<8>/CYINIT_61 ;
  wire \i<8>/F ;
  wire \i<8>/DYMUX_62 ;
  wire \i<8>/XORG_63 ;
  wire \rightshifter_Result<8>_cyo ;
  wire \i<8>/CYSELF_64 ;
  wire \i<8>/CYMUXFAST_65 ;
  wire \i<8>/CYAND_66 ;
  wire \i<8>/FASTCARRY_67 ;
  wire \i<8>/CYMUXG2_68 ;
  wire \i<8>/CYMUXF2_69 ;
  wire \i<8>/LOGIC_ZERO_70 ;
  wire \i<8>/CYSELG_71 ;
  wire \i<8>/G ;
  wire \i<8>/SRINV_72 ;
  wire \i<8>/CLKINV_73 ;
  wire \i<10>/DXMUX_74 ;
  wire \i<10>/XORF_75 ;
  wire \i<10>/CYINIT_76 ;
  wire \i<10>/F ;
  wire \i<10>/DYMUX_77 ;
  wire \i<10>/XORG_78 ;
  wire \rightshifter_Result<10>_cyo ;
  wire \i<10>/CYSELF_79 ;
  wire \i<10>/CYMUXFAST_80 ;
  wire \i<10>/CYAND_81 ;
  wire \i<10>/FASTCARRY_82 ;
  wire \i<10>/CYMUXG2_83 ;
  wire \i<10>/CYMUXF2_84 ;
  wire \i<10>/LOGIC_ZERO_85 ;
  wire \i<10>/CYSELG_86 ;
  wire \i<10>/G ;
  wire \i<10>/SRINV_87 ;
  wire \i<10>/CLKINV_88 ;
  wire \i<12>/DXMUX_89 ;
  wire \i<12>/XORF_90 ;
  wire \i<12>/CYINIT_91 ;
  wire \i<12>/F ;
  wire \i<12>/DYMUX_92 ;
  wire \i<12>/XORG_93 ;
  wire \rightshifter_Result<12>_cyo ;
  wire \i<12>/CYSELF_94 ;
  wire \i<12>/CYMUXFAST_95 ;
  wire \i<12>/CYAND_96 ;
  wire \i<12>/FASTCARRY_97 ;
  wire \i<12>/CYMUXG2_98 ;
  wire \i<12>/CYMUXF2_99 ;
  wire \i<12>/LOGIC_ZERO_100 ;
  wire \i<12>/CYSELG_101 ;
  wire \i<12>/G ;
  wire \i<12>/SRINV_102 ;
  wire \i<12>/CLKINV_103 ;
  wire \i<14>/DXMUX_104 ;
  wire \i<14>/XORF_105 ;
  wire \i<14>/CYINIT_106 ;
  wire \i<14>/F ;
  wire \i<14>/DYMUX_107 ;
  wire \i<14>/XORG_108 ;
  wire \rightshifter_Result<14>_cyo ;
  wire \i<14>/CYSELF_109 ;
  wire \i<14>/CYMUXFAST_110 ;
  wire \i<14>/CYAND_111 ;
  wire \i<14>/FASTCARRY_112 ;
  wire \i<14>/CYMUXG2_113 ;
  wire \i<14>/CYMUXF2_114 ;
  wire \i<14>/LOGIC_ZERO_115 ;
  wire \i<14>/CYSELG_116 ;
  wire \i<14>/G ;
  wire \i<14>/SRINV_117 ;
  wire \i<14>/CLKINV_118 ;
  wire \i<30>/DXMUX_119 ;
  wire \i<30>/XORF_120 ;
  wire \i<30>/LOGIC_ZERO_121 ;
  wire \i<30>/CYINIT_122 ;
  wire \i<30>/CYSELF_123 ;
  wire \i<30>/F ;
  wire \i<30>/DYMUX_124 ;
  wire \i<30>/XORG_125 ;
  wire \rightshifter_Result<30>_cyo ;
  wire \i<31>_rt_126 ;
  wire \i<30>/SRINV_127 ;
  wire \i<30>/CLKINV_128 ;
  wire \Mcompar__n0001_xnor_cyo1/CYINIT_129 ;
  wire \Mcompar__n0001_xnor_cyo1/CY0F_130 ;
  wire \Mcompar__n0001_xnor_cyo1/CYSELF_131 ;
  wire \Mcompar__n0001_xnorlut/O ;
  wire \Mcompar__n0001_xnor_cyo1/CYMUXG_132 ;
  wire Mcompar__n0001_xnor_cyo;
  wire \Mcompar__n0001_xnor_cyo1/CY0G_133 ;
  wire \Mcompar__n0001_xnor_cyo1/CYSELG_134 ;
  wire \Mcompar__n0001_xnorlut1/O ;
  wire \Mcompar__n0001_nor_cyo/CY0F_135 ;
  wire \Mcompar__n0001_xnorlut2/O ;
  wire \Mcompar__n0001_nor_cyo/CYSELF_136 ;
  wire \Mcompar__n0001_nor_cyo/CYMUXFAST_137 ;
  wire \Mcompar__n0001_nor_cyo/CYAND_138 ;
  wire \Mcompar__n0001_nor_cyo/FASTCARRY_139 ;
  wire \Mcompar__n0001_nor_cyo/CYMUXG2_140 ;
  wire \Mcompar__n0001_nor_cyo/CYMUXF2_141 ;
  wire \Mcompar__n0001_nor_cyo/LOGIC_ONE_142 ;
  wire \Mcompar__n0001_nor_cyo/CYSELG_143 ;
  wire \Mcompar__n0001_norlut/O ;
  wire \Mcompar__n0001_norlut1/O ;
  wire \Mcompar__n0001_nor_cyo2/CYSELF_144 ;
  wire \Mcompar__n0001_nor_cyo2/CYMUXFAST_145 ;
  wire \Mcompar__n0001_nor_cyo2/CYAND_146 ;
  wire \Mcompar__n0001_nor_cyo2/FASTCARRY_147 ;
  wire \Mcompar__n0001_nor_cyo2/CYMUXG2_148 ;
  wire \Mcompar__n0001_nor_cyo2/CYMUXF2_149 ;
  wire \Mcompar__n0001_nor_cyo2/LOGIC_ONE_150 ;
  wire \Mcompar__n0001_nor_cyo2/CYSELG_151 ;
  wire \Mcompar__n0001_norlut2/O ;
  wire \Mcompar__n0001_norlut3/O ;
  wire \Mcompar__n0001_nor_cyo4/CYSELF_152 ;
  wire \Mcompar__n0001_nor_cyo4/CYMUXFAST_153 ;
  wire \Mcompar__n0001_nor_cyo4/CYAND_154 ;
  wire \Mcompar__n0001_nor_cyo4/FASTCARRY_155 ;
  wire \Mcompar__n0001_nor_cyo4/CYMUXG2_156 ;
  wire \Mcompar__n0001_nor_cyo4/CYMUXF2_157 ;
  wire \Mcompar__n0001_nor_cyo4/LOGIC_ONE_158 ;
  wire \Mcompar__n0001_nor_cyo4/CYSELG_159 ;
  wire \Mcompar__n0001_norlut4/O ;
  wire \Mcompar__n0001_norlut5/O ;
  wire \Mcompar__n0001_nor_cyo6/CYSELF_160 ;
  wire \Mcompar__n0001_nor_cyo6/CYMUXFAST_161 ;
  wire \Mcompar__n0001_nor_cyo6/CYAND_162 ;
  wire \Mcompar__n0001_nor_cyo6/FASTCARRY_163 ;
  wire \Mcompar__n0001_nor_cyo6/CYMUXG2_164 ;
  wire \Mcompar__n0001_nor_cyo6/CYMUXF2_165 ;
  wire \Mcompar__n0001_nor_cyo6/LOGIC_ONE_166 ;
  wire \Mcompar__n0001_nor_cyo6/CYSELG_167 ;
  wire \Mcompar__n0001_norlut6/O ;
  wire \Mcompar__n0001_ge_cyo/LOGIC_ZERO_168 ;
  wire \Mcompar__n0001_ge_cyo/CYINIT_169 ;
  wire \Mcompar__n0001_ge_cyo/CYSELF_170 ;
  wire N14;
  wire \DINR<0>/IFF/IFFDMUX_171 ;
  wire \DINR<0>/IFF/ICEINVNOT ;
  wire \DINR<0>/IFF/ICLK1INV_172 ;
  wire \DINR<0>/INBUF ;
  wire \DINR<1>/IFF/IFFDMUX_173 ;
  wire \DINR<1>/IFF/ICEINVNOT ;
  wire \DINR<1>/IFF/ICLK1INV_174 ;
  wire \DINR<1>/INBUF ;
  wire \DINR<2>/IFF/IFFDMUX_175 ;
  wire \DINR<2>/IFF/ICEINVNOT ;
  wire \DINR<2>/IFF/ICLK1INV_176 ;
  wire \DINR<2>/INBUF ;
  wire \DINR<3>/IFF/IFFDMUX_177 ;
  wire \DINR<3>/IFF/ICEINVNOT ;
  wire \DINR<3>/IFF/ICLK1INV_178 ;
  wire \DINR<3>/INBUF ;
  wire \DESR<0>/INBUF ;
  wire \DESR<1>/INBUF ;
  wire \DESR<2>/INBUF ;
  wire \i<16>/DXMUX_179 ;
  wire \i<16>/XORF_180 ;
  wire \i<16>/CYINIT_181 ;
  wire \i<16>/F ;
  wire \i<16>/DYMUX_182 ;
  wire \i<16>/XORG_183 ;
  wire \rightshifter_Result<16>_cyo ;
  wire \i<16>/CYSELF_184 ;
  wire \i<16>/CYMUXFAST_185 ;
  wire \i<16>/CYAND_186 ;
  wire \i<16>/FASTCARRY_187 ;
  wire \i<16>/CYMUXG2_188 ;
  wire \i<16>/CYMUXF2_189 ;
  wire \i<16>/LOGIC_ZERO_190 ;
  wire \i<16>/CYSELG_191 ;
  wire \i<16>/G ;
  wire \i<16>/SRINV_192 ;
  wire \i<16>/CLKINV_193 ;
  wire \i<18>/DXMUX_194 ;
  wire \i<18>/XORF_195 ;
  wire \i<18>/CYINIT_196 ;
  wire \i<18>/F ;
  wire \i<18>/DYMUX_197 ;
  wire \i<18>/XORG_198 ;
  wire \rightshifter_Result<18>_cyo ;
  wire \i<18>/CYSELF_199 ;
  wire \i<18>/CYMUXFAST_200 ;
  wire \i<18>/CYAND_201 ;
  wire \i<18>/FASTCARRY_202 ;
  wire \i<18>/CYMUXG2_203 ;
  wire \i<18>/CYMUXF2_204 ;
  wire \i<18>/LOGIC_ZERO_205 ;
  wire \i<18>/CYSELG_206 ;
  wire \i<18>/G ;
  wire \i<18>/SRINV_207 ;
  wire \i<18>/CLKINV_208 ;
  wire \i<20>/DXMUX_209 ;
  wire \i<20>/XORF_210 ;
  wire \i<20>/CYINIT_211 ;
  wire \i<20>/F ;
  wire \i<20>/DYMUX_212 ;
  wire \i<20>/XORG_213 ;
  wire \rightshifter_Result<20>_cyo ;
  wire \i<20>/CYSELF_214 ;
  wire \i<20>/CYMUXFAST_215 ;
  wire \i<20>/CYAND_216 ;
  wire \i<20>/FASTCARRY_217 ;
  wire \i<20>/CYMUXG2_218 ;
  wire \i<20>/CYMUXF2_219 ;
  wire \i<20>/LOGIC_ZERO_220 ;
  wire \i<20>/CYSELG_221 ;
  wire \i<20>/G ;
  wire \i<20>/SRINV_222 ;
  wire \i<20>/CLKINV_223 ;
  wire \i<22>/DXMUX_224 ;
  wire \i<22>/XORF_225 ;
  wire \i<22>/CYINIT_226 ;
  wire \i<22>/F ;
  wire \i<22>/DYMUX_227 ;
  wire \i<22>/XORG_228 ;
  wire \rightshifter_Result<22>_cyo ;
  wire \i<22>/CYSELF_229 ;
  wire \i<22>/CYMUXFAST_230 ;
  wire \i<22>/CYAND_231 ;
  wire \i<22>/FASTCARRY_232 ;
  wire \i<22>/CYMUXG2_233 ;
  wire \i<22>/CYMUXF2_234 ;
  wire \i<22>/LOGIC_ZERO_235 ;
  wire \i<22>/CYSELG_236 ;
  wire \i<22>/G ;
  wire \i<22>/SRINV_237 ;
  wire \i<22>/CLKINV_238 ;
  wire \i<24>/DXMUX_239 ;
  wire \i<24>/XORF_240 ;
  wire \i<24>/CYINIT_241 ;
  wire \i<24>/F ;
  wire \i<24>/DYMUX_242 ;
  wire \i<24>/XORG_243 ;
  wire \rightshifter_Result<24>_cyo ;
  wire \i<24>/CYSELF_244 ;
  wire \i<24>/CYMUXFAST_245 ;
  wire \i<24>/CYAND_246 ;
  wire \i<24>/FASTCARRY_247 ;
  wire \i<24>/CYMUXG2_248 ;
  wire \i<24>/CYMUXF2_249 ;
  wire \i<24>/LOGIC_ZERO_250 ;
  wire \i<24>/CYSELG_251 ;
  wire \i<24>/G ;
  wire \i<24>/SRINV_252 ;
  wire \i<24>/CLKINV_253 ;
  wire \i<26>/DXMUX_254 ;
  wire \i<26>/XORF_255 ;
  wire \i<26>/CYINIT_256 ;
  wire \i<26>/F ;
  wire \i<26>/DYMUX_257 ;
  wire \i<26>/XORG_258 ;
  wire \rightshifter_Result<26>_cyo ;
  wire \i<26>/CYSELF_259 ;
  wire \i<26>/CYMUXFAST_260 ;
  wire \i<26>/CYAND_261 ;
  wire \i<26>/FASTCARRY_262 ;
  wire \i<26>/CYMUXG2_263 ;
  wire \i<26>/CYMUXF2_264 ;
  wire \i<26>/LOGIC_ZERO_265 ;
  wire \i<26>/CYSELG_266 ;
  wire \i<26>/G ;
  wire \i<26>/SRINV_267 ;
  wire \i<26>/CLKINV_268 ;
  wire \i<28>/DXMUX_269 ;
  wire \i<28>/XORF_270 ;
  wire \i<28>/CYINIT_271 ;
  wire \i<28>/F ;
  wire \i<28>/DYMUX_272 ;
  wire \i<28>/XORG_273 ;
  wire \rightshifter_Result<28>_cyo ;
  wire \i<28>/CYSELF_274 ;
  wire \i<28>/CYMUXFAST_275 ;
  wire \i<28>/CYAND_276 ;
  wire \i<28>/FASTCARRY_277 ;
  wire \i<28>/CYMUXG2_278 ;
  wire \i<28>/CYMUXF2_279 ;
  wire \i<28>/LOGIC_ZERO_280 ;
  wire \i<28>/CYSELG_281 ;
  wire \i<28>/G ;
  wire \i<28>/SRINV_282 ;
  wire \i<28>/CLKINV_283 ;
  wire \CLKR/INBUF ;
  wire \RIGHT<0>/O ;
  wire \RIGHT<1>/O ;
  wire \RIGHT<2>/O ;
  wire \RIGHT<3>/O ;
  wire \CLKR_BUFGP/BUFG/S_INVNOT ;
  wire \CLKR_BUFGP/BUFG/I0_INV ;
  wire VCC;
  wire GND;
  wire [31 : 0] i;
  wire [3 : 0] tmpo;
  wire [0 : 0] Result;
  initial $sdf_annotate("netgen/par/rightshifter_timesim.sdf");
  defparam \i<0>/LOGIC_ZERO .LOC = "SLICE_X21Y0";
  X_ZERO \i<0>/LOGIC_ZERO  (
    .O(\i<0>/LOGIC_ZERO_10 )
  );
  defparam \i<0>/LOGIC_ONE .LOC = "SLICE_X21Y0";
  X_ONE \i<0>/LOGIC_ONE  (
    .O(\i<0>/LOGIC_ONE_4 )
  );
  defparam \i<0>/DXMUX .LOC = "SLICE_X21Y0";
  X_BUF \i<0>/DXMUX  (
    .I(Result[0]),
    .O(\i<0>/DXMUX_3 )
  );
  defparam \i<0>/CYMUXF .LOC = "SLICE_X21Y0";
  X_MUX2 \i<0>/CYMUXF  (
    .IA(\i<0>/LOGIC_ONE_4 ),
    .IB(\i<0>/CYINIT_5 ),
    .SEL(\i<0>/CYSELF_6 ),
    .O(\rightshifter_Result<0>_cyo )
  );
  defparam \i<0>/CYINIT .LOC = "SLICE_X21Y0";
  X_BUF \i<0>/CYINIT  (
    .I(GLOBAL_LOGIC0),
    .O(\i<0>/CYINIT_5 )
  );
  defparam \i<0>/CYSELF .LOC = "SLICE_X21Y0";
  X_BUF \i<0>/CYSELF  (
    .I(Result[0]),
    .O(\i<0>/CYSELF_6 )
  );
  defparam \i<0>/DYMUX .LOC = "SLICE_X21Y0";
  X_BUF \i<0>/DYMUX  (
    .I(\i<0>/XORG_8 ),
    .O(\i<0>/DYMUX_7 )
  );
  defparam \i<0>/XORG .LOC = "SLICE_X21Y0";
  X_XOR2 \i<0>/XORG  (
    .I0(\rightshifter_Result<0>_cyo ),
    .I1(\i<0>/G ),
    .O(\i<0>/XORG_8 )
  );
  defparam \i<0>/COUTUSED .LOC = "SLICE_X21Y0";
  X_BUF \i<0>/COUTUSED  (
    .I(\i<0>/CYMUXG_9 ),
    .O(\rightshifter_Result<1>_cyo )
  );
  defparam \i<0>/CYMUXG .LOC = "SLICE_X21Y0";
  X_MUX2 \i<0>/CYMUXG  (
    .IA(\i<0>/LOGIC_ZERO_10 ),
    .IB(\rightshifter_Result<0>_cyo ),
    .SEL(\i<0>/CYSELG_11 ),
    .O(\i<0>/CYMUXG_9 )
  );
  defparam \i<0>/CYSELG .LOC = "SLICE_X21Y0";
  X_BUF \i<0>/CYSELG  (
    .I(\i<0>/G ),
    .O(\i<0>/CYSELG_11 )
  );
  defparam \i<0>/SRINV .LOC = "SLICE_X21Y0";
  X_BUF \i<0>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<0>/SRINV_12 )
  );
  defparam \i<0>/CLKINV .LOC = "SLICE_X21Y0";
  X_BUF \i<0>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<0>/CLKINV_13 )
  );
  defparam \i<2>/LOGIC_ZERO .LOC = "SLICE_X21Y1";
  X_ZERO \i<2>/LOGIC_ZERO  (
    .O(\i<2>/LOGIC_ZERO_25 )
  );
  defparam \i<2>/DXMUX .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/DXMUX  (
    .I(\i<2>/XORF_15 ),
    .O(\i<2>/DXMUX_14 )
  );
  defparam \i<2>/XORF .LOC = "SLICE_X21Y1";
  X_XOR2 \i<2>/XORF  (
    .I0(\i<2>/CYINIT_16 ),
    .I1(\i<2>/F ),
    .O(\i<2>/XORF_15 )
  );
  defparam \i<2>/CYMUXF .LOC = "SLICE_X21Y1";
  X_MUX2 \i<2>/CYMUXF  (
    .IA(\i<2>/LOGIC_ZERO_25 ),
    .IB(\i<2>/CYINIT_16 ),
    .SEL(\i<2>/CYSELF_19 ),
    .O(\rightshifter_Result<2>_cyo )
  );
  defparam \i<2>/CYMUXF2 .LOC = "SLICE_X21Y1";
  X_MUX2 \i<2>/CYMUXF2  (
    .IA(\i<2>/LOGIC_ZERO_25 ),
    .IB(\i<2>/LOGIC_ZERO_25 ),
    .SEL(\i<2>/CYSELF_19 ),
    .O(\i<2>/CYMUXF2_24 )
  );
  defparam \i<2>/CYINIT .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/CYINIT  (
    .I(\rightshifter_Result<1>_cyo ),
    .O(\i<2>/CYINIT_16 )
  );
  defparam \i<2>/CYSELF .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/CYSELF  (
    .I(\i<2>/F ),
    .O(\i<2>/CYSELF_19 )
  );
  defparam \i<2>/DYMUX .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/DYMUX  (
    .I(\i<2>/XORG_18 ),
    .O(\i<2>/DYMUX_17 )
  );
  defparam \i<2>/XORG .LOC = "SLICE_X21Y1";
  X_XOR2 \i<2>/XORG  (
    .I0(\rightshifter_Result<2>_cyo ),
    .I1(\i<2>/G ),
    .O(\i<2>/XORG_18 )
  );
  defparam \i<2>/COUTUSED .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/COUTUSED  (
    .I(\i<2>/CYMUXFAST_20 ),
    .O(\rightshifter_Result<3>_cyo )
  );
  defparam \i<2>/FASTCARRY .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/FASTCARRY  (
    .I(\rightshifter_Result<1>_cyo ),
    .O(\i<2>/FASTCARRY_22 )
  );
  defparam \i<2>/CYAND .LOC = "SLICE_X21Y1";
  X_AND2 \i<2>/CYAND  (
    .I0(\i<2>/CYSELG_26 ),
    .I1(\i<2>/CYSELF_19 ),
    .O(\i<2>/CYAND_21 )
  );
  defparam \i<2>/CYMUXFAST .LOC = "SLICE_X21Y1";
  X_MUX2 \i<2>/CYMUXFAST  (
    .IA(\i<2>/CYMUXG2_23 ),
    .IB(\i<2>/FASTCARRY_22 ),
    .SEL(\i<2>/CYAND_21 ),
    .O(\i<2>/CYMUXFAST_20 )
  );
  defparam \i<2>/CYMUXG2 .LOC = "SLICE_X21Y1";
  X_MUX2 \i<2>/CYMUXG2  (
    .IA(\i<2>/LOGIC_ZERO_25 ),
    .IB(\i<2>/CYMUXF2_24 ),
    .SEL(\i<2>/CYSELG_26 ),
    .O(\i<2>/CYMUXG2_23 )
  );
  defparam \i<2>/CYSELG .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/CYSELG  (
    .I(\i<2>/G ),
    .O(\i<2>/CYSELG_26 )
  );
  defparam \i<2>/SRINV .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<2>/SRINV_27 )
  );
  defparam \i<2>/CLKINV .LOC = "SLICE_X21Y1";
  X_BUF \i<2>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<2>/CLKINV_28 )
  );
  defparam \i<4>/LOGIC_ZERO .LOC = "SLICE_X21Y2";
  X_ZERO \i<4>/LOGIC_ZERO  (
    .O(\i<4>/LOGIC_ZERO_40 )
  );
  defparam \i<4>/DXMUX .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/DXMUX  (
    .I(\i<4>/XORF_30 ),
    .O(\i<4>/DXMUX_29 )
  );
  defparam \i<4>/XORF .LOC = "SLICE_X21Y2";
  X_XOR2 \i<4>/XORF  (
    .I0(\i<4>/CYINIT_31 ),
    .I1(\i<4>/F ),
    .O(\i<4>/XORF_30 )
  );
  defparam \i<4>/CYMUXF .LOC = "SLICE_X21Y2";
  X_MUX2 \i<4>/CYMUXF  (
    .IA(\i<4>/LOGIC_ZERO_40 ),
    .IB(\i<4>/CYINIT_31 ),
    .SEL(\i<4>/CYSELF_34 ),
    .O(\rightshifter_Result<4>_cyo )
  );
  defparam \i<4>/CYMUXF2 .LOC = "SLICE_X21Y2";
  X_MUX2 \i<4>/CYMUXF2  (
    .IA(\i<4>/LOGIC_ZERO_40 ),
    .IB(\i<4>/LOGIC_ZERO_40 ),
    .SEL(\i<4>/CYSELF_34 ),
    .O(\i<4>/CYMUXF2_39 )
  );
  defparam \i<4>/CYINIT .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/CYINIT  (
    .I(\rightshifter_Result<3>_cyo ),
    .O(\i<4>/CYINIT_31 )
  );
  defparam \i<4>/CYSELF .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/CYSELF  (
    .I(\i<4>/F ),
    .O(\i<4>/CYSELF_34 )
  );
  defparam \i<4>/DYMUX .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/DYMUX  (
    .I(\i<4>/XORG_33 ),
    .O(\i<4>/DYMUX_32 )
  );
  defparam \i<4>/XORG .LOC = "SLICE_X21Y2";
  X_XOR2 \i<4>/XORG  (
    .I0(\rightshifter_Result<4>_cyo ),
    .I1(\i<4>/G ),
    .O(\i<4>/XORG_33 )
  );
  defparam \i<4>/COUTUSED .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/COUTUSED  (
    .I(\i<4>/CYMUXFAST_35 ),
    .O(\rightshifter_Result<5>_cyo )
  );
  defparam \i<4>/FASTCARRY .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/FASTCARRY  (
    .I(\rightshifter_Result<3>_cyo ),
    .O(\i<4>/FASTCARRY_37 )
  );
  defparam \i<4>/CYAND .LOC = "SLICE_X21Y2";
  X_AND2 \i<4>/CYAND  (
    .I0(\i<4>/CYSELG_41 ),
    .I1(\i<4>/CYSELF_34 ),
    .O(\i<4>/CYAND_36 )
  );
  defparam \i<4>/CYMUXFAST .LOC = "SLICE_X21Y2";
  X_MUX2 \i<4>/CYMUXFAST  (
    .IA(\i<4>/CYMUXG2_38 ),
    .IB(\i<4>/FASTCARRY_37 ),
    .SEL(\i<4>/CYAND_36 ),
    .O(\i<4>/CYMUXFAST_35 )
  );
  defparam \i<4>/CYMUXG2 .LOC = "SLICE_X21Y2";
  X_MUX2 \i<4>/CYMUXG2  (
    .IA(\i<4>/LOGIC_ZERO_40 ),
    .IB(\i<4>/CYMUXF2_39 ),
    .SEL(\i<4>/CYSELG_41 ),
    .O(\i<4>/CYMUXG2_38 )
  );
  defparam \i<4>/CYSELG .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/CYSELG  (
    .I(\i<4>/G ),
    .O(\i<4>/CYSELG_41 )
  );
  defparam \i<4>/SRINV .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<4>/SRINV_42 )
  );
  defparam \i<4>/CLKINV .LOC = "SLICE_X21Y2";
  X_BUF \i<4>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<4>/CLKINV_43 )
  );
  defparam \i<6>/LOGIC_ZERO .LOC = "SLICE_X21Y3";
  X_ZERO \i<6>/LOGIC_ZERO  (
    .O(\i<6>/LOGIC_ZERO_55 )
  );
  defparam \i<6>/DXMUX .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/DXMUX  (
    .I(\i<6>/XORF_45 ),
    .O(\i<6>/DXMUX_44 )
  );
  defparam \i<6>/XORF .LOC = "SLICE_X21Y3";
  X_XOR2 \i<6>/XORF  (
    .I0(\i<6>/CYINIT_46 ),
    .I1(\i<6>/F ),
    .O(\i<6>/XORF_45 )
  );
  defparam \i<6>/CYMUXF .LOC = "SLICE_X21Y3";
  X_MUX2 \i<6>/CYMUXF  (
    .IA(\i<6>/LOGIC_ZERO_55 ),
    .IB(\i<6>/CYINIT_46 ),
    .SEL(\i<6>/CYSELF_49 ),
    .O(\rightshifter_Result<6>_cyo )
  );
  defparam \i<6>/CYMUXF2 .LOC = "SLICE_X21Y3";
  X_MUX2 \i<6>/CYMUXF2  (
    .IA(\i<6>/LOGIC_ZERO_55 ),
    .IB(\i<6>/LOGIC_ZERO_55 ),
    .SEL(\i<6>/CYSELF_49 ),
    .O(\i<6>/CYMUXF2_54 )
  );
  defparam \i<6>/CYINIT .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/CYINIT  (
    .I(\rightshifter_Result<5>_cyo ),
    .O(\i<6>/CYINIT_46 )
  );
  defparam \i<6>/CYSELF .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/CYSELF  (
    .I(\i<6>/F ),
    .O(\i<6>/CYSELF_49 )
  );
  defparam \i<6>/DYMUX .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/DYMUX  (
    .I(\i<6>/XORG_48 ),
    .O(\i<6>/DYMUX_47 )
  );
  defparam \i<6>/XORG .LOC = "SLICE_X21Y3";
  X_XOR2 \i<6>/XORG  (
    .I0(\rightshifter_Result<6>_cyo ),
    .I1(\i<6>/G ),
    .O(\i<6>/XORG_48 )
  );
  defparam \i<6>/COUTUSED .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/COUTUSED  (
    .I(\i<6>/CYMUXFAST_50 ),
    .O(\rightshifter_Result<7>_cyo )
  );
  defparam \i<6>/FASTCARRY .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/FASTCARRY  (
    .I(\rightshifter_Result<5>_cyo ),
    .O(\i<6>/FASTCARRY_52 )
  );
  defparam \i<6>/CYAND .LOC = "SLICE_X21Y3";
  X_AND2 \i<6>/CYAND  (
    .I0(\i<6>/CYSELG_56 ),
    .I1(\i<6>/CYSELF_49 ),
    .O(\i<6>/CYAND_51 )
  );
  defparam \i<6>/CYMUXFAST .LOC = "SLICE_X21Y3";
  X_MUX2 \i<6>/CYMUXFAST  (
    .IA(\i<6>/CYMUXG2_53 ),
    .IB(\i<6>/FASTCARRY_52 ),
    .SEL(\i<6>/CYAND_51 ),
    .O(\i<6>/CYMUXFAST_50 )
  );
  defparam \i<6>/CYMUXG2 .LOC = "SLICE_X21Y3";
  X_MUX2 \i<6>/CYMUXG2  (
    .IA(\i<6>/LOGIC_ZERO_55 ),
    .IB(\i<6>/CYMUXF2_54 ),
    .SEL(\i<6>/CYSELG_56 ),
    .O(\i<6>/CYMUXG2_53 )
  );
  defparam \i<6>/CYSELG .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/CYSELG  (
    .I(\i<6>/G ),
    .O(\i<6>/CYSELG_56 )
  );
  defparam \i<6>/SRINV .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<6>/SRINV_57 )
  );
  defparam \i<6>/CLKINV .LOC = "SLICE_X21Y3";
  X_BUF \i<6>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<6>/CLKINV_58 )
  );
  defparam \i<8>/LOGIC_ZERO .LOC = "SLICE_X21Y4";
  X_ZERO \i<8>/LOGIC_ZERO  (
    .O(\i<8>/LOGIC_ZERO_70 )
  );
  defparam \i<8>/DXMUX .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/DXMUX  (
    .I(\i<8>/XORF_60 ),
    .O(\i<8>/DXMUX_59 )
  );
  defparam \i<8>/XORF .LOC = "SLICE_X21Y4";
  X_XOR2 \i<8>/XORF  (
    .I0(\i<8>/CYINIT_61 ),
    .I1(\i<8>/F ),
    .O(\i<8>/XORF_60 )
  );
  defparam \i<8>/CYMUXF .LOC = "SLICE_X21Y4";
  X_MUX2 \i<8>/CYMUXF  (
    .IA(\i<8>/LOGIC_ZERO_70 ),
    .IB(\i<8>/CYINIT_61 ),
    .SEL(\i<8>/CYSELF_64 ),
    .O(\rightshifter_Result<8>_cyo )
  );
  defparam \i<8>/CYMUXF2 .LOC = "SLICE_X21Y4";
  X_MUX2 \i<8>/CYMUXF2  (
    .IA(\i<8>/LOGIC_ZERO_70 ),
    .IB(\i<8>/LOGIC_ZERO_70 ),
    .SEL(\i<8>/CYSELF_64 ),
    .O(\i<8>/CYMUXF2_69 )
  );
  defparam \i<8>/CYINIT .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/CYINIT  (
    .I(\rightshifter_Result<7>_cyo ),
    .O(\i<8>/CYINIT_61 )
  );
  defparam \i<8>/CYSELF .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/CYSELF  (
    .I(\i<8>/F ),
    .O(\i<8>/CYSELF_64 )
  );
  defparam \i<8>/DYMUX .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/DYMUX  (
    .I(\i<8>/XORG_63 ),
    .O(\i<8>/DYMUX_62 )
  );
  defparam \i<8>/XORG .LOC = "SLICE_X21Y4";
  X_XOR2 \i<8>/XORG  (
    .I0(\rightshifter_Result<8>_cyo ),
    .I1(\i<8>/G ),
    .O(\i<8>/XORG_63 )
  );
  defparam \i<8>/COUTUSED .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/COUTUSED  (
    .I(\i<8>/CYMUXFAST_65 ),
    .O(\rightshifter_Result<9>_cyo )
  );
  defparam \i<8>/FASTCARRY .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/FASTCARRY  (
    .I(\rightshifter_Result<7>_cyo ),
    .O(\i<8>/FASTCARRY_67 )
  );
  defparam \i<8>/CYAND .LOC = "SLICE_X21Y4";
  X_AND2 \i<8>/CYAND  (
    .I0(\i<8>/CYSELG_71 ),
    .I1(\i<8>/CYSELF_64 ),
    .O(\i<8>/CYAND_66 )
  );
  defparam \i<8>/CYMUXFAST .LOC = "SLICE_X21Y4";
  X_MUX2 \i<8>/CYMUXFAST  (
    .IA(\i<8>/CYMUXG2_68 ),
    .IB(\i<8>/FASTCARRY_67 ),
    .SEL(\i<8>/CYAND_66 ),
    .O(\i<8>/CYMUXFAST_65 )
  );
  defparam \i<8>/CYMUXG2 .LOC = "SLICE_X21Y4";
  X_MUX2 \i<8>/CYMUXG2  (
    .IA(\i<8>/LOGIC_ZERO_70 ),
    .IB(\i<8>/CYMUXF2_69 ),
    .SEL(\i<8>/CYSELG_71 ),
    .O(\i<8>/CYMUXG2_68 )
  );
  defparam \i<8>/CYSELG .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/CYSELG  (
    .I(\i<8>/G ),
    .O(\i<8>/CYSELG_71 )
  );
  defparam \i<8>/SRINV .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<8>/SRINV_72 )
  );
  defparam \i<8>/CLKINV .LOC = "SLICE_X21Y4";
  X_BUF \i<8>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<8>/CLKINV_73 )
  );
  defparam \i<10>/LOGIC_ZERO .LOC = "SLICE_X21Y5";
  X_ZERO \i<10>/LOGIC_ZERO  (
    .O(\i<10>/LOGIC_ZERO_85 )
  );
  defparam \i<10>/DXMUX .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/DXMUX  (
    .I(\i<10>/XORF_75 ),
    .O(\i<10>/DXMUX_74 )
  );
  defparam \i<10>/XORF .LOC = "SLICE_X21Y5";
  X_XOR2 \i<10>/XORF  (
    .I0(\i<10>/CYINIT_76 ),
    .I1(\i<10>/F ),
    .O(\i<10>/XORF_75 )
  );
  defparam \i<10>/CYMUXF .LOC = "SLICE_X21Y5";
  X_MUX2 \i<10>/CYMUXF  (
    .IA(\i<10>/LOGIC_ZERO_85 ),
    .IB(\i<10>/CYINIT_76 ),
    .SEL(\i<10>/CYSELF_79 ),
    .O(\rightshifter_Result<10>_cyo )
  );
  defparam \i<10>/CYMUXF2 .LOC = "SLICE_X21Y5";
  X_MUX2 \i<10>/CYMUXF2  (
    .IA(\i<10>/LOGIC_ZERO_85 ),
    .IB(\i<10>/LOGIC_ZERO_85 ),
    .SEL(\i<10>/CYSELF_79 ),
    .O(\i<10>/CYMUXF2_84 )
  );
  defparam \i<10>/CYINIT .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/CYINIT  (
    .I(\rightshifter_Result<9>_cyo ),
    .O(\i<10>/CYINIT_76 )
  );
  defparam \i<10>/CYSELF .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/CYSELF  (
    .I(\i<10>/F ),
    .O(\i<10>/CYSELF_79 )
  );
  defparam \i<10>/DYMUX .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/DYMUX  (
    .I(\i<10>/XORG_78 ),
    .O(\i<10>/DYMUX_77 )
  );
  defparam \i<10>/XORG .LOC = "SLICE_X21Y5";
  X_XOR2 \i<10>/XORG  (
    .I0(\rightshifter_Result<10>_cyo ),
    .I1(\i<10>/G ),
    .O(\i<10>/XORG_78 )
  );
  defparam \i<10>/COUTUSED .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/COUTUSED  (
    .I(\i<10>/CYMUXFAST_80 ),
    .O(\rightshifter_Result<11>_cyo )
  );
  defparam \i<10>/FASTCARRY .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/FASTCARRY  (
    .I(\rightshifter_Result<9>_cyo ),
    .O(\i<10>/FASTCARRY_82 )
  );
  defparam \i<10>/CYAND .LOC = "SLICE_X21Y5";
  X_AND2 \i<10>/CYAND  (
    .I0(\i<10>/CYSELG_86 ),
    .I1(\i<10>/CYSELF_79 ),
    .O(\i<10>/CYAND_81 )
  );
  defparam \i<10>/CYMUXFAST .LOC = "SLICE_X21Y5";
  X_MUX2 \i<10>/CYMUXFAST  (
    .IA(\i<10>/CYMUXG2_83 ),
    .IB(\i<10>/FASTCARRY_82 ),
    .SEL(\i<10>/CYAND_81 ),
    .O(\i<10>/CYMUXFAST_80 )
  );
  defparam \i<10>/CYMUXG2 .LOC = "SLICE_X21Y5";
  X_MUX2 \i<10>/CYMUXG2  (
    .IA(\i<10>/LOGIC_ZERO_85 ),
    .IB(\i<10>/CYMUXF2_84 ),
    .SEL(\i<10>/CYSELG_86 ),
    .O(\i<10>/CYMUXG2_83 )
  );
  defparam \i<10>/CYSELG .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/CYSELG  (
    .I(\i<10>/G ),
    .O(\i<10>/CYSELG_86 )
  );
  defparam \i<10>/SRINV .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<10>/SRINV_87 )
  );
  defparam \i<10>/CLKINV .LOC = "SLICE_X21Y5";
  X_BUF \i<10>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<10>/CLKINV_88 )
  );
  defparam \i<12>/LOGIC_ZERO .LOC = "SLICE_X21Y6";
  X_ZERO \i<12>/LOGIC_ZERO  (
    .O(\i<12>/LOGIC_ZERO_100 )
  );
  defparam \i<12>/DXMUX .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/DXMUX  (
    .I(\i<12>/XORF_90 ),
    .O(\i<12>/DXMUX_89 )
  );
  defparam \i<12>/XORF .LOC = "SLICE_X21Y6";
  X_XOR2 \i<12>/XORF  (
    .I0(\i<12>/CYINIT_91 ),
    .I1(\i<12>/F ),
    .O(\i<12>/XORF_90 )
  );
  defparam \i<12>/CYMUXF .LOC = "SLICE_X21Y6";
  X_MUX2 \i<12>/CYMUXF  (
    .IA(\i<12>/LOGIC_ZERO_100 ),
    .IB(\i<12>/CYINIT_91 ),
    .SEL(\i<12>/CYSELF_94 ),
    .O(\rightshifter_Result<12>_cyo )
  );
  defparam \i<12>/CYMUXF2 .LOC = "SLICE_X21Y6";
  X_MUX2 \i<12>/CYMUXF2  (
    .IA(\i<12>/LOGIC_ZERO_100 ),
    .IB(\i<12>/LOGIC_ZERO_100 ),
    .SEL(\i<12>/CYSELF_94 ),
    .O(\i<12>/CYMUXF2_99 )
  );
  defparam \i<12>/CYINIT .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/CYINIT  (
    .I(\rightshifter_Result<11>_cyo ),
    .O(\i<12>/CYINIT_91 )
  );
  defparam \i<12>/CYSELF .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/CYSELF  (
    .I(\i<12>/F ),
    .O(\i<12>/CYSELF_94 )
  );
  defparam \i<12>/DYMUX .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/DYMUX  (
    .I(\i<12>/XORG_93 ),
    .O(\i<12>/DYMUX_92 )
  );
  defparam \i<12>/XORG .LOC = "SLICE_X21Y6";
  X_XOR2 \i<12>/XORG  (
    .I0(\rightshifter_Result<12>_cyo ),
    .I1(\i<12>/G ),
    .O(\i<12>/XORG_93 )
  );
  defparam \i<12>/COUTUSED .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/COUTUSED  (
    .I(\i<12>/CYMUXFAST_95 ),
    .O(\rightshifter_Result<13>_cyo )
  );
  defparam \i<12>/FASTCARRY .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/FASTCARRY  (
    .I(\rightshifter_Result<11>_cyo ),
    .O(\i<12>/FASTCARRY_97 )
  );
  defparam \i<12>/CYAND .LOC = "SLICE_X21Y6";
  X_AND2 \i<12>/CYAND  (
    .I0(\i<12>/CYSELG_101 ),
    .I1(\i<12>/CYSELF_94 ),
    .O(\i<12>/CYAND_96 )
  );
  defparam \i<12>/CYMUXFAST .LOC = "SLICE_X21Y6";
  X_MUX2 \i<12>/CYMUXFAST  (
    .IA(\i<12>/CYMUXG2_98 ),
    .IB(\i<12>/FASTCARRY_97 ),
    .SEL(\i<12>/CYAND_96 ),
    .O(\i<12>/CYMUXFAST_95 )
  );
  defparam \i<12>/CYMUXG2 .LOC = "SLICE_X21Y6";
  X_MUX2 \i<12>/CYMUXG2  (
    .IA(\i<12>/LOGIC_ZERO_100 ),
    .IB(\i<12>/CYMUXF2_99 ),
    .SEL(\i<12>/CYSELG_101 ),
    .O(\i<12>/CYMUXG2_98 )
  );
  defparam \i<12>/CYSELG .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/CYSELG  (
    .I(\i<12>/G ),
    .O(\i<12>/CYSELG_101 )
  );
  defparam \i<12>/SRINV .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<12>/SRINV_102 )
  );
  defparam \i<12>/CLKINV .LOC = "SLICE_X21Y6";
  X_BUF \i<12>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<12>/CLKINV_103 )
  );
  defparam \i<14>/LOGIC_ZERO .LOC = "SLICE_X21Y7";
  X_ZERO \i<14>/LOGIC_ZERO  (
    .O(\i<14>/LOGIC_ZERO_115 )
  );
  defparam \i<14>/DXMUX .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/DXMUX  (
    .I(\i<14>/XORF_105 ),
    .O(\i<14>/DXMUX_104 )
  );
  defparam \i<14>/XORF .LOC = "SLICE_X21Y7";
  X_XOR2 \i<14>/XORF  (
    .I0(\i<14>/CYINIT_106 ),
    .I1(\i<14>/F ),
    .O(\i<14>/XORF_105 )
  );
  defparam \i<14>/CYMUXF .LOC = "SLICE_X21Y7";
  X_MUX2 \i<14>/CYMUXF  (
    .IA(\i<14>/LOGIC_ZERO_115 ),
    .IB(\i<14>/CYINIT_106 ),
    .SEL(\i<14>/CYSELF_109 ),
    .O(\rightshifter_Result<14>_cyo )
  );
  defparam \i<14>/CYMUXF2 .LOC = "SLICE_X21Y7";
  X_MUX2 \i<14>/CYMUXF2  (
    .IA(\i<14>/LOGIC_ZERO_115 ),
    .IB(\i<14>/LOGIC_ZERO_115 ),
    .SEL(\i<14>/CYSELF_109 ),
    .O(\i<14>/CYMUXF2_114 )
  );
  defparam \i<14>/CYINIT .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/CYINIT  (
    .I(\rightshifter_Result<13>_cyo ),
    .O(\i<14>/CYINIT_106 )
  );
  defparam \i<14>/CYSELF .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/CYSELF  (
    .I(\i<14>/F ),
    .O(\i<14>/CYSELF_109 )
  );
  defparam \i<14>/DYMUX .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/DYMUX  (
    .I(\i<14>/XORG_108 ),
    .O(\i<14>/DYMUX_107 )
  );
  defparam \i<14>/XORG .LOC = "SLICE_X21Y7";
  X_XOR2 \i<14>/XORG  (
    .I0(\rightshifter_Result<14>_cyo ),
    .I1(\i<14>/G ),
    .O(\i<14>/XORG_108 )
  );
  defparam \i<14>/COUTUSED .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/COUTUSED  (
    .I(\i<14>/CYMUXFAST_110 ),
    .O(\rightshifter_Result<15>_cyo )
  );
  defparam \i<14>/FASTCARRY .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/FASTCARRY  (
    .I(\rightshifter_Result<13>_cyo ),
    .O(\i<14>/FASTCARRY_112 )
  );
  defparam \i<14>/CYAND .LOC = "SLICE_X21Y7";
  X_AND2 \i<14>/CYAND  (
    .I0(\i<14>/CYSELG_116 ),
    .I1(\i<14>/CYSELF_109 ),
    .O(\i<14>/CYAND_111 )
  );
  defparam \i<14>/CYMUXFAST .LOC = "SLICE_X21Y7";
  X_MUX2 \i<14>/CYMUXFAST  (
    .IA(\i<14>/CYMUXG2_113 ),
    .IB(\i<14>/FASTCARRY_112 ),
    .SEL(\i<14>/CYAND_111 ),
    .O(\i<14>/CYMUXFAST_110 )
  );
  defparam \i<14>/CYMUXG2 .LOC = "SLICE_X21Y7";
  X_MUX2 \i<14>/CYMUXG2  (
    .IA(\i<14>/LOGIC_ZERO_115 ),
    .IB(\i<14>/CYMUXF2_114 ),
    .SEL(\i<14>/CYSELG_116 ),
    .O(\i<14>/CYMUXG2_113 )
  );
  defparam \i<14>/CYSELG .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/CYSELG  (
    .I(\i<14>/G ),
    .O(\i<14>/CYSELG_116 )
  );
  defparam \i<14>/SRINV .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<14>/SRINV_117 )
  );
  defparam \i<14>/CLKINV .LOC = "SLICE_X21Y7";
  X_BUF \i<14>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<14>/CLKINV_118 )
  );
  defparam \i<31>_rt .INIT = 16'hAAAA;
  defparam \i<31>_rt .LOC = "SLICE_X21Y15";
  X_LUT4 \i<31>_rt  (
    .ADR0(i[31]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<31>_rt_126 )
  );
  defparam \i<30>/LOGIC_ZERO .LOC = "SLICE_X21Y15";
  X_ZERO \i<30>/LOGIC_ZERO  (
    .O(\i<30>/LOGIC_ZERO_121 )
  );
  defparam \i<30>/DXMUX .LOC = "SLICE_X21Y15";
  X_BUF \i<30>/DXMUX  (
    .I(\i<30>/XORF_120 ),
    .O(\i<30>/DXMUX_119 )
  );
  defparam \i<30>/XORF .LOC = "SLICE_X21Y15";
  X_XOR2 \i<30>/XORF  (
    .I0(\i<30>/CYINIT_122 ),
    .I1(\i<30>/F ),
    .O(\i<30>/XORF_120 )
  );
  defparam \i<30>/CYMUXF .LOC = "SLICE_X21Y15";
  X_MUX2 \i<30>/CYMUXF  (
    .IA(\i<30>/LOGIC_ZERO_121 ),
    .IB(\i<30>/CYINIT_122 ),
    .SEL(\i<30>/CYSELF_123 ),
    .O(\rightshifter_Result<30>_cyo )
  );
  defparam \i<30>/CYINIT .LOC = "SLICE_X21Y15";
  X_BUF \i<30>/CYINIT  (
    .I(\i<28>/CYMUXFAST_275 ),
    .O(\i<30>/CYINIT_122 )
  );
  defparam \i<30>/CYSELF .LOC = "SLICE_X21Y15";
  X_BUF \i<30>/CYSELF  (
    .I(\i<30>/F ),
    .O(\i<30>/CYSELF_123 )
  );
  defparam \i<30>/DYMUX .LOC = "SLICE_X21Y15";
  X_BUF \i<30>/DYMUX  (
    .I(\i<30>/XORG_125 ),
    .O(\i<30>/DYMUX_124 )
  );
  defparam \i<30>/XORG .LOC = "SLICE_X21Y15";
  X_XOR2 \i<30>/XORG  (
    .I0(\rightshifter_Result<30>_cyo ),
    .I1(\i<31>_rt_126 ),
    .O(\i<30>/XORG_125 )
  );
  defparam \i<30>/SRINV .LOC = "SLICE_X21Y15";
  X_BUF \i<30>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<30>/SRINV_127 )
  );
  defparam \i<30>/CLKINV .LOC = "SLICE_X21Y15";
  X_BUF \i<30>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<30>/CLKINV_128 )
  );
  defparam \Mcompar__n0001_xnor_cyo1/CYMUXF .LOC = "SLICE_X20Y2";
  X_MUX2 \Mcompar__n0001_xnor_cyo1/CYMUXF  (
    .IA(\Mcompar__n0001_xnor_cyo1/CY0F_130 ),
    .IB(\Mcompar__n0001_xnor_cyo1/CYINIT_129 ),
    .SEL(\Mcompar__n0001_xnor_cyo1/CYSELF_131 ),
    .O(Mcompar__n0001_xnor_cyo)
  );
  defparam \Mcompar__n0001_xnor_cyo1/CYINIT .LOC = "SLICE_X20Y2";
  X_BUF \Mcompar__n0001_xnor_cyo1/CYINIT  (
    .I(GLOBAL_LOGIC1),
    .O(\Mcompar__n0001_xnor_cyo1/CYINIT_129 )
  );
  defparam \Mcompar__n0001_xnor_cyo1/CY0F .LOC = "SLICE_X20Y2";
  X_BUF \Mcompar__n0001_xnor_cyo1/CY0F  (
    .I(i[0]),
    .O(\Mcompar__n0001_xnor_cyo1/CY0F_130 )
  );
  defparam \Mcompar__n0001_xnor_cyo1/CYSELF .LOC = "SLICE_X20Y2";
  X_BUF \Mcompar__n0001_xnor_cyo1/CYSELF  (
    .I(\Mcompar__n0001_xnorlut/O ),
    .O(\Mcompar__n0001_xnor_cyo1/CYSELF_131 )
  );
  defparam \Mcompar__n0001_xnor_cyo1/CYMUXG .LOC = "SLICE_X20Y2";
  X_MUX2 \Mcompar__n0001_xnor_cyo1/CYMUXG  (
    .IA(\Mcompar__n0001_xnor_cyo1/CY0G_133 ),
    .IB(Mcompar__n0001_xnor_cyo),
    .SEL(\Mcompar__n0001_xnor_cyo1/CYSELG_134 ),
    .O(\Mcompar__n0001_xnor_cyo1/CYMUXG_132 )
  );
  defparam \Mcompar__n0001_xnor_cyo1/CY0G .LOC = "SLICE_X20Y2";
  X_BUF \Mcompar__n0001_xnor_cyo1/CY0G  (
    .I(i[1]),
    .O(\Mcompar__n0001_xnor_cyo1/CY0G_133 )
  );
  defparam \Mcompar__n0001_xnor_cyo1/CYSELG .LOC = "SLICE_X20Y2";
  X_BUF \Mcompar__n0001_xnor_cyo1/CYSELG  (
    .I(\Mcompar__n0001_xnorlut1/O ),
    .O(\Mcompar__n0001_xnor_cyo1/CYSELG_134 )
  );
  defparam Mcompar__n0001_xnorlut1.INIT = 16'hA5A5;
  defparam Mcompar__n0001_xnorlut1.LOC = "SLICE_X20Y2";
  X_LUT4 Mcompar__n0001_xnorlut1 (
    .ADR0(i[1]),
    .ADR1(VCC),
    .ADR2(DESR_1_IBUF_1),
    .ADR3(VCC),
    .O(\Mcompar__n0001_xnorlut1/O )
  );
  defparam \Mcompar__n0001_nor_cyo/LOGIC_ONE .LOC = "SLICE_X20Y3";
  X_ONE \Mcompar__n0001_nor_cyo/LOGIC_ONE  (
    .O(\Mcompar__n0001_nor_cyo/LOGIC_ONE_142 )
  );
  defparam \Mcompar__n0001_nor_cyo/CYMUXF2 .LOC = "SLICE_X20Y3";
  X_MUX2 \Mcompar__n0001_nor_cyo/CYMUXF2  (
    .IA(\Mcompar__n0001_nor_cyo/CY0F_135 ),
    .IB(\Mcompar__n0001_nor_cyo/CY0F_135 ),
    .SEL(\Mcompar__n0001_nor_cyo/CYSELF_136 ),
    .O(\Mcompar__n0001_nor_cyo/CYMUXF2_141 )
  );
  defparam \Mcompar__n0001_nor_cyo/CY0F .LOC = "SLICE_X20Y3";
  X_BUF \Mcompar__n0001_nor_cyo/CY0F  (
    .I(i[2]),
    .O(\Mcompar__n0001_nor_cyo/CY0F_135 )
  );
  defparam \Mcompar__n0001_nor_cyo/CYSELF .LOC = "SLICE_X20Y3";
  X_BUF \Mcompar__n0001_nor_cyo/CYSELF  (
    .I(\Mcompar__n0001_xnorlut2/O ),
    .O(\Mcompar__n0001_nor_cyo/CYSELF_136 )
  );
  defparam \Mcompar__n0001_nor_cyo/FASTCARRY .LOC = "SLICE_X20Y3";
  X_BUF \Mcompar__n0001_nor_cyo/FASTCARRY  (
    .I(\Mcompar__n0001_xnor_cyo1/CYMUXG_132 ),
    .O(\Mcompar__n0001_nor_cyo/FASTCARRY_139 )
  );
  defparam \Mcompar__n0001_nor_cyo/CYAND .LOC = "SLICE_X20Y3";
  X_AND2 \Mcompar__n0001_nor_cyo/CYAND  (
    .I0(\Mcompar__n0001_nor_cyo/CYSELG_143 ),
    .I1(\Mcompar__n0001_nor_cyo/CYSELF_136 ),
    .O(\Mcompar__n0001_nor_cyo/CYAND_138 )
  );
  defparam \Mcompar__n0001_nor_cyo/CYMUXFAST .LOC = "SLICE_X20Y3";
  X_MUX2 \Mcompar__n0001_nor_cyo/CYMUXFAST  (
    .IA(\Mcompar__n0001_nor_cyo/CYMUXG2_140 ),
    .IB(\Mcompar__n0001_nor_cyo/FASTCARRY_139 ),
    .SEL(\Mcompar__n0001_nor_cyo/CYAND_138 ),
    .O(\Mcompar__n0001_nor_cyo/CYMUXFAST_137 )
  );
  defparam \Mcompar__n0001_nor_cyo/CYMUXG2 .LOC = "SLICE_X20Y3";
  X_MUX2 \Mcompar__n0001_nor_cyo/CYMUXG2  (
    .IA(\Mcompar__n0001_nor_cyo/LOGIC_ONE_142 ),
    .IB(\Mcompar__n0001_nor_cyo/CYMUXF2_141 ),
    .SEL(\Mcompar__n0001_nor_cyo/CYSELG_143 ),
    .O(\Mcompar__n0001_nor_cyo/CYMUXG2_140 )
  );
  defparam \Mcompar__n0001_nor_cyo/CYSELG .LOC = "SLICE_X20Y3";
  X_BUF \Mcompar__n0001_nor_cyo/CYSELG  (
    .I(\Mcompar__n0001_norlut/O ),
    .O(\Mcompar__n0001_nor_cyo/CYSELG_143 )
  );
  defparam Mcompar__n0001_norlut.INIT = 16'h0001;
  defparam Mcompar__n0001_norlut.LOC = "SLICE_X20Y3";
  X_LUT4 Mcompar__n0001_norlut (
    .ADR0(i[6]),
    .ADR1(i[4]),
    .ADR2(i[5]),
    .ADR3(i[3]),
    .O(\Mcompar__n0001_norlut/O )
  );
  defparam Mcompar__n0001_norlut2.INIT = 16'h0001;
  defparam Mcompar__n0001_norlut2.LOC = "SLICE_X20Y4";
  X_LUT4 Mcompar__n0001_norlut2 (
    .ADR0(i[13]),
    .ADR1(i[14]),
    .ADR2(i[11]),
    .ADR3(i[12]),
    .O(\Mcompar__n0001_norlut2/O )
  );
  defparam \Mcompar__n0001_nor_cyo2/LOGIC_ONE .LOC = "SLICE_X20Y4";
  X_ONE \Mcompar__n0001_nor_cyo2/LOGIC_ONE  (
    .O(\Mcompar__n0001_nor_cyo2/LOGIC_ONE_150 )
  );
  defparam \Mcompar__n0001_nor_cyo2/CYMUXF2 .LOC = "SLICE_X20Y4";
  X_MUX2 \Mcompar__n0001_nor_cyo2/CYMUXF2  (
    .IA(\Mcompar__n0001_nor_cyo2/LOGIC_ONE_150 ),
    .IB(\Mcompar__n0001_nor_cyo2/LOGIC_ONE_150 ),
    .SEL(\Mcompar__n0001_nor_cyo2/CYSELF_144 ),
    .O(\Mcompar__n0001_nor_cyo2/CYMUXF2_149 )
  );
  defparam \Mcompar__n0001_nor_cyo2/CYSELF .LOC = "SLICE_X20Y4";
  X_BUF \Mcompar__n0001_nor_cyo2/CYSELF  (
    .I(\Mcompar__n0001_norlut1/O ),
    .O(\Mcompar__n0001_nor_cyo2/CYSELF_144 )
  );
  defparam \Mcompar__n0001_nor_cyo2/FASTCARRY .LOC = "SLICE_X20Y4";
  X_BUF \Mcompar__n0001_nor_cyo2/FASTCARRY  (
    .I(\Mcompar__n0001_nor_cyo/CYMUXFAST_137 ),
    .O(\Mcompar__n0001_nor_cyo2/FASTCARRY_147 )
  );
  defparam \Mcompar__n0001_nor_cyo2/CYAND .LOC = "SLICE_X20Y4";
  X_AND2 \Mcompar__n0001_nor_cyo2/CYAND  (
    .I0(\Mcompar__n0001_nor_cyo2/CYSELG_151 ),
    .I1(\Mcompar__n0001_nor_cyo2/CYSELF_144 ),
    .O(\Mcompar__n0001_nor_cyo2/CYAND_146 )
  );
  defparam \Mcompar__n0001_nor_cyo2/CYMUXFAST .LOC = "SLICE_X20Y4";
  X_MUX2 \Mcompar__n0001_nor_cyo2/CYMUXFAST  (
    .IA(\Mcompar__n0001_nor_cyo2/CYMUXG2_148 ),
    .IB(\Mcompar__n0001_nor_cyo2/FASTCARRY_147 ),
    .SEL(\Mcompar__n0001_nor_cyo2/CYAND_146 ),
    .O(\Mcompar__n0001_nor_cyo2/CYMUXFAST_145 )
  );
  defparam \Mcompar__n0001_nor_cyo2/CYMUXG2 .LOC = "SLICE_X20Y4";
  X_MUX2 \Mcompar__n0001_nor_cyo2/CYMUXG2  (
    .IA(\Mcompar__n0001_nor_cyo2/LOGIC_ONE_150 ),
    .IB(\Mcompar__n0001_nor_cyo2/CYMUXF2_149 ),
    .SEL(\Mcompar__n0001_nor_cyo2/CYSELG_151 ),
    .O(\Mcompar__n0001_nor_cyo2/CYMUXG2_148 )
  );
  defparam \Mcompar__n0001_nor_cyo2/CYSELG .LOC = "SLICE_X20Y4";
  X_BUF \Mcompar__n0001_nor_cyo2/CYSELG  (
    .I(\Mcompar__n0001_norlut2/O ),
    .O(\Mcompar__n0001_nor_cyo2/CYSELG_151 )
  );
  defparam Mcompar__n0001_norlut4.INIT = 16'h0001;
  defparam Mcompar__n0001_norlut4.LOC = "SLICE_X20Y5";
  X_LUT4 Mcompar__n0001_norlut4 (
    .ADR0(i[22]),
    .ADR1(i[19]),
    .ADR2(i[20]),
    .ADR3(i[21]),
    .O(\Mcompar__n0001_norlut4/O )
  );
  defparam \Mcompar__n0001_nor_cyo4/LOGIC_ONE .LOC = "SLICE_X20Y5";
  X_ONE \Mcompar__n0001_nor_cyo4/LOGIC_ONE  (
    .O(\Mcompar__n0001_nor_cyo4/LOGIC_ONE_158 )
  );
  defparam \Mcompar__n0001_nor_cyo4/CYMUXF2 .LOC = "SLICE_X20Y5";
  X_MUX2 \Mcompar__n0001_nor_cyo4/CYMUXF2  (
    .IA(\Mcompar__n0001_nor_cyo4/LOGIC_ONE_158 ),
    .IB(\Mcompar__n0001_nor_cyo4/LOGIC_ONE_158 ),
    .SEL(\Mcompar__n0001_nor_cyo4/CYSELF_152 ),
    .O(\Mcompar__n0001_nor_cyo4/CYMUXF2_157 )
  );
  defparam \Mcompar__n0001_nor_cyo4/CYSELF .LOC = "SLICE_X20Y5";
  X_BUF \Mcompar__n0001_nor_cyo4/CYSELF  (
    .I(\Mcompar__n0001_norlut3/O ),
    .O(\Mcompar__n0001_nor_cyo4/CYSELF_152 )
  );
  defparam \Mcompar__n0001_nor_cyo4/FASTCARRY .LOC = "SLICE_X20Y5";
  X_BUF \Mcompar__n0001_nor_cyo4/FASTCARRY  (
    .I(\Mcompar__n0001_nor_cyo2/CYMUXFAST_145 ),
    .O(\Mcompar__n0001_nor_cyo4/FASTCARRY_155 )
  );
  defparam \Mcompar__n0001_nor_cyo4/CYAND .LOC = "SLICE_X20Y5";
  X_AND2 \Mcompar__n0001_nor_cyo4/CYAND  (
    .I0(\Mcompar__n0001_nor_cyo4/CYSELG_159 ),
    .I1(\Mcompar__n0001_nor_cyo4/CYSELF_152 ),
    .O(\Mcompar__n0001_nor_cyo4/CYAND_154 )
  );
  defparam \Mcompar__n0001_nor_cyo4/CYMUXFAST .LOC = "SLICE_X20Y5";
  X_MUX2 \Mcompar__n0001_nor_cyo4/CYMUXFAST  (
    .IA(\Mcompar__n0001_nor_cyo4/CYMUXG2_156 ),
    .IB(\Mcompar__n0001_nor_cyo4/FASTCARRY_155 ),
    .SEL(\Mcompar__n0001_nor_cyo4/CYAND_154 ),
    .O(\Mcompar__n0001_nor_cyo4/CYMUXFAST_153 )
  );
  defparam \Mcompar__n0001_nor_cyo4/CYMUXG2 .LOC = "SLICE_X20Y5";
  X_MUX2 \Mcompar__n0001_nor_cyo4/CYMUXG2  (
    .IA(\Mcompar__n0001_nor_cyo4/LOGIC_ONE_158 ),
    .IB(\Mcompar__n0001_nor_cyo4/CYMUXF2_157 ),
    .SEL(\Mcompar__n0001_nor_cyo4/CYSELG_159 ),
    .O(\Mcompar__n0001_nor_cyo4/CYMUXG2_156 )
  );
  defparam \Mcompar__n0001_nor_cyo4/CYSELG .LOC = "SLICE_X20Y5";
  X_BUF \Mcompar__n0001_nor_cyo4/CYSELG  (
    .I(\Mcompar__n0001_norlut4/O ),
    .O(\Mcompar__n0001_nor_cyo4/CYSELG_159 )
  );
  defparam Mcompar__n0001_norlut6.INIT = 16'h0001;
  defparam Mcompar__n0001_norlut6.LOC = "SLICE_X20Y6";
  X_LUT4 Mcompar__n0001_norlut6 (
    .ADR0(i[28]),
    .ADR1(i[27]),
    .ADR2(i[30]),
    .ADR3(i[29]),
    .O(\Mcompar__n0001_norlut6/O )
  );
  defparam \Mcompar__n0001_nor_cyo6/LOGIC_ONE .LOC = "SLICE_X20Y6";
  X_ONE \Mcompar__n0001_nor_cyo6/LOGIC_ONE  (
    .O(\Mcompar__n0001_nor_cyo6/LOGIC_ONE_166 )
  );
  defparam \Mcompar__n0001_nor_cyo6/CYMUXF2 .LOC = "SLICE_X20Y6";
  X_MUX2 \Mcompar__n0001_nor_cyo6/CYMUXF2  (
    .IA(\Mcompar__n0001_nor_cyo6/LOGIC_ONE_166 ),
    .IB(\Mcompar__n0001_nor_cyo6/LOGIC_ONE_166 ),
    .SEL(\Mcompar__n0001_nor_cyo6/CYSELF_160 ),
    .O(\Mcompar__n0001_nor_cyo6/CYMUXF2_165 )
  );
  defparam \Mcompar__n0001_nor_cyo6/CYSELF .LOC = "SLICE_X20Y6";
  X_BUF \Mcompar__n0001_nor_cyo6/CYSELF  (
    .I(\Mcompar__n0001_norlut5/O ),
    .O(\Mcompar__n0001_nor_cyo6/CYSELF_160 )
  );
  defparam \Mcompar__n0001_nor_cyo6/FASTCARRY .LOC = "SLICE_X20Y6";
  X_BUF \Mcompar__n0001_nor_cyo6/FASTCARRY  (
    .I(\Mcompar__n0001_nor_cyo4/CYMUXFAST_153 ),
    .O(\Mcompar__n0001_nor_cyo6/FASTCARRY_163 )
  );
  defparam \Mcompar__n0001_nor_cyo6/CYAND .LOC = "SLICE_X20Y6";
  X_AND2 \Mcompar__n0001_nor_cyo6/CYAND  (
    .I0(\Mcompar__n0001_nor_cyo6/CYSELG_167 ),
    .I1(\Mcompar__n0001_nor_cyo6/CYSELF_160 ),
    .O(\Mcompar__n0001_nor_cyo6/CYAND_162 )
  );
  defparam \Mcompar__n0001_nor_cyo6/CYMUXFAST .LOC = "SLICE_X20Y6";
  X_MUX2 \Mcompar__n0001_nor_cyo6/CYMUXFAST  (
    .IA(\Mcompar__n0001_nor_cyo6/CYMUXG2_164 ),
    .IB(\Mcompar__n0001_nor_cyo6/FASTCARRY_163 ),
    .SEL(\Mcompar__n0001_nor_cyo6/CYAND_162 ),
    .O(\Mcompar__n0001_nor_cyo6/CYMUXFAST_161 )
  );
  defparam \Mcompar__n0001_nor_cyo6/CYMUXG2 .LOC = "SLICE_X20Y6";
  X_MUX2 \Mcompar__n0001_nor_cyo6/CYMUXG2  (
    .IA(\Mcompar__n0001_nor_cyo6/LOGIC_ONE_166 ),
    .IB(\Mcompar__n0001_nor_cyo6/CYMUXF2_165 ),
    .SEL(\Mcompar__n0001_nor_cyo6/CYSELG_167 ),
    .O(\Mcompar__n0001_nor_cyo6/CYMUXG2_164 )
  );
  defparam \Mcompar__n0001_nor_cyo6/CYSELG .LOC = "SLICE_X20Y6";
  X_BUF \Mcompar__n0001_nor_cyo6/CYSELG  (
    .I(\Mcompar__n0001_norlut6/O ),
    .O(\Mcompar__n0001_nor_cyo6/CYSELG_167 )
  );
  defparam \Mcompar__n0001_ge_cyo/LOGIC_ZERO .LOC = "SLICE_X20Y7";
  X_ZERO \Mcompar__n0001_ge_cyo/LOGIC_ZERO  (
    .O(\Mcompar__n0001_ge_cyo/LOGIC_ZERO_168 )
  );
  defparam \Mcompar__n0001_ge_cyo/CYMUXF .LOC = "SLICE_X20Y7";
  X_MUX2 \Mcompar__n0001_ge_cyo/CYMUXF  (
    .IA(\Mcompar__n0001_ge_cyo/LOGIC_ZERO_168 ),
    .IB(\Mcompar__n0001_ge_cyo/CYINIT_169 ),
    .SEL(\Mcompar__n0001_ge_cyo/CYSELF_170 ),
    .O(Mcompar__n0001_ge_cyo)
  );
  defparam \Mcompar__n0001_ge_cyo/CYINIT .LOC = "SLICE_X20Y7";
  X_BUF \Mcompar__n0001_ge_cyo/CYINIT  (
    .I(\Mcompar__n0001_nor_cyo6/CYMUXFAST_161 ),
    .O(\Mcompar__n0001_ge_cyo/CYINIT_169 )
  );
  defparam \Mcompar__n0001_ge_cyo/CYSELF .LOC = "SLICE_X20Y7";
  X_BUF \Mcompar__n0001_ge_cyo/CYSELF  (
    .I(N14),
    .O(\Mcompar__n0001_ge_cyo/CYSELF_170 )
  );
  defparam Mcompar__n0001_gelut1_INV_0.INIT = 16'h5555;
  defparam Mcompar__n0001_gelut1_INV_0.LOC = "SLICE_X20Y7";
  X_LUT4 Mcompar__n0001_gelut1_INV_0 (
    .ADR0(i[31]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N14)
  );
  defparam \DINR<0>/IFF/ICEINV .LOC = "PAD123";
  X_INV \DINR<0>/IFF/ICEINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\DINR<0>/IFF/ICEINVNOT )
  );
  defparam \DINR<0>/IFF/ICLK1INV .LOC = "PAD123";
  X_BUF \DINR<0>/IFF/ICLK1INV  (
    .I(CLKR_BUFGP),
    .O(\DINR<0>/IFF/ICLK1INV_172 )
  );
  defparam \DINR<0>/IFF/IFFDMUX .LOC = "PAD123";
  X_BUF \DINR<0>/IFF/IFFDMUX  (
    .I(\DINR<0>/INBUF ),
    .O(\DINR<0>/IFF/IFFDMUX_171 )
  );
  defparam \DINR<0>/PAD .LOC = "PAD123";
  X_IPAD \DINR<0>/PAD  (
    .PAD(DINR[0])
  );
  defparam DINR_0_IBUF.LOC = "PAD123";
  X_BUF DINR_0_IBUF (
    .I(DINR[0]),
    .O(\DINR<0>/INBUF )
  );
  defparam tmpo_3.LOC = "PAD123";
  defparam tmpo_3.INIT = 1'b0;
  X_FF tmpo_3 (
    .I(\DINR<0>/IFF/IFFDMUX_171 ),
    .CE(\DINR<0>/IFF/ICEINVNOT ),
    .CLK(\DINR<0>/IFF/ICLK1INV_172 ),
    .SET(GND),
    .RST(GND),
    .O(tmpo[3])
  );
  defparam \DINR<1>/IFF/ICEINV .LOC = "PAD116";
  X_INV \DINR<1>/IFF/ICEINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\DINR<1>/IFF/ICEINVNOT )
  );
  defparam \DINR<1>/IFF/ICLK1INV .LOC = "PAD116";
  X_BUF \DINR<1>/IFF/ICLK1INV  (
    .I(CLKR_BUFGP),
    .O(\DINR<1>/IFF/ICLK1INV_174 )
  );
  defparam \DINR<1>/IFF/IFFDMUX .LOC = "PAD116";
  X_BUF \DINR<1>/IFF/IFFDMUX  (
    .I(\DINR<1>/INBUF ),
    .O(\DINR<1>/IFF/IFFDMUX_173 )
  );
  defparam \DINR<1>/PAD .LOC = "PAD116";
  X_IPAD \DINR<1>/PAD  (
    .PAD(DINR[1])
  );
  defparam DINR_1_IBUF.LOC = "PAD116";
  X_BUF DINR_1_IBUF (
    .I(DINR[1]),
    .O(\DINR<1>/INBUF )
  );
  defparam tmpo_0.LOC = "PAD116";
  defparam tmpo_0.INIT = 1'b0;
  X_FF tmpo_0 (
    .I(\DINR<1>/IFF/IFFDMUX_173 ),
    .CE(\DINR<1>/IFF/ICEINVNOT ),
    .CLK(\DINR<1>/IFF/ICLK1INV_174 ),
    .SET(GND),
    .RST(GND),
    .O(tmpo[0])
  );
  defparam \DINR<2>/IFF/ICEINV .LOC = "PAD122";
  X_INV \DINR<2>/IFF/ICEINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\DINR<2>/IFF/ICEINVNOT )
  );
  defparam \DINR<2>/IFF/ICLK1INV .LOC = "PAD122";
  X_BUF \DINR<2>/IFF/ICLK1INV  (
    .I(CLKR_BUFGP),
    .O(\DINR<2>/IFF/ICLK1INV_176 )
  );
  defparam \DINR<2>/IFF/IFFDMUX .LOC = "PAD122";
  X_BUF \DINR<2>/IFF/IFFDMUX  (
    .I(\DINR<2>/INBUF ),
    .O(\DINR<2>/IFF/IFFDMUX_175 )
  );
  defparam \DINR<2>/PAD .LOC = "PAD122";
  X_IPAD \DINR<2>/PAD  (
    .PAD(DINR[2])
  );
  defparam DINR_2_IBUF.LOC = "PAD122";
  X_BUF DINR_2_IBUF (
    .I(DINR[2]),
    .O(\DINR<2>/INBUF )
  );
  defparam tmpo_1.LOC = "PAD122";
  defparam tmpo_1.INIT = 1'b0;
  X_FF tmpo_1 (
    .I(\DINR<2>/IFF/IFFDMUX_175 ),
    .CE(\DINR<2>/IFF/ICEINVNOT ),
    .CLK(\DINR<2>/IFF/ICLK1INV_176 ),
    .SET(GND),
    .RST(GND),
    .O(tmpo[1])
  );
  defparam \DINR<3>/IFF/ICEINV .LOC = "PAD166";
  X_INV \DINR<3>/IFF/ICEINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\DINR<3>/IFF/ICEINVNOT )
  );
  defparam \DINR<3>/IFF/ICLK1INV .LOC = "PAD166";
  X_BUF \DINR<3>/IFF/ICLK1INV  (
    .I(CLKR_BUFGP),
    .O(\DINR<3>/IFF/ICLK1INV_178 )
  );
  defparam \DINR<3>/IFF/IFFDMUX .LOC = "PAD166";
  X_BUF \DINR<3>/IFF/IFFDMUX  (
    .I(\DINR<3>/INBUF ),
    .O(\DINR<3>/IFF/IFFDMUX_177 )
  );
  defparam \DINR<3>/PAD .LOC = "PAD166";
  X_IPAD \DINR<3>/PAD  (
    .PAD(DINR[3])
  );
  defparam DINR_3_IBUF.LOC = "PAD166";
  X_BUF DINR_3_IBUF (
    .I(DINR[3]),
    .O(\DINR<3>/INBUF )
  );
  defparam tmpo_2.LOC = "PAD166";
  defparam tmpo_2.INIT = 1'b0;
  X_FF tmpo_2 (
    .I(\DINR<3>/IFF/IFFDMUX_177 ),
    .CE(\DINR<3>/IFF/ICEINVNOT ),
    .CLK(\DINR<3>/IFF/ICLK1INV_178 ),
    .SET(GND),
    .RST(GND),
    .O(tmpo[2])
  );
  defparam \DESR<0>/PAD .LOC = "PAD121";
  X_IPAD \DESR<0>/PAD  (
    .PAD(DESR[0])
  );
  defparam DESR_0_IBUF.LOC = "PAD121";
  X_BUF DESR_0_IBUF (
    .I(DESR[0]),
    .O(\DESR<0>/INBUF )
  );
  defparam \DESR<0>/IFF/IMUX .LOC = "PAD121";
  X_BUF \DESR<0>/IFF/IMUX  (
    .I(\DESR<0>/INBUF ),
    .O(DESR_0_IBUF_0)
  );
  defparam \DESR<1>/PAD .LOC = "PAD124";
  X_IPAD \DESR<1>/PAD  (
    .PAD(DESR[1])
  );
  defparam DESR_1_IBUF.LOC = "PAD124";
  X_BUF DESR_1_IBUF (
    .I(DESR[1]),
    .O(\DESR<1>/INBUF )
  );
  defparam \DESR<1>/IFF/IMUX .LOC = "PAD124";
  X_BUF \DESR<1>/IFF/IMUX  (
    .I(\DESR<1>/INBUF ),
    .O(DESR_1_IBUF_1)
  );
  defparam \DESR<2>/PAD .LOC = "PAD120";
  X_IPAD \DESR<2>/PAD  (
    .PAD(DESR[2])
  );
  defparam DESR_2_IBUF.LOC = "PAD120";
  X_BUF DESR_2_IBUF (
    .I(DESR[2]),
    .O(\DESR<2>/INBUF )
  );
  defparam \DESR<2>/IFF/IMUX .LOC = "PAD120";
  X_BUF \DESR<2>/IFF/IMUX  (
    .I(\DESR<2>/INBUF ),
    .O(DESR_2_IBUF_2)
  );
  defparam \i<16>/LOGIC_ZERO .LOC = "SLICE_X21Y8";
  X_ZERO \i<16>/LOGIC_ZERO  (
    .O(\i<16>/LOGIC_ZERO_190 )
  );
  defparam \i<16>/DXMUX .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/DXMUX  (
    .I(\i<16>/XORF_180 ),
    .O(\i<16>/DXMUX_179 )
  );
  defparam \i<16>/XORF .LOC = "SLICE_X21Y8";
  X_XOR2 \i<16>/XORF  (
    .I0(\i<16>/CYINIT_181 ),
    .I1(\i<16>/F ),
    .O(\i<16>/XORF_180 )
  );
  defparam \i<16>/CYMUXF .LOC = "SLICE_X21Y8";
  X_MUX2 \i<16>/CYMUXF  (
    .IA(\i<16>/LOGIC_ZERO_190 ),
    .IB(\i<16>/CYINIT_181 ),
    .SEL(\i<16>/CYSELF_184 ),
    .O(\rightshifter_Result<16>_cyo )
  );
  defparam \i<16>/CYMUXF2 .LOC = "SLICE_X21Y8";
  X_MUX2 \i<16>/CYMUXF2  (
    .IA(\i<16>/LOGIC_ZERO_190 ),
    .IB(\i<16>/LOGIC_ZERO_190 ),
    .SEL(\i<16>/CYSELF_184 ),
    .O(\i<16>/CYMUXF2_189 )
  );
  defparam \i<16>/CYINIT .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/CYINIT  (
    .I(\rightshifter_Result<15>_cyo ),
    .O(\i<16>/CYINIT_181 )
  );
  defparam \i<16>/CYSELF .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/CYSELF  (
    .I(\i<16>/F ),
    .O(\i<16>/CYSELF_184 )
  );
  defparam \i<16>/DYMUX .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/DYMUX  (
    .I(\i<16>/XORG_183 ),
    .O(\i<16>/DYMUX_182 )
  );
  defparam \i<16>/XORG .LOC = "SLICE_X21Y8";
  X_XOR2 \i<16>/XORG  (
    .I0(\rightshifter_Result<16>_cyo ),
    .I1(\i<16>/G ),
    .O(\i<16>/XORG_183 )
  );
  defparam \i<16>/COUTUSED .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/COUTUSED  (
    .I(\i<16>/CYMUXFAST_185 ),
    .O(\rightshifter_Result<17>_cyo )
  );
  defparam \i<16>/FASTCARRY .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/FASTCARRY  (
    .I(\rightshifter_Result<15>_cyo ),
    .O(\i<16>/FASTCARRY_187 )
  );
  defparam \i<16>/CYAND .LOC = "SLICE_X21Y8";
  X_AND2 \i<16>/CYAND  (
    .I0(\i<16>/CYSELG_191 ),
    .I1(\i<16>/CYSELF_184 ),
    .O(\i<16>/CYAND_186 )
  );
  defparam \i<16>/CYMUXFAST .LOC = "SLICE_X21Y8";
  X_MUX2 \i<16>/CYMUXFAST  (
    .IA(\i<16>/CYMUXG2_188 ),
    .IB(\i<16>/FASTCARRY_187 ),
    .SEL(\i<16>/CYAND_186 ),
    .O(\i<16>/CYMUXFAST_185 )
  );
  defparam \i<16>/CYMUXG2 .LOC = "SLICE_X21Y8";
  X_MUX2 \i<16>/CYMUXG2  (
    .IA(\i<16>/LOGIC_ZERO_190 ),
    .IB(\i<16>/CYMUXF2_189 ),
    .SEL(\i<16>/CYSELG_191 ),
    .O(\i<16>/CYMUXG2_188 )
  );
  defparam \i<16>/CYSELG .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/CYSELG  (
    .I(\i<16>/G ),
    .O(\i<16>/CYSELG_191 )
  );
  defparam \i<16>/SRINV .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<16>/SRINV_192 )
  );
  defparam \i<16>/CLKINV .LOC = "SLICE_X21Y8";
  X_BUF \i<16>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<16>/CLKINV_193 )
  );
  defparam \i<18>/LOGIC_ZERO .LOC = "SLICE_X21Y9";
  X_ZERO \i<18>/LOGIC_ZERO  (
    .O(\i<18>/LOGIC_ZERO_205 )
  );
  defparam \i<18>/DXMUX .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/DXMUX  (
    .I(\i<18>/XORF_195 ),
    .O(\i<18>/DXMUX_194 )
  );
  defparam \i<18>/XORF .LOC = "SLICE_X21Y9";
  X_XOR2 \i<18>/XORF  (
    .I0(\i<18>/CYINIT_196 ),
    .I1(\i<18>/F ),
    .O(\i<18>/XORF_195 )
  );
  defparam \i<18>/CYMUXF .LOC = "SLICE_X21Y9";
  X_MUX2 \i<18>/CYMUXF  (
    .IA(\i<18>/LOGIC_ZERO_205 ),
    .IB(\i<18>/CYINIT_196 ),
    .SEL(\i<18>/CYSELF_199 ),
    .O(\rightshifter_Result<18>_cyo )
  );
  defparam \i<18>/CYMUXF2 .LOC = "SLICE_X21Y9";
  X_MUX2 \i<18>/CYMUXF2  (
    .IA(\i<18>/LOGIC_ZERO_205 ),
    .IB(\i<18>/LOGIC_ZERO_205 ),
    .SEL(\i<18>/CYSELF_199 ),
    .O(\i<18>/CYMUXF2_204 )
  );
  defparam \i<18>/CYINIT .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/CYINIT  (
    .I(\rightshifter_Result<17>_cyo ),
    .O(\i<18>/CYINIT_196 )
  );
  defparam \i<18>/CYSELF .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/CYSELF  (
    .I(\i<18>/F ),
    .O(\i<18>/CYSELF_199 )
  );
  defparam \i<18>/DYMUX .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/DYMUX  (
    .I(\i<18>/XORG_198 ),
    .O(\i<18>/DYMUX_197 )
  );
  defparam \i<18>/XORG .LOC = "SLICE_X21Y9";
  X_XOR2 \i<18>/XORG  (
    .I0(\rightshifter_Result<18>_cyo ),
    .I1(\i<18>/G ),
    .O(\i<18>/XORG_198 )
  );
  defparam \i<18>/COUTUSED .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/COUTUSED  (
    .I(\i<18>/CYMUXFAST_200 ),
    .O(\rightshifter_Result<19>_cyo )
  );
  defparam \i<18>/FASTCARRY .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/FASTCARRY  (
    .I(\rightshifter_Result<17>_cyo ),
    .O(\i<18>/FASTCARRY_202 )
  );
  defparam \i<18>/CYAND .LOC = "SLICE_X21Y9";
  X_AND2 \i<18>/CYAND  (
    .I0(\i<18>/CYSELG_206 ),
    .I1(\i<18>/CYSELF_199 ),
    .O(\i<18>/CYAND_201 )
  );
  defparam \i<18>/CYMUXFAST .LOC = "SLICE_X21Y9";
  X_MUX2 \i<18>/CYMUXFAST  (
    .IA(\i<18>/CYMUXG2_203 ),
    .IB(\i<18>/FASTCARRY_202 ),
    .SEL(\i<18>/CYAND_201 ),
    .O(\i<18>/CYMUXFAST_200 )
  );
  defparam \i<18>/CYMUXG2 .LOC = "SLICE_X21Y9";
  X_MUX2 \i<18>/CYMUXG2  (
    .IA(\i<18>/LOGIC_ZERO_205 ),
    .IB(\i<18>/CYMUXF2_204 ),
    .SEL(\i<18>/CYSELG_206 ),
    .O(\i<18>/CYMUXG2_203 )
  );
  defparam \i<18>/CYSELG .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/CYSELG  (
    .I(\i<18>/G ),
    .O(\i<18>/CYSELG_206 )
  );
  defparam \i<18>/SRINV .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<18>/SRINV_207 )
  );
  defparam \i<18>/CLKINV .LOC = "SLICE_X21Y9";
  X_BUF \i<18>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<18>/CLKINV_208 )
  );
  defparam \i<20>/LOGIC_ZERO .LOC = "SLICE_X21Y10";
  X_ZERO \i<20>/LOGIC_ZERO  (
    .O(\i<20>/LOGIC_ZERO_220 )
  );
  defparam \i<20>/DXMUX .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/DXMUX  (
    .I(\i<20>/XORF_210 ),
    .O(\i<20>/DXMUX_209 )
  );
  defparam \i<20>/XORF .LOC = "SLICE_X21Y10";
  X_XOR2 \i<20>/XORF  (
    .I0(\i<20>/CYINIT_211 ),
    .I1(\i<20>/F ),
    .O(\i<20>/XORF_210 )
  );
  defparam \i<20>/CYMUXF .LOC = "SLICE_X21Y10";
  X_MUX2 \i<20>/CYMUXF  (
    .IA(\i<20>/LOGIC_ZERO_220 ),
    .IB(\i<20>/CYINIT_211 ),
    .SEL(\i<20>/CYSELF_214 ),
    .O(\rightshifter_Result<20>_cyo )
  );
  defparam \i<20>/CYMUXF2 .LOC = "SLICE_X21Y10";
  X_MUX2 \i<20>/CYMUXF2  (
    .IA(\i<20>/LOGIC_ZERO_220 ),
    .IB(\i<20>/LOGIC_ZERO_220 ),
    .SEL(\i<20>/CYSELF_214 ),
    .O(\i<20>/CYMUXF2_219 )
  );
  defparam \i<20>/CYINIT .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/CYINIT  (
    .I(\rightshifter_Result<19>_cyo ),
    .O(\i<20>/CYINIT_211 )
  );
  defparam \i<20>/CYSELF .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/CYSELF  (
    .I(\i<20>/F ),
    .O(\i<20>/CYSELF_214 )
  );
  defparam \i<20>/DYMUX .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/DYMUX  (
    .I(\i<20>/XORG_213 ),
    .O(\i<20>/DYMUX_212 )
  );
  defparam \i<20>/XORG .LOC = "SLICE_X21Y10";
  X_XOR2 \i<20>/XORG  (
    .I0(\rightshifter_Result<20>_cyo ),
    .I1(\i<20>/G ),
    .O(\i<20>/XORG_213 )
  );
  defparam \i<20>/COUTUSED .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/COUTUSED  (
    .I(\i<20>/CYMUXFAST_215 ),
    .O(\rightshifter_Result<21>_cyo )
  );
  defparam \i<20>/FASTCARRY .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/FASTCARRY  (
    .I(\rightshifter_Result<19>_cyo ),
    .O(\i<20>/FASTCARRY_217 )
  );
  defparam \i<20>/CYAND .LOC = "SLICE_X21Y10";
  X_AND2 \i<20>/CYAND  (
    .I0(\i<20>/CYSELG_221 ),
    .I1(\i<20>/CYSELF_214 ),
    .O(\i<20>/CYAND_216 )
  );
  defparam \i<20>/CYMUXFAST .LOC = "SLICE_X21Y10";
  X_MUX2 \i<20>/CYMUXFAST  (
    .IA(\i<20>/CYMUXG2_218 ),
    .IB(\i<20>/FASTCARRY_217 ),
    .SEL(\i<20>/CYAND_216 ),
    .O(\i<20>/CYMUXFAST_215 )
  );
  defparam \i<20>/CYMUXG2 .LOC = "SLICE_X21Y10";
  X_MUX2 \i<20>/CYMUXG2  (
    .IA(\i<20>/LOGIC_ZERO_220 ),
    .IB(\i<20>/CYMUXF2_219 ),
    .SEL(\i<20>/CYSELG_221 ),
    .O(\i<20>/CYMUXG2_218 )
  );
  defparam \i<20>/CYSELG .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/CYSELG  (
    .I(\i<20>/G ),
    .O(\i<20>/CYSELG_221 )
  );
  defparam \i<20>/SRINV .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<20>/SRINV_222 )
  );
  defparam \i<20>/CLKINV .LOC = "SLICE_X21Y10";
  X_BUF \i<20>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<20>/CLKINV_223 )
  );
  defparam \i<22>/LOGIC_ZERO .LOC = "SLICE_X21Y11";
  X_ZERO \i<22>/LOGIC_ZERO  (
    .O(\i<22>/LOGIC_ZERO_235 )
  );
  defparam \i<22>/DXMUX .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/DXMUX  (
    .I(\i<22>/XORF_225 ),
    .O(\i<22>/DXMUX_224 )
  );
  defparam \i<22>/XORF .LOC = "SLICE_X21Y11";
  X_XOR2 \i<22>/XORF  (
    .I0(\i<22>/CYINIT_226 ),
    .I1(\i<22>/F ),
    .O(\i<22>/XORF_225 )
  );
  defparam \i<22>/CYMUXF .LOC = "SLICE_X21Y11";
  X_MUX2 \i<22>/CYMUXF  (
    .IA(\i<22>/LOGIC_ZERO_235 ),
    .IB(\i<22>/CYINIT_226 ),
    .SEL(\i<22>/CYSELF_229 ),
    .O(\rightshifter_Result<22>_cyo )
  );
  defparam \i<22>/CYMUXF2 .LOC = "SLICE_X21Y11";
  X_MUX2 \i<22>/CYMUXF2  (
    .IA(\i<22>/LOGIC_ZERO_235 ),
    .IB(\i<22>/LOGIC_ZERO_235 ),
    .SEL(\i<22>/CYSELF_229 ),
    .O(\i<22>/CYMUXF2_234 )
  );
  defparam \i<22>/CYINIT .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/CYINIT  (
    .I(\rightshifter_Result<21>_cyo ),
    .O(\i<22>/CYINIT_226 )
  );
  defparam \i<22>/CYSELF .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/CYSELF  (
    .I(\i<22>/F ),
    .O(\i<22>/CYSELF_229 )
  );
  defparam \i<22>/DYMUX .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/DYMUX  (
    .I(\i<22>/XORG_228 ),
    .O(\i<22>/DYMUX_227 )
  );
  defparam \i<22>/XORG .LOC = "SLICE_X21Y11";
  X_XOR2 \i<22>/XORG  (
    .I0(\rightshifter_Result<22>_cyo ),
    .I1(\i<22>/G ),
    .O(\i<22>/XORG_228 )
  );
  defparam \i<22>/COUTUSED .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/COUTUSED  (
    .I(\i<22>/CYMUXFAST_230 ),
    .O(\rightshifter_Result<23>_cyo )
  );
  defparam \i<22>/FASTCARRY .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/FASTCARRY  (
    .I(\rightshifter_Result<21>_cyo ),
    .O(\i<22>/FASTCARRY_232 )
  );
  defparam \i<22>/CYAND .LOC = "SLICE_X21Y11";
  X_AND2 \i<22>/CYAND  (
    .I0(\i<22>/CYSELG_236 ),
    .I1(\i<22>/CYSELF_229 ),
    .O(\i<22>/CYAND_231 )
  );
  defparam \i<22>/CYMUXFAST .LOC = "SLICE_X21Y11";
  X_MUX2 \i<22>/CYMUXFAST  (
    .IA(\i<22>/CYMUXG2_233 ),
    .IB(\i<22>/FASTCARRY_232 ),
    .SEL(\i<22>/CYAND_231 ),
    .O(\i<22>/CYMUXFAST_230 )
  );
  defparam \i<22>/CYMUXG2 .LOC = "SLICE_X21Y11";
  X_MUX2 \i<22>/CYMUXG2  (
    .IA(\i<22>/LOGIC_ZERO_235 ),
    .IB(\i<22>/CYMUXF2_234 ),
    .SEL(\i<22>/CYSELG_236 ),
    .O(\i<22>/CYMUXG2_233 )
  );
  defparam \i<22>/CYSELG .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/CYSELG  (
    .I(\i<22>/G ),
    .O(\i<22>/CYSELG_236 )
  );
  defparam \i<22>/SRINV .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<22>/SRINV_237 )
  );
  defparam \i<22>/CLKINV .LOC = "SLICE_X21Y11";
  X_BUF \i<22>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<22>/CLKINV_238 )
  );
  defparam \i<24>/LOGIC_ZERO .LOC = "SLICE_X21Y12";
  X_ZERO \i<24>/LOGIC_ZERO  (
    .O(\i<24>/LOGIC_ZERO_250 )
  );
  defparam \i<24>/DXMUX .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/DXMUX  (
    .I(\i<24>/XORF_240 ),
    .O(\i<24>/DXMUX_239 )
  );
  defparam \i<24>/XORF .LOC = "SLICE_X21Y12";
  X_XOR2 \i<24>/XORF  (
    .I0(\i<24>/CYINIT_241 ),
    .I1(\i<24>/F ),
    .O(\i<24>/XORF_240 )
  );
  defparam \i<24>/CYMUXF .LOC = "SLICE_X21Y12";
  X_MUX2 \i<24>/CYMUXF  (
    .IA(\i<24>/LOGIC_ZERO_250 ),
    .IB(\i<24>/CYINIT_241 ),
    .SEL(\i<24>/CYSELF_244 ),
    .O(\rightshifter_Result<24>_cyo )
  );
  defparam \i<24>/CYMUXF2 .LOC = "SLICE_X21Y12";
  X_MUX2 \i<24>/CYMUXF2  (
    .IA(\i<24>/LOGIC_ZERO_250 ),
    .IB(\i<24>/LOGIC_ZERO_250 ),
    .SEL(\i<24>/CYSELF_244 ),
    .O(\i<24>/CYMUXF2_249 )
  );
  defparam \i<24>/CYINIT .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/CYINIT  (
    .I(\rightshifter_Result<23>_cyo ),
    .O(\i<24>/CYINIT_241 )
  );
  defparam \i<24>/CYSELF .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/CYSELF  (
    .I(\i<24>/F ),
    .O(\i<24>/CYSELF_244 )
  );
  defparam \i<24>/DYMUX .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/DYMUX  (
    .I(\i<24>/XORG_243 ),
    .O(\i<24>/DYMUX_242 )
  );
  defparam \i<24>/XORG .LOC = "SLICE_X21Y12";
  X_XOR2 \i<24>/XORG  (
    .I0(\rightshifter_Result<24>_cyo ),
    .I1(\i<24>/G ),
    .O(\i<24>/XORG_243 )
  );
  defparam \i<24>/COUTUSED .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/COUTUSED  (
    .I(\i<24>/CYMUXFAST_245 ),
    .O(\rightshifter_Result<25>_cyo )
  );
  defparam \i<24>/FASTCARRY .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/FASTCARRY  (
    .I(\rightshifter_Result<23>_cyo ),
    .O(\i<24>/FASTCARRY_247 )
  );
  defparam \i<24>/CYAND .LOC = "SLICE_X21Y12";
  X_AND2 \i<24>/CYAND  (
    .I0(\i<24>/CYSELG_251 ),
    .I1(\i<24>/CYSELF_244 ),
    .O(\i<24>/CYAND_246 )
  );
  defparam \i<24>/CYMUXFAST .LOC = "SLICE_X21Y12";
  X_MUX2 \i<24>/CYMUXFAST  (
    .IA(\i<24>/CYMUXG2_248 ),
    .IB(\i<24>/FASTCARRY_247 ),
    .SEL(\i<24>/CYAND_246 ),
    .O(\i<24>/CYMUXFAST_245 )
  );
  defparam \i<24>/CYMUXG2 .LOC = "SLICE_X21Y12";
  X_MUX2 \i<24>/CYMUXG2  (
    .IA(\i<24>/LOGIC_ZERO_250 ),
    .IB(\i<24>/CYMUXF2_249 ),
    .SEL(\i<24>/CYSELG_251 ),
    .O(\i<24>/CYMUXG2_248 )
  );
  defparam \i<24>/CYSELG .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/CYSELG  (
    .I(\i<24>/G ),
    .O(\i<24>/CYSELG_251 )
  );
  defparam \i<24>/SRINV .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<24>/SRINV_252 )
  );
  defparam \i<24>/CLKINV .LOC = "SLICE_X21Y12";
  X_BUF \i<24>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<24>/CLKINV_253 )
  );
  defparam \i<26>/LOGIC_ZERO .LOC = "SLICE_X21Y13";
  X_ZERO \i<26>/LOGIC_ZERO  (
    .O(\i<26>/LOGIC_ZERO_265 )
  );
  defparam \i<26>/DXMUX .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/DXMUX  (
    .I(\i<26>/XORF_255 ),
    .O(\i<26>/DXMUX_254 )
  );
  defparam \i<26>/XORF .LOC = "SLICE_X21Y13";
  X_XOR2 \i<26>/XORF  (
    .I0(\i<26>/CYINIT_256 ),
    .I1(\i<26>/F ),
    .O(\i<26>/XORF_255 )
  );
  defparam \i<26>/CYMUXF .LOC = "SLICE_X21Y13";
  X_MUX2 \i<26>/CYMUXF  (
    .IA(\i<26>/LOGIC_ZERO_265 ),
    .IB(\i<26>/CYINIT_256 ),
    .SEL(\i<26>/CYSELF_259 ),
    .O(\rightshifter_Result<26>_cyo )
  );
  defparam \i<26>/CYMUXF2 .LOC = "SLICE_X21Y13";
  X_MUX2 \i<26>/CYMUXF2  (
    .IA(\i<26>/LOGIC_ZERO_265 ),
    .IB(\i<26>/LOGIC_ZERO_265 ),
    .SEL(\i<26>/CYSELF_259 ),
    .O(\i<26>/CYMUXF2_264 )
  );
  defparam \i<26>/CYINIT .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/CYINIT  (
    .I(\rightshifter_Result<25>_cyo ),
    .O(\i<26>/CYINIT_256 )
  );
  defparam \i<26>/CYSELF .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/CYSELF  (
    .I(\i<26>/F ),
    .O(\i<26>/CYSELF_259 )
  );
  defparam \i<26>/DYMUX .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/DYMUX  (
    .I(\i<26>/XORG_258 ),
    .O(\i<26>/DYMUX_257 )
  );
  defparam \i<26>/XORG .LOC = "SLICE_X21Y13";
  X_XOR2 \i<26>/XORG  (
    .I0(\rightshifter_Result<26>_cyo ),
    .I1(\i<26>/G ),
    .O(\i<26>/XORG_258 )
  );
  defparam \i<26>/COUTUSED .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/COUTUSED  (
    .I(\i<26>/CYMUXFAST_260 ),
    .O(\rightshifter_Result<27>_cyo )
  );
  defparam \i<26>/FASTCARRY .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/FASTCARRY  (
    .I(\rightshifter_Result<25>_cyo ),
    .O(\i<26>/FASTCARRY_262 )
  );
  defparam \i<26>/CYAND .LOC = "SLICE_X21Y13";
  X_AND2 \i<26>/CYAND  (
    .I0(\i<26>/CYSELG_266 ),
    .I1(\i<26>/CYSELF_259 ),
    .O(\i<26>/CYAND_261 )
  );
  defparam \i<26>/CYMUXFAST .LOC = "SLICE_X21Y13";
  X_MUX2 \i<26>/CYMUXFAST  (
    .IA(\i<26>/CYMUXG2_263 ),
    .IB(\i<26>/FASTCARRY_262 ),
    .SEL(\i<26>/CYAND_261 ),
    .O(\i<26>/CYMUXFAST_260 )
  );
  defparam \i<26>/CYMUXG2 .LOC = "SLICE_X21Y13";
  X_MUX2 \i<26>/CYMUXG2  (
    .IA(\i<26>/LOGIC_ZERO_265 ),
    .IB(\i<26>/CYMUXF2_264 ),
    .SEL(\i<26>/CYSELG_266 ),
    .O(\i<26>/CYMUXG2_263 )
  );
  defparam \i<26>/CYSELG .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/CYSELG  (
    .I(\i<26>/G ),
    .O(\i<26>/CYSELG_266 )
  );
  defparam \i<26>/SRINV .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<26>/SRINV_267 )
  );
  defparam \i<26>/CLKINV .LOC = "SLICE_X21Y13";
  X_BUF \i<26>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<26>/CLKINV_268 )
  );
  defparam \i<28>/LOGIC_ZERO .LOC = "SLICE_X21Y14";
  X_ZERO \i<28>/LOGIC_ZERO  (
    .O(\i<28>/LOGIC_ZERO_280 )
  );
  defparam \i<28>/DXMUX .LOC = "SLICE_X21Y14";
  X_BUF \i<28>/DXMUX  (
    .I(\i<28>/XORF_270 ),
    .O(\i<28>/DXMUX_269 )
  );
  defparam \i<28>/XORF .LOC = "SLICE_X21Y14";
  X_XOR2 \i<28>/XORF  (
    .I0(\i<28>/CYINIT_271 ),
    .I1(\i<28>/F ),
    .O(\i<28>/XORF_270 )
  );
  defparam \i<28>/CYMUXF .LOC = "SLICE_X21Y14";
  X_MUX2 \i<28>/CYMUXF  (
    .IA(\i<28>/LOGIC_ZERO_280 ),
    .IB(\i<28>/CYINIT_271 ),
    .SEL(\i<28>/CYSELF_274 ),
    .O(\rightshifter_Result<28>_cyo )
  );
  defparam \i<28>/CYMUXF2 .LOC = "SLICE_X21Y14";
  X_MUX2 \i<28>/CYMUXF2  (
    .IA(\i<28>/LOGIC_ZERO_280 ),
    .IB(\i<28>/LOGIC_ZERO_280 ),
    .SEL(\i<28>/CYSELF_274 ),
    .O(\i<28>/CYMUXF2_279 )
  );
  defparam \i<28>/CYINIT .LOC = "SLICE_X21Y14";
  X_BUF \i<28>/CYINIT  (
    .I(\rightshifter_Result<27>_cyo ),
    .O(\i<28>/CYINIT_271 )
  );
  defparam \i<28>/CYSELF .LOC = "SLICE_X21Y14";
  X_BUF \i<28>/CYSELF  (
    .I(\i<28>/F ),
    .O(\i<28>/CYSELF_274 )
  );
  defparam \i<28>/DYMUX .LOC = "SLICE_X21Y14";
  X_BUF \i<28>/DYMUX  (
    .I(\i<28>/XORG_273 ),
    .O(\i<28>/DYMUX_272 )
  );
  defparam \i<28>/XORG .LOC = "SLICE_X21Y14";
  X_XOR2 \i<28>/XORG  (
    .I0(\rightshifter_Result<28>_cyo ),
    .I1(\i<28>/G ),
    .O(\i<28>/XORG_273 )
  );
  defparam \i<28>/FASTCARRY .LOC = "SLICE_X21Y14";
  X_BUF \i<28>/FASTCARRY  (
    .I(\rightshifter_Result<27>_cyo ),
    .O(\i<28>/FASTCARRY_277 )
  );
  defparam \i<28>/CYAND .LOC = "SLICE_X21Y14";
  X_AND2 \i<28>/CYAND  (
    .I0(\i<28>/CYSELG_281 ),
    .I1(\i<28>/CYSELF_274 ),
    .O(\i<28>/CYAND_276 )
  );
  defparam \i<28>/CYMUXFAST .LOC = "SLICE_X21Y14";
  X_MUX2 \i<28>/CYMUXFAST  (
    .IA(\i<28>/CYMUXG2_278 ),
    .IB(\i<28>/FASTCARRY_277 ),
    .SEL(\i<28>/CYAND_276 ),
    .O(\i<28>/CYMUXFAST_275 )
  );
  defparam \i<28>/CYMUXG2 .LOC = "SLICE_X21Y14";
  X_MUX2 \i<28>/CYMUXG2  (
    .IA(\i<28>/LOGIC_ZERO_280 ),
    .IB(\i<28>/CYMUXF2_279 ),
    .SEL(\i<28>/CYSELG_281 ),
    .O(\i<28>/CYMUXG2_278 )
  );
  defparam \i<28>/CYSELG .LOC = "SLICE_X21Y14";
  X_BUF \i<28>/CYSELG  (
    .I(\i<28>/G ),
    .O(\i<28>/CYSELG_281 )
  );
  defparam \i<28>/SRINV .LOC = "SLICE_X21Y14";
  X_BUF \i<28>/SRINV  (
    .I(Mcompar__n0001_ge_cyo),
    .O(\i<28>/SRINV_282 )
  );
  defparam \i<28>/CLKINV .LOC = "SLICE_X21Y14";
  X_BUF \i<28>/CLKINV  (
    .I(CLKR_BUFGP),
    .O(\i<28>/CLKINV_283 )
  );
  defparam \CLKR/PAD .LOC = "PAD125";
  X_IPAD \CLKR/PAD  (
    .PAD(CLKR)
  );
  defparam \CLKR_BUFGP/IBUFG .LOC = "PAD125";
  X_BUF \CLKR_BUFGP/IBUFG  (
    .I(CLKR),
    .O(\CLKR/INBUF )
  );
  defparam \RIGHT<0>/PAD .LOC = "PAD115";
  X_OPAD \RIGHT<0>/PAD  (
    .PAD(RIGHT[0])
  );
  defparam RIGHT_0_OBUF.LOC = "PAD115";
  X_OBUF RIGHT_0_OBUF (
    .I(\RIGHT<0>/O ),
    .O(RIGHT[0])
  );
  defparam \RIGHT<1>/PAD .LOC = "PAD126";
  X_OPAD \RIGHT<1>/PAD  (
    .PAD(RIGHT[1])
  );
  defparam RIGHT_1_OBUF.LOC = "PAD126";
  X_OBUF RIGHT_1_OBUF (
    .I(\RIGHT<1>/O ),
    .O(RIGHT[1])
  );
  defparam \RIGHT<2>/PAD .LOC = "PAD165";
  X_OPAD \RIGHT<2>/PAD  (
    .PAD(RIGHT[2])
  );
  defparam RIGHT_2_OBUF.LOC = "PAD165";
  X_OBUF RIGHT_2_OBUF (
    .I(\RIGHT<2>/O ),
    .O(RIGHT[2])
  );
  defparam \RIGHT<3>/PAD .LOC = "PAD119";
  X_OPAD \RIGHT<3>/PAD  (
    .PAD(RIGHT[3])
  );
  defparam RIGHT_3_OBUF.LOC = "PAD119";
  X_OBUF RIGHT_3_OBUF (
    .I(\RIGHT<3>/O ),
    .O(RIGHT[3])
  );
  defparam \CLKR_BUFGP/BUFG .LOC = "BUFGMUX3";
  X_BUFGMUX \CLKR_BUFGP/BUFG  (
    .I0(\CLKR_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\CLKR_BUFGP/BUFG/S_INVNOT ),
    .O(CLKR_BUFGP)
  );
  defparam \CLKR_BUFGP/BUFG/SINV .LOC = "BUFGMUX3";
  X_INV \CLKR_BUFGP/BUFG/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\CLKR_BUFGP/BUFG/S_INVNOT )
  );
  defparam \CLKR_BUFGP/BUFG/I0_USED .LOC = "BUFGMUX3";
  X_BUF \CLKR_BUFGP/BUFG/I0_USED  (
    .I(\CLKR/INBUF ),
    .O(\CLKR_BUFGP/BUFG/I0_INV )
  );
  defparam i_1.LOC = "SLICE_X21Y0";
  defparam i_1.INIT = 1'b0;
  X_FF i_1 (
    .I(\i<0>/DYMUX_7 ),
    .CE(VCC),
    .CLK(\i<0>/CLKINV_13 ),
    .SET(GND),
    .RST(\i<0>/SRINV_12 ),
    .O(i[1])
  );
  defparam \rightshifter_Result<0>lut_INV_0 .INIT = 16'h5555;
  defparam \rightshifter_Result<0>lut_INV_0 .LOC = "SLICE_X21Y0";
  X_LUT4 \rightshifter_Result<0>lut_INV_0  (
    .ADR0(i[0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Result[0])
  );
  defparam i_0.LOC = "SLICE_X21Y0";
  defparam i_0.INIT = 1'b0;
  X_FF i_0 (
    .I(\i<0>/DXMUX_3 ),
    .CE(VCC),
    .CLK(\i<0>/CLKINV_13 ),
    .SET(GND),
    .RST(\i<0>/SRINV_12 ),
    .O(i[0])
  );
  defparam i_3.LOC = "SLICE_X21Y1";
  defparam i_3.INIT = 1'b0;
  X_FF i_3 (
    .I(\i<2>/DYMUX_17 ),
    .CE(VCC),
    .CLK(\i<2>/CLKINV_28 ),
    .SET(GND),
    .RST(\i<2>/SRINV_27 ),
    .O(i[3])
  );
  defparam i_2.LOC = "SLICE_X21Y1";
  defparam i_2.INIT = 1'b0;
  X_FF i_2 (
    .I(\i<2>/DXMUX_14 ),
    .CE(VCC),
    .CLK(\i<2>/CLKINV_28 ),
    .SET(GND),
    .RST(\i<2>/SRINV_27 ),
    .O(i[2])
  );
  defparam i_31.LOC = "SLICE_X21Y15";
  defparam i_31.INIT = 1'b0;
  X_FF i_31 (
    .I(\i<30>/DYMUX_124 ),
    .CE(VCC),
    .CLK(\i<30>/CLKINV_128 ),
    .SET(GND),
    .RST(\i<30>/SRINV_127 ),
    .O(i[31])
  );
  defparam Mcompar__n0001_xnorlut2.INIT = 16'hC3C3;
  defparam Mcompar__n0001_xnorlut2.LOC = "SLICE_X20Y3";
  X_LUT4 Mcompar__n0001_xnorlut2 (
    .ADR0(VCC),
    .ADR1(i[2]),
    .ADR2(DESR_2_IBUF_2),
    .ADR3(VCC),
    .O(\Mcompar__n0001_xnorlut2/O )
  );
  defparam Mcompar__n0001_norlut1.INIT = 16'h0001;
  defparam Mcompar__n0001_norlut1.LOC = "SLICE_X20Y4";
  X_LUT4 Mcompar__n0001_norlut1 (
    .ADR0(i[10]),
    .ADR1(i[8]),
    .ADR2(i[7]),
    .ADR3(i[9]),
    .O(\Mcompar__n0001_norlut1/O )
  );
  defparam Mcompar__n0001_norlut3.INIT = 16'h0001;
  defparam Mcompar__n0001_norlut3.LOC = "SLICE_X20Y5";
  X_LUT4 Mcompar__n0001_norlut3 (
    .ADR0(i[15]),
    .ADR1(i[18]),
    .ADR2(i[16]),
    .ADR3(i[17]),
    .O(\Mcompar__n0001_norlut3/O )
  );
  defparam Mcompar__n0001_norlut5.INIT = 16'h0001;
  defparam Mcompar__n0001_norlut5.LOC = "SLICE_X20Y6";
  X_LUT4 Mcompar__n0001_norlut5 (
    .ADR0(i[24]),
    .ADR1(i[23]),
    .ADR2(i[25]),
    .ADR3(i[26]),
    .O(\Mcompar__n0001_norlut5/O )
  );
  defparam i_19.LOC = "SLICE_X21Y9";
  defparam i_19.INIT = 1'b0;
  X_FF i_19 (
    .I(\i<18>/DYMUX_197 ),
    .CE(VCC),
    .CLK(\i<18>/CLKINV_208 ),
    .SET(GND),
    .RST(\i<18>/SRINV_207 ),
    .O(i[19])
  );
  defparam i_18.LOC = "SLICE_X21Y9";
  defparam i_18.INIT = 1'b0;
  X_FF i_18 (
    .I(\i<18>/DXMUX_194 ),
    .CE(VCC),
    .CLK(\i<18>/CLKINV_208 ),
    .SET(GND),
    .RST(\i<18>/SRINV_207 ),
    .O(i[18])
  );
  defparam i_21.LOC = "SLICE_X21Y10";
  defparam i_21.INIT = 1'b0;
  X_FF i_21 (
    .I(\i<20>/DYMUX_212 ),
    .CE(VCC),
    .CLK(\i<20>/CLKINV_223 ),
    .SET(GND),
    .RST(\i<20>/SRINV_222 ),
    .O(i[21])
  );
  defparam i_20.LOC = "SLICE_X21Y10";
  defparam i_20.INIT = 1'b0;
  X_FF i_20 (
    .I(\i<20>/DXMUX_209 ),
    .CE(VCC),
    .CLK(\i<20>/CLKINV_223 ),
    .SET(GND),
    .RST(\i<20>/SRINV_222 ),
    .O(i[20])
  );
  defparam i_23.LOC = "SLICE_X21Y11";
  defparam i_23.INIT = 1'b0;
  X_FF i_23 (
    .I(\i<22>/DYMUX_227 ),
    .CE(VCC),
    .CLK(\i<22>/CLKINV_238 ),
    .SET(GND),
    .RST(\i<22>/SRINV_237 ),
    .O(i[23])
  );
  defparam i_5.LOC = "SLICE_X21Y2";
  defparam i_5.INIT = 1'b0;
  X_FF i_5 (
    .I(\i<4>/DYMUX_32 ),
    .CE(VCC),
    .CLK(\i<4>/CLKINV_43 ),
    .SET(GND),
    .RST(\i<4>/SRINV_42 ),
    .O(i[5])
  );
  defparam i_4.LOC = "SLICE_X21Y2";
  defparam i_4.INIT = 1'b0;
  X_FF i_4 (
    .I(\i<4>/DXMUX_29 ),
    .CE(VCC),
    .CLK(\i<4>/CLKINV_43 ),
    .SET(GND),
    .RST(\i<4>/SRINV_42 ),
    .O(i[4])
  );
  defparam i_7.LOC = "SLICE_X21Y3";
  defparam i_7.INIT = 1'b0;
  X_FF i_7 (
    .I(\i<6>/DYMUX_47 ),
    .CE(VCC),
    .CLK(\i<6>/CLKINV_58 ),
    .SET(GND),
    .RST(\i<6>/SRINV_57 ),
    .O(i[7])
  );
  defparam i_6.LOC = "SLICE_X21Y3";
  defparam i_6.INIT = 1'b0;
  X_FF i_6 (
    .I(\i<6>/DXMUX_44 ),
    .CE(VCC),
    .CLK(\i<6>/CLKINV_58 ),
    .SET(GND),
    .RST(\i<6>/SRINV_57 ),
    .O(i[6])
  );
  defparam i_9.LOC = "SLICE_X21Y4";
  defparam i_9.INIT = 1'b0;
  X_FF i_9 (
    .I(\i<8>/DYMUX_62 ),
    .CE(VCC),
    .CLK(\i<8>/CLKINV_73 ),
    .SET(GND),
    .RST(\i<8>/SRINV_72 ),
    .O(i[9])
  );
  defparam i_8.LOC = "SLICE_X21Y4";
  defparam i_8.INIT = 1'b0;
  X_FF i_8 (
    .I(\i<8>/DXMUX_59 ),
    .CE(VCC),
    .CLK(\i<8>/CLKINV_73 ),
    .SET(GND),
    .RST(\i<8>/SRINV_72 ),
    .O(i[8])
  );
  defparam i_11.LOC = "SLICE_X21Y5";
  defparam i_11.INIT = 1'b0;
  X_FF i_11 (
    .I(\i<10>/DYMUX_77 ),
    .CE(VCC),
    .CLK(\i<10>/CLKINV_88 ),
    .SET(GND),
    .RST(\i<10>/SRINV_87 ),
    .O(i[11])
  );
  defparam i_10.LOC = "SLICE_X21Y5";
  defparam i_10.INIT = 1'b0;
  X_FF i_10 (
    .I(\i<10>/DXMUX_74 ),
    .CE(VCC),
    .CLK(\i<10>/CLKINV_88 ),
    .SET(GND),
    .RST(\i<10>/SRINV_87 ),
    .O(i[10])
  );
  defparam i_13.LOC = "SLICE_X21Y6";
  defparam i_13.INIT = 1'b0;
  X_FF i_13 (
    .I(\i<12>/DYMUX_92 ),
    .CE(VCC),
    .CLK(\i<12>/CLKINV_103 ),
    .SET(GND),
    .RST(\i<12>/SRINV_102 ),
    .O(i[13])
  );
  defparam i_12.LOC = "SLICE_X21Y6";
  defparam i_12.INIT = 1'b0;
  X_FF i_12 (
    .I(\i<12>/DXMUX_89 ),
    .CE(VCC),
    .CLK(\i<12>/CLKINV_103 ),
    .SET(GND),
    .RST(\i<12>/SRINV_102 ),
    .O(i[12])
  );
  defparam i_15.LOC = "SLICE_X21Y7";
  defparam i_15.INIT = 1'b0;
  X_FF i_15 (
    .I(\i<14>/DYMUX_107 ),
    .CE(VCC),
    .CLK(\i<14>/CLKINV_118 ),
    .SET(GND),
    .RST(\i<14>/SRINV_117 ),
    .O(i[15])
  );
  defparam i_14.LOC = "SLICE_X21Y7";
  defparam i_14.INIT = 1'b0;
  X_FF i_14 (
    .I(\i<14>/DXMUX_104 ),
    .CE(VCC),
    .CLK(\i<14>/CLKINV_118 ),
    .SET(GND),
    .RST(\i<14>/SRINV_117 ),
    .O(i[14])
  );
  defparam i_17.LOC = "SLICE_X21Y8";
  defparam i_17.INIT = 1'b0;
  X_FF i_17 (
    .I(\i<16>/DYMUX_182 ),
    .CE(VCC),
    .CLK(\i<16>/CLKINV_193 ),
    .SET(GND),
    .RST(\i<16>/SRINV_192 ),
    .O(i[17])
  );
  defparam i_16.LOC = "SLICE_X21Y8";
  defparam i_16.INIT = 1'b0;
  X_FF i_16 (
    .I(\i<16>/DXMUX_179 ),
    .CE(VCC),
    .CLK(\i<16>/CLKINV_193 ),
    .SET(GND),
    .RST(\i<16>/SRINV_192 ),
    .O(i[16])
  );
  defparam i_22.LOC = "SLICE_X21Y11";
  defparam i_22.INIT = 1'b0;
  X_FF i_22 (
    .I(\i<22>/DXMUX_224 ),
    .CE(VCC),
    .CLK(\i<22>/CLKINV_238 ),
    .SET(GND),
    .RST(\i<22>/SRINV_237 ),
    .O(i[22])
  );
  defparam i_25.LOC = "SLICE_X21Y12";
  defparam i_25.INIT = 1'b0;
  X_FF i_25 (
    .I(\i<24>/DYMUX_242 ),
    .CE(VCC),
    .CLK(\i<24>/CLKINV_253 ),
    .SET(GND),
    .RST(\i<24>/SRINV_252 ),
    .O(i[25])
  );
  defparam i_24.LOC = "SLICE_X21Y12";
  defparam i_24.INIT = 1'b0;
  X_FF i_24 (
    .I(\i<24>/DXMUX_239 ),
    .CE(VCC),
    .CLK(\i<24>/CLKINV_253 ),
    .SET(GND),
    .RST(\i<24>/SRINV_252 ),
    .O(i[24])
  );
  defparam i_27.LOC = "SLICE_X21Y13";
  defparam i_27.INIT = 1'b0;
  X_FF i_27 (
    .I(\i<26>/DYMUX_257 ),
    .CE(VCC),
    .CLK(\i<26>/CLKINV_268 ),
    .SET(GND),
    .RST(\i<26>/SRINV_267 ),
    .O(i[27])
  );
  defparam i_26.LOC = "SLICE_X21Y13";
  defparam i_26.INIT = 1'b0;
  X_FF i_26 (
    .I(\i<26>/DXMUX_254 ),
    .CE(VCC),
    .CLK(\i<26>/CLKINV_268 ),
    .SET(GND),
    .RST(\i<26>/SRINV_267 ),
    .O(i[26])
  );
  defparam i_29.LOC = "SLICE_X21Y14";
  defparam i_29.INIT = 1'b0;
  X_FF i_29 (
    .I(\i<28>/DYMUX_272 ),
    .CE(VCC),
    .CLK(\i<28>/CLKINV_283 ),
    .SET(GND),
    .RST(\i<28>/SRINV_282 ),
    .O(i[29])
  );
  defparam i_28.LOC = "SLICE_X21Y14";
  defparam i_28.INIT = 1'b0;
  X_FF i_28 (
    .I(\i<28>/DXMUX_269 ),
    .CE(VCC),
    .CLK(\i<28>/CLKINV_283 ),
    .SET(GND),
    .RST(\i<28>/SRINV_282 ),
    .O(i[28])
  );
  defparam i_30.LOC = "SLICE_X21Y15";
  defparam i_30.INIT = 1'b0;
  X_FF i_30 (
    .I(\i<30>/DXMUX_119 ),
    .CE(VCC),
    .CLK(\i<30>/CLKINV_128 ),
    .SET(GND),
    .RST(\i<30>/SRINV_127 ),
    .O(i[30])
  );
  defparam Mcompar__n0001_xnorlut.INIT = 16'h9999;
  defparam Mcompar__n0001_xnorlut.LOC = "SLICE_X20Y2";
  X_LUT4 Mcompar__n0001_xnorlut (
    .ADR0(DESR_0_IBUF_0),
    .ADR1(i[0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Mcompar__n0001_xnorlut/O )
  );
  X_ZERO GLOBAL_LOGIC0_GND (
    .O(GLOBAL_LOGIC0)
  );
  X_ONE GLOBAL_LOGIC1_VCC (
    .O(GLOBAL_LOGIC1)
  );
  defparam \i<0>/G/X_LUT4 .INIT = 16'hCCCC;
  defparam \i<0>/G/X_LUT4 .LOC = "SLICE_X21Y0";
  X_LUT4 \i<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(i[1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<0>/G )
  );
  defparam \i<2>/F/X_LUT4 .INIT = 16'hFF00;
  defparam \i<2>/F/X_LUT4 .LOC = "SLICE_X21Y1";
  X_LUT4 \i<2>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[2]),
    .O(\i<2>/F )
  );
  defparam \i<2>/G/X_LUT4 .INIT = 16'hF0F0;
  defparam \i<2>/G/X_LUT4 .LOC = "SLICE_X21Y1";
  X_LUT4 \i<2>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(i[3]),
    .ADR3(VCC),
    .O(\i<2>/G )
  );
  defparam \i<4>/F/X_LUT4 .INIT = 16'hAAAA;
  defparam \i<4>/F/X_LUT4 .LOC = "SLICE_X21Y2";
  X_LUT4 \i<4>/F/X_LUT4  (
    .ADR0(i[4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<4>/F )
  );
  defparam \i<4>/G/X_LUT4 .INIT = 16'hCCCC;
  defparam \i<4>/G/X_LUT4 .LOC = "SLICE_X21Y2";
  X_LUT4 \i<4>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(i[5]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<4>/G )
  );
  defparam \i<6>/F/X_LUT4 .INIT = 16'hFF00;
  defparam \i<6>/F/X_LUT4 .LOC = "SLICE_X21Y3";
  X_LUT4 \i<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[6]),
    .O(\i<6>/F )
  );
  defparam \i<6>/G/X_LUT4 .INIT = 16'hFF00;
  defparam \i<6>/G/X_LUT4 .LOC = "SLICE_X21Y3";
  X_LUT4 \i<6>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[7]),
    .O(\i<6>/G )
  );
  defparam \i<8>/F/X_LUT4 .INIT = 16'hF0F0;
  defparam \i<8>/F/X_LUT4 .LOC = "SLICE_X21Y4";
  X_LUT4 \i<8>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(i[8]),
    .ADR3(VCC),
    .O(\i<8>/F )
  );
  defparam \i<8>/G/X_LUT4 .INIT = 16'hAAAA;
  defparam \i<8>/G/X_LUT4 .LOC = "SLICE_X21Y4";
  X_LUT4 \i<8>/G/X_LUT4  (
    .ADR0(i[9]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<8>/G )
  );
  defparam \i<10>/F/X_LUT4 .INIT = 16'hFF00;
  defparam \i<10>/F/X_LUT4 .LOC = "SLICE_X21Y5";
  X_LUT4 \i<10>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[10]),
    .O(\i<10>/F )
  );
  defparam \i<10>/G/X_LUT4 .INIT = 16'hCCCC;
  defparam \i<10>/G/X_LUT4 .LOC = "SLICE_X21Y5";
  X_LUT4 \i<10>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(i[11]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<10>/G )
  );
  defparam \i<12>/F/X_LUT4 .INIT = 16'hFF00;
  defparam \i<12>/F/X_LUT4 .LOC = "SLICE_X21Y6";
  X_LUT4 \i<12>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[12]),
    .O(\i<12>/F )
  );
  defparam \i<12>/G/X_LUT4 .INIT = 16'hAAAA;
  defparam \i<12>/G/X_LUT4 .LOC = "SLICE_X21Y6";
  X_LUT4 \i<12>/G/X_LUT4  (
    .ADR0(i[13]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<12>/G )
  );
  defparam \i<14>/F/X_LUT4 .INIT = 16'hCCCC;
  defparam \i<14>/F/X_LUT4 .LOC = "SLICE_X21Y7";
  X_LUT4 \i<14>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(i[14]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<14>/F )
  );
  defparam \i<14>/G/X_LUT4 .INIT = 16'hF0F0;
  defparam \i<14>/G/X_LUT4 .LOC = "SLICE_X21Y7";
  X_LUT4 \i<14>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(i[15]),
    .ADR3(VCC),
    .O(\i<14>/G )
  );
  defparam \i<30>/F/X_LUT4 .INIT = 16'hCCCC;
  defparam \i<30>/F/X_LUT4 .LOC = "SLICE_X21Y15";
  X_LUT4 \i<30>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(i[30]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<30>/F )
  );
  defparam \i<16>/F/X_LUT4 .INIT = 16'hFF00;
  defparam \i<16>/F/X_LUT4 .LOC = "SLICE_X21Y8";
  X_LUT4 \i<16>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[16]),
    .O(\i<16>/F )
  );
  defparam \i<16>/G/X_LUT4 .INIT = 16'hAAAA;
  defparam \i<16>/G/X_LUT4 .LOC = "SLICE_X21Y8";
  X_LUT4 \i<16>/G/X_LUT4  (
    .ADR0(i[17]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<16>/G )
  );
  defparam \i<18>/F/X_LUT4 .INIT = 16'hF0F0;
  defparam \i<18>/F/X_LUT4 .LOC = "SLICE_X21Y9";
  X_LUT4 \i<18>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(i[18]),
    .ADR3(VCC),
    .O(\i<18>/F )
  );
  defparam \i<18>/G/X_LUT4 .INIT = 16'hCCCC;
  defparam \i<18>/G/X_LUT4 .LOC = "SLICE_X21Y9";
  X_LUT4 \i<18>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(i[19]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<18>/G )
  );
  defparam \i<20>/F/X_LUT4 .INIT = 16'hCCCC;
  defparam \i<20>/F/X_LUT4 .LOC = "SLICE_X21Y10";
  X_LUT4 \i<20>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(i[20]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<20>/F )
  );
  defparam \i<20>/G/X_LUT4 .INIT = 16'hAAAA;
  defparam \i<20>/G/X_LUT4 .LOC = "SLICE_X21Y10";
  X_LUT4 \i<20>/G/X_LUT4  (
    .ADR0(i[21]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<20>/G )
  );
  defparam \i<22>/F/X_LUT4 .INIT = 16'hFF00;
  defparam \i<22>/F/X_LUT4 .LOC = "SLICE_X21Y11";
  X_LUT4 \i<22>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[22]),
    .O(\i<22>/F )
  );
  defparam \i<22>/G/X_LUT4 .INIT = 16'hF0F0;
  defparam \i<22>/G/X_LUT4 .LOC = "SLICE_X21Y11";
  X_LUT4 \i<22>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(i[23]),
    .ADR3(VCC),
    .O(\i<22>/G )
  );
  defparam \i<24>/F/X_LUT4 .INIT = 16'hAAAA;
  defparam \i<24>/F/X_LUT4 .LOC = "SLICE_X21Y12";
  X_LUT4 \i<24>/F/X_LUT4  (
    .ADR0(i[24]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<24>/F )
  );
  defparam \i<24>/G/X_LUT4 .INIT = 16'hCCCC;
  defparam \i<24>/G/X_LUT4 .LOC = "SLICE_X21Y12";
  X_LUT4 \i<24>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(i[25]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\i<24>/G )
  );
  defparam \i<26>/F/X_LUT4 .INIT = 16'hFF00;
  defparam \i<26>/F/X_LUT4 .LOC = "SLICE_X21Y13";
  X_LUT4 \i<26>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[26]),
    .O(\i<26>/F )
  );
  defparam \i<26>/G/X_LUT4 .INIT = 16'hF0F0;
  defparam \i<26>/G/X_LUT4 .LOC = "SLICE_X21Y13";
  X_LUT4 \i<26>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(i[27]),
    .ADR3(VCC),
    .O(\i<26>/G )
  );
  defparam \i<28>/F/X_LUT4 .INIT = 16'hFF00;
  defparam \i<28>/F/X_LUT4 .LOC = "SLICE_X21Y14";
  X_LUT4 \i<28>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(i[28]),
    .O(\i<28>/F )
  );
  defparam \i<28>/G/X_LUT4 .INIT = 16'hF0F0;
  defparam \i<28>/G/X_LUT4 .LOC = "SLICE_X21Y14";
  X_LUT4 \i<28>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(i[29]),
    .ADR3(VCC),
    .O(\i<28>/G )
  );
  defparam \RIGHT<0>/OUTPUT/OFF/OMUX .LOC = "PAD115";
  X_BUF \RIGHT<0>/OUTPUT/OFF/OMUX  (
    .I(tmpo[0]),
    .O(\RIGHT<0>/O )
  );
  defparam \RIGHT<1>/OUTPUT/OFF/OMUX .LOC = "PAD126";
  X_BUF \RIGHT<1>/OUTPUT/OFF/OMUX  (
    .I(tmpo[1]),
    .O(\RIGHT<1>/O )
  );
  defparam \RIGHT<2>/OUTPUT/OFF/OMUX .LOC = "PAD165";
  X_BUF \RIGHT<2>/OUTPUT/OFF/OMUX  (
    .I(tmpo[2]),
    .O(\RIGHT<2>/O )
  );
  defparam \RIGHT<3>/OUTPUT/OFF/OMUX .LOC = "PAD119";
  X_BUF \RIGHT<3>/OUTPUT/OFF/OMUX  (
    .I(tmpo[3]),
    .O(\RIGHT<3>/O )
  );
  X_ONE NlwBlock_rightshifter_VCC (
    .O(VCC)
  );
  X_ZERO NlwBlock_rightshifter_GND (
    .O(GND)
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

