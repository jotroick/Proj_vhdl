library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fuck_xor3 is
--PORT ( 
--AL : in std_logic;
--BL : in std_logic;
--CL : in std_logic;
--clk : in std_logic;
--SL : out std_logic
--);
end;

architecture only of fuck_xor3 is

COMPONENT XOR3 is
 PORT (
    A : in std_logic;
    B : in std_logic;
    C : in std_logic;
    S : out std_logic);
END COMPONENT;

COMPONENT D_flipflop is
      PORT ( D : IN std_logic;
             clk   : IN std_logic;
             Q : out std_logic);
END COMPONENT ;

SIGNAL AL, A1 : std_logic := '0';
SIGNAL BL, B1 : std_logic := '0';
SIGNAL CL, C1 : std_logic := '0';
SIGNAL SL, S1 : std_logic := '0'; 
SIGNAL clk : std_logic := '0';
--SIGNAL Q : std_logic := '0';


begin

dflip_1 : D_flipflop 
   PORT MAP (
   D => AL,
   Q => A1,
   clk => clk);

dflip_2 : D_flipflop 
   PORT MAP (
   D => BL,
   Q => B1,
   clk => clk);

dflip_3 : D_flipflop 
   PORT MAP (
   D => CL,
   Q => C1,
   clk => clk);

dflip_4 : D_flipflop 
   PORT MAP (
   D => S1,
   Q => SL,
   clk => clk);
  
XOR3_1 : XOR3    
  PORT MAP (
    A => A1,
    B => B1,
    C => C1,
    S => S1
  );
     
clockING : PROCESS
   begin
   wait for 5 ns; clk <= not clk ;
   -- wait for 10 ns; clk  <= not clk;
end PROCESS;

input_gen : PROCESS
  begin
   --D <= not D after 10 ns;
  wait for 10 ns; AL  <= '1';
  wait for 10 ns; AL   <= '0';
  wait for 10 ns; BL <= '1';
  wait for 10 ns; BL <= '0';
  wait for 10 ns; CL <= '1';
  wait for 10 ns; CL <= '0';
   wait;

end PROCESS input_gen;

end only;


