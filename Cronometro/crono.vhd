----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:56:43 12/13/2007 
-- Design Name: 
-- Module Name:    crono - Behavioral 
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

library ieee;
use ieee.std_logic_1164.all;
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

component regs_FSM
port (
	lapso : in std_logic;
	rst : in std_logic;
	mclk : in std_logic;
	unKHZ : in std_logic;
	unidades : in unsigned(3 downto 0);
	decenas : in unsigned(3 downto 0);
	sel_display : out std_logic_vector(3 downto 0);
	seg7_code : out std_logic_vector(7 downto 0)); -- valor en 7

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

component prescaler
port (
	Q : out std_logic_vector(13 downto 0);
	CLK : in std_logic;
	THRESH0 : out std_logic;
	ACLR : in std_logic);
end component;

signal clk_fpga : std_logic;
signal unKHZ : std_logic;
signal EN1HZ : std_logic;
signal dec_cnt : unsigned(9 downto 0);
signal unidades : unsigned(3 downto 0);
signal decenas : unsigned(3 downto 0);
signal rst_n : std_logic;
begin

rst_n <= not rst;

DCM_INST : Prueba_DCM
port map (
	CLKIN_IN => CLK,
	RST_IN => RST,
	CLKIN_IBUFG_OUT =>open,
	CLK0_OUT => open, 
	CLK2X_OUT =>open,
	CLK90_OUT =>open,
	CLKDV_OUT =>clk_fpga, 
	LOCKED_OUT =>open);

cto_prescaler : prescaler
port map (
	Q => open,
	CLK => clk_fpga,
	THRESH0 => unKHZ,
	ACLR => RST);
	cto_FSM : regs_FSM
port map (
	lapso => lapso,
	rst => RST,
	mclk => clk_fpga,
	unKHZ => unKHZ,
	unidades => unidades,
	decenas => decenas,
	sel_display => sel_display,
	seg7_code => seg7_code );

process(clk_fpga, RST)
begin
if (RST = '1') then
	dec_cnt <= (others => '0');
	elsif (clk_fpga = '1'and clk_fpga'event) then
	if (unKHZ = '1') then
		if (dec_cnt = 999 ) then
			dec_cnt <= (others => '0');
		else
			dec_cnt <= dec_cnt + 1;
		end if;
	end if;
end if;
end process;

EN1HZ <= '1' when (dec_cnt= 999 and unKHZ='1' ) else '0'; 

process(clk_fpga, RST)
begin
if (RST = '1') then 

unidades <= (others => '0');
decenas <= (others => '0');
elsif(clk_fpga = '1' and clk_fpga'event) then

if (EN1HZ = '1') then
     if (unidades = 9) then
			unidades <= (others => '0');
		if (decenas = 5) then
			decenas <= (others => '0');
		else
			decenas <= decenas + 1;
		end if;
		else
			unidades <= unidades + 1;
		end if;
			end if;
end if;
end process;
end rtl;
