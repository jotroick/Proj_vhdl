----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:26:38 12/06/2007 
-- Design Name: 
-- Module Name:    m2_4 - Behavioral 
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

entity m2_4 is
    Port ( k : in  STD_LOGIC_VECTOR (1 downto 0);
           l : out  STD_LOGIC_VECTOR (3 downto 0));
end m2_4;

architecture Behavioral of m2_4 is

begin
with k select
	l<="1110" when "00",
		"1101" when "01",
		"1011" when "10",
		"0111" when others;
end Behavioral;

