----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:24 04/15/2007 
-- Design Name: 
-- Module Name:    restin - Behavioral 
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

entity restin is
     PORT(
          u,v,w  :IN std_logic;
          res    :   OUT std_logic;       
          carryr : OUT std_logic
          );
          END restin;

architecture Behavioral of restin is

begin

  res <= ((u xor v) xor w);
  carryr<= (((((not u) and v) or w) and v) or (w and (not u))) ;

end Behavioral;

