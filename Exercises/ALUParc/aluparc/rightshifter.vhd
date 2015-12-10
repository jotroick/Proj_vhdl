----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:56 04/15/2007 
-- Design Name: 
-- Module Name:    rightshifter - despright 
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

entity rightshifter is
generic(n:integer:=4);
       port(
		      DINR : in std_logic_vector (n-1 downto 0);
				CLKR: in std_logic;
				RIGHT: out std_logic_vector (n-1 downto 0)
				);
end rightshifter;

architecture despright of rightshifter is
signal tmpo: std_logic_vector(n-1 downto 0);
begin

proce:process (CLKR) 
  begin 
      if (CLKR'event and CLKR='1') then 
            tmpo <= DINR(0) & DINR(n-1 downto 1);
      end if;	   
  end process; 
  RIGHT <= tmpo;
end despright;

