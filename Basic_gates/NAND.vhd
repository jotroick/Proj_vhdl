----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:13 09/26/2007 
-- Design Name: 
-- Module Name:    NAND - Behavioral 
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

entity NANDG is
port(A,B: in std_logic;
	  Z: out std_logic);
end NANDG;

architecture NANDA of NANDG is

	begin process (A,B)
	begin
	if(A='1' and B='1')then
	Z<='0';
	else
	Z<='1';
	end if;
	
	end process;


end NANDA;

