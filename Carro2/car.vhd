----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:10 11/07/2007 
-- Design Name: 
-- Module Name:    car - Behavioral 
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

entity car1 is
Port (   
			clk: in STD_LOGIC;
			start 	: in  STD_LOGIC;
         sensores : in  STD_LOGIC_VECTOR (2 downto 0);
			bmoto		: out  STD_LOGIC_VECTOR(3 downto 0)
		);
end car1;

architecture Behavioral of car1 is

signal sensores1:STD_LOGIC_VECTOR (2 downto 0);

begin

sensores1<= not sensores;
	pro: process (start, clk)
	
	begin
	
		if (start='1' ) then
		
		case sensores1 is
		
			when "110" => bmoto <= "1001";
			when "011" => bmoto <= "0110";
			when "101" => bmoto <= "1010";
			when "100" => bmoto <= "1010";
			when "001" => bmoto <= "1010";
			when "010" => bmoto <= "1001";
			when others => bmoto <= "0000";
	
		end case;
	--	WITH sensores SELECT
	
     --    bmoto <=        "1001" when "110",-- hacia la derecha
		--	bmoto <=			"0110" when "011",-- hacia la izquierda
			--bmoto <=			"1010" when "101",-- hacia adelante
	--		bmoto <=			"1010" when "100",-- hacia adelante en casos intermedios 
		--	bmoto <=			"1010" when "001",-- hCI DELAnte en caso intermedio
		--	bmoto <=			"1001" when "010",-- hCI DELAnte en caso intermedio
		--	bmoto <=			"0000" when others;
		
		end if;
	end process;
end Behavioral;	
