////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2005 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: I.24
//  \   \         Application: netgen
//  /   /         Filename: leftshifter_timesim.v
// /___/   /\     Timestamp: Sun Apr 15 20:16:37 2007
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf leftshifter.pcf -sdf_anno true -sdf_path netgen/par -w -dir netgen/par -ofmt verilog -sim leftshifter.ncd leftshifter_timesim.v 
// Device	: xa3s200ftg256-4 (PRODUCTION 1.37 2005-11-04)
// Input file	: leftshifter.ncd
// Output file	: D:\Documentos\XILINXPROYECTOS\aluparc\netgen\par\leftshifter_timesim.v
// # of Modules	: 1
// Design Name	: leftshifter
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

module leftshifter (
  CLKL, DIN, DESL, LEFT
);
  input CLKL;
  input [3 : 0] DIN;
  input [3 : 0] DESL;
  output [3 : 0] LEFT;
  wire CLKL_BUFGP;
  wire GLOBAL_LOGIC1;
  wire \DIN<0>/INBUF ;
  wire \DIN<1>/INBUF ;
  wire \DIN<2>/INBUF ;
  wire \DIN<3>/INBUF ;
  wire \CLKL/INBUF ;
  wire \LEFT<0>/O ;
  wire \LEFT<1>/O ;
  wire \LEFT<2>/O ;
  wire \LEFT<3>/O ;
  wire \CLKL_BUFGP/BUFG/S_INVNOT ;
  wire \CLKL_BUFGP/BUFG/I0_INV ;
  wire \DIN<0>/IFF/ICLK1INV_0 ;
  wire \DIN<0>/IFF/IFFDMUX_1 ;
  wire \DIN<1>/IFF/ICLK1INV_2 ;
  wire \DIN<1>/IFF/IFFDMUX_3 ;
  wire \DIN<2>/IFF/ICLK1INV_4 ;
  wire \DIN<2>/IFF/IFFDMUX_5 ;
  wire \DIN<3>/IFF/ICLK1INV_6 ;
  wire \DIN<3>/IFF/IFFDMUX_7 ;
  wire GND;
  wire VCC;
  wire [3 : 0] tmp;
  initial $sdf_annotate("netgen/par/leftshifter_timesim.sdf");
  defparam \DIN<0>/PAD .LOC = "PAD88";
  X_IPAD \DIN<0>/PAD  (
    .PAD(DIN[0])
  );
  defparam DIN_0_IBUF.LOC = "PAD88";
  X_BUF DIN_0_IBUF (
    .I(DIN[0]),
    .O(\DIN<0>/INBUF )
  );
  defparam \DIN<1>/PAD .LOC = "PAD181";
  X_IPAD \DIN<1>/PAD  (
    .PAD(DIN[1])
  );
  defparam DIN_1_IBUF.LOC = "PAD181";
  X_BUF DIN_1_IBUF (
    .I(DIN[1]),
    .O(\DIN<1>/INBUF )
  );
  defparam \DIN<2>/PAD .LOC = "PAD119";
  X_IPAD \DIN<2>/PAD  (
    .PAD(DIN[2])
  );
  defparam DIN_2_IBUF.LOC = "PAD119";
  X_BUF DIN_2_IBUF (
    .I(DIN[2]),
    .O(\DIN<2>/INBUF )
  );
  defparam \DIN<3>/PAD .LOC = "PAD53";
  X_IPAD \DIN<3>/PAD  (
    .PAD(DIN[3])
  );
  defparam DIN_3_IBUF.LOC = "PAD53";
  X_BUF DIN_3_IBUF (
    .I(DIN[3]),
    .O(\DIN<3>/INBUF )
  );
  defparam \CLKL/PAD .LOC = "PAD125";
  X_IPAD \CLKL/PAD  (
    .PAD(CLKL)
  );
  defparam \CLKL_BUFGP/IBUFG .LOC = "PAD125";
  X_BUF \CLKL_BUFGP/IBUFG  (
    .I(CLKL),
    .O(\CLKL/INBUF )
  );
  defparam \LEFT<0>/PAD .LOC = "PAD54";
  X_OPAD \LEFT<0>/PAD  (
    .PAD(LEFT[0])
  );
  defparam LEFT_0_OBUF.LOC = "PAD54";
  X_OBUF LEFT_0_OBUF (
    .I(\LEFT<0>/O ),
    .O(LEFT[0])
  );
  defparam \LEFT<1>/PAD .LOC = "PAD87";
  X_OPAD \LEFT<1>/PAD  (
    .PAD(LEFT[1])
  );
  defparam LEFT_1_OBUF.LOC = "PAD87";
  X_OBUF LEFT_1_OBUF (
    .I(\LEFT<1>/O ),
    .O(LEFT[1])
  );
  defparam \LEFT<2>/PAD .LOC = "PAD182";
  X_OPAD \LEFT<2>/PAD  (
    .PAD(LEFT[2])
  );
  defparam LEFT_2_OBUF.LOC = "PAD182";
  X_OBUF LEFT_2_OBUF (
    .I(\LEFT<2>/O ),
    .O(LEFT[2])
  );
  defparam \LEFT<3>/PAD .LOC = "PAD121";
  X_OPAD \LEFT<3>/PAD  (
    .PAD(LEFT[3])
  );
  defparam LEFT_3_OBUF.LOC = "PAD121";
  X_OBUF LEFT_3_OBUF (
    .I(\LEFT<3>/O ),
    .O(LEFT[3])
  );
  defparam \CLKL_BUFGP/BUFG .LOC = "BUFGMUX3";
  X_BUFGMUX \CLKL_BUFGP/BUFG  (
    .I0(\CLKL_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\CLKL_BUFGP/BUFG/S_INVNOT ),
    .O(CLKL_BUFGP)
  );
  defparam \CLKL_BUFGP/BUFG/SINV .LOC = "BUFGMUX3";
  X_INV \CLKL_BUFGP/BUFG/SINV  (
    .I(GLOBAL_LOGIC1),
    .O(\CLKL_BUFGP/BUFG/S_INVNOT )
  );
  defparam \CLKL_BUFGP/BUFG/I0_USED .LOC = "BUFGMUX3";
  X_BUF \CLKL_BUFGP/BUFG/I0_USED  (
    .I(\CLKL/INBUF ),
    .O(\CLKL_BUFGP/BUFG/I0_INV )
  );
  defparam tmp_1.LOC = "PAD88";
  defparam tmp_1.INIT = 1'b0;
  X_FF tmp_1 (
    .I(\DIN<0>/IFF/IFFDMUX_1 ),
    .CE(VCC),
    .CLK(\DIN<0>/IFF/ICLK1INV_0 ),
    .SET(GND),
    .RST(GND),
    .O(tmp[1])
  );
  defparam \DIN<0>/IFF/IFFDMUX .LOC = "PAD88";
  X_BUF \DIN<0>/IFF/IFFDMUX  (
    .I(\DIN<0>/INBUF ),
    .O(\DIN<0>/IFF/IFFDMUX_1 )
  );
  defparam \DIN<0>/IFF/ICLK1INV .LOC = "PAD88";
  X_BUF \DIN<0>/IFF/ICLK1INV  (
    .I(CLKL_BUFGP),
    .O(\DIN<0>/IFF/ICLK1INV_0 )
  );
  defparam tmp_2.LOC = "PAD181";
  defparam tmp_2.INIT = 1'b0;
  X_FF tmp_2 (
    .I(\DIN<1>/IFF/IFFDMUX_3 ),
    .CE(VCC),
    .CLK(\DIN<1>/IFF/ICLK1INV_2 ),
    .SET(GND),
    .RST(GND),
    .O(tmp[2])
  );
  defparam \DIN<1>/IFF/IFFDMUX .LOC = "PAD181";
  X_BUF \DIN<1>/IFF/IFFDMUX  (
    .I(\DIN<1>/INBUF ),
    .O(\DIN<1>/IFF/IFFDMUX_3 )
  );
  defparam \DIN<1>/IFF/ICLK1INV .LOC = "PAD181";
  X_BUF \DIN<1>/IFF/ICLK1INV  (
    .I(CLKL_BUFGP),
    .O(\DIN<1>/IFF/ICLK1INV_2 )
  );
  defparam tmp_3.LOC = "PAD119";
  defparam tmp_3.INIT = 1'b0;
  X_FF tmp_3 (
    .I(\DIN<2>/IFF/IFFDMUX_5 ),
    .CE(VCC),
    .CLK(\DIN<2>/IFF/ICLK1INV_4 ),
    .SET(GND),
    .RST(GND),
    .O(tmp[3])
  );
  defparam \DIN<2>/IFF/IFFDMUX .LOC = "PAD119";
  X_BUF \DIN<2>/IFF/IFFDMUX  (
    .I(\DIN<2>/INBUF ),
    .O(\DIN<2>/IFF/IFFDMUX_5 )
  );
  defparam \DIN<2>/IFF/ICLK1INV .LOC = "PAD119";
  X_BUF \DIN<2>/IFF/ICLK1INV  (
    .I(CLKL_BUFGP),
    .O(\DIN<2>/IFF/ICLK1INV_4 )
  );
  defparam tmp_0.LOC = "PAD53";
  defparam tmp_0.INIT = 1'b0;
  X_FF tmp_0 (
    .I(\DIN<3>/IFF/IFFDMUX_7 ),
    .CE(VCC),
    .CLK(\DIN<3>/IFF/ICLK1INV_6 ),
    .SET(GND),
    .RST(GND),
    .O(tmp[0])
  );
  defparam \DIN<3>/IFF/IFFDMUX .LOC = "PAD53";
  X_BUF \DIN<3>/IFF/IFFDMUX  (
    .I(\DIN<3>/INBUF ),
    .O(\DIN<3>/IFF/IFFDMUX_7 )
  );
  defparam \DIN<3>/IFF/ICLK1INV .LOC = "PAD53";
  X_BUF \DIN<3>/IFF/ICLK1INV  (
    .I(CLKL_BUFGP),
    .O(\DIN<3>/IFF/ICLK1INV_6 )
  );
  X_ONE GLOBAL_LOGIC1_VCC (
    .O(GLOBAL_LOGIC1)
  );
  defparam \LEFT<0>/OUTPUT/OFF/OMUX .LOC = "PAD54";
  X_BUF \LEFT<0>/OUTPUT/OFF/OMUX  (
    .I(tmp[0]),
    .O(\LEFT<0>/O )
  );
  defparam \LEFT<1>/OUTPUT/OFF/OMUX .LOC = "PAD87";
  X_BUF \LEFT<1>/OUTPUT/OFF/OMUX  (
    .I(tmp[1]),
    .O(\LEFT<1>/O )
  );
  defparam \LEFT<2>/OUTPUT/OFF/OMUX .LOC = "PAD182";
  X_BUF \LEFT<2>/OUTPUT/OFF/OMUX  (
    .I(tmp[2]),
    .O(\LEFT<2>/O )
  );
  defparam \LEFT<3>/OUTPUT/OFF/OMUX .LOC = "PAD121";
  X_BUF \LEFT<3>/OUTPUT/OFF/OMUX  (
    .I(tmp[3]),
    .O(\LEFT<3>/O )
  );
  X_ZERO NlwBlock_leftshifter_GND (
    .O(GND)
  );
  X_ONE NlwBlock_leftshifter_VCC (
    .O(VCC)
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

