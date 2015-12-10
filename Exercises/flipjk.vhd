 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:54 04/05/2007 
-- Design Name: 
-- Module Name:    display - Behavioral 
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

---Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display is
port(
	V:in std_logic_vector (8 downto 0);
	clr: in std_logic;
	clk: in std_logic;
	ACC: in std_logic;
	D: out std_logic_vector (9 downto 0);
	K:out std_logic_vector(2 downto 0));
	
end display;

architecture Behavioral of display is

signal R: std_logic_vector(2 downto 0);

  -- Component Declaration
          COMPONENT contador
          PORT(
					ACC1:	in std_logic;
	            clr1: in std_logic;
	               Y: out std_logic_vector(2 downto 0);
	              D4: out std_logic_vector(9 downto 0);
	               V1: in std_logic_vector(8 downto 0);
						clkcon: in std_logic
                  );
          END COMPONENT;

Begin
--Instanciacion
            C1: contador port map(ACC1 =>ACC,
				              clr1=>clr,
								  Y=>R,
								  V1=>V,
								  D4=>D,
								  clkcon => clk);
				
   K<=R;	 
end;

