----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:43:20 09/27/2007 
-- Design Name: 
-- Module Name:    FFD_VHDL - Behavioral 
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

entity dff is
port(	data_in:	in std_logic;
	clock:		in std_logic;
	data_out:	out std_logic
);
end dff;

----------------------------------------------

architecture behv of dff is
begin

    process(data_in, clock)
    begin

        

	if (clock='1' and clock'event) then
	    data_out <= data_in;
	end if;

    end process;	

end behv;

