----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:03 12/06/2007 
-- Design Name: 
-- Module Name:    div1M - Behavioral 
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

entity div1M is
    Port ( clki : in  STD_LOGIC;
           clko : out  STD_LOGIC);
end div1M;

architecture Behavioral of div1M is
signal k:std_logic_vector(4 downto 0):="00000";
signal g:std_logic:='0';
begin
process(clki)
begin
if clki'event and clki='1' then
	if k<"11001" then
		k<=k+'1';
	else
		g<=not(g);
		k<="00000";
	end if;
end if;
end process;
clko<=g;
end Behavioral;

