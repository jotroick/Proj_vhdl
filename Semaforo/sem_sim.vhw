--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.1i
--  \   \         Application : ISE
--  /   /         Filename : sem_sim.vhw
-- /___/   /\     Timestamp : Wed Oct 24 23:23:00 2007
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: sem_sim
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY sem_sim IS
END sem_sim;

ARCHITECTURE testbench_arch OF sem_sim IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT luz
        PORT (
            CLK : In std_logic;
            carro : In std_logic;
            estsig : Out std_logic_vector (2 DownTo 0)
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL carro : std_logic := '0';
    SIGNAL estsig : std_logic_vector (2 DownTo 0) := "000";

    BEGIN
        UUT : luz
        PORT MAP (
            CLK => CLK,
            carro => carro,
            estsig => estsig
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                CLK <= '1';
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
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                CLK <= '1';
                carro <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2200ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2600ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2700ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2900ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3000ns
                WAIT FOR 100 ns;
                CLK <= '0';

            END PROCESS;

    END testbench_arch;

