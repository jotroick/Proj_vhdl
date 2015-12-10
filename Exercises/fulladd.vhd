library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


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

