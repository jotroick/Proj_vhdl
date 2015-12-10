----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:01:16 04/15/2007 
-- Design Name: 
-- Module Name:    restador - Behavioral 
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

ENTITY restador IS
  generic ( n: integer:= 4);
       PORT (
				e    :   IN std_logic_vector(n-1 downto 0);
				f    :   IN std_logic_vector(n-1 downto 0);
				R    :   OUT std_logic_vector(n-1 downto 0); 
				cou  : OUT std_logic
				);
  
  END restador;

ARCHITECTURE Behavioral OF restador IS 

  -- Component Declaration
          COMPONENT restin
          PORT(
                  u,v,w :IN std_logic;
                  res :   OUT std_logic;       
                  carryr : OUT std_logic
                  );
          END COMPONENT;

   SIGNAL cable1 : std_logic_vector (n-2 downto 0);--temporary carry signal

	BEGIN
  -- Component Instantiation
          L1: restin 
			     PORT MAP 
				  (u    =>e(0) ,
			      v    => f(0),
				   w    =>'0' ,
				   carryr  => cable1(0),
				   res => r(0)
					);
	       
			 
	       L1_f: for i in n-2 downto 1 generate
             L1_i: restin 
				    PORT MAP 
					 (u    => e(i) ,
			        v    => f(i),
			        w    => cable1(i-1),
				     res  => r(i),
				     carryr=> cable1 (i));			 
			 end generate;
										  
			 L2: restin 
			     PORT MAP 
				  (u    => e(n-1),
			      v    => f(n-1),
					w    => cable1(n-2),
					res  => r(n-1),
					carryr=>cou
					);
                  
End Behavioral;


