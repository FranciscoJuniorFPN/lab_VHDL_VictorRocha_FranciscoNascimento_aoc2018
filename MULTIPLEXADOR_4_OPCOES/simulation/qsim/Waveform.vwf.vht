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
-- Generated on "10/26/2018 18:11:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MULTIPLEXADOR_16BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MULTIPLEXADOR_16BITS_vhd_vec_tst IS
END MULTIPLEXADOR_16BITS_vhd_vec_tst;
ARCHITECTURE MULTIPLEXADOR_16BITS_arch OF MULTIPLEXADOR_16BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL c : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL d : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL selector : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT MULTIPLEXADOR_16BITS
	PORT (
	a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	c : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	q : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	selector : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MULTIPLEXADOR_16BITS
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	q => q,
	selector => selector
	);
-- a[15]
t_prcs_a_15: PROCESS
BEGIN
	a(15) <= '0';
WAIT;
END PROCESS t_prcs_a_15;
-- a[14]
t_prcs_a_14: PROCESS
BEGIN
	a(14) <= '0';
WAIT;
END PROCESS t_prcs_a_14;
-- a[13]
t_prcs_a_13: PROCESS
BEGIN
	a(13) <= '0';
WAIT;
END PROCESS t_prcs_a_13;
-- a[12]
t_prcs_a_12: PROCESS
BEGIN
	a(12) <= '0';
WAIT;
END PROCESS t_prcs_a_12;
-- a[11]
t_prcs_a_11: PROCESS
BEGIN
	a(11) <= '0';
WAIT;
END PROCESS t_prcs_a_11;
-- a[10]
t_prcs_a_10: PROCESS
BEGIN
	a(10) <= '0';
WAIT;
END PROCESS t_prcs_a_10;
-- a[9]
t_prcs_a_9: PROCESS
BEGIN
	a(9) <= '0';
WAIT;
END PROCESS t_prcs_a_9;
-- a[8]
t_prcs_a_8: PROCESS
BEGIN
	a(8) <= '0';
WAIT;
END PROCESS t_prcs_a_8;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '0';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '0';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '0';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
	WAIT FOR 600000 ps;
	a(2) <= '1';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
	WAIT FOR 300000 ps;
	a(1) <= '1';
	WAIT FOR 300000 ps;
	a(1) <= '0';
	WAIT FOR 300000 ps;
	a(1) <= '1';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		a(0) <= '0';
		WAIT FOR 150000 ps;
		a(0) <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	a(0) <= '0';
WAIT;
END PROCESS t_prcs_a_0;
-- b[15]
t_prcs_b_15: PROCESS
BEGIN
	b(15) <= '0';
WAIT;
END PROCESS t_prcs_b_15;
-- b[14]
t_prcs_b_14: PROCESS
BEGIN
	b(14) <= '0';
WAIT;
END PROCESS t_prcs_b_14;
-- b[13]
t_prcs_b_13: PROCESS
BEGIN
	b(13) <= '0';
WAIT;
END PROCESS t_prcs_b_13;
-- b[12]
t_prcs_b_12: PROCESS
BEGIN
	b(12) <= '0';
WAIT;
END PROCESS t_prcs_b_12;
-- b[11]
t_prcs_b_11: PROCESS
BEGIN
	b(11) <= '0';
WAIT;
END PROCESS t_prcs_b_11;
-- b[10]
t_prcs_b_10: PROCESS
BEGIN
	b(10) <= '0';
WAIT;
END PROCESS t_prcs_b_10;
-- b[9]
t_prcs_b_9: PROCESS
BEGIN
	b(9) <= '0';
WAIT;
END PROCESS t_prcs_b_9;
-- b[8]
t_prcs_b_8: PROCESS
BEGIN
	b(8) <= '0';
WAIT;
END PROCESS t_prcs_b_8;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	b(7) <= '0';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	b(6) <= '0';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	b(5) <= '0';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '0';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 450000 ps;
	b(2) <= '1';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
	WAIT FOR 150000 ps;
	b(1) <= '1';
	WAIT FOR 300000 ps;
	b(1) <= '0';
	WAIT FOR 300000 ps;
	b(1) <= '1';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		b(0) <= '1';
		WAIT FOR 150000 ps;
		b(0) <= '0';
		WAIT FOR 150000 ps;
	END LOOP;
	b(0) <= '1';
WAIT;
END PROCESS t_prcs_b_0;
-- c[15]
t_prcs_c_15: PROCESS
BEGIN
	c(15) <= '0';
WAIT;
END PROCESS t_prcs_c_15;
-- c[14]
t_prcs_c_14: PROCESS
BEGIN
	c(14) <= '0';
WAIT;
END PROCESS t_prcs_c_14;
-- c[13]
t_prcs_c_13: PROCESS
BEGIN
	c(13) <= '0';
WAIT;
END PROCESS t_prcs_c_13;
-- c[12]
t_prcs_c_12: PROCESS
BEGIN
	c(12) <= '0';
WAIT;
END PROCESS t_prcs_c_12;
-- c[11]
t_prcs_c_11: PROCESS
BEGIN
	c(11) <= '0';
WAIT;
END PROCESS t_prcs_c_11;
-- c[10]
t_prcs_c_10: PROCESS
BEGIN
	c(10) <= '0';
WAIT;
END PROCESS t_prcs_c_10;
-- c[9]
t_prcs_c_9: PROCESS
BEGIN
	c(9) <= '0';
WAIT;
END PROCESS t_prcs_c_9;
-- c[8]
t_prcs_c_8: PROCESS
BEGIN
	c(8) <= '0';
WAIT;
END PROCESS t_prcs_c_8;
-- c[7]
t_prcs_c_7: PROCESS
BEGIN
	c(7) <= '0';
WAIT;
END PROCESS t_prcs_c_7;
-- c[6]
t_prcs_c_6: PROCESS
BEGIN
	c(6) <= '0';
WAIT;
END PROCESS t_prcs_c_6;
-- c[5]
t_prcs_c_5: PROCESS
BEGIN
	c(5) <= '0';
WAIT;
END PROCESS t_prcs_c_5;
-- c[4]
t_prcs_c_4: PROCESS
BEGIN
	c(4) <= '0';
WAIT;
END PROCESS t_prcs_c_4;
-- c[3]
t_prcs_c_3: PROCESS
BEGIN
	c(3) <= '0';
	WAIT FOR 750000 ps;
	c(3) <= '1';
WAIT;
END PROCESS t_prcs_c_3;
-- c[2]
t_prcs_c_2: PROCESS
BEGIN
	c(2) <= '0';
	WAIT FOR 150000 ps;
	c(2) <= '1';
	WAIT FOR 600000 ps;
	c(2) <= '0';
WAIT;
END PROCESS t_prcs_c_2;
-- c[1]
t_prcs_c_1: PROCESS
BEGIN
	c(1) <= '1';
	WAIT FOR 150000 ps;
	c(1) <= '0';
	WAIT FOR 300000 ps;
	c(1) <= '1';
	WAIT FOR 300000 ps;
	c(1) <= '0';
WAIT;
END PROCESS t_prcs_c_1;
-- c[0]
t_prcs_c_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		c(0) <= '1';
		WAIT FOR 150000 ps;
		c(0) <= '0';
		WAIT FOR 150000 ps;
	END LOOP;
	c(0) <= '1';
WAIT;
END PROCESS t_prcs_c_0;
-- d[15]
t_prcs_d_15: PROCESS
BEGIN
	d(15) <= '0';
WAIT;
END PROCESS t_prcs_d_15;
-- d[14]
t_prcs_d_14: PROCESS
BEGIN
	d(14) <= '0';
WAIT;
END PROCESS t_prcs_d_14;
-- d[13]
t_prcs_d_13: PROCESS
BEGIN
	d(13) <= '0';
WAIT;
END PROCESS t_prcs_d_13;
-- d[12]
t_prcs_d_12: PROCESS
BEGIN
	d(12) <= '0';
WAIT;
END PROCESS t_prcs_d_12;
-- d[11]
t_prcs_d_11: PROCESS
BEGIN
	d(11) <= '0';
WAIT;
END PROCESS t_prcs_d_11;
-- d[10]
t_prcs_d_10: PROCESS
BEGIN
	d(10) <= '0';
WAIT;
END PROCESS t_prcs_d_10;
-- d[9]
t_prcs_d_9: PROCESS
BEGIN
	d(9) <= '0';
WAIT;
END PROCESS t_prcs_d_9;
-- d[8]
t_prcs_d_8: PROCESS
BEGIN
	d(8) <= '0';
WAIT;
END PROCESS t_prcs_d_8;
-- d[7]
t_prcs_d_7: PROCESS
BEGIN
	d(7) <= '0';
WAIT;
END PROCESS t_prcs_d_7;
-- d[6]
t_prcs_d_6: PROCESS
BEGIN
	d(6) <= '0';
WAIT;
END PROCESS t_prcs_d_6;
-- d[5]
t_prcs_d_5: PROCESS
BEGIN
	d(5) <= '0';
WAIT;
END PROCESS t_prcs_d_5;
-- d[4]
t_prcs_d_4: PROCESS
BEGIN
	d(4) <= '0';
WAIT;
END PROCESS t_prcs_d_4;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= '0';
	WAIT FOR 900000 ps;
	d(3) <= '1';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= '0';
	WAIT FOR 300000 ps;
	d(2) <= '1';
	WAIT FOR 600000 ps;
	d(2) <= '0';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= '1';
	WAIT FOR 300000 ps;
	d(1) <= '0';
	WAIT FOR 300000 ps;
	d(1) <= '1';
	WAIT FOR 300000 ps;
	d(1) <= '0';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		d(0) <= '0';
		WAIT FOR 150000 ps;
		d(0) <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	d(0) <= '0';
WAIT;
END PROCESS t_prcs_d_0;
-- selector[1]
t_prcs_selector_1: PROCESS
BEGIN
	selector(1) <= '0';
	WAIT FOR 300000 ps;
	selector(1) <= '1';
	WAIT FOR 300000 ps;
	selector(1) <= '0';
	WAIT FOR 300000 ps;
	selector(1) <= '1';
WAIT;
END PROCESS t_prcs_selector_1;
-- selector[0]
t_prcs_selector_0: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		selector(0) <= '0';
		WAIT FOR 150000 ps;
		selector(0) <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	selector(0) <= '0';
WAIT;
END PROCESS t_prcs_selector_0;
END MULTIPLEXADOR_16BITS_arch;
