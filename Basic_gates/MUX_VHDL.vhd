----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:31:25 09/27/2007 
-- Design Name: 
-- Module Name:    MUX_VHDL - Behavioral 
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


entity Mux is
port(	I3: 	in BIT_VECTOR(2 downto 0);
	I2: 	in BIT_VECTOR(2 downto 0);
	I1: 	in BIT_VECTOR(2 downto 0);
	I0: 	in BIT_VECTOR(2 downto 0);
	S:	in BIT_VECTOR(1 downto 0);
	O:	out BIT_VECTOR(2 downto 0)
);
end Mux;  

-------------------------------------------------

architecture behv1 of Mux is
begin
    process(I3,I2,I1,I0,S)
    begin
    
        -- use case statemen
        case S is
	    when "00"=>	O <= I0;
	    when "01" =>	O <= I1;
	    when "10" =>	O <= I2;
	    when "11" =>	O <= I3;
	    when others =>	O <= "000";
	end case;

    end process;
end behv1;
