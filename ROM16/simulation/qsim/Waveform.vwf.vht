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
-- Generated on "10/23/2018 14:29:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM16_vhd_vec_tst IS
END ROM16_vhd_vec_tst;
ARCHITECTURE ROM16_arch OF ROM16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL INSTRUCTION : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PC_address : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ROM16
	PORT (
	INSTRUCTION : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	PC_address : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM16
	PORT MAP (
-- list connections between master ports and signals
	INSTRUCTION => INSTRUCTION,
	PC_address => PC_address
	);
-- PC_address[3]
t_prcs_PC_address_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		PC_address(3) <= '0';
		WAIT FOR 240000 ps;
		PC_address(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	PC_address(3) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_3;
-- PC_address[2]
t_prcs_PC_address_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		PC_address(2) <= '0';
		WAIT FOR 120000 ps;
		PC_address(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	PC_address(2) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_2;
-- PC_address[1]
t_prcs_PC_address_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		PC_address(1) <= '0';
		WAIT FOR 60000 ps;
		PC_address(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	PC_address(1) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_1;
-- PC_address[0]
t_prcs_PC_address_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		PC_address(0) <= '0';
		WAIT FOR 30000 ps;
		PC_address(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	PC_address(0) <= '0';
	WAIT FOR 30000 ps;
	PC_address(0) <= '1';
WAIT;
END PROCESS t_prcs_PC_address_0;
END ROM16_arch;
