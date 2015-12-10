library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity  XOR3 is
  port (
    A : in std_logic;
    B : in std_logic;
    C : in std_logic;
    S : out std_logic);
    
end entity XOR3;

architecture work of XOR3 is
  begin 
    process (A,B,C) is
      begin 
      S <= A xor B xor C;
    end process;
  end architecture work;
