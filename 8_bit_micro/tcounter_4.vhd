
entity test_counter is

end;

architecture only of test_counter is

COMPONENT counter
      PORT ( count : BUFFER bit_vector(4 downto 1);
             clk   : IN bit;
             reset : IN bit);
END COMPONENT ;

SIGNAL clk   : bit := '0';
SIGNAL reset : bit := '0';
SIGNAL count : bit_vector(4 downto 1) := "0000";

begin

dut : counter 
   PORT MAP (
   count => count,
   clk => clk,
   reset => reset );

clock : PROCESS
   begin
   wait for 10 ns; clk  <= not clk;
end PROCESS clock;

stimulus : PROCESS
   begin
   wait for 5 ns; reset  <= '1';
   wait for 4 ns; reset  <= '0';
   wait;
end PROCESS stimulus;

end only;

