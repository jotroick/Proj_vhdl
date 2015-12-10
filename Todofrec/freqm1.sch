VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL START
        SIGNAL RESET
        SIGNAL F_PATTERN
        SIGNAL F_INPUT
        SIGNAL GATE
        SIGNAL END_RESET
        SIGNAL FULL
        SIGNAL BCD_U(3:0)
        SIGNAL BCD_D(3:0)
        SIGNAL BCD_H(3:0)
        SIGNAL BCD_T(3:0)
        SIGNAL LED_D(6:0)
        SIGNAL XLXN_9(3:0)
        SIGNAL XLXN_11
        SIGNAL XLXN_12(1:0)
        SIGNAL hab_seg(3:0)
        SIGNAL XLXN_13
        PORT Input START
        PORT Input RESET
        PORT Input F_PATTERN
        PORT Input F_INPUT
        PORT Output FULL
        PORT Output LED_D(6:0)
        PORT Output hab_seg(3:0)
        BEGIN BLOCKDEF hex2led
            TIMESTAMP 2003 3 13 21 7 26
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF cnt_bcd
            TIMESTAMP 2003 3 13 21 7 26
            LINE N 384 48 416 48 
            LINE N 384 80 416 80 
            LINE N 384 112 416 112 
            LINE N 384 144 416 144 
            LINE N 384 176 416 176 
            BEGIN RECTANGLE W 32 0 384 224 
            END RECTANGLE
            LINE N 0 144 32 144 
            LINE N 0 112 32 112 
            LINE N 0 80 32 80 
        END BLOCKDEF
        BEGIN BLOCKDEF control
            TIMESTAMP 2003 3 13 21 7 26
            LINE N 448 96 480 96 
            LINE N 448 64 480 64 
            LINE N 0 112 32 112 
            LINE N 0 80 32 80 
            LINE N 0 48 32 48 
            BEGIN RECTANGLE W 32 0 448 160 
            END RECTANGLE
        END BLOCKDEF
        BEGIN BLOCKDEF mux16_4
            TIMESTAMP 2007 12 6 14 57 58
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF divisorfrec
            TIMESTAMP 2007 12 6 15 3 54
            RECTANGLE N 64 -64 368 0 
            LINE N 64 -32 0 -32 
            LINE N 368 -32 432 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cont
            TIMESTAMP 2007 12 6 15 24 34
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_4
            TIMESTAMP 2007 12 6 15 28 26
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF div1M
            TIMESTAMP 2007 12 6 16 19 15
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK I5 cnt_bcd
            PIN CLK XLXN_13
            PIN ENABLE GATE
            PIN RESET END_RESET
            PIN BCD_D(3:0) BCD_D(3:0)
            PIN BCD_H(3:0) BCD_H(3:0)
            PIN BCD_T(3:0) BCD_T(3:0)
            PIN BCD_U(3:0) BCD_U(3:0)
            PIN FULL FULL
        END BLOCK
        BEGIN BLOCK I6 control
            PIN CLK F_PATTERN
            PIN RESET RESET
            PIN START START
            PIN END_MEASURE END_RESET
            PIN GATE GATE
        END BLOCK
        BEGIN BLOCK XLXI_5 mux16_4
            PIN a(3:0) BCD_U(3:0)
            PIN b(3:0) BCD_D(3:0)
            PIN c(3:0) BCD_H(3:0)
            PIN d(3:0) BCD_T(3:0)
            PIN sel(1:0) XLXN_12(1:0)
            PIN sal(3:0) XLXN_9(3:0)
        END BLOCK
        BEGIN BLOCK I1 hex2led
            PIN HEX(3:0) XLXN_9(3:0)
            PIN LED(6:0) LED_D(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 divisorfrec
            PIN SUPERCLOCK F_INPUT
            PIN LOWCLOCK XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_13 cont
            PIN clk XLXN_11
            PIN sal(1:0) XLXN_12(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 m2_4
            PIN k(1:0) XLXN_12(1:0)
            PIN l(3:0) hab_seg(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 div1M
            PIN clki F_INPUT
            PIN clko XLXN_13
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE I5 1504 1088 R0
        END INSTANCE
        BEGIN INSTANCE I6 736 1136 R0
        END INSTANCE
        BEGIN BRANCH START
            WIRE 464 1248 736 1248
        END BRANCH
        IOMARKER 464 1248 START R180 28
        BEGIN BRANCH RESET
            WIRE 464 1216 736 1216
        END BRANCH
        IOMARKER 464 1216 RESET R180 28
        BEGIN BRANCH F_PATTERN
            WIRE 464 1184 736 1184
        END BRANCH
        IOMARKER 464 1184 F_PATTERN R180 28
        IOMARKER 464 1040 F_INPUT R180 28
        BEGIN BRANCH GATE
            WIRE 1216 1232 1344 1232
            WIRE 1344 1232 1504 1232
            BEGIN DISPLAY 1344 1232 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH END_RESET
            WIRE 1216 1200 1296 1200
            WIRE 1296 1200 1504 1200
            BEGIN DISPLAY 1296 1200 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH FULL
            WIRE 1920 1136 1968 1136
            WIRE 1968 688 1968 1136
            WIRE 1968 688 2880 688
        END BRANCH
        IOMARKER 2880 688 FULL R0 28
        BEGIN BRANCH BCD_U(3:0)
            WIRE 1920 1168 2080 1168
            WIRE 2080 848 2080 1168
            WIRE 2080 848 2208 848
            WIRE 2208 848 2416 848
            WIRE 2416 848 2416 1008
            WIRE 2416 1008 2528 1008
            BEGIN DISPLAY 2208 848 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BCD_D(3:0)
            WIRE 1920 1200 2160 1200
            WIRE 2160 1072 2160 1200
            WIRE 2160 1072 2240 1072
            WIRE 2240 1072 2528 1072
            BEGIN DISPLAY 2240 1072 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BCD_H(3:0)
            WIRE 1920 1232 2080 1232
            WIRE 2080 1232 2080 1264
            WIRE 2080 1264 2240 1264
            WIRE 2240 1264 2416 1264
            WIRE 2416 1136 2528 1136
            WIRE 2416 1136 2416 1264
            BEGIN DISPLAY 2240 1264 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BCD_T(3:0)
            WIRE 1920 1264 1968 1264
            WIRE 1968 1264 1968 1472
            WIRE 1968 1472 2128 1472
            WIRE 2128 1472 2400 1472
            WIRE 2400 1200 2528 1200
            WIRE 2400 1200 2400 1472
            BEGIN DISPLAY 2128 1472 ATTR Name
                ALIGNMENT BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_5 2528 1296 R0
        END INSTANCE
        BEGIN BRANCH LED_D(6:0)
            WIRE 3072 224 3312 224
        END BRANCH
        BEGIN INSTANCE I1 2688 256 R0
        END INSTANCE
        IOMARKER 3312 224 LED_D(6:0) R0 28
        BEGIN BRANCH XLXN_9(3:0)
            WIRE 2624 224 2688 224
            WIRE 2624 224 2624 336
            WIRE 2624 336 3072 336
            WIRE 3072 336 3072 1008
            WIRE 2912 1008 3072 1008
        END BRANCH
        BEGIN INSTANCE XLXI_7 1072 496 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_13 1600 496 R0
        END INSTANCE
        BEGIN BRANCH XLXN_11
            WIRE 1504 464 1600 464
        END BRANCH
        BEGIN BRANCH XLXN_12(1:0)
            WIRE 1984 464 2496 464
            WIRE 2496 464 2496 576
            WIRE 2496 576 2496 1264
            WIRE 2496 1264 2528 1264
            WIRE 2496 576 2576 576
        END BRANCH
        BEGIN INSTANCE XLXI_14 2576 608 R0
        END INSTANCE
        BEGIN BRANCH hab_seg(3:0)
            WIRE 2960 576 3312 576
        END BRANCH
        IOMARKER 3312 576 hab_seg(3:0) R0 28
        BEGIN BRANCH F_INPUT
            WIRE 464 1040 768 1040
            WIRE 768 464 1072 464
            WIRE 768 464 768 1008
            WIRE 768 1008 768 1040
            WIRE 768 1008 832 1008
            WIRE 832 1008 832 1040
            WIRE 832 1040 912 1040
        END BRANCH
        BEGIN INSTANCE XLXI_16 912 1072 R0
        END INSTANCE
        BEGIN BRANCH XLXN_13
            WIRE 1296 1040 1392 1040
            WIRE 1392 1040 1392 1168
            WIRE 1392 1168 1504 1168
        END BRANCH
    END SHEET
END SCHEMATIC
