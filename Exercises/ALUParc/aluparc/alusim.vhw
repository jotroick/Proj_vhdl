--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.1i
--  \   \         Application : ISE
--  /   /         Filename : alusim.vhw
-- /___/   /\     Timestamp : Sun Apr 15 20:29:23 2007
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: alusim
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY alusim IS
END alusim;

ARCHITECTURE testbench_arch OF alusim IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ALU
        PORT (
            datoa : In std_logic_vector (3 DownTo 0);
            datob : In std_logic_vector (3 DownTo 0);
            selecs : In std_logic_vector (2 DownTo 0);
            CLK : In std_logic;
            res : Out std_logic_vector (3 DownTo 0);
            resm : Out std_logic_vector (7 DownTo 0)
        );
    END COMPONENT;

    SIGNAL datoa : std_logic_vector (3 DownTo 0) := "0011";
    SIGNAL datob : std_logic_vector (3 DownTo 0) := "0010";
    SIGNAL selecs : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL CLK : std_logic := '0';
    SIGNAL res : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL resm : std_logic_vector (7 DownTo 0) := "00000000";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : ALU
        PORT MAP (
            datoa => datoa,
            datob => datob,
            selecs => selecs,
            CLK => CLK,
            res => res,
            resm => resm
        );

        PROCESS
            PROCEDURE CHECK_res(
                next_res : std_logic_vector (3 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (res /= next_res) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns res="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, res);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_res);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_resm(
                next_resm : std_logic_vector (7 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (resm /= next_resm) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns resm="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, resm);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_resm);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  600ns
                WAIT FOR 600 ns;
                selecs <= "001";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 600 ns;
                selecs <= "010";
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 600 ns;
                CLK <= '1';
                selecs <= "011";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2200ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 100 ns;
                CLK <= '0';
                selecs <= "100";
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2600ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2700ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2900ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3000ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3100ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3200ns
                WAIT FOR 100 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3300ns
                WAIT FOR 100 ns;
                CLK <= '0';
                WAIT FOR 700 ns;

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

