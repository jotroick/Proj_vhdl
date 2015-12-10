----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:40 10/24/2007 
-- Design Name: 
-- Module Name:    semaforo_vhdl - Behavioral 
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

entity luz is
port( CLK: in std_logic;
		--estact: in std_logic_vector(2 downto 0);
		carro: in std_logic;
		estsig: out std_logic_vector(2 downto 0));
end luz;

architecture semaforo of luz is

type colores is (crojo, crojoamarillo, camarillo1, cverde, camarillo2);
signal color: colores:=crojoamarillo;
signal salida: std_logic_vector (2 downto 0);

CONSTANT verde: std_logic_vector(0 TO 2):="001";
CONSTANT amarillo1: std_logic_vector(0 TO 2):="010";
CONSTANT rojo: std_logic_vector(0 TO 2):="100";
CONSTANT rojoamarillo: std_logic_vector(0 TO 2):="110";
CONSTANT amarillo2: std_logic_vector(0 TO 2):="011";



begin
process(CLK,carro)

variable cuenta: integer:=0;
begin
if(cuenta<30)then
if (CLK='1' and CLK'event) then
	case color is
		
			when crojo =>
						color<=crojoamarillo;
						salida<=rojoamarillo;
						cuenta:=cuenta+1;
			when crojoamarillo =>
						color<=camarillo1;
						salida<=amarillo1;
						cuenta:=cuenta+1;
			when camarillo1 =>
						color<=cverde;
						salida<=verde;
						cuenta:=cuenta+1;
			when cverde =>
						
						color<=camarillo2;
						salida<=amarillo2;
						cuenta:=cuenta+1;
						
			when camarillo2 =>
						color<=crojo;
						salida<=rojo;
						cuenta:=cuenta+1;
	end case;
end if;--clk
if(carro='0' and color=cverde)then
		
			color<=camarillo2;
			salida<=amarillo2;
			cuenta:=cuenta+1;
end if;

end if;--cuenta
estsig<=salida;
end process;
end semaforo;


