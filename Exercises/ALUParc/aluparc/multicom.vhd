----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:04:41 04/15/2007 
-- Design Name: 
-- Module Name:    multicom - Behavioral 
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

entity multicom is
generic ( n: integer:= 4);
    Port ( x    : in  STD_LOGIC_VECTOR (n-1 downto 0);
           y    : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  p    : out  STD_LOGIC_VECTOR (n+n-1 downto 0)
			 );
end multicom;

architecture combmult of multicom is

function MAJ (I1,I2,I3: STD_LOGIC) return STD_LOGIC is
   begin 
	return ((I1 and I2) or (I1 and I3) or (I2 and I3));
	end MAJ;

begin
pro : process (x,y)
type arreglo is array (0 to n-1) of STD_LOGIC_VECTOR (n-1 downto 0);
variable PC : arreglo; --bits de componenete de producto
variable PCS: arreglo; --bits de suma del fulladder
variable PCC: arreglo; --bits de salida de acarreo del fulladder
variable RAS, RAC: STD_LOGIC_VECTOR(n-1 DOWNTO 0); --suma del sumador en rizo y bits de acarreo

 begin

   for i in 0 to n-1 loop for j in 0 to n-1 loop
        PC (i)(j):= y(i) and x(j);--calculo bits de componente producto 	
   end loop;  end loop;
   for j in 0 to n-1 loop
      PCS(0)(j):=PC(0)(j);--se inicializa el primer renglón virtual
      PCC(0)(j):='0';
   end loop;
   for i in 1 to n-1 loop -- hacer todos los fulladers  excepto el último renglón
    	for j in 0 to n-2 loop
		  PCS(i)(j):= PC(i)(j) xor PCS(i-1)(j+1) xor PCC(i-1)(j);
		  PCC(i)(j):= MAJ(PC(i)(j),PCS(i-1)(j+1),PCC(i-1)(j));
		  PCS(i)(n-1):= PCS(i)(n-1);--señal de suma del sumador virtual del lado izquierdo
		end loop;
   end loop;
   RAC(0):='0';
   for i in 0 to n-2 loop
      RAS(i):=PCS(n-1)(i+1) xor PCC(n-1)(i) xor RAC(i);
		RAC(i+1):=MAJ(PCS(n-1)(i+1),PCC(n-1)(i),RAC(i));
	end loop;
   for i in 0 to n-1 loop
	  p(i) <= PCS(i)(0);--primeros 8 bits de prducto de las sumas del fulladder
	end loop;
   for i in n to n+n-2 loop
     p(i) <= RAS(i-n); --siguientes 8  bits de la sumas en rizo
   end loop;
   p(n+n-1) <= RAC (n-1);--ultimo bit del acarreo
end process;	
end combmult;
