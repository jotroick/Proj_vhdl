--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.1i
--  \   \         Application : ISE
--  /   /         Filename : semaforo_sim.vhw
-- /___/   /\     Timestamp : Wed Oct 24 22:03:56 2007
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: semaforo_sim
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY semaforo_sim IS
END semaforo_sim;

ARCHITECTURE testbench_arch OF semaforo_sim IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT luz
        PORT (
            CLK : In std_logic;
            estact : In std_logic_vector (2 DownTo 0);
            carro : In std_logic;
            estsig : Out std_logic_vector (2 DownTo 0)
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL estact : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL carro : std_logic := '0';
    SIGNAL estsig : std_logic_vector (2 DownTo 0) := "000";

    BEGIN
        UUT : luz
        PORT MAP (
            CLK => CLK,
            estact => estact,
            carro => carro,
            estsig => estsig
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                CLK <= '1';
                estact <= "110";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                CLK <= '1';
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

