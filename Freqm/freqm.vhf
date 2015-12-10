--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.1i
--  \   \         Application : sch2vhdl
--  /   /         Filename : freqm.vhf
-- /___/   /\     Timestamp : 09/22/2007 14:10:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx91i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w C:/Xilinx91i/ISEexamples/freqm/freqm.sch freqm.vhf
--Design Name: freqm
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity freqm is
   port ( F_INPUT   : in    std_logic; 
          F_PATTERN : in    std_logic; 
          RESET     : in    std_logic; 
          START     : in    std_logic; 
          FULL      : out   std_logic; 
          LED_A     : out   std_logic_vector (6 downto 0); 
          LED_B     : out   std_logic_vector (6 downto 0); 
          LED_C     : out   std_logic_vector (6 downto 0); 
          LED_D     : out   std_logic_vector (6 downto 0));
end freqm;

architecture BEHAVIORAL of freqm is
   signal BCD_D     : std_logic_vector (3 downto 0);
   signal BCD_H     : std_logic_vector (3 downto 0);
   signal BCD_T     : std_logic_vector (3 downto 0);
   signal BCD_U     : std_logic_vector (3 downto 0);
   signal END_RESET : std_logic;
   signal GATE      : std_logic;
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
   
begin
   I1 : hex2led
      port map (HEX(3 downto 0)=>BCD_T(3 downto 0),
                LED(6 downto 0)=>LED_D(6 downto 0));
   
   I2 : hex2led
      port map (HEX(3 downto 0)=>BCD_H(3 downto 0),
                LED(6 downto 0)=>LED_C(6 downto 0));
   
   I3 : hex2led
      port map (HEX(3 downto 0)=>BCD_D(3 downto 0),
                LED(6 downto 0)=>LED_B(6 downto 0));
   
   I4 : hex2led
      port map (HEX(3 downto 0)=>BCD_U(3 downto 0),
                LED(6 downto 0)=>LED_A(6 downto 0));
   
   I5 : cnt_bcd
      port map (CLK=>F_INPUT,
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
   
end BEHAVIORAL;


