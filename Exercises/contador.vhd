----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:58:35 04/05/2007 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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

entity contador is
port(
	ACC:	in std_logic;
	clr: in std_logic;
	s: out integer);
end contador;

architecture Behavioral of contador is

begin
	
contar:process (ACC, clr)
	variable i: integer:=0;
	begin
	
	if (clr'event and clr ='1') then
	i:=0;
	end if;

	while i< 5 loop
		if (ACC= '1') then
		i:=i+1;
		else
		i:=i;
		end if;
	s<=i;
	end loop;
	end process contar;

end Behavioral;

