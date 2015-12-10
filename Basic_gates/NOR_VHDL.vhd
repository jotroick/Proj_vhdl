----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:51:38 09/26/2007 
-- Design Name: 
-- Module Name:    NOR_VHDL - Behavioral 
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

entity NORG is

port (A,B : in std_logic;
		Z: out std_logic);

end NORG;

architecture NorA of NORG is

begin process ( A, B)

begin

if ( A='0' and B='0') then

Z <= '1';

else

Z<='0';
end if;
end  process;
end NorA;
