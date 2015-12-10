----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:51:40 04/14/2007 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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

ENTITY fulladder IS
  generic ( n: integer:= 3);
       PORT (
				a    :IN std_logic_vector(n-1 downto 0);
				b    :IN std_logic_vector(n-1 downto 0);
				S    :OUT std_logic_vector(n-1 downto 0); 
				co   :OUT std_logic
				);
  
END fulladder;

ARCHITECTURE behavior OF fulladder IS 

  -- Component Declaration
          COMPONENT fulladd
          PORT(
                  x,y,z :IN std_logic;
                  sum   :OUT std_logic;       
                  carry :OUT std_logic
                  );
          END COMPONENT;

   SIGNAL cable : std_logic_vector (n-2 downto 0);--temporary carry signal
 
BEGIN
  -- Component Instantiation

          R1: fulladd 
			     PORT MAP 
				  (
				   x     =>a(0) ,
			      y     => b(0),
				   z     => '0' ,
				   carry => cable(0),
				   sum   => s(0)
					);
	       
			 
	       R1_f: for i in n-2 downto 1 generate
             R1_i: fulladd 
				 PORT MAP 
				 (
				  x     => a(i) ,
			     y     => b(i),
			     z     => cable(i-1),
				  sum   => s(i),
				  carry => cable (i));			 
			 end generate;
										  
			 R2: fulladd 
			     PORT MAP
				  (
				   x    => a(n-1),
			      y    => b(n-1),
					z    => cable(n-2),
					sum  => s(n-1),
					carry=>co
					);
                  
End Behavior;



