----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:02 05/12/2007 
-- Design Name: 
-- Module Name:    divisorfrec - Behavioral 
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

entity divisorfrec is
    Port ( SUPERCLOCK : in  STD_LOGIC;
           LOWCLOCK : out  STD_LOGIC);
end divisorfrec;

architecture Behavioral of divisorfrec is
signal numero: STD_LOGIC_VECTOR (9 downto 0);
begin
	P1:process(SUPERCLOCK)
	begin 
	 if (SUPERCLOCK='1' and SUPERCLOCK'event) then
		if (numero="1010001011") then
			numero<="0000000000";
		else
			numero<=numero+1;		
		end if;
	 end if;
	end process;
	
LOWCLOCK<=numero(9);
end Behavioral;

