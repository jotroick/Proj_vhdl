----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:01:51 09/27/2007 
-- Design Name: 
-- Module Name:    DEMUX_VHDL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux is
  port (e: in bit_vector (3 downto 0);     
        s: in bit_vector (1 downto 0);     
        d: out bit_vector (3 downto 0));   
end demux;

architecture rtl of demux is
  signal t : bit_vector(3 downto 0);        
begin                                      
  t(3)<=s(1) and s(0);                     
  t(2)<=s(1) and not s(0);
  t(1)<=not s(1) and s(0);
  t(0)<=not s(1) and not s(0);
  d<=e and t;                             
end rtl;

