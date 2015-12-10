----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:51:03 03/11/2007 
-- Design Name: 
-- Module Name:    Multiplicador - Behavioral 
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

entity Multiplicador is
Port (
	x: in std_logic_vector(5 downto 0);
	y: in std_logic_vector(5 downto 0);
	z: out std_logic_vector(11 downto 0)
	);

end Multiplicador;


architecture Behavioral of Multiplicador is

          COMPONENT sumador
          PORT(
		      Cin: IN std_logic;
				ya:  in std_logic;
				a:   IN std_logic_vector(n-1 downto 0);
				S:   OUT std_logic_vector(n-1 downto 0); 
				co:OUT std_logic );
				
          END COMPONENT;
			 
			 COMPONENT contador
          PORT(port( 
			          ya: IN std_logic;
                  clk:IN std_logic;       
                cuenta: OUT std_logic_vector(5 downto 0)
                     );
          END COMPONENT;
			 
			           COMPONENT comparador
          PORT(	 b: in std_logic_vector (5 downto 0);
			          clk: in std_logic;
			          ya: out std_logic); 
          END COMPONENT;
			 
	begin 
	
	  SIGNAL cable : std_logic_vector (n-2 downto 0);--temporary carry signal
 
	BEGIN
  -- Component Instantiation
          R1: comparador PORT MAP (b=>y
											     );



end Behavioral;

