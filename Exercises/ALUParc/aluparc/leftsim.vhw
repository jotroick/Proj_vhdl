--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.1i
--  \   \         Application : ISE
--  /   /         Filename : leftsim.vhw
-- /___/   /\     Timestamp : Sun Apr 15 20:15:50 2007
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: leftsim
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY leftsim IS
END leftsim;

ARCHITECTURE testbench_arch OF leftsim IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT leftshifter
        PORT (
            DIN : In std_logic_vector (3 DownTo 0);
            DESL : In std_logic_vector (3 DownTo 0);
            CLKL : In std_logic;
            LEFT : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL DIN : std_logic_vector (3 DownTo 0) := "0011";
    SIGNAL DESL : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL CLKL : std_logic := '0';
    SIGNAL LEFT : std_logic_vector (3 DownTo 0) := "0000";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : leftshifter
        PORT MAP (
            DIN => DIN,
            DESL => DESL,
            CLKL => CLKL,
            LEFT => LEFT
        );

        PROCESS
            PROCEDURE CHECK_LEFT(
                next_LEFT : std_logic_vector (3 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (LEFT /= next_LEFT) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns LEFT="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, LEFT);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_LEFT);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                CLKL <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                CLKL <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 300 ns;
                CLKL <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                CLKL <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 200 ns;
                CLKL <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                CLKL <= '0';
                WAIT FOR 100 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

