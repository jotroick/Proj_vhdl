----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:49 12/06/2007 
-- Design Name: 
-- Module Name:    cont - Behavioral 
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

entity cont is
    Port ( clk : in  STD_LOGIC;
           sal : out  STD_LOGIC_VECTOR (1 downto 0));
end cont;

architecture Behavioral of cont is
signal k: std_logic_vector(1 downto 0):="00";
begin
process(clk)
begin
if clk'event and clk='1' then
	if k<"11" then
		k<=k+'1';
	else
		k<="00";
	end if;
end if;
end process;
end Behavioral;