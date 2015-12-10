----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:51:04 09/27/2007 
-- Design Name: 
-- Module Name:    FFJK_VHDL - Behavioral 
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

entity JK_FF is
port (	clock:		in std_logic;
	J, K:		in std_logic;
	reset:		in std_logic;
	Q, Qbar:	out std_logic
);
end JK_FF;

-----------------------------------------------

architecture behv of JK_FF is

    -- define the useful signals here

    signal state: std_logic;
    signal input: std_logic_vector(1 downto 0);

begin

    -- combine inputs into vector
    input <= J & K;		

    p: process(clock, reset) is
    begin
	
	if (reset='1') then
	    state <= '0';
	elsif (rising_edge(clock)) then

            -- compare to the truth table
	    case (input) is
		when "11" =>
		    state <= not state;
		when "10" =>
		    state <= '1';
		when "01" =>
		    state <= '0';
		when others =>
		    null;
		end case;
	end if;

    end process;
	
    -- concurrent statements
    Q <= state;
    Qbar <= not state;

end behv;