----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:14:29 09/27/2007 
-- Design Name: 
-- Module Name:    XNOR_VHDL - Behavioral 
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

entity XNORG is
port( A,B: in std_logic;
		Z: out std_logic);
end XNORG;

architecture XNORA of XNORG is

	begin process(A,B)
	begin
		if(A=B)then
		Z<='1';
		else
		Z<='0';
		end if;
	end process;


end XNORA;

