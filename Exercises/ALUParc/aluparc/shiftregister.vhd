----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:20 04/15/2007 
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
				DES : in std_logic_vector (n-1 downto 0);
				DIR : in std_logic;
				CLKS: in std_logic;
				OUP : out std_logic_vector (n-1 downto 0);
				);
end shiftregister;

architecture desplaza of shiftregister is
signal tmp: std_logic_vector(n-1 downto 0);
begin

proce:process (CLKS, DIR) 
variable desp : integer range n downto 0;
variable i : integer range n downto 0;
  begin 
  desp := CONV_INTEGER(DES);
   if i < desp then 
        if (CLKS'event and CLKS='1') then 
          if (DIR='0') then 
            tmp <= DIN(n-2 downto 0) & DIN (n-1); 
          elsif (DIR='1') then
            tmp <= DIN(0) & DIN(n-1 downto 1); 
          end if; 
        end if;	   
	end if;
 	 
end process; 
    OUP <= tmp;

end desplaza;


