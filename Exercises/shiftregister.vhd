----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:14:53 04/07/2007 
-- Design Name: 
-- Module Name:    shiftregister - Behavioral 
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

entity shiftregister is
generic(n:integer:=4);
       port(
		      DIN : in std_logic_vector (n-1 downto 0);
				sel: in std_logic_vector (2 downto 0);
				OUP : out std_logic_vector (n-1 downto 0)
				);
end shiftregister;

architecture desplaza of shiftregister is

signal tmp: std_logic_vector(n-1 downto 0);
begin

proce:process

  begin 
  
          if (sel="100") then 
            tmp <= DIN(n-2 downto 0) & '0';
 
          elsif (sel="101") then 
            tmp <= DIN(n-2 downto 0) & DIN (n-1); 
				
          elsif(sel="111") then
            tmp <= DIN(0) & DIN(n-1 downto 1); 
				
			 elsif(sel="110") then
            tmp <= '0' & DIN(n-1 downto 1); 

			 elsif(sel="000" or sel="001") then
            tmp <= DIN; 
								
        end if; 
	  
    OUP <= tmp;
end process;
end desplaza;

