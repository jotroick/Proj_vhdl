--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : carrro-sim.vhw
-- /___/   /\     Timestamp : Wed Nov 07 21:36:52 2007
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: carrro-sim
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY carrro-sim IS
END carrro-sim;

ARCHITECTURE testbench_arch OF carrro-sim IS
    COMPONENT car1
        PORT (
            start : In std_logic;
            sensores : In std_logic_vector (2 DownTo 0);
            bmoto : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL start : std_logic := '0';
    SIGNAL sensores : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL bmoto : std_logic_vector (3 DownTo 0) := "0000";

    BEGIN
        UUT : car1
        PORT MAP (
            start => start,
            sensores => sensores,
            bmoto => bmoto
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                start <= '1';
                sensores <= "111";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                sensores <= "101";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                sensores <= "001";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                sensores <= "011";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                sensores <= "010";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                sensores <= "110";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                sensores <= "111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                sensores <= "011";
                -- -------------------------------------
                WAIT FOR 200 ns;

            END PROCESS;

    END testbench_arch;

