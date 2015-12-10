----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:59 04/15/2007 
-- Design Name: 
-- Module Name:    leftshifter - despleft 
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

entity leftshifter is
generic(n:integer:=4);
       port(
		      DIN : in std_logic_vector (n-1 downto 0);
				CLKL: in std_logic;
				LEFT: out std_logic_vector (n-1 downto 0)
				);

end leftshifter;

architecture despleft of leftshifter is
signal tmp: std_logic_vector(n-1 downto 0);
begin

proce:process (CLKL)
  begin 
    if(CLKL'event and CLKL='1') then  
          tmp <= DIN(n-2 downto 0) & DIN(n-1);
    end if;		  	  
  end process; 
  LEFT <= tmp;
end despleft;

