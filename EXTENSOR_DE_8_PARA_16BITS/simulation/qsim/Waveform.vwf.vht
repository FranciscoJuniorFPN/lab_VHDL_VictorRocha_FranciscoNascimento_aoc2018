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
-- Generated on "10/26/2018 17:13:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EXTENSOR_DE_8_PARA_16BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EXTENSOR_DE_8_PARA_16BITS_vhd_vec_tst IS
END EXTENSOR_DE_8_PARA_16BITS_vhd_vec_tst;
ARCHITECTURE EXTENSOR_DE_8_PARA_16BITS_arch OF EXTENSOR_DE_8_PARA_16BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT EXTENSOR_DE_8_PARA_16BITS
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : EXTENSOR_DE_8_PARA_16BITS
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	s => s
	);
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '1';
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
	a(5) <= '1';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
	WAIT FOR 900000 ps;
	a(4) <= '1';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '1';
	WAIT FOR 900000 ps;
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
	WAIT FOR 300000 ps;
	a(2) <= '1';
	WAIT FOR 600000 ps;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '1';
	WAIT FOR 300000 ps;
	a(1) <= '0';
	WAIT FOR 300000 ps;
	a(1) <= '1';
	WAIT FOR 300000 ps;
	a(1) <= '0';
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
END EXTENSOR_DE_8_PARA_16BITS_arch;
