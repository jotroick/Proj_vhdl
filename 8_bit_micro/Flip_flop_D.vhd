library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity  D_flipflop is
  port (
    clk : in std_logic;
    D : in std_logic;
    q : out std_logic);
    
end entity D_flipflop;

architecture work of D_flipflop is
  begin 
    process (D,clk) is
      begin 
        if rising_edge (clk) then
          Q <= D;
      end if;
    end process;
  end architecture work;