--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.1i
--  \   \         Application : ISE
--  /   /         Filename : rshifsim.vhw
-- /___/   /\     Timestamp : Sun Apr 15 18:36:00 2007
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: rshifsim
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY rshifsim IS
END rshifsim;

ARCHITECTURE testbench_arch OF rshifsim IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT rightshifter
        PORT (
            DINR : In std_logic_vector (3 DownTo 0);
            DESR : In std_logic_vector (3 DownTo 0);
            CLKR : In std_logic;
            RIGHT : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL DINR : std_logic_vector (3 DownTo 0) := "0011";
    SIGNAL DESR : std_logic_vector (3 DownTo 0) := "0010";
    SIGNAL CLKR : std_logic := '0';
    SIGNAL RIGHT : std_logic_vector (3 DownTo 0) := "0000";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : rightshifter
        PORT MAP (
            DINR => DINR,
            DESR => DESR,
            CLKR => CLKR,
            RIGHT => RIGHT
        );

        PROCESS    -- clock process for CLKR
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLKR <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLKR <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            PROCEDURE CHECK_RIGHT(
                next_RIGHT : std_logic_vector (3 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (RIGHT /= next_RIGHT) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns RIGHT="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, RIGHT);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_RIGHT);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                WAIT FOR 4200 ns;

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

