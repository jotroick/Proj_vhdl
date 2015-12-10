----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:59:28 04/14/2007 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

ENTITY ALU IS
        generic(n:integer:=4);
        PORT(
             datoa   : IN std_logic_vector(n-1 downto 0);
             datob   : IN std_logic_vector(n-1 downto 0);
             selecs  : IN std_logic_vector(2 downto 0);
             CLK     : IN std_logic;				 
             res     : OUT std_logic_vector(n-1 downto 0);
				 resm    : OUT std_logic_vector(n+n-1 downto 0)
             );
END ALU;

ARCHITECTURE Behavioral OF ALU IS 

  -- Component Declaration

          COMPONENT fulladder is
          generic(n:integer:=4);
             PORT(
                  a     : IN std_logic_vector(n-1 downto 0);
                  b     : IN std_logic_vector(n-1 downto 0);
                  S     : OUT std_logic_vector(n-1 downto 0); 
                  co    : OUT std_logic
                  );
          END COMPONENT;

			 COMPONENT restador IS
          generic ( n: integer:= 4);
             PORT(
				      e:   IN std_logic_vector(n-1 downto 0);
				      f:   IN std_logic_vector(n-1 downto 0);
				      R:   OUT std_logic_vector(n-1 downto 0); 
				      cou: OUT std_logic
				     );
   
          END COMPONENT;			 
                        
          COMPONENT multicom is
			 generic(n:integer:=4);
             PORT(
                  x : IN  std_logic_vector(n-1 downto 0);
                  y : IN  std_logic_vector(n-1 downto 0);
                  p : OUT std_logic_vector(n+n-1 downto 0)
                 );
          END COMPONENT;	 
	 
			 COMPONENT leftshifter IS
          generic(n:integer:=4);
             PORT(
		            DIN : in std_logic_vector (n-1 downto 0);
				      CLKL: in std_logic;
				      LEFT: out std_logic_vector (n-1 downto 0)
				      );
          END COMPONENT;

			 COMPONENT rightshifter IS
             PORT(
		            DINR : in std_logic_vector (n-1 downto 0);
				      CLKR: in std_logic;
				      RIGHT: out std_logic_vector (n-1 downto 0)				      
					   );			 
          END COMPONENT;
			 
			 COMPONENT mux5 is
			 generic ( n: integer:=4);
              PORT( 
	               ISUM  : in  STD_LOGIC_VECTOR (n-1 downto 0);
                  IRES  : in  STD_LOGIC_VECTOR (n-1 downto 0);
                  IMUL  : in  STD_LOGIC_VECTOR (n+n-1 downto 0);
                  ISL   : in  STD_LOGIC_VECTOR (n-1 downto 0);
                  ISR   : in  STD_LOGIC_VECTOR (n-1 downto 0);
                  selec : in  STD_LOGIC_VECTOR (2 downto 0);
                  result: out STD_LOGIC_VECTOR (n-1 downto 0);
			         resulm: out STD_LOGIC_VECTOR (n+n-1 downto 0)
			         );
			 END COMPONENT;
          
			 SIGNAL  cablesum :  std_logic_vector(n-1 downto 0);
          SIGNAL  cablemult:  std_logic_vector(n+n-1 downto 0);
			 SIGNAL  cableres :  std_logic_vector(n-1 downto 0);
          SIGNAL  cableshif:  std_logic_vector(n-1 downto 0);
			 SIGNAL  cableshifr:  std_logic_vector(n-1 downto 0);


BEGIN

  -- Component Instantiation
                       
					
          C1: fulladder 
              PORT MAP(
                       a => datoa,
                       b => datob,
                       S => cablesum
                       );
                                                                 
          C2: restador 
              PORT MAP(
                       e => datoa,
                       f => datob,
                       R => cableres
                       );	 
						  
          C3: multicom
              PORT MAP(
                       x => datoa,
                       y => datob,
                       p => cablemult
							  );
          
			 C4: leftshifter
              PORT MAP(			  
                      DIN  => datoa,
				          CLKL => CLK,
				          LEFT => cableshif
                       );
			
			 C5: rightshifter
              PORT MAP(			  
		                DINR => datob, 
				          CLKR => CLK,
				          RIGHT=> cableshifr
                       );
			 C6: mux5
              PORT MAP(
				           ISUM  => cablesum,
                       IRES  => cableres,
                       IMUL  => cablemult,
                       ISL   => cableshif,
                       ISR   => cableshifr,
                       selec => selecs,
                       result=> res,
			              resulm=> resm
 				           );			 
          							  
							  
END Behavioral;

