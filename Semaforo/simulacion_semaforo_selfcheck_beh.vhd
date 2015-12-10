--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.1i
--  \   \         Application : ISE
--  /   /         Filename : simulacion_semaforo_selfcheck.vhw
-- /___/   /\     Timestamp : Wed Oct 24 22:07:16 2007
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: simulacion_semaforo_selfcheck_beh
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY simulacion_semaforo_selfcheck_beh IS
END simulacion_semaforo_selfcheck_beh;

ARCHITECTURE testbench_arch OF simulacion_semaforo_selfcheck_beh IS
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
    SIGNAL estsig : std_logic_vector (2 DownTo 0) := "UUU";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : luz
        PORT MAP (
            CLK => CLK,
            estact => estact,
            carro => carro,
            estsig => estsig
        );

        PROCESS
            PROCEDURE CHECK_estsig(
                next_estsig : std_logic_vector (2 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (estsig /= next_estsig) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns estsig="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, estsig);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_estsig);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                CLK <= '1';
                estact <= "100";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  250ns
                WAIT FOR 50 ns;
                CHECK_estsig("110", 250);
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 50 ns;
                CLK <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  450ns
                WAIT FOR 50 ns;
                CHECK_estsig("010", 450);
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 50 ns;
                CLK <= '1';
                carro <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                CLK <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  650ns
                WAIT FOR 50 ns;
                CHECK_estsig("001", 650);
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 50 ns;
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

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

