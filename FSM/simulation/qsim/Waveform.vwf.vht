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
-- Generated on "10/26/2018 10:48:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_vhd_vec_tst IS
END FSM_vhd_vec_tst;
ARCHITECTURE FSM_arch OF FSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL P : STD_LOGIC;
SIGNAL R : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL SA : STD_LOGIC;
SIGNAL SB : STD_LOGIC;
SIGNAL SC : STD_LOGIC;
SIGNAL SD : STD_LOGIC;
COMPONENT FSM
	PORT (
	clk : IN STD_LOGIC;
	P : IN STD_LOGIC;
	R : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	SA : OUT STD_LOGIC;
	SB : OUT STD_LOGIC;
	SC : OUT STD_LOGIC;
	SD : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	P => P,
	R => R,
	rst => rst,
	SA => SA,
	SB => SB,
	SC => SC,
	SD => SD
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- P
t_prcs_P: PROCESS
BEGIN
	P <= '1';
	WAIT FOR 30000 ps;
	FOR i IN 1 TO 16
	LOOP
		P <= '0';
		WAIT FOR 30000 ps;
		P <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	P <= '0';
WAIT;
END PROCESS t_prcs_P;

-- rst
t_prcs_rst: PROCESS
BEGIN
LOOP
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_rst;
END FSM_arch;
