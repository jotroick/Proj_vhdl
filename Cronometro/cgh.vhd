----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:58:23 12/13/2007 
-- Design Name: 
-- Module Name:    cgh - Behavioral 
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



use ieee.numeric_std.all;
library unisim;
use unisim.vcomponents.all;

entity crono is
port (
lapso : in std_logic;
rst : in std_logic;
clk : in std_logic;
sel_display : inout std_logic_vector(3 downto 0);
seg7_code : out std_logic_vector(7 downto 0));
end crono;
architecture rtl of crono is
-- signal sel_display : std_logic_vector(3 downto 0);
-- declaracion de regs_FSM
component regs_FSM
port (
	lapso : in std_logic;
	rst : in std_logic;
	mclk : in std_logic;
	En1KHz : in std_logic;
	CntUnidades : in unsigned(3 downto 0);
	CntDecenas : in unsigned (3 downto 0);
	sel_display : out std_logic_vector(3 downto 0);
	seg7_code : out std_logic_vector(7 downto 0));
end component;

component Prueba_DCM is
port (
	RST_IN : in std_logic;
	CLKIN_IN : in std_logic;
	LOCKED_OUT : out std_logic;
	CLK90_OUT : out std_logic;
	CLK2X_OUT : out std_logic;
	CLKDV_OUT : out std_logic;
	CLKIN_IBUFG_OUT : out std_logic;
	CLK0_OUT : out std_logic);
end component;
-- Declaración del prescaler (COREGEN).
component prescaler
port (
Q : out std_logic_vector(13 downto 0);
CLK : in std_logic;
THRESH0 : out std_logic;
ACLR : in std_logic);
end component;
-- señales del diseño
signal clk_fpga : std_logic;
signal en1khz : std_logic;
signal EN1HZ : std_logic;
signal dec_cnt : unsigned(9 downto 0);
signal CntUnidades : unsigned(3 downto 0);
signal CntDecenas : unsigned(3 downto 0);
signal rst_n : std_logic;
begin

-- creacion de la señal de reset negada
rst_n <= not rst;
-- Instanciación de los componentes necesarios para
-- la generación de reloj
DCM_INST : Prueba_DCM
port map (
CLKIN_IN => CLK,
RST_IN => RST,
CLKIN_IBUFG_OUT =>open,
CLK0_OUT => open, --clk_fpga,
CLK2X_OUT =>open,
CLK90_OUT =>open,
CLKDV_OUT =>clk_fpga, --Nueva salida cogida
LOCKED_OUT =>open);
-- Instanciación del prescaler (COREGEN).
cto_prescaler : prescaler
port map (
Q => open,
CLK => clk_fpga,
THRESH0 => en1khz,
ACLR => RST);
-- instanciacion de regs_FSM
cto_FSM : regs_FSM
port map (
lapso => lapso,
rst => RST,
mclk => clk_fpga,
En1KHz => En1KHz,
CntUnidades => CntUnidades,
CntDecenas => CntDecenas,
sel_display => sel_display,
seg7_code => seg7_code );
-- Proceso generación de la señal de 1 Hz.
process(clk_fpga, RST)
begin
if (RST = '1') then
dec_cnt <= (others => '0');
elsif (clk_fpga = '1'and clk_fpga'event) then
if (en1khz = '1') then
if (dec_cnt = 999 ) then
dec_cnt <= (others => '0');
else
dec_cnt <= dec_cnt + 1;
end if;
end if;
end if;
end process;
-- asignacion concurrente de señal, equivale a un proceso
-- EN1HZ <= '1' when (dec_cnt= 999 and EN1KHZ='1' ) else '0'; --
-- para que tenga un ciclo de trabajo del 50%
-- Proceso contador.
process(clk_fpga, RST)
begin
if (RST = '1') then -- tras el pulso de reset se ponen a cero(ok)
CntUnidades <= (others => '0');
CntDecenas <= (others => '0');
elsif(clk_fpga = '1' and clk_fpga'event) then

if (EN1HZ = '1') then
if (CntUnidades = 9) then
CntUnidades <= (others => '0');
if (CntDecenas = 5) then
CntDecenas <= (others => '0');
else
CntDecenas <= CntDecenas + 1;
end if;
else
CntUnidades <= CntUnidades + 1;
end if;
end if;
end if;
end process;
end rtl;

