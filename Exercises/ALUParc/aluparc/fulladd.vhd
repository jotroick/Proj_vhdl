----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:47:42 04/14/2007 
-- Design Name: 
-- Module Name:    fulladd - Behavioral 
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

entity fulladd is
  port(
  x,y,z: In std_logic;
  sum: out std_logic;
  carry: out std_logic);
end fulladd;

architecture Behavioral of fulladd is

begin

  sum <= (z xor x) xor y;
  carry<= ((y and x) or ( y and z)) or (x and z);

end Behavioral;


