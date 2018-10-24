-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/23/2018 22:46:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM16_vhd_vec_tst IS
END RAM16_vhd_vec_tst;
ARCHITECTURE RAM16_arch OF RAM16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDRESS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLOCK : STD_LOGIC;
SIGNAL DATAIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DATAOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ROW : STD_LOGIC;
COMPONENT RAM16
	PORT (
	ADDRESS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLOCK : IN STD_LOGIC;
	DATAIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DATAOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ROW : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM16
	PORT MAP (
-- list connections between master ports and signals
	ADDRESS => ADDRESS,
	CLOCK => CLOCK,
	DATAIN => DATAIN,
	DATAOUT => DATAOUT,
	ROW => ROW
	);
-- ADDRESS[3]
t_prcs_ADDRESS_3: PROCESS
BEGIN
	ADDRESS(3) <= '0';
	WAIT FOR 400000 ps;
	ADDRESS(3) <= '1';
	WAIT FOR 400000 ps;
	ADDRESS(3) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_3;
-- ADDRESS[2]
t_prcs_ADDRESS_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ADDRESS(2) <= '0';
		WAIT FOR 200000 ps;
		ADDRESS(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	ADDRESS(2) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_2;
-- ADDRESS[1]
t_prcs_ADDRESS_1: PROCESS
BEGIN
LOOP
	ADDRESS(1) <= '0';
	WAIT FOR 100000 ps;
	ADDRESS(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADDRESS_1;
-- ADDRESS[0]
t_prcs_ADDRESS_0: PROCESS
BEGIN
LOOP
	ADDRESS(0) <= '0';
	WAIT FOR 50000 ps;
	ADDRESS(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADDRESS_0;

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 50000 ps;
	CLOCK <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;
-- DATAIN[15]
t_prcs_DATAIN_15: PROCESS
BEGIN
	DATAIN(15) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_15;
-- DATAIN[14]
t_prcs_DATAIN_14: PROCESS
BEGIN
	DATAIN(14) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_14;
-- DATAIN[13]
t_prcs_DATAIN_13: PROCESS
BEGIN
	DATAIN(13) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_13;
-- DATAIN[12]
t_prcs_DATAIN_12: PROCESS
BEGIN
	DATAIN(12) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_12;
-- DATAIN[11]
t_prcs_DATAIN_11: PROCESS
BEGIN
	DATAIN(11) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_11;
-- DATAIN[10]
t_prcs_DATAIN_10: PROCESS
BEGIN
	DATAIN(10) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_10;
-- DATAIN[9]
t_prcs_DATAIN_9: PROCESS
BEGIN
	DATAIN(9) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_9;
-- DATAIN[8]
t_prcs_DATAIN_8: PROCESS
BEGIN
	DATAIN(8) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_8;
-- DATAIN[7]
t_prcs_DATAIN_7: PROCESS
BEGIN
	DATAIN(7) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_7;
-- DATAIN[6]
t_prcs_DATAIN_6: PROCESS
BEGIN
	DATAIN(6) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_6;
-- DATAIN[5]
t_prcs_DATAIN_5: PROCESS
BEGIN
	DATAIN(5) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_5;
-- DATAIN[4]
t_prcs_DATAIN_4: PROCESS
BEGIN
	DATAIN(4) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_4;
-- DATAIN[3]
t_prcs_DATAIN_3: PROCESS
BEGIN
	DATAIN(3) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_3;
-- DATAIN[2]
t_prcs_DATAIN_2: PROCESS
BEGIN
	DATAIN(2) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_2;
-- DATAIN[1]
t_prcs_DATAIN_1: PROCESS
BEGIN
	DATAIN(1) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_1;
-- DATAIN[0]
t_prcs_DATAIN_0: PROCESS
BEGIN
	DATAIN(0) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_0;

-- ROW
t_prcs_ROW: PROCESS
BEGIN
LOOP
	ROW <= '0';
	WAIT FOR 50000 ps;
	ROW <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ROW;
END RAM16_arch;
