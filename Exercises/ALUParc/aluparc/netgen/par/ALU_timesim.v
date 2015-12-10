////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: I.24
//  \   \         Application: netgen
//  /   /         Filename: ALU_timesim.v
// /___/   /\     Timestamp: Sun Apr 15 20:30:21 2007
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf ALU.pcf -sdf_anno true -sdf_path netgen/par -w -dir netgen/par -ofmt verilog -sim ALU.ncd ALU_timesim.v 
// Device	: xa3s200ftg256-4 (PRODUCTION 1.37 2005-11-04)
// Input file	: ALU.ncd
// Output file	: D:\Documentos\XILINXPROYECTOS\aluparc\netgen\par\ALU_timesim.v
// # of Modules	: 1
// Design Name	: ALU
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

module ALU (
  CLK, datoa, datob, selecs, resm, res
);
  input CLK;
  input [3 : 0] datoa;
  input [3 : 0] datob;
  input [2 : 0] selecs;
  output [7 : 0] resm;
  output [3 : 0] res;
  wire GLOBAL_LOGIC1;
  wire CLK_BUFGP;
  wire datob_2_IBUF_0;
  wire datoa_2_IBUF_1;
  wire N68_0;
  wire N9_0;
  wire selecs_2_IBUF_2;
  wire selecs_1_IBUF_3;
  wire selecs_0_IBUF_4;
  wire N46;
  wire \C3/_n0048_0 ;
  wire \C3/_n0006_0 ;
  wire datoa_3_IBUF_5;
  wire datob_1_IBUF_6;
  wire datob_0_IBUF_7;
  wire datoa_0_IBUF_8;
  wire datoa_1_IBUF_9;
  wire N73_0;
  wire \C3/_n0007_0 ;
  wire \C3/_n0051 ;
  wire \C3/_n0033_0 ;
  wire datob_3_IBUF_10;
  wire \C3/_n0010_0 ;
  wire N50;
  wire \C3/_n0001_0 ;
  wire \C3/_n0000_0 ;
  wire N62_0;
  wire \C3/_n0004_0 ;
  wire \C3/_n0053 ;
  wire N19;
  wire \mux_1_selecs<1>_MUXF51 ;
  wire N60_0;
  wire N66;
  wire \mux_1_selecs<1>_MUXF52 ;
  wire \mux_1_selecs<1>_MUXF53 ;
  wire N64_0;
  wire N72;
  wire \C3/_n0049 ;
  wire \C3/_n0003_0 ;
  wire N52;
  wire \C3/_n0050 ;
  wire N56;
  wire \mux_1_selecs<1>_MUXF5 ;
  wire N58_0;
  wire N2;
  wire N48;
  wire N54;
  wire \C6/_n0010_0 ;
  wire GLOBAL_LOGIC0;
  wire \CLK/INBUF ;
  wire \CLK_BUFGP/BUFG/S_INVNOT ;
  wire \CLK_BUFGP/BUFG/I0_INV ;
  wire N68;
  wire N9;
  wire N46_pack_1;
  wire N73;
  wire \C2/cable1<1>_pack_1 ;
  wire \C3/_n0010 ;
  wire \C3/_n0051_pack_1 ;
  wire N50_pack_1;
  wire \C3/_n0001 ;
  wire \C3/_n0000 ;
  wire N62;
  wire \C1/cable<1>_pack_1 ;
  wire \C3/_n0007 ;
  wire \C3/_n0053_pack_1 ;
  wire \mux_1_selecs<1>_MUXF51_pack_1 ;
  wire N60;
  wire N66_pack_1;
  wire \mux_1_selecs<1>_MUXF52_pack_1 ;
  wire \C3/_n0033 ;
  wire N19_pack_1;
  wire \mux_1_selecs<1>_MUXF53_pack_1 ;
  wire N64;
  wire N72_pack_1;
  wire \C3/_n0003 ;
  wire \C3/_n0049_pack_1 ;
  wire N52_pack_1;
  wire \C3/_n0006 ;
  wire \xo_ALU_02_xo<1>_pack_1 ;
  wire N56_pack_1;
  wire \mux_1_selecs<1>_MUXF5_pack_1 ;
  wire \C3/_n0004 ;
  wire \C3/_n0050_pack_1 ;
  wire N2_pack_1;
  wire N58;
  wire N48_pack_1;
  wire N54_pack_1;
  wire \C6/_n0010 ;
  wire \C3/_n0048 ;
  wire \resm<0>/O ;
  wire \resm<0>/OUTPUT/OTCLK1INVNOT ;
  wire \resm<0>/OUTPUT/OFF/O1INV_11 ;
  wire \resm<1>/O ;
  wire \resm<1>/OUTPUT/OTCLK1INVNOT ;
  wire \resm<1>/OUTPUT/OFF/O1INV_12 ;
  wire \resm<2>/O ;
  wire \resm<2>/OUTPUT/OTCLK1INVNOT ;
  wire \resm<2>/OUTPUT/OFF/O1INV_13 ;
  wire \resm<3>/O ;
  wire \resm<3>/OUTPUT/OTCLK1INVNOT ;
  wire \resm<3>/OUTPUT/OFF/O1INV_14 ;
  wire \resm<4>/O ;
  wire \resm<4>/OUTPUT/OTCLK1INVNOT ;
  wire \resm<4>/OUTPUT/OFF/O1INV_15 ;
  wire \resm<5>/O ;
  wire \resm<5>/OUTPUT/OTCLK1INVNOT ;
  wire \resm<5>/OUTPUT/OFF/O1INV_16 ;
  wire \resm<6>/O ;
  wire \resm<6>/OUTPUT/OTCLK1INVNOT ;
  wire \resm<6>/OUTPUT/OFF/O1INV_17 ;
  wire \datoa<0>/INBUF ;
  wire \datoa<0>/IFF/ICLK1INV_18 ;
  wire \datoa<0>/IFF/IFFDMUX_19 ;
  wire \res<0>/O ;
  wire \res<0>/OUTPUT/OTCLK1INVNOT ;
  wire \res<0>/OUTPUT/OFF/O1INV_20 ;
  wire \resm<7>/O ;
  wire \datoa<1>/INBUF ;
  wire \res<1>/O ;
  wire \res<1>/OUTPUT/OTCLK1INVNOT ;
  wire \res<1>/OUTPUT/OFF/O1INV_21 ;
  wire \datoa<2>/INBUF ;
  wire \datoa<2>/IFF/ICLK1INV_22 ;
  wire \datoa<2>/IFF/IFFDMUX_23 ;
  wire \res<2>/O ;
  wire \res<2>/OUTPUT/OTCLK1INVNOT ;
  wire \res<2>/OUTPUT/OFF/O1INV_24 ;
  wire \datoa<3>/INBUF ;
  wire \datoa<3>/IFF/ICLK1INV_25 ;
  wire \datoa<3>/IFF/IFFDMUX_26 ;
  wire \res<3>/OUTPUT/OTCLK1INVNOT ;
  wire \res<3>/O ;
  wire \res<3>/OUTPUT/OFF/O1INV_27 ;
  wire \datob<0>/INBUF ;
  wire \datob<0>/IFF/ICLK1INV_28 ;
  wire \datob<0>/IFF/IFFDMUX_29 ;
  wire \datob<1>/INBUF ;
  wire \datob<1>/IFF/ICLK1INV_30 ;
  wire \datob<1>/IFF/IFFDMUX_31 ;
  wire \datob<2>/INBUF ;
  wire \datob<2>/IFF/ICLK1INV_32 ;
  wire \datob<2>/IFF/IFFDMUX_33 ;
  wire \datob<3>/INBUF ;
  wire \datob<3>/IFF/ICLK1INV_34 ;
  wire \datob<3>/IFF/IFFDMUX_35 ;
  wire \selecs<1>/INBUF ;
  wire \selecs<0>/INBUF ;
  wire \selecs<2>/INBUF ;
  wire \datoa<1>/IFF/ICLK1INV_36 ;
  wire \datoa<1>/IFF/IFFDMUX_37 ;
  wire GND;
  wire VCC;
  wire \NlwInverterSignal_C6/resulms_0/CLK ;
  wire \NlwInverterSignal_C6/resulms_1/CLK ;
  wire \NlwInverterSignal_C6/resulms_2/CLK ;
  wire \NlwInverterSignal_C6/resulms_3/CLK ;
  wire \NlwInverterSignal_C6/resulms_4/CLK ;
  wire \NlwInverterSignal_C6/resulms_5/CLK ;
  wire \NlwInverterSignal_C6/resulms_6/CLK ;
  wire \NlwInverterSignal_C6/results_0/CLK ;
  wire \NlwInverterSignal_C6/results_1/CLK ;
  wire \NlwInverterSignal_C6/results_2/CLK ;
  wire \NlwInverterSignal_C6/results_3/CLK ;
  wire [1 : 1] \C2/cable1 ;
  wire [1 : 1] \C1/cable ;
  wire [3 : 0] \C5/tmpo ;
  wire [3 : 0] \C4/tmp ;
  wire [1 : 1] xo_ALU_02_xo;
  wire [6 : 0] \C6/_n0008 ;
  wire [3 : 0] \C6/_n0009 ;
  wire [6 : 0] \C6/resulms ;
  wire [3 : 0] \C6/results ;
  initial $sdf_annotate("netgen/par/alu_timesim.sdf");
  defparam \CLK/PAD .LOC = "PAD24";
  X_IPAD \CLK/PAD  (
    .PAD(CLK)
  );
  defparam \CLK_BUFGP/IBUFG .LOC = "PAD24";
  X_BUF \CLK_BUFGP/IBUFG  (
    .I(CLK),
    .O(\CLK/INBUF )
  );
  defparam \CLK_BUFGP/BUFG .LOC = "BUFGMUX7";
  X_BUFGMUX \CLK_BUFGP/BUFG  (
    .I0(\CLK_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\CLK_BUFGP/BUFG/S_INVNOT ),
    .O(CLK_BUFGP)
  );
  defparam \CLK_BUFGP/BUFG/SINV .LOC = "BUFGMUX7";
  X_INV \CLK_BUFGP/BUFG/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\CLK_BUFGP/BUFG/S_INVNOT )
  );
  defparam \CLK_BUFGP/BUFG/I0_USED .LOC = "BUFGMUX7";
  X_BUF \CLK_BUFGP/BUFG/I0_USED  (
    .I(\CLK/INBUF ),
    .O(\CLK_BUFGP/BUFG/I0_INV )
  );
  defparam \N68/XUSED .LOC = "SLICE_X19Y1";
  X_BUF \N68/XUSED  (
    .I(N68),
    .O(N68_0)
  );
  defparam \N68/YUSED .LOC = "SLICE_X19Y1";
  X_BUF \N68/YUSED  (
    .I(N9),
    .O(N9_0)
  );
  defparam Ker91.INIT = 16'h0FFF;
  defparam Ker91.LOC = "SLICE_X19Y1";
  X_LUT4 Ker91 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(datob_2_IBUF_0),
    .ADR3(datoa_2_IBUF_1),
    .O(N9)
  );
  defparam \C6/_n0008<4>/YUSED .LOC = "SLICE_X14Y1";
  X_BUF \C6/_n0008<4>/YUSED  (
    .I(N46_pack_1),
    .O(N46)
  );
  defparam \C6/_n0008<4>_SW0 .INIT = 16'hAA55;
  defparam \C6/_n0008<4>_SW0 .LOC = "SLICE_X14Y1";
  X_LUT4 \C6/_n0008<4>_SW0  (
    .ADR0(\C3/_n0006_0 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\C3/_n0048_0 ),
    .O(N46_pack_1)
  );
  defparam \N73/XUSED .LOC = "SLICE_X21Y0";
  X_BUF \N73/XUSED  (
    .I(N73),
    .O(N73_0)
  );
  defparam \N73/YUSED .LOC = "SLICE_X21Y0";
  X_BUF \N73/YUSED  (
    .I(\C2/cable1<1>_pack_1 ),
    .O(\C2/cable1 [1])
  );
  defparam \C2/L1_i1/carryr1 .INIT = 16'h2B0A;
  defparam \C2/L1_i1/carryr1 .LOC = "SLICE_X21Y0";
  X_LUT4 \C2/L1_i1/carryr1  (
    .ADR0(datob_1_IBUF_6),
    .ADR1(datoa_0_IBUF_8),
    .ADR2(datoa_1_IBUF_9),
    .ADR3(datob_0_IBUF_7),
    .O(\C2/cable1<1>_pack_1 )
  );
  defparam \C3/_n0010/XUSED .LOC = "SLICE_X15Y0";
  X_BUF \C3/_n0010/XUSED  (
    .I(\C3/_n0010 ),
    .O(\C3/_n0010_0 )
  );
  defparam \C3/_n0010/YUSED .LOC = "SLICE_X15Y0";
  X_BUF \C3/_n0010/YUSED  (
    .I(\C3/_n0051_pack_1 ),
    .O(\C3/_n0051 )
  );
  defparam \C3/Mxor__n0051_Result1 .INIT = 16'h5AF0;
  defparam \C3/Mxor__n0051_Result1 .LOC = "SLICE_X15Y0";
  X_LUT4 \C3/Mxor__n0051_Result1  (
    .ADR0(datoa_2_IBUF_1),
    .ADR1(VCC),
    .ADR2(\C3/_n0033_0 ),
    .ADR3(datob_3_IBUF_10),
    .O(\C3/_n0051_pack_1 )
  );
  defparam \C6/_n0008<1>/YUSED .LOC = "SLICE_X20Y1";
  X_BUF \C6/_n0008<1>/YUSED  (
    .I(N50_pack_1),
    .O(N50)
  );
  defparam \C6/_n0008<1>_SW0 .INIT = 16'h8777;
  defparam \C6/_n0008<1>_SW0 .LOC = "SLICE_X20Y1";
  X_LUT4 \C6/_n0008<1>_SW0  (
    .ADR0(datob_0_IBUF_7),
    .ADR1(datoa_1_IBUF_9),
    .ADR2(datoa_0_IBUF_8),
    .ADR3(datob_1_IBUF_6),
    .O(N50_pack_1)
  );
  defparam \C3/_n0001/XUSED .LOC = "SLICE_X18Y3";
  X_BUF \C3/_n0001/XUSED  (
    .I(\C3/_n0001 ),
    .O(\C3/_n0001_0 )
  );
  defparam \C3/_n0001/YUSED .LOC = "SLICE_X18Y3";
  X_BUF \C3/_n0001/YUSED  (
    .I(\C3/_n0000 ),
    .O(\C3/_n0000_0 )
  );
  defparam \C3/_n00001 .INIT = 16'h8000;
  defparam \C3/_n00001 .LOC = "SLICE_X18Y3";
  X_LUT4 \C3/_n00001  (
    .ADR0(datoa_0_IBUF_8),
    .ADR1(datob_0_IBUF_7),
    .ADR2(datoa_1_IBUF_9),
    .ADR3(datob_1_IBUF_6),
    .O(\C3/_n0000 )
  );
  defparam \N62/XUSED .LOC = "SLICE_X21Y1";
  X_BUF \N62/XUSED  (
    .I(N62),
    .O(N62_0)
  );
  defparam \N62/YUSED .LOC = "SLICE_X21Y1";
  X_BUF \N62/YUSED  (
    .I(\C1/cable<1>_pack_1 ),
    .O(\C1/cable [1])
  );
  defparam \C1/R1_i1/carry1 .INIT = 16'hE8A0;
  defparam \C1/R1_i1/carry1 .LOC = "SLICE_X21Y1";
  X_LUT4 \C1/R1_i1/carry1  (
    .ADR0(datob_1_IBUF_6),
    .ADR1(datoa_0_IBUF_8),
    .ADR2(datoa_1_IBUF_9),
    .ADR3(datob_0_IBUF_7),
    .O(\C1/cable<1>_pack_1 )
  );
  defparam \C3/_n0007/XUSED .LOC = "SLICE_X17Y0";
  X_BUF \C3/_n0007/XUSED  (
    .I(\C3/_n0007 ),
    .O(\C3/_n0007_0 )
  );
  defparam \C3/_n0007/YUSED .LOC = "SLICE_X17Y0";
  X_BUF \C3/_n0007/YUSED  (
    .I(\C3/_n0053_pack_1 ),
    .O(\C3/_n0053 )
  );
  defparam \C3/Mxor__n0053_Result1 .INIT = 16'h3393;
  defparam \C3/Mxor__n0053_Result1 .LOC = "SLICE_X17Y0";
  X_LUT4 \C3/Mxor__n0053_Result1  (
    .ADR0(datob_0_IBUF_7),
    .ADR1(N9_0),
    .ADR2(datoa_3_IBUF_5),
    .ADR3(N19),
    .O(\C3/_n0053_pack_1 )
  );
  defparam \C6/_n0009<1>/YUSED .LOC = "SLICE_X18Y0";
  X_BUF \C6/_n0009<1>/YUSED  (
    .I(\mux_1_selecs<1>_MUXF51_pack_1 ),
    .O(\mux_1_selecs<1>_MUXF51 )
  );
  defparam \selecs<1>_rn_0 .INIT = 16'hE444;
  defparam \selecs<1>_rn_0 .LOC = "SLICE_X18Y0";
  X_LUT4 \selecs<1>_rn_0  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(N60_0),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(\C4/tmp [1]),
    .O(\mux_1_selecs<1>_MUXF51_pack_1 )
  );
  defparam \N60/XUSED .LOC = "SLICE_X18Y1";
  X_BUF \N60/XUSED  (
    .I(N60),
    .O(N60_0)
  );
  defparam \N60/YUSED .LOC = "SLICE_X18Y1";
  X_BUF \N60/YUSED  (
    .I(N66_pack_1),
    .O(N66)
  );
  defparam \selecs<1>_rn_0_SW0_SW0 .INIT = 16'h0FF0;
  defparam \selecs<1>_rn_0_SW0_SW0 .LOC = "SLICE_X18Y1";
  X_LUT4 \selecs<1>_rn_0_SW0_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(datoa_1_IBUF_9),
    .ADR3(datob_1_IBUF_6),
    .O(N66_pack_1)
  );
  defparam \C6/_n0009<2>/YUSED .LOC = "SLICE_X16Y1";
  X_BUF \C6/_n0009<2>/YUSED  (
    .I(\mux_1_selecs<1>_MUXF52_pack_1 ),
    .O(\mux_1_selecs<1>_MUXF52 )
  );
  defparam \selecs<1>_rn_1 .INIT = 16'hE444;
  defparam \selecs<1>_rn_1 .LOC = "SLICE_X16Y1";
  X_LUT4 \selecs<1>_rn_1  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(N62_0),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(\C4/tmp [2]),
    .O(\mux_1_selecs<1>_MUXF52_pack_1 )
  );
  defparam \C3/_n0033/XUSED .LOC = "SLICE_X17Y1";
  X_BUF \C3/_n0033/XUSED  (
    .I(\C3/_n0033 ),
    .O(\C3/_n0033_0 )
  );
  defparam \C3/_n0033/YUSED .LOC = "SLICE_X17Y1";
  X_BUF \C3/_n0033/YUSED  (
    .I(N19_pack_1),
    .O(N19)
  );
  defparam Ker191.INIT = 16'h33FF;
  defparam Ker191.LOC = "SLICE_X17Y1";
  X_LUT4 Ker191 (
    .ADR0(VCC),
    .ADR1(datob_1_IBUF_6),
    .ADR2(VCC),
    .ADR3(datoa_2_IBUF_1),
    .O(N19_pack_1)
  );
  defparam \C6/_n0009<3>/YUSED .LOC = "SLICE_X22Y0";
  X_BUF \C6/_n0009<3>/YUSED  (
    .I(\mux_1_selecs<1>_MUXF53_pack_1 ),
    .O(\mux_1_selecs<1>_MUXF53 )
  );
  defparam \selecs<1>_rn_2 .INIT = 16'hE444;
  defparam \selecs<1>_rn_2 .LOC = "SLICE_X22Y0";
  X_LUT4 \selecs<1>_rn_2  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(N64_0),
    .ADR2(\C4/tmp [3]),
    .ADR3(selecs_0_IBUF_4),
    .O(\mux_1_selecs<1>_MUXF53_pack_1 )
  );
  defparam \N64/XUSED .LOC = "SLICE_X20Y0";
  X_BUF \N64/XUSED  (
    .I(N64),
    .O(N64_0)
  );
  defparam \N64/YUSED .LOC = "SLICE_X20Y0";
  X_BUF \N64/YUSED  (
    .I(N72_pack_1),
    .O(N72)
  );
  defparam \selecs<1>_rn_2_SW0_SW1 .INIT = 16'h1E78;
  defparam \selecs<1>_rn_2_SW0_SW1 .LOC = "SLICE_X20Y0";
  X_LUT4 \selecs<1>_rn_2_SW0_SW1  (
    .ADR0(\C1/cable [1]),
    .ADR1(datob_2_IBUF_0),
    .ADR2(datoa_3_IBUF_5),
    .ADR3(datoa_2_IBUF_1),
    .O(N72_pack_1)
  );
  defparam \C3/_n0003/XUSED .LOC = "SLICE_X19Y3";
  X_BUF \C3/_n0003/XUSED  (
    .I(\C3/_n0003 ),
    .O(\C3/_n0003_0 )
  );
  defparam \C3/_n0003/YUSED .LOC = "SLICE_X19Y3";
  X_BUF \C3/_n0003/YUSED  (
    .I(\C3/_n0049_pack_1 ),
    .O(\C3/_n0049 )
  );
  defparam \C3/Mxor__n0049_Result1 .INIT = 16'h7888;
  defparam \C3/Mxor__n0049_Result1 .LOC = "SLICE_X19Y3";
  X_LUT4 \C3/Mxor__n0049_Result1  (
    .ADR0(datob_1_IBUF_6),
    .ADR1(datoa_1_IBUF_9),
    .ADR2(datob_0_IBUF_7),
    .ADR3(datoa_2_IBUF_1),
    .O(\C3/_n0049_pack_1 )
  );
  defparam \C6/_n0008<5>/YUSED .LOC = "SLICE_X15Y1";
  X_BUF \C6/_n0008<5>/YUSED  (
    .I(N52_pack_1),
    .O(N52)
  );
  defparam \C6/_n0008<5>_SW0 .INIT = 16'h69C3;
  defparam \C6/_n0008<5>_SW0 .LOC = "SLICE_X15Y1";
  X_LUT4 \C6/_n0008<5>_SW0  (
    .ADR0(\C3/_n0048_0 ),
    .ADR1(\C3/_n0007_0 ),
    .ADR2(\C3/_n0051 ),
    .ADR3(\C3/_n0006_0 ),
    .O(N52_pack_1)
  );
  defparam \C3/_n0006/XUSED .LOC = "SLICE_X16Y3";
  X_BUF \C3/_n0006/XUSED  (
    .I(\C3/_n0006 ),
    .O(\C3/_n0006_0 )
  );
  defparam \C3/_n0006/YUSED .LOC = "SLICE_X16Y3";
  X_BUF \C3/_n0006/YUSED  (
    .I(\xo_ALU_02_xo<1>_pack_1 ),
    .O(xo_ALU_02_xo[1])
  );
  defparam \xo_ALU_02_xo<1>1 .INIT = 16'h9666;
  defparam \xo_ALU_02_xo<1>1 .LOC = "SLICE_X16Y3";
  X_LUT4 \xo_ALU_02_xo<1>1  (
    .ADR0(\C3/_n0001_0 ),
    .ADR1(\C3/_n0050 ),
    .ADR2(datob_2_IBUF_0),
    .ADR3(datoa_1_IBUF_9),
    .O(\xo_ALU_02_xo<1>_pack_1 )
  );
  defparam \C6/_n0008<2>/YUSED .LOC = "SLICE_X18Y2";
  X_BUF \C6/_n0008<2>/YUSED  (
    .I(N56_pack_1),
    .O(N56)
  );
  defparam \C6/_n0008<2>_SW0 .INIT = 16'h7887;
  defparam \C6/_n0008<2>_SW0 .LOC = "SLICE_X18Y2";
  X_LUT4 \C6/_n0008<2>_SW0  (
    .ADR0(datoa_0_IBUF_8),
    .ADR1(datob_2_IBUF_0),
    .ADR2(\C3/_n0000_0 ),
    .ADR3(\C3/_n0049 ),
    .O(N56_pack_1)
  );
  defparam \C6/_n0009<0>/YUSED .LOC = "SLICE_X19Y0";
  X_BUF \C6/_n0009<0>/YUSED  (
    .I(\mux_1_selecs<1>_MUXF5_pack_1 ),
    .O(\mux_1_selecs<1>_MUXF5 )
  );
  defparam \selecs<1> .INIT = 16'hB380;
  defparam \selecs<1> .LOC = "SLICE_X19Y0";
  X_LUT4 \selecs<1>  (
    .ADR0(\C4/tmp [0]),
    .ADR1(selecs_1_IBUF_3),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(N58_0),
    .O(\mux_1_selecs<1>_MUXF5_pack_1 )
  );
  defparam \C3/Mxor__n0050_Result1 .INIT = 16'h6AC0;
  defparam \C3/Mxor__n0050_Result1 .LOC = "SLICE_X17Y2";
  X_LUT4 \C3/Mxor__n0050_Result1  (
    .ADR0(datob_1_IBUF_6),
    .ADR1(datoa_3_IBUF_5),
    .ADR2(datob_0_IBUF_7),
    .ADR3(datoa_2_IBUF_1),
    .O(\C3/_n0050_pack_1 )
  );
  defparam \C3/_n0004/XUSED .LOC = "SLICE_X17Y2";
  X_BUF \C3/_n0004/XUSED  (
    .I(\C3/_n0004 ),
    .O(\C3/_n0004_0 )
  );
  defparam \C3/_n0004/YUSED .LOC = "SLICE_X17Y2";
  X_BUF \C3/_n0004/YUSED  (
    .I(\C3/_n0050_pack_1 ),
    .O(\C3/_n0050 )
  );
  defparam \C6/_n0008<0>/YUSED .LOC = "SLICE_X14Y2";
  X_BUF \C6/_n0008<0>/YUSED  (
    .I(N2_pack_1),
    .O(N2)
  );
  defparam \C6/_n0008<0>1 .INIT = 16'hFDFF;
  defparam \C6/_n0008<0>1 .LOC = "SLICE_X14Y2";
  X_LUT4 \C6/_n0008<0>1  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(selecs_2_IBUF_2),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(datob_0_IBUF_7),
    .O(N2_pack_1)
  );
  defparam \N58/XUSED .LOC = "SLICE_X19Y2";
  X_BUF \N58/XUSED  (
    .I(N58),
    .O(N58_0)
  );
  defparam \selecs<1>_SW0 .INIT = 16'h3C3C;
  defparam \selecs<1>_SW0 .LOC = "SLICE_X19Y2";
  X_LUT4 \selecs<1>_SW0  (
    .ADR0(VCC),
    .ADR1(datoa_0_IBUF_8),
    .ADR2(datob_0_IBUF_7),
    .ADR3(VCC),
    .O(N58)
  );
  defparam \C6/_n0008<6>/YUSED .LOC = "SLICE_X14Y0";
  X_BUF \C6/_n0008<6>/YUSED  (
    .I(N48_pack_1),
    .O(N48)
  );
  defparam \C6/_n0008<6>_SW0 .INIT = 16'h870F;
  defparam \C6/_n0008<6>_SW0 .LOC = "SLICE_X14Y0";
  X_LUT4 \C6/_n0008<6>_SW0  (
    .ADR0(datob_3_IBUF_10),
    .ADR1(\C3/_n0033_0 ),
    .ADR2(\C3/_n0010_0 ),
    .ADR3(datoa_2_IBUF_1),
    .O(N48_pack_1)
  );
  defparam \C6/_n0008<3>/YUSED .LOC = "SLICE_X17Y3";
  X_BUF \C6/_n0008<3>/YUSED  (
    .I(N54_pack_1),
    .O(N54)
  );
  defparam \C6/_n0008<3>_SW0 .INIT = 16'h6999;
  defparam \C6/_n0008<3>_SW0 .LOC = "SLICE_X17Y3";
  X_LUT4 \C6/_n0008<3>_SW0  (
    .ADR0(\C3/_n0003_0 ),
    .ADR1(xo_ALU_02_xo[1]),
    .ADR2(datob_3_IBUF_10),
    .ADR3(datoa_0_IBUF_8),
    .O(N54_pack_1)
  );
  defparam \C6/_n0010/YUSED .LOC = "SLICE_X16Y2";
  X_BUF \C6/_n0010/YUSED  (
    .I(\C6/_n0010 ),
    .O(\C6/_n0010_0 )
  );
  defparam \C6/_n00101 .INIT = 16'h3737;
  defparam \C6/_n00101 .LOC = "SLICE_X16Y2";
  X_LUT4 \C6/_n00101  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(selecs_2_IBUF_2),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(VCC),
    .O(\C6/_n0010 )
  );
  defparam \C3/_n0048/XUSED .LOC = "SLICE_X16Y0";
  X_BUF \C3/_n0048/XUSED  (
    .I(\C3/_n0048 ),
    .O(\C3/_n0048_0 )
  );
  defparam \ALU_03_xo<1>1 .INIT = 16'h963C;
  defparam \ALU_03_xo<1>1 .LOC = "SLICE_X16Y0";
  X_LUT4 \ALU_03_xo<1>1  (
    .ADR0(datoa_1_IBUF_9),
    .ADR1(\C3/_n0053 ),
    .ADR2(\C3/_n0004_0 ),
    .ADR3(datob_3_IBUF_10),
    .O(\C3/_n0048 )
  );
  defparam \resm<0>/PAD .LOC = "PAD136";
  X_OPAD \resm<0>/PAD  (
    .PAD(resm[0])
  );
  defparam resm_0_OBUF.LOC = "PAD136";
  X_OBUF resm_0_OBUF (
    .I(\resm<0>/O ),
    .O(resm[0])
  );
  defparam \resm<0>/OUTPUT/OTCLK1INV .LOC = "PAD136";
  X_INV \resm<0>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\resm<0>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \resm<0>/OUTPUT/OFF/OMUX .LOC = "PAD136";
  X_BUF \resm<0>/OUTPUT/OFF/OMUX  (
    .I(\C6/resulms [0]),
    .O(\resm<0>/O )
  );
  defparam \resm<0>/OUTPUT/OFF/O1INV .LOC = "PAD136";
  X_BUF \resm<0>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0008 [0]),
    .O(\resm<0>/OUTPUT/OFF/O1INV_11 )
  );
  defparam \resm<1>/PAD .LOC = "PAD123";
  X_OPAD \resm<1>/PAD  (
    .PAD(resm[1])
  );
  defparam resm_1_OBUF.LOC = "PAD123";
  X_OBUF resm_1_OBUF (
    .I(\resm<1>/O ),
    .O(resm[1])
  );
  defparam \resm<1>/OUTPUT/OTCLK1INV .LOC = "PAD123";
  X_INV \resm<1>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\resm<1>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \resm<1>/OUTPUT/OFF/OMUX .LOC = "PAD123";
  X_BUF \resm<1>/OUTPUT/OFF/OMUX  (
    .I(\C6/resulms [1]),
    .O(\resm<1>/O )
  );
  defparam \resm<1>/OUTPUT/OFF/O1INV .LOC = "PAD123";
  X_BUF \resm<1>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0008 [1]),
    .O(\resm<1>/OUTPUT/OFF/O1INV_12 )
  );
  defparam \resm<2>/PAD .LOC = "PAD125";
  X_OPAD \resm<2>/PAD  (
    .PAD(resm[2])
  );
  defparam resm_2_OBUF.LOC = "PAD125";
  X_OBUF resm_2_OBUF (
    .I(\resm<2>/O ),
    .O(resm[2])
  );
  defparam \resm<2>/OUTPUT/OTCLK1INV .LOC = "PAD125";
  X_INV \resm<2>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\resm<2>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \resm<2>/OUTPUT/OFF/OMUX .LOC = "PAD125";
  X_BUF \resm<2>/OUTPUT/OFF/OMUX  (
    .I(\C6/resulms [2]),
    .O(\resm<2>/O )
  );
  defparam \resm<2>/OUTPUT/OFF/O1INV .LOC = "PAD125";
  X_BUF \resm<2>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0008 [2]),
    .O(\resm<2>/OUTPUT/OFF/O1INV_13 )
  );
  defparam \resm<3>/PAD .LOC = "PAD130";
  X_OPAD \resm<3>/PAD  (
    .PAD(resm[3])
  );
  defparam resm_3_OBUF.LOC = "PAD130";
  X_OBUF resm_3_OBUF (
    .I(\resm<3>/O ),
    .O(resm[3])
  );
  defparam \resm<3>/OUTPUT/OTCLK1INV .LOC = "PAD130";
  X_INV \resm<3>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\resm<3>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \resm<3>/OUTPUT/OFF/OMUX .LOC = "PAD130";
  X_BUF \resm<3>/OUTPUT/OFF/OMUX  (
    .I(\C6/resulms [3]),
    .O(\resm<3>/O )
  );
  defparam \resm<3>/OUTPUT/OFF/O1INV .LOC = "PAD130";
  X_BUF \resm<3>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0008 [3]),
    .O(\resm<3>/OUTPUT/OFF/O1INV_14 )
  );
  defparam \resm<4>/PAD .LOC = "PAD134";
  X_OPAD \resm<4>/PAD  (
    .PAD(resm[4])
  );
  defparam resm_4_OBUF.LOC = "PAD134";
  X_OBUF resm_4_OBUF (
    .I(\resm<4>/O ),
    .O(resm[4])
  );
  defparam \resm<4>/OUTPUT/OTCLK1INV .LOC = "PAD134";
  X_INV \resm<4>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\resm<4>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \resm<4>/OUTPUT/OFF/OMUX .LOC = "PAD134";
  X_BUF \resm<4>/OUTPUT/OFF/OMUX  (
    .I(\C6/resulms [4]),
    .O(\resm<4>/O )
  );
  defparam \resm<4>/OUTPUT/OFF/O1INV .LOC = "PAD134";
  X_BUF \resm<4>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0008 [4]),
    .O(\resm<4>/OUTPUT/OFF/O1INV_15 )
  );
  defparam \resm<5>/PAD .LOC = "PAD135";
  X_OPAD \resm<5>/PAD  (
    .PAD(resm[5])
  );
  defparam resm_5_OBUF.LOC = "PAD135";
  X_OBUF resm_5_OBUF (
    .I(\resm<5>/O ),
    .O(resm[5])
  );
  defparam \resm<5>/OUTPUT/OTCLK1INV .LOC = "PAD135";
  X_INV \resm<5>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\resm<5>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \resm<5>/OUTPUT/OFF/OMUX .LOC = "PAD135";
  X_BUF \resm<5>/OUTPUT/OFF/OMUX  (
    .I(\C6/resulms [5]),
    .O(\resm<5>/O )
  );
  defparam \resm<5>/OUTPUT/OFF/O1INV .LOC = "PAD135";
  X_BUF \resm<5>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0008 [5]),
    .O(\resm<5>/OUTPUT/OFF/O1INV_16 )
  );
  defparam \resm<6>/PAD .LOC = "PAD129";
  X_OPAD \resm<6>/PAD  (
    .PAD(resm[6])
  );
  defparam resm_6_OBUF.LOC = "PAD129";
  X_OBUF resm_6_OBUF (
    .I(\resm<6>/O ),
    .O(resm[6])
  );
  defparam \resm<6>/OUTPUT/OTCLK1INV .LOC = "PAD129";
  X_INV \resm<6>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\resm<6>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \resm<6>/OUTPUT/OFF/OMUX .LOC = "PAD129";
  X_BUF \resm<6>/OUTPUT/OFF/OMUX  (
    .I(\C6/resulms [6]),
    .O(\resm<6>/O )
  );
  defparam \resm<6>/OUTPUT/OFF/O1INV .LOC = "PAD129";
  X_BUF \resm<6>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0008 [6]),
    .O(\resm<6>/OUTPUT/OFF/O1INV_17 )
  );
  defparam \datoa<0>/PAD .LOC = "PAD124";
  X_IPAD \datoa<0>/PAD  (
    .PAD(datoa[0])
  );
  defparam datoa_0_IBUF.LOC = "PAD124";
  X_BUF datoa_0_IBUF (
    .I(datoa[0]),
    .O(\datoa<0>/INBUF )
  );
  defparam \datoa<0>/IFF/IFFDMUX .LOC = "PAD124";
  X_BUF \datoa<0>/IFF/IFFDMUX  (
    .I(\datoa<0>/INBUF ),
    .O(\datoa<0>/IFF/IFFDMUX_19 )
  );
  defparam \datoa<0>/IFF/IMUX .LOC = "PAD124";
  X_BUF \datoa<0>/IFF/IMUX  (
    .I(\datoa<0>/INBUF ),
    .O(datoa_0_IBUF_8)
  );
  defparam \datoa<0>/IFF/ICLK1INV .LOC = "PAD124";
  X_BUF \datoa<0>/IFF/ICLK1INV  (
    .I(CLK_BUFGP),
    .O(\datoa<0>/IFF/ICLK1INV_18 )
  );
  defparam \C4/tmp_1 .LOC = "PAD124";
  defparam \C4/tmp_1 .INIT = 1'b0;
  X_FF \C4/tmp_1  (
    .I(\datoa<0>/IFF/IFFDMUX_19 ),
    .CE(VCC),
    .CLK(\datoa<0>/IFF/ICLK1INV_18 ),
    .SET(GND),
    .RST(GND),
    .O(\C4/tmp [1])
  );
  defparam \res<0>/PAD .LOC = "PAD120";
  X_OPAD \res<0>/PAD  (
    .PAD(res[0])
  );
  defparam res_0_OBUF.LOC = "PAD120";
  X_OBUF res_0_OBUF (
    .I(\res<0>/O ),
    .O(res[0])
  );
  defparam \res<0>/OUTPUT/OTCLK1INV .LOC = "PAD120";
  X_INV \res<0>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\res<0>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \res<0>/OUTPUT/OFF/OMUX .LOC = "PAD120";
  X_BUF \res<0>/OUTPUT/OFF/OMUX  (
    .I(\C6/results [0]),
    .O(\res<0>/O )
  );
  defparam \res<0>/OUTPUT/OFF/O1INV .LOC = "PAD120";
  X_BUF \res<0>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0009 [0]),
    .O(\res<0>/OUTPUT/OFF/O1INV_20 )
  );
  defparam \resm<7>/PAD .LOC = "PAD149";
  X_OPAD \resm<7>/PAD  (
    .PAD(resm[7])
  );
  defparam resm_7_OBUF.LOC = "PAD149";
  X_OBUF resm_7_OBUF (
    .I(\resm<7>/O ),
    .O(resm[7])
  );
  defparam \datoa<1>/PAD .LOC = "PAD128";
  X_IPAD \datoa<1>/PAD  (
    .PAD(datoa[1])
  );
  defparam datoa_1_IBUF.LOC = "PAD128";
  X_BUF datoa_1_IBUF (
    .I(datoa[1]),
    .O(\datoa<1>/INBUF )
  );
  defparam \res<1>/PAD .LOC = "PAD133";
  X_OPAD \res<1>/PAD  (
    .PAD(res[1])
  );
  defparam res_1_OBUF.LOC = "PAD133";
  X_OBUF res_1_OBUF (
    .I(\res<1>/O ),
    .O(res[1])
  );
  defparam \res<1>/OUTPUT/OTCLK1INV .LOC = "PAD133";
  X_INV \res<1>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\res<1>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \res<1>/OUTPUT/OFF/OMUX .LOC = "PAD133";
  X_BUF \res<1>/OUTPUT/OFF/OMUX  (
    .I(\C6/results [1]),
    .O(\res<1>/O )
  );
  defparam \res<1>/OUTPUT/OFF/O1INV .LOC = "PAD133";
  X_BUF \res<1>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0009 [1]),
    .O(\res<1>/OUTPUT/OFF/O1INV_21 )
  );
  defparam \datoa<2>/PAD .LOC = "PAD119";
  X_IPAD \datoa<2>/PAD  (
    .PAD(datoa[2])
  );
  defparam datoa_2_IBUF.LOC = "PAD119";
  X_BUF datoa_2_IBUF (
    .I(datoa[2]),
    .O(\datoa<2>/INBUF )
  );
  defparam \datoa<2>/IFF/IFFDMUX .LOC = "PAD119";
  X_BUF \datoa<2>/IFF/IFFDMUX  (
    .I(\datoa<2>/INBUF ),
    .O(\datoa<2>/IFF/IFFDMUX_23 )
  );
  defparam \datoa<2>/IFF/IMUX .LOC = "PAD119";
  X_BUF \datoa<2>/IFF/IMUX  (
    .I(\datoa<2>/INBUF ),
    .O(datoa_2_IBUF_1)
  );
  defparam \datoa<2>/IFF/ICLK1INV .LOC = "PAD119";
  X_BUF \datoa<2>/IFF/ICLK1INV  (
    .I(CLK_BUFGP),
    .O(\datoa<2>/IFF/ICLK1INV_22 )
  );
  defparam \C4/tmp_3 .LOC = "PAD119";
  defparam \C4/tmp_3 .INIT = 1'b0;
  X_FF \C4/tmp_3  (
    .I(\datoa<2>/IFF/IFFDMUX_23 ),
    .CE(VCC),
    .CLK(\datoa<2>/IFF/ICLK1INV_22 ),
    .SET(GND),
    .RST(GND),
    .O(\C4/tmp [3])
  );
  defparam \res<2>/PAD .LOC = "PAD132";
  X_OPAD \res<2>/PAD  (
    .PAD(res[2])
  );
  defparam res_2_OBUF.LOC = "PAD132";
  X_OBUF res_2_OBUF (
    .I(\res<2>/O ),
    .O(res[2])
  );
  defparam \res<2>/OUTPUT/OTCLK1INV .LOC = "PAD132";
  X_INV \res<2>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\res<2>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \res<2>/OUTPUT/OFF/OMUX .LOC = "PAD132";
  X_BUF \res<2>/OUTPUT/OFF/OMUX  (
    .I(\C6/results [2]),
    .O(\res<2>/O )
  );
  defparam \res<2>/OUTPUT/OFF/O1INV .LOC = "PAD132";
  X_BUF \res<2>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0009 [2]),
    .O(\res<2>/OUTPUT/OFF/O1INV_24 )
  );
  defparam \datoa<3>/PAD .LOC = "PAD122";
  X_IPAD \datoa<3>/PAD  (
    .PAD(datoa[3])
  );
  defparam datoa_3_IBUF.LOC = "PAD122";
  X_BUF datoa_3_IBUF (
    .I(datoa[3]),
    .O(\datoa<3>/INBUF )
  );
  defparam \datoa<3>/IFF/IFFDMUX .LOC = "PAD122";
  X_BUF \datoa<3>/IFF/IFFDMUX  (
    .I(\datoa<3>/INBUF ),
    .O(\datoa<3>/IFF/IFFDMUX_26 )
  );
  defparam \datoa<3>/IFF/IMUX .LOC = "PAD122";
  X_BUF \datoa<3>/IFF/IMUX  (
    .I(\datoa<3>/INBUF ),
    .O(datoa_3_IBUF_5)
  );
  defparam \datoa<3>/IFF/ICLK1INV .LOC = "PAD122";
  X_BUF \datoa<3>/IFF/ICLK1INV  (
    .I(CLK_BUFGP),
    .O(\datoa<3>/IFF/ICLK1INV_25 )
  );
  defparam \C4/tmp_0 .LOC = "PAD122";
  defparam \C4/tmp_0 .INIT = 1'b0;
  X_FF \C4/tmp_0  (
    .I(\datoa<3>/IFF/IFFDMUX_26 ),
    .CE(VCC),
    .CLK(\datoa<3>/IFF/ICLK1INV_25 ),
    .SET(GND),
    .RST(GND),
    .O(\C4/tmp [0])
  );
  defparam \res<3>/OUTPUT/OTCLK1INV .LOC = "PAD118";
  X_INV \res<3>/OUTPUT/OTCLK1INV  (
    .I(\C6/_n0010_0 ),
    .O(\res<3>/OUTPUT/OTCLK1INVNOT )
  );
  defparam \res<3>/PAD .LOC = "PAD118";
  X_OPAD \res<3>/PAD  (
    .PAD(res[3])
  );
  defparam res_3_OBUF.LOC = "PAD118";
  X_OBUF res_3_OBUF (
    .I(\res<3>/O ),
    .O(res[3])
  );
  defparam \res<3>/OUTPUT/OFF/OMUX .LOC = "PAD118";
  X_BUF \res<3>/OUTPUT/OFF/OMUX  (
    .I(\C6/results [3]),
    .O(\res<3>/O )
  );
  defparam \res<3>/OUTPUT/OFF/O1INV .LOC = "PAD118";
  X_BUF \res<3>/OUTPUT/OFF/O1INV  (
    .I(\C6/_n0009 [3]),
    .O(\res<3>/OUTPUT/OFF/O1INV_27 )
  );
  defparam \datob<0>/PAD .LOC = "PAD121";
  X_IPAD \datob<0>/PAD  (
    .PAD(datob[0])
  );
  defparam datob_0_IBUF.LOC = "PAD121";
  X_BUF datob_0_IBUF (
    .I(datob[0]),
    .O(\datob<0>/INBUF )
  );
  defparam \datob<0>/IFF/IFFDMUX .LOC = "PAD121";
  X_BUF \datob<0>/IFF/IFFDMUX  (
    .I(\datob<0>/INBUF ),
    .O(\datob<0>/IFF/IFFDMUX_29 )
  );
  defparam \datob<0>/IFF/IMUX .LOC = "PAD121";
  X_BUF \datob<0>/IFF/IMUX  (
    .I(\datob<0>/INBUF ),
    .O(datob_0_IBUF_7)
  );
  defparam \datob<0>/IFF/ICLK1INV .LOC = "PAD121";
  X_BUF \datob<0>/IFF/ICLK1INV  (
    .I(CLK_BUFGP),
    .O(\datob<0>/IFF/ICLK1INV_28 )
  );
  defparam \C5/tmpo_3 .LOC = "PAD121";
  defparam \C5/tmpo_3 .INIT = 1'b0;
  X_FF \C5/tmpo_3  (
    .I(\datob<0>/IFF/IFFDMUX_29 ),
    .CE(VCC),
    .CLK(\datob<0>/IFF/ICLK1INV_28 ),
    .SET(GND),
    .RST(GND),
    .O(\C5/tmpo [3])
  );
  defparam \datob<1>/PAD .LOC = "PAD127";
  X_IPAD \datob<1>/PAD  (
    .PAD(datob[1])
  );
  defparam datob_1_IBUF.LOC = "PAD127";
  X_BUF datob_1_IBUF (
    .I(datob[1]),
    .O(\datob<1>/INBUF )
  );
  defparam \datob<1>/IFF/IFFDMUX .LOC = "PAD127";
  X_BUF \datob<1>/IFF/IFFDMUX  (
    .I(\datob<1>/INBUF ),
    .O(\datob<1>/IFF/IFFDMUX_31 )
  );
  defparam \datob<1>/IFF/IMUX .LOC = "PAD127";
  X_BUF \datob<1>/IFF/IMUX  (
    .I(\datob<1>/INBUF ),
    .O(datob_1_IBUF_6)
  );
  defparam \datob<1>/IFF/ICLK1INV .LOC = "PAD127";
  X_BUF \datob<1>/IFF/ICLK1INV  (
    .I(CLK_BUFGP),
    .O(\datob<1>/IFF/ICLK1INV_30 )
  );
  defparam \C5/tmpo_0 .LOC = "PAD127";
  defparam \C5/tmpo_0 .INIT = 1'b0;
  X_FF \C5/tmpo_0  (
    .I(\datob<1>/IFF/IFFDMUX_31 ),
    .CE(VCC),
    .CLK(\datob<1>/IFF/ICLK1INV_30 ),
    .SET(GND),
    .RST(GND),
    .O(\C5/tmpo [0])
  );
  defparam \datob<2>/PAD .LOC = "PAD126";
  X_IPAD \datob<2>/PAD  (
    .PAD(datob[2])
  );
  defparam datob_2_IBUF.LOC = "PAD126";
  X_BUF datob_2_IBUF (
    .I(datob[2]),
    .O(\datob<2>/INBUF )
  );
  defparam \datob<2>/IFF/IFFDMUX .LOC = "PAD126";
  X_BUF \datob<2>/IFF/IFFDMUX  (
    .I(\datob<2>/INBUF ),
    .O(\datob<2>/IFF/IFFDMUX_33 )
  );
  defparam \datob<2>/IFF/IMUX .LOC = "PAD126";
  X_BUF \datob<2>/IFF/IMUX  (
    .I(\datob<2>/INBUF ),
    .O(datob_2_IBUF_0)
  );
  defparam \datob<2>/IFF/ICLK1INV .LOC = "PAD126";
  X_BUF \datob<2>/IFF/ICLK1INV  (
    .I(CLK_BUFGP),
    .O(\datob<2>/IFF/ICLK1INV_32 )
  );
  defparam \C5/tmpo_1 .LOC = "PAD126";
  defparam \C5/tmpo_1 .INIT = 1'b0;
  X_FF \C5/tmpo_1  (
    .I(\datob<2>/IFF/IFFDMUX_33 ),
    .CE(VCC),
    .CLK(\datob<2>/IFF/ICLK1INV_32 ),
    .SET(GND),
    .RST(GND),
    .O(\C5/tmpo [1])
  );
  defparam \datob<3>/PAD .LOC = "PAD131";
  X_IPAD \datob<3>/PAD  (
    .PAD(datob[3])
  );
  defparam datob_3_IBUF.LOC = "PAD131";
  X_BUF datob_3_IBUF (
    .I(datob[3]),
    .O(\datob<3>/INBUF )
  );
  defparam \datob<3>/IFF/IFFDMUX .LOC = "PAD131";
  X_BUF \datob<3>/IFF/IFFDMUX  (
    .I(\datob<3>/INBUF ),
    .O(\datob<3>/IFF/IFFDMUX_35 )
  );
  defparam \datob<3>/IFF/IMUX .LOC = "PAD131";
  X_BUF \datob<3>/IFF/IMUX  (
    .I(\datob<3>/INBUF ),
    .O(datob_3_IBUF_10)
  );
  defparam \datob<3>/IFF/ICLK1INV .LOC = "PAD131";
  X_BUF \datob<3>/IFF/ICLK1INV  (
    .I(CLK_BUFGP),
    .O(\datob<3>/IFF/ICLK1INV_34 )
  );
  defparam \C5/tmpo_2 .LOC = "PAD131";
  defparam \C5/tmpo_2 .INIT = 1'b0;
  X_FF \C5/tmpo_2  (
    .I(\datob<3>/IFF/IFFDMUX_35 ),
    .CE(VCC),
    .CLK(\datob<3>/IFF/ICLK1INV_34 ),
    .SET(GND),
    .RST(GND),
    .O(\C5/tmpo [2])
  );
  defparam \selecs<1>/PAD .LOC = "PAD115";
  X_IPAD \selecs<1>/PAD  (
    .PAD(selecs[1])
  );
  defparam selecs_1_IBUF.LOC = "PAD115";
  X_BUF selecs_1_IBUF (
    .I(selecs[1]),
    .O(\selecs<1>/INBUF )
  );
  defparam \selecs<1>/IFF/IMUX .LOC = "PAD115";
  X_BUF \selecs<1>/IFF/IMUX  (
    .I(\selecs<1>/INBUF ),
    .O(selecs_1_IBUF_3)
  );
  defparam \selecs<0>/PAD .LOC = "PAD116";
  X_IPAD \selecs<0>/PAD  (
    .PAD(selecs[0])
  );
  defparam selecs_0_IBUF.LOC = "PAD116";
  X_BUF selecs_0_IBUF (
    .I(selecs[0]),
    .O(\selecs<0>/INBUF )
  );
  defparam \selecs<0>/IFF/IMUX .LOC = "PAD116";
  X_BUF \selecs<0>/IFF/IMUX  (
    .I(\selecs<0>/INBUF ),
    .O(selecs_0_IBUF_4)
  );
  defparam \selecs<2>/PAD .LOC = "PAD117";
  X_IPAD \selecs<2>/PAD  (
    .PAD(selecs[2])
  );
  defparam selecs_2_IBUF.LOC = "PAD117";
  X_BUF selecs_2_IBUF (
    .I(selecs[2]),
    .O(\selecs<2>/INBUF )
  );
  defparam \selecs<2>/IFF/IMUX .LOC = "PAD117";
  X_BUF \selecs<2>/IFF/IMUX  (
    .I(\selecs<2>/INBUF ),
    .O(selecs_2_IBUF_2)
  );
  defparam \C6/resulms_0 .LOC = "PAD136";
  defparam \C6/resulms_0 .INIT = 1'b0;
  X_LATCHE \C6/resulms_0  (
    .I(\resm<0>/OUTPUT/OFF/O1INV_11 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/resulms_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/resulms [0])
  );
  defparam \C6/resulms_1 .LOC = "PAD123";
  defparam \C6/resulms_1 .INIT = 1'b0;
  X_LATCHE \C6/resulms_1  (
    .I(\resm<1>/OUTPUT/OFF/O1INV_12 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/resulms_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/resulms [1])
  );
  defparam \C6/resulms_2 .LOC = "PAD125";
  defparam \C6/resulms_2 .INIT = 1'b0;
  X_LATCHE \C6/resulms_2  (
    .I(\resm<2>/OUTPUT/OFF/O1INV_13 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/resulms_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/resulms [2])
  );
  defparam \C6/resulms_3 .LOC = "PAD130";
  defparam \C6/resulms_3 .INIT = 1'b0;
  X_LATCHE \C6/resulms_3  (
    .I(\resm<3>/OUTPUT/OFF/O1INV_14 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/resulms_3/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/resulms [3])
  );
  defparam \C6/resulms_4 .LOC = "PAD134";
  defparam \C6/resulms_4 .INIT = 1'b0;
  X_LATCHE \C6/resulms_4  (
    .I(\resm<4>/OUTPUT/OFF/O1INV_15 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/resulms_4/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/resulms [4])
  );
  defparam \C6/resulms_5 .LOC = "PAD135";
  defparam \C6/resulms_5 .INIT = 1'b0;
  X_LATCHE \C6/resulms_5  (
    .I(\resm<5>/OUTPUT/OFF/O1INV_16 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/resulms_5/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/resulms [5])
  );
  defparam \C6/resulms_6 .LOC = "PAD129";
  defparam \C6/resulms_6 .INIT = 1'b0;
  X_LATCHE \C6/resulms_6  (
    .I(\resm<6>/OUTPUT/OFF/O1INV_17 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/resulms_6/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/resulms [6])
  );
  defparam \C6/results_0 .LOC = "PAD120";
  defparam \C6/results_0 .INIT = 1'b0;
  X_LATCHE \C6/results_0  (
    .I(\res<0>/OUTPUT/OFF/O1INV_20 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/results_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/results [0])
  );
  defparam \C4/tmp_2 .LOC = "PAD128";
  defparam \C4/tmp_2 .INIT = 1'b0;
  X_FF \C4/tmp_2  (
    .I(\datoa<1>/IFF/IFFDMUX_37 ),
    .CE(VCC),
    .CLK(\datoa<1>/IFF/ICLK1INV_36 ),
    .SET(GND),
    .RST(GND),
    .O(\C4/tmp [2])
  );
  defparam \datoa<1>/IFF/IFFDMUX .LOC = "PAD128";
  X_BUF \datoa<1>/IFF/IFFDMUX  (
    .I(\datoa<1>/INBUF ),
    .O(\datoa<1>/IFF/IFFDMUX_37 )
  );
  defparam \datoa<1>/IFF/IMUX .LOC = "PAD128";
  X_BUF \datoa<1>/IFF/IMUX  (
    .I(\datoa<1>/INBUF ),
    .O(datoa_1_IBUF_9)
  );
  defparam \datoa<1>/IFF/ICLK1INV .LOC = "PAD128";
  X_BUF \datoa<1>/IFF/ICLK1INV  (
    .I(CLK_BUFGP),
    .O(\datoa<1>/IFF/ICLK1INV_36 )
  );
  defparam \C6/results_1 .LOC = "PAD133";
  defparam \C6/results_1 .INIT = 1'b0;
  X_LATCHE \C6/results_1  (
    .I(\res<1>/OUTPUT/OFF/O1INV_21 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/results_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/results [1])
  );
  defparam \C6/results_2 .LOC = "PAD132";
  defparam \C6/results_2 .INIT = 1'b0;
  X_LATCHE \C6/results_2  (
    .I(\res<2>/OUTPUT/OFF/O1INV_24 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/results_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/results [2])
  );
  defparam \C6/results_3 .LOC = "PAD118";
  defparam \C6/results_3 .INIT = 1'b0;
  X_LATCHE \C6/results_3  (
    .I(\res<3>/OUTPUT/OFF/O1INV_27 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_C6/results_3/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\C6/results [3])
  );
  defparam \selecs<1>_rn_1_SW0_SW0 .INIT = 16'h0FF0;
  defparam \selecs<1>_rn_1_SW0_SW0 .LOC = "SLICE_X19Y1";
  X_LUT4 \selecs<1>_rn_1_SW0_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(datob_2_IBUF_0),
    .ADR3(datoa_2_IBUF_1),
    .O(N68)
  );
  defparam \C6/_n0008<4> .INIT = 16'h0002;
  defparam \C6/_n0008<4> .LOC = "SLICE_X14Y1";
  X_LUT4 \C6/_n0008<4>  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(selecs_2_IBUF_2),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(N46),
    .O(\C6/_n0008 [4])
  );
  defparam \selecs<1>_rn_2_SW0_SW2 .INIT = 16'h2BD4;
  defparam \selecs<1>_rn_2_SW0_SW2 .LOC = "SLICE_X21Y0";
  X_LUT4 \selecs<1>_rn_2_SW0_SW2  (
    .ADR0(datoa_2_IBUF_1),
    .ADR1(\C2/cable1 [1]),
    .ADR2(datob_2_IBUF_0),
    .ADR3(datoa_3_IBUF_5),
    .O(N73)
  );
  defparam \C3/_n00101 .INIT = 16'hE8C0;
  defparam \C3/_n00101 .LOC = "SLICE_X15Y0";
  X_LUT4 \C3/_n00101  (
    .ADR0(\C3/_n0048_0 ),
    .ADR1(\C3/_n0007_0 ),
    .ADR2(\C3/_n0051 ),
    .ADR3(\C3/_n0006_0 ),
    .O(\C3/_n0010 )
  );
  defparam \selecs<2>31 .INIT = 16'hBB88;
  defparam \selecs<2>31 .LOC = "SLICE_X22Y0";
  X_LUT4 \selecs<2>31  (
    .ADR0(\C5/tmpo [3]),
    .ADR1(selecs_2_IBUF_2),
    .ADR2(VCC),
    .ADR3(\mux_1_selecs<1>_MUXF53 ),
    .O(\C6/_n0009 [3])
  );
  defparam \selecs<1>_rn_2_SW0 .INIT = 16'h596A;
  defparam \selecs<1>_rn_2_SW0 .LOC = "SLICE_X20Y0";
  X_LUT4 \selecs<1>_rn_2_SW0  (
    .ADR0(datob_3_IBUF_10),
    .ADR1(selecs_0_IBUF_4),
    .ADR2(N73_0),
    .ADR3(N72),
    .O(N64)
  );
  defparam \C3/_n00031 .INIT = 16'hE888;
  defparam \C3/_n00031 .LOC = "SLICE_X19Y3";
  X_LUT4 \C3/_n00031  (
    .ADR0(\C3/_n0049 ),
    .ADR1(\C3/_n0000_0 ),
    .ADR2(datob_2_IBUF_0),
    .ADR3(datoa_0_IBUF_8),
    .O(\C3/_n0003 )
  );
  defparam \C6/_n0008<5> .INIT = 16'h0002;
  defparam \C6/_n0008<5> .LOC = "SLICE_X15Y1";
  X_LUT4 \C6/_n0008<5>  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(selecs_0_IBUF_4),
    .ADR2(selecs_2_IBUF_2),
    .ADR3(N52),
    .O(\C6/_n0008 [5])
  );
  defparam \C3/_n00061 .INIT = 16'hF880;
  defparam \C3/_n00061 .LOC = "SLICE_X16Y3";
  X_LUT4 \C3/_n00061  (
    .ADR0(datoa_0_IBUF_8),
    .ADR1(datob_3_IBUF_10),
    .ADR2(xo_ALU_02_xo[1]),
    .ADR3(\C3/_n0003_0 ),
    .O(\C3/_n0006 )
  );
  defparam \C6/_n0008<2> .INIT = 16'h0002;
  defparam \C6/_n0008<2> .LOC = "SLICE_X18Y2";
  X_LUT4 \C6/_n0008<2>  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(selecs_2_IBUF_2),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(N56),
    .O(\C6/_n0008 [2])
  );
  defparam \selecs<2>4 .INIT = 16'hF5A0;
  defparam \selecs<2>4 .LOC = "SLICE_X19Y0";
  X_LUT4 \selecs<2>4  (
    .ADR0(selecs_2_IBUF_2),
    .ADR1(VCC),
    .ADR2(\C5/tmpo [0]),
    .ADR3(\mux_1_selecs<1>_MUXF5 ),
    .O(\C6/_n0009 [0])
  );
  defparam \C3/_n00041 .INIT = 16'hF880;
  defparam \C3/_n00041 .LOC = "SLICE_X17Y2";
  X_LUT4 \C3/_n00041  (
    .ADR0(datoa_1_IBUF_9),
    .ADR1(datob_2_IBUF_0),
    .ADR2(\C3/_n0050 ),
    .ADR3(\C3/_n0001_0 ),
    .O(\C3/_n0004 )
  );
  defparam \C6/_n0008<0>2 .INIT = 16'h00CC;
  defparam \C6/_n0008<0>2 .LOC = "SLICE_X14Y2";
  X_LUT4 \C6/_n0008<0>2  (
    .ADR0(VCC),
    .ADR1(datoa_0_IBUF_8),
    .ADR2(VCC),
    .ADR3(N2),
    .O(\C6/_n0008 [0])
  );
  defparam \C6/_n0008<6> .INIT = 16'h0002;
  defparam \C6/_n0008<6> .LOC = "SLICE_X14Y0";
  X_LUT4 \C6/_n0008<6>  (
    .ADR0(selecs_1_IBUF_3),
    .ADR1(selecs_2_IBUF_2),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(N48),
    .O(\C6/_n0008 [6])
  );
  defparam \C6/_n0008<3> .INIT = 16'h0100;
  defparam \C6/_n0008<3> .LOC = "SLICE_X17Y3";
  X_LUT4 \C6/_n0008<3>  (
    .ADR0(N54),
    .ADR1(selecs_0_IBUF_4),
    .ADR2(selecs_2_IBUF_2),
    .ADR3(selecs_1_IBUF_3),
    .O(\C6/_n0008 [3])
  );
  defparam \C6/_n0008<1> .INIT = 16'h0010;
  defparam \C6/_n0008<1> .LOC = "SLICE_X20Y1";
  X_LUT4 \C6/_n0008<1>  (
    .ADR0(N50),
    .ADR1(selecs_0_IBUF_4),
    .ADR2(selecs_1_IBUF_3),
    .ADR3(selecs_2_IBUF_2),
    .O(\C6/_n0008 [1])
  );
  defparam \C3/_n00011 .INIT = 16'h8000;
  defparam \C3/_n00011 .LOC = "SLICE_X18Y3";
  X_LUT4 \C3/_n00011  (
    .ADR0(datoa_2_IBUF_1),
    .ADR1(datob_0_IBUF_7),
    .ADR2(datoa_1_IBUF_9),
    .ADR3(datob_1_IBUF_6),
    .O(\C3/_n0001 )
  );
  defparam \selecs<1>_rn_1_SW0 .INIT = 16'h656A;
  defparam \selecs<1>_rn_1_SW0 .LOC = "SLICE_X21Y1";
  X_LUT4 \selecs<1>_rn_1_SW0  (
    .ADR0(N68_0),
    .ADR1(\C2/cable1 [1]),
    .ADR2(selecs_0_IBUF_4),
    .ADR3(\C1/cable [1]),
    .O(N62)
  );
  defparam \C3/_n00071 .INIT = 16'hE8C0;
  defparam \C3/_n00071 .LOC = "SLICE_X17Y0";
  X_LUT4 \C3/_n00071  (
    .ADR0(datob_3_IBUF_10),
    .ADR1(\C3/_n0004_0 ),
    .ADR2(\C3/_n0053 ),
    .ADR3(datoa_1_IBUF_9),
    .O(\C3/_n0007 )
  );
  defparam \selecs<2>11 .INIT = 16'hAACC;
  defparam \selecs<2>11 .LOC = "SLICE_X18Y0";
  X_LUT4 \selecs<2>11  (
    .ADR0(\C5/tmpo [1]),
    .ADR1(\mux_1_selecs<1>_MUXF51 ),
    .ADR2(VCC),
    .ADR3(selecs_2_IBUF_2),
    .O(\C6/_n0009 [1])
  );
  defparam \selecs<1>_rn_0_SW0 .INIT = 16'hD278;
  defparam \selecs<1>_rn_0_SW0 .LOC = "SLICE_X18Y1";
  X_LUT4 \selecs<1>_rn_0_SW0  (
    .ADR0(datob_0_IBUF_7),
    .ADR1(selecs_0_IBUF_4),
    .ADR2(N66),
    .ADR3(datoa_0_IBUF_8),
    .O(N60)
  );
  defparam \selecs<2>21 .INIT = 16'hFC30;
  defparam \selecs<2>21 .LOC = "SLICE_X16Y1";
  X_LUT4 \selecs<2>21  (
    .ADR0(VCC),
    .ADR1(selecs_2_IBUF_2),
    .ADR2(\mux_1_selecs<1>_MUXF52 ),
    .ADR3(\C5/tmpo [2]),
    .O(\C6/_n0009 [2])
  );
  defparam \C3/_n00331 .INIT = 16'h0020;
  defparam \C3/_n00331 .LOC = "SLICE_X17Y1";
  X_LUT4 \C3/_n00331  (
    .ADR0(datob_0_IBUF_7),
    .ADR1(N9_0),
    .ADR2(datoa_3_IBUF_5),
    .ADR3(N19),
    .O(\C3/_n0033 )
  );
  X_ONE GLOBAL_LOGIC1_VCC (
    .O(GLOBAL_LOGIC1)
  );
  X_ZERO GLOBAL_LOGIC0_GND (
    .O(GLOBAL_LOGIC0)
  );
  defparam \resm<7>/OUTPUT/OFF/OMUX .LOC = "PAD149";
  X_BUF \resm<7>/OUTPUT/OFF/OMUX  (
    .I(GLOBAL_LOGIC0),
    .O(\resm<7>/O )
  );
  X_ZERO NlwBlock_ALU_GND (
    .O(GND)
  );
  X_ONE NlwBlock_ALU_VCC (
    .O(VCC)
  );
  X_INV \NlwInverterBlock_C6/resulms_0/CLK  (
    .I(\resm<0>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/resulms_0/CLK )
  );
  X_INV \NlwInverterBlock_C6/resulms_1/CLK  (
    .I(\resm<1>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/resulms_1/CLK )
  );
  X_INV \NlwInverterBlock_C6/resulms_2/CLK  (
    .I(\resm<2>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/resulms_2/CLK )
  );
  X_INV \NlwInverterBlock_C6/resulms_3/CLK  (
    .I(\resm<3>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/resulms_3/CLK )
  );
  X_INV \NlwInverterBlock_C6/resulms_4/CLK  (
    .I(\resm<4>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/resulms_4/CLK )
  );
  X_INV \NlwInverterBlock_C6/resulms_5/CLK  (
    .I(\resm<5>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/resulms_5/CLK )
  );
  X_INV \NlwInverterBlock_C6/resulms_6/CLK  (
    .I(\resm<6>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/resulms_6/CLK )
  );
  X_INV \NlwInverterBlock_C6/results_0/CLK  (
    .I(\res<0>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/results_0/CLK )
  );
  X_INV \NlwInverterBlock_C6/results_1/CLK  (
    .I(\res<1>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/results_1/CLK )
  );
  X_INV \NlwInverterBlock_C6/results_2/CLK  (
    .I(\res<2>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/results_2/CLK )
  );
  X_INV \NlwInverterBlock_C6/results_3/CLK  (
    .I(\res<3>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_C6/results_3/CLK )
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

