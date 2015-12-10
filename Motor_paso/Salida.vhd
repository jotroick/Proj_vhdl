----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:02 05/12/2007 
-- Design Name: 
-- Module Name:    Salida - Behavioral 
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

entity Salida is
    Port ( 
			  DR : in  STD_LOGIC_VECTOR (1 downto 0);
			  EN : in STD_LOGIC;
           CLOCK : in  STD_LOGIC;
           ABCD : out  STD_LOGIC_VECTOR (3 downto 0));
end Salida;

architecture Behavioral of Salida is
type estados is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
signal estado: estados;


begin


G: process (CLOCK)
begin
	if (CLOCK='1' and CLOCK'event) then 
		case estado is 
			when s0 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR(1)='0') then
					estado<=s1;
					ABCD<="1100";
				elsif (DR(1)='1') then
					estado<=s7;
					ABCD<="1001";
				end if;
				
			when s1 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR="00") then
					estado<=s2;
					ABCD<="0100";
				elsif (DR="01") then
					estado<=s3;
					ABCD<="0110";
				elsif (DR="10") then
					estado<=s0;
					ABCD<="1000";
				elsif (DR="11") then
					estado<=s7;
					ABCD<="1001";
				end if;			
			
			when s2 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR(1)='0') then
					estado<=s3;
					ABCD<="0110";
				elsif (DR(1)='1') then
					estado<=s1;
					ABCD<="1100";
				end if;			
			
			when s3 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR="00") then
					estado<=s4;
					ABCD<="0010";
				elsif (DR="01") then
					estado<=s5;
					ABCD<="0011";
				elsif (DR="10") then
					estado<=s2;
					ABCD<="0100";
				elsif (DR="11") then
					estado<=s1;
					ABCD<="1100";
				end if;				

			when s4 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR(1)='0') then
					estado<=s5;
					ABCD<="0011";
				elsif (DR(1)='1') then
					estado<=s3;
					ABCD<="0110";
				end if;	

			when s5 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR="00") then
					estado<=s6;
					ABCD<="0001";
				elsif (DR="01") then
					estado<=s7;
					ABCD<="1001";
				elsif (DR="10") then
					estado<=s4;
					ABCD<="0010";
				elsif (DR="11") then
					estado<=s3;
					ABCD<="0110";
				end if;

			when s6 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR(1)='0') then
					estado<=s7;
					ABCD<="1001";
				elsif (DR(1)='1') then
					estado<=s5;
					ABCD<="0011";
				end if;

			when s7 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR="00") then
					estado<=s0;
					ABCD<="1000";
				elsif (DR="01") then
					estado<=s1;
					ABCD<="1100";
				elsif (DR="10") then
					estado<=s6;
					ABCD<="0001";
				elsif (DR="11") then
					estado<=s5;
					ABCD<="0011";
				end if;

			when s8 =>
				if (EN='0') then
					estado<=s8;
					ABCD<="0000";
				elsif (DR="00") then
					estado<=s0;
					ABCD<="1000";
				elsif (DR="01") then
					estado<=s1;
					ABCD<="1100";
				elsif (DR(1)='1') then
					estado<=s7;
					ABCD<="1001";
				end if;
		end case;
	end if;
end process;
end Behavioral;

