library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Comparador is
port(
			b: in std_logic_vector (5 downto 0);
			clk: in std_logic;
			ya: out std_logic);
			
end Comparador;

architecture Behavioral of Comparador is

   COMPONENT contador
          PORT(
						ya: IN std_logic;
                  clk:IN std_logic;       
                  cuenta: OUT std_logic_vector
                  );
          END COMPONENT;

Begin  
	if b=cuenta then
	ya:='1';
	elsif
	ya:='0';

end Behavioral;

