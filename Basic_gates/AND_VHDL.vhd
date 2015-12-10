----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:52:43 09/26/2007 
-- Design Name: 
-- Module Name:    AND_VHDL - Behavioral 
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
entity ANDG is
port (A,B: in BIT;
Z: out BIT);
end ANDG;
architecture ANDA of ANDG is
begin process (A,B)
begin
if (A='1' and B='1') then
Z<='1';
else
Z<='0';
end if;
end process;
end ANDA;


