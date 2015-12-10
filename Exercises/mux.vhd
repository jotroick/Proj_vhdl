----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:53 05/02/2007 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
port (
         e1,e2,e3,e4,e5,e6,e7:  in std_logic_vector(9 downto 0);
         s:        in std_logic_vector(2 downto 0);
         x:        out std_logic_vector(9 downto 0));
end mux;

architecture Behavioral of mux is
begin
with s select
       x <=   e1 when "000",
               e2 when "001",
               e3 when "010",
					e4 when "011",
					e5 when "100",
					e6 when "101",
					e7 when "110",
               "0000000000" when others;

end Behavioral;

