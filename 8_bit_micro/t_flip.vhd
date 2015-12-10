library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_flip is

end;

architecture only of test_flip is

COMPONENT D_flipflop is
      PORT ( D : IN std_logic;
             clk   : IN std_logic;
             Q : out std_logic);
END COMPONENT ;

SIGNAL clk   : std_logic := '0'; 
SIGNAL D : std_logic := '0';
SIGNAL Q : std_logic := '0';


begin

dflip : D_flipflop 
   PORT MAP (
   D => D,
   Q => Q,
   clk => clk);

clock : PROCESS
   begin
   wait for 5 ns; clk <= not clk ;
   -- wait for 10 ns; clk  <= not clk;
end PROCESS clock;

input_gen : PROCESS
  begin
   --D <= not D after 10 ns;
  wait for 10 ns; D  <= '1';
  wait for 10 ns; D   <= '0';
   wait;
end PROCESS input_gen;

end only;

