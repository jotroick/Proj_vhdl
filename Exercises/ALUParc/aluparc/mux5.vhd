----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:18 04/15/2007 
-- Design Name: 
-- Module Name:    mux5 - Behavioral 
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

entity mux5 is
generic ( n: integer:=4);
    Port ( 
	        ISUM  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           IRES  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           IMUL  : in  STD_LOGIC_VECTOR (n+n-1 downto 0);
           ISL   : in  STD_LOGIC_VECTOR (n-1 downto 0);
           ISR   : in  STD_LOGIC_VECTOR (n-1 downto 0);
           selec : in  STD_LOGIC_VECTOR (2 downto 0);
           result: out STD_LOGIC_VECTOR (n-1 downto 0);
			  resulm: out STD_LOGIC_VECTOR (n+n-1 downto 0)
			  );
end mux5;

architecture escoge of mux5 is
signal results: std_logic_vector(n-1 downto 0);
signal resulms: std_logic_vector(n+n-1 downto 0);
begin
selecta: process
 begin
      if selec = "000" then
      results <= ISUM;
      resulms <= "0";
		 elsif selec = "001" then
       results <= IRES;
       resulms <= "0";
		 elsif selec = "010" then
       results <= "0";
       resulms <= IMUL;
		 elsif selec = "011" then
       results <= ISL;
       resulms <= "0";
		 elsif selec = "100" then
       results <= ISR;
       resulms <= "0";
		end if;
 result <= results;
 resulm <= resulms; 
 end process;		
end escoge;

