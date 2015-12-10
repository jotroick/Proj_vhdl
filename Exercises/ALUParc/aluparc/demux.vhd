----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:56:36 04/14/2007 
-- Design Name: 
-- Module Name:    demux - Behavioral 
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

entity demux is
     PORT(
          sel   : IN std_logic_vector (2 downto 0);
          ope   : OUT std_logic_vector (4 downto 0);
          endemu: IN std_logic
         );
end demux;

architecture Behavioral of demux is
begin
 dem: process (endemu)
 begin
   if (endemu'event and endemu='1') then
     ope(0)<= (((not sel(0)) and (not sel(1))) and (not sel(2))); 
     ope(1)<= (( sel(0) and (not sel(1))) and (not sel(2))); 
     ope(2)<= (((not sel(0)) and  sel(1)) and (not sel(2))); 
     ope(3)<= ((sel(0) and  sel(1)) and (not sel(2))); 
     ope(4)<= (((not sel(0)) and (not sel(1))) and sel(2)); 
   end if;
 end process dem; 
end Behavioral;

