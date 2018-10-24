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
-- Generated on "10/23/2018 22:14:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          REGBANK16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY REGBANK16_vhd_vec_tst IS
END REGBANK16_vhd_vec_tst;
ARCHITECTURE REGBANK16_arch OF REGBANK16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ReadData1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ReadData2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ReadReg1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ReadReg2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RegWrite : STD_LOGIC;
SIGNAL WriteData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL WriteReg : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT REGBANK16
	PORT (
	ReadData1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ReadData2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ReadReg1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ReadReg2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RegWrite : IN STD_LOGIC;
	WriteData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	WriteReg : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : REGBANK16
	PORT MAP (
-- list connections between master ports and signals
	ReadData1 => ReadData1,
	ReadData2 => ReadData2,
	ReadReg1 => ReadReg1,
	ReadReg2 => ReadReg2,
	RegWrite => RegWrite,
	WriteData => WriteData,
	WriteReg => WriteReg
	);
-- ReadReg1[3]
t_prcs_ReadReg1_3: PROCESS
BEGIN
	ReadReg1(3) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_3;
-- ReadReg1[2]
t_prcs_ReadReg1_2: PROCESS
BEGIN
	ReadReg1(2) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_2;
-- ReadReg1[1]
t_prcs_ReadReg1_1: PROCESS
BEGIN
	ReadReg1(1) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg1_1;
-- ReadReg1[0]
t_prcs_ReadReg1_0: PROCESS
BEGIN
	ReadReg1(0) <= '1';
WAIT;
END PROCESS t_prcs_ReadReg1_0;
-- ReadReg2[3]
t_prcs_ReadReg2_3: PROCESS
BEGIN
	ReadReg2(3) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_3;
-- ReadReg2[2]
t_prcs_ReadReg2_2: PROCESS
BEGIN
	ReadReg2(2) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_2;
-- ReadReg2[1]
t_prcs_ReadReg2_1: PROCESS
BEGIN
	ReadReg2(1) <= '1';
WAIT;
END PROCESS t_prcs_ReadReg2_1;
-- ReadReg2[0]
t_prcs_ReadReg2_0: PROCESS
BEGIN
	ReadReg2(0) <= '0';
WAIT;
END PROCESS t_prcs_ReadReg2_0;

-- RegWrite
t_prcs_RegWrite: PROCESS
BEGIN
	RegWrite <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 9
	LOOP
		RegWrite <= '0';
		WAIT FOR 50000 ps;
		RegWrite <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	RegWrite <= '0';
WAIT;
END PROCESS t_prcs_RegWrite;
-- WriteData[15]
t_prcs_WriteData_15: PROCESS
BEGIN
	WriteData(15) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_15;
-- WriteData[14]
t_prcs_WriteData_14: PROCESS
BEGIN
	WriteData(14) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_14;
-- WriteData[13]
t_prcs_WriteData_13: PROCESS
BEGIN
	WriteData(13) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_13;
-- WriteData[12]
t_prcs_WriteData_12: PROCESS
BEGIN
	WriteData(12) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_12;
-- WriteData[11]
t_prcs_WriteData_11: PROCESS
BEGIN
	WriteData(11) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_11;
-- WriteData[10]
t_prcs_WriteData_10: PROCESS
BEGIN
	WriteData(10) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_10;
-- WriteData[9]
t_prcs_WriteData_9: PROCESS
BEGIN
	WriteData(9) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_9;
-- WriteData[8]
t_prcs_WriteData_8: PROCESS
BEGIN
	WriteData(8) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_8;
-- WriteData[7]
t_prcs_WriteData_7: PROCESS
BEGIN
	WriteData(7) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_7;
-- WriteData[6]
t_prcs_WriteData_6: PROCESS
BEGIN
	WriteData(6) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_6;
-- WriteData[5]
t_prcs_WriteData_5: PROCESS
BEGIN
	WriteData(5) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_5;
-- WriteData[4]
t_prcs_WriteData_4: PROCESS
BEGIN
	WriteData(4) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_4;
-- WriteData[3]
t_prcs_WriteData_3: PROCESS
BEGIN
	WriteData(3) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_3;
-- WriteData[2]
t_prcs_WriteData_2: PROCESS
BEGIN
	WriteData(2) <= '0';
WAIT;
END PROCESS t_prcs_WriteData_2;
-- WriteData[1]
t_prcs_WriteData_1: PROCESS
BEGIN
	WriteData(1) <= '1';
WAIT;
END PROCESS t_prcs_WriteData_1;
-- WriteData[0]
t_prcs_WriteData_0: PROCESS
BEGIN
	WriteData(0) <= '1';
WAIT;
END PROCESS t_prcs_WriteData_0;
-- WriteReg[3]
t_prcs_WriteReg_3: PROCESS
BEGIN
	WriteReg(3) <= '0';
WAIT;
END PROCESS t_prcs_WriteReg_3;
-- WriteReg[2]
t_prcs_WriteReg_2: PROCESS
BEGIN
	WriteReg(2) <= '0';
WAIT;
END PROCESS t_prcs_WriteReg_2;
-- WriteReg[1]
t_prcs_WriteReg_1: PROCESS
BEGIN
	WriteReg(1) <= '0';
WAIT;
END PROCESS t_prcs_WriteReg_1;
-- WriteReg[0]
t_prcs_WriteReg_0: PROCESS
BEGIN
	WriteReg(0) <= '1';
WAIT;
END PROCESS t_prcs_WriteReg_0;
END REGBANK16_arch;
