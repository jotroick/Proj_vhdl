----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:04:49 09/25/2007 
-- Design Name: 
-- Module Name:    sum1 - Behavioral 
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


entity sum1 is

generic(n: natural :=4);
port(	A:	in std_logic_vector(n-1 downto 0);
	B:	in std_logic_vector(n-1 downto 0);
	carry:	out std_logic;
	suma:	out std_logic_vector(n-1 downto 0)
);

end sum1;

architecture behv of sum1 is

signal result: std_logic_vector(n downto 0);
 
begin					  
 
   
    result <= ('0' & A)+('0' & B);
    suma <= result(n-1 downto 0);
    carry <= result(n);

end behv;