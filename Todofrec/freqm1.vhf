--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.1i
--  \   \         Application : sch2vhdl
--  /   /         Filename : freqm1.vhf
-- /___/   /\     Timestamp : 12/06/2007 11:20:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx91i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/Todofrec/freqm1.sch freqm1.vhf
--Design Name: freqm1
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity freqm1 is
   port ( F_INPUT   : in    std_logic; 
          F_PATTERN : in    std_logic; 
          RESET     : in    std_logic; 
          START     : in    std_logic; 
          FULL      : out   std_logic; 
          hab_seg   : out   std_logic_vector (3 downto 0); 
          LED_D     : out   std_logic_vector (6 downto 0));
end freqm1;

architecture BEHAVIORAL of freqm1 is
   signal BCD_D     : std_logic_vector (3 downto 0);
   signal BCD_H     : std_logic_vector (3 downto 0);
   signal BCD_T     : std_logic_vector (3 downto 0);
   signal BCD_U     : std_logic_vector (3 downto 0);
   signal END_RESET : std_logic;
   signal GATE      : std_logic;
   signal XLXN_9    : std_logic_vector (3 downto 0);
   signal XLXN_11   : std_logic;
   signal XLXN_12   : std_logic_vector (1 downto 0);
   signal XLXN_13   : std_logic;
   component hex2led
      port ( HEX : in    std_logic_vector (3 downto 0); 
             LED : out   std_logic_vector (6 downto 0));
   end component;
   
   component cnt_bcd
      port ( CLK    : in    std_logic; 
             ENABLE : in    std_logic; 
             RESET  : in    std_logic; 
             BCD_D  : out   std_logic_vector (3 downto 0); 
             BCD_H  : out   std_logic_vector (3 downto 0); 
             BCD_T  : out   std_logic_vector (3 downto 0); 
             BCD_U  : out   std_logic_vector (3 downto 0); 
             FULL   : out   std_logic);
   end component;
   
   component control
      port ( CLK         : in    std_logic; 
             RESET       : in    std_logic; 
             START       : in    std_logic; 
             END_MEASURE : out   std_logic; 
             GATE        : out   std_logic);
   end component;
   
   component mux16_4
      port ( a   : in    std_logic_vector (3 downto 0); 
             b   : in    std_logic_vector (3 downto 0); 
             c   : in    std_logic_vector (3 downto 0); 
             d   : in    std_logic_vector (3 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             sal : out   std_logic_vector (3 downto 0));
   end component;
   
   component divisorfrec
      port ( SUPERCLOCK : in    std_logic; 
             LOWCLOCK   : out   std_logic);
   end component;
   
   component cont
      port ( clk : in    std_logic; 
             sal : out   std_logic_vector (1 downto 0));
   end component;
   
   component m2_4
      port ( k : in    std_logic_vector (1 downto 0); 
             l : out   std_logic_vector (3 downto 0));
   end component;
   
   component div1M
      port ( clki : in    std_logic; 
             clko : out   std_logic);
   end component;
   
begin
   I1 : hex2led
      port map (HEX(3 downto 0)=>XLXN_9(3 downto 0),
                LED(6 downto 0)=>LED_D(6 downto 0));
   
   I5 : cnt_bcd
      port map (CLK=>XLXN_13,
                ENABLE=>GATE,
                RESET=>END_RESET,
                BCD_D(3 downto 0)=>BCD_D(3 downto 0),
                BCD_H(3 downto 0)=>BCD_H(3 downto 0),
                BCD_T(3 downto 0)=>BCD_T(3 downto 0),
                BCD_U(3 downto 0)=>BCD_U(3 downto 0),
                FULL=>FULL);
   
   I6 : control
      port map (CLK=>F_PATTERN,
                RESET=>RESET,
                START=>START,
                END_MEASURE=>END_RESET,
                GATE=>GATE);
   
   XLXI_5 : mux16_4
      port map (a(3 downto 0)=>BCD_U(3 downto 0),
                b(3 downto 0)=>BCD_D(3 downto 0),
                c(3 downto 0)=>BCD_H(3 downto 0),
                d(3 downto 0)=>BCD_T(3 downto 0),
                sel(1 downto 0)=>XLXN_12(1 downto 0),
                sal(3 downto 0)=>XLXN_9(3 downto 0));
   
   XLXI_7 : divisorfrec
      port map (SUPERCLOCK=>F_INPUT,
                LOWCLOCK=>XLXN_11);
   
   XLXI_13 : cont
      port map (clk=>XLXN_11,
                sal(1 downto 0)=>XLXN_12(1 downto 0));
   
   XLXI_14 : m2_4
      port map (k(1 downto 0)=>XLXN_12(1 downto 0),
                l(3 downto 0)=>hab_seg(3 downto 0));
   
   XLXI_16 : div1M
      port map (clki=>F_INPUT,
                clko=>XLXN_13);
   
end BEHAVIORAL;


