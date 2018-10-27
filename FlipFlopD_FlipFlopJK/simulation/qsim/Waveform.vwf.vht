-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/26/2018 16:48:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FlipFlopJK
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FlipFlopJK_vhd_vec_tst IS
END FlipFlopJK_vhd_vec_tst;
ARCHITECTURE FlipFlopJK_arch OF FlipFlopJK_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL j : STD_LOGIC;
SIGNAL k : STD_LOGIC;
SIGNAL notq : STD_LOGIC;
SIGNAL q : STD_LOGIC;
COMPONENT FlipFlopJK
	PORT (
	clk : IN STD_LOGIC;
	j : IN STD_LOGIC;
	k : IN STD_LOGIC;
	notq : BUFFER STD_LOGIC;
	q : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FlipFlopJK
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	j => j,
	k => k,
	notq => notq,
	q => q
	);

-- j
t_prcs_j: PROCESS
BEGIN
LOOP
	j <= '0';
	WAIT FOR 100000 ps;
	j <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_j;

-- k
t_prcs_k: PROCESS
BEGIN
	FOR i IN 1 TO 10
	LOOP
		k <= '0';
		WAIT FOR 46000 ps;
		k <= '1';
		WAIT FOR 46000 ps;
	END LOOP;
	k <= '0';
	WAIT FOR 46000 ps;
	k <= '1';
WAIT;
END PROCESS t_prcs_k;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk <= '0';
		WAIT FOR 30000 ps;
		clk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 30000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- q
t_prcs_q: PROCESS
BEGIN
	q <= 'Z';
WAIT;
END PROCESS t_prcs_q;

-- notq
t_prcs_notq: PROCESS
BEGIN
	notq <= 'Z';
WAIT;
END PROCESS t_prcs_notq;
END FlipFlopJK_arch;
