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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/26/2018 12:51:09"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM16 IS
    PORT (
	CLOCK : IN std_logic;
	ROW : IN std_logic;
	ADDRESS : IN std_logic_vector(3 DOWNTO 0);
	DATAIN : IN std_logic_vector(15 DOWNTO 0);
	DATAOUT : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END RAM16;

ARCHITECTURE structure OF RAM16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_ROW : std_logic;
SIGNAL ww_ADDRESS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DATAIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DATAOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DATAOUT[0]~output_o\ : std_logic;
SIGNAL \DATAOUT[1]~output_o\ : std_logic;
SIGNAL \DATAOUT[2]~output_o\ : std_logic;
SIGNAL \DATAOUT[3]~output_o\ : std_logic;
SIGNAL \DATAOUT[4]~output_o\ : std_logic;
SIGNAL \DATAOUT[5]~output_o\ : std_logic;
SIGNAL \DATAOUT[6]~output_o\ : std_logic;
SIGNAL \DATAOUT[7]~output_o\ : std_logic;
SIGNAL \DATAOUT[8]~output_o\ : std_logic;
SIGNAL \DATAOUT[9]~output_o\ : std_logic;
SIGNAL \DATAOUT[10]~output_o\ : std_logic;
SIGNAL \DATAOUT[11]~output_o\ : std_logic;
SIGNAL \DATAOUT[12]~output_o\ : std_logic;
SIGNAL \DATAOUT[13]~output_o\ : std_logic;
SIGNAL \DATAOUT[14]~output_o\ : std_logic;
SIGNAL \DATAOUT[15]~output_o\ : std_logic;
SIGNAL \ROW~input_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \DATAIN[0]~input_o\ : std_logic;
SIGNAL \ADDRESS[0]~input_o\ : std_logic;
SIGNAL \ADDRESS[1]~input_o\ : std_logic;
SIGNAL \ADDRESS[2]~input_o\ : std_logic;
SIGNAL \ADDRESS[3]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \DATAOUT[0]$latch~combout\ : std_logic;
SIGNAL \DATAIN[1]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \DATAOUT[1]$latch~combout\ : std_logic;
SIGNAL \DATAIN[2]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \DATAOUT[2]$latch~combout\ : std_logic;
SIGNAL \DATAIN[3]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \DATAOUT[3]$latch~combout\ : std_logic;
SIGNAL \DATAIN[4]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \DATAOUT[4]$latch~combout\ : std_logic;
SIGNAL \DATAIN[5]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \DATAOUT[5]$latch~combout\ : std_logic;
SIGNAL \DATAIN[6]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \DATAOUT[6]$latch~combout\ : std_logic;
SIGNAL \DATAIN[7]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \DATAOUT[7]$latch~combout\ : std_logic;
SIGNAL \DATAIN[8]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \DATAOUT[8]$latch~combout\ : std_logic;
SIGNAL \DATAIN[9]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \DATAOUT[9]$latch~combout\ : std_logic;
SIGNAL \DATAIN[10]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \DATAOUT[10]$latch~combout\ : std_logic;
SIGNAL \DATAIN[11]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \DATAOUT[11]$latch~combout\ : std_logic;
SIGNAL \DATAIN[12]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \DATAOUT[12]$latch~combout\ : std_logic;
SIGNAL \DATAIN[13]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \DATAOUT[13]$latch~combout\ : std_logic;
SIGNAL \DATAIN[14]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \DATAOUT[14]$latch~combout\ : std_logic;
SIGNAL \DATAIN[15]~input_o\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \DATAOUT[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ROW~input_o\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_DATAOUT[0]$latch~combout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_ROW <= ROW;
ww_ADDRESS <= ADDRESS;
ww_DATAIN <= DATAIN;
DATAOUT <= ww_DATAOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \DATAIN[0]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \DATAIN[1]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \DATAIN[2]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \DATAIN[3]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \DATAIN[4]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \DATAIN[5]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \DATAIN[6]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \DATAIN[7]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \DATAIN[8]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \DATAIN[9]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \DATAIN[10]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \DATAIN[11]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \DATAIN[12]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \DATAIN[13]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \DATAIN[14]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \DATAIN[15]~input_o\;

\RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\ADDRESS[3]~input_o\ & \ADDRESS[2]~input_o\ & \ADDRESS[1]~input_o\ & \ADDRESS[0]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);
\ALT_INV_ROW~input_o\ <= NOT \ROW~input_o\;
\ALT_INV_DATAOUT[15]$latch~combout\ <= NOT \DATAOUT[15]$latch~combout\;
\ALT_INV_DATAOUT[14]$latch~combout\ <= NOT \DATAOUT[14]$latch~combout\;
\ALT_INV_DATAOUT[13]$latch~combout\ <= NOT \DATAOUT[13]$latch~combout\;
\ALT_INV_DATAOUT[12]$latch~combout\ <= NOT \DATAOUT[12]$latch~combout\;
\ALT_INV_DATAOUT[11]$latch~combout\ <= NOT \DATAOUT[11]$latch~combout\;
\ALT_INV_DATAOUT[10]$latch~combout\ <= NOT \DATAOUT[10]$latch~combout\;
\ALT_INV_DATAOUT[9]$latch~combout\ <= NOT \DATAOUT[9]$latch~combout\;
\ALT_INV_DATAOUT[8]$latch~combout\ <= NOT \DATAOUT[8]$latch~combout\;
\ALT_INV_DATAOUT[7]$latch~combout\ <= NOT \DATAOUT[7]$latch~combout\;
\ALT_INV_DATAOUT[6]$latch~combout\ <= NOT \DATAOUT[6]$latch~combout\;
\ALT_INV_DATAOUT[5]$latch~combout\ <= NOT \DATAOUT[5]$latch~combout\;
\ALT_INV_DATAOUT[4]$latch~combout\ <= NOT \DATAOUT[4]$latch~combout\;
\ALT_INV_DATAOUT[3]$latch~combout\ <= NOT \DATAOUT[3]$latch~combout\;
\ALT_INV_DATAOUT[2]$latch~combout\ <= NOT \DATAOUT[2]$latch~combout\;
\ALT_INV_DATAOUT[1]$latch~combout\ <= NOT \DATAOUT[1]$latch~combout\;
\ALT_INV_DATAOUT[0]$latch~combout\ <= NOT \DATAOUT[0]$latch~combout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a15~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a14~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a13~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a12~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a11~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a10~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a9~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a8~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a7~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a6~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a5~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a4~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a3~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a2~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a1~portadataout\;
\RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \RAM_rtl_0|auto_generated|ram_block1a0~portadataout\;

\DATAOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[0]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[0]~output_o\);

\DATAOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[1]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[1]~output_o\);

\DATAOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[2]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[2]~output_o\);

\DATAOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[3]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[3]~output_o\);

\DATAOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[4]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[4]~output_o\);

\DATAOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[5]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[5]~output_o\);

\DATAOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[6]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[6]~output_o\);

\DATAOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[7]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[7]~output_o\);

\DATAOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[8]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[8]~output_o\);

\DATAOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[9]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[9]~output_o\);

\DATAOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[10]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[10]~output_o\);

\DATAOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[11]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[11]~output_o\);

\DATAOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[12]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[12]~output_o\);

\DATAOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[13]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[13]~output_o\);

\DATAOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[14]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[14]~output_o\);

\DATAOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAOUT[15]$latch~combout\,
	devoe => ww_devoe,
	o => \DATAOUT[15]~output_o\);

\ROW~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROW,
	o => \ROW~input_o\);

\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

\DATAIN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(0),
	o => \DATAIN[0]~input_o\);

\ADDRESS[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(0),
	o => \ADDRESS[0]~input_o\);

\ADDRESS[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(1),
	o => \ADDRESS[1]~input_o\);

\ADDRESS[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(2),
	o => \ADDRESS[2]~input_o\);

\ADDRESS[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(3),
	o => \ADDRESS[3]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\DATAOUT[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[0]$latch~combout\ = ( \DATAOUT[0]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a0~portadataout\ ) ) ) # ( !\DATAOUT[0]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a0~portadataout\ ) ) ) # ( 
-- \DATAOUT[0]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datae => \ALT_INV_DATAOUT[0]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[0]$latch~combout\);

\DATAIN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(1),
	o => \DATAIN[1]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\DATAOUT[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[1]$latch~combout\ = ( \DATAOUT[1]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a1~portadataout\ ) ) ) # ( !\DATAOUT[1]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a1~portadataout\ ) ) ) # ( 
-- \DATAOUT[1]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datae => \ALT_INV_DATAOUT[1]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[1]$latch~combout\);

\DATAIN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(2),
	o => \DATAIN[2]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\DATAOUT[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[2]$latch~combout\ = ( \DATAOUT[2]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a2~portadataout\ ) ) ) # ( !\DATAOUT[2]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a2~portadataout\ ) ) ) # ( 
-- \DATAOUT[2]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datae => \ALT_INV_DATAOUT[2]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[2]$latch~combout\);

\DATAIN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(3),
	o => \DATAIN[3]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\DATAOUT[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[3]$latch~combout\ = ( \DATAOUT[3]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a3~portadataout\ ) ) ) # ( !\DATAOUT[3]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a3~portadataout\ ) ) ) # ( 
-- \DATAOUT[3]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datae => \ALT_INV_DATAOUT[3]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[3]$latch~combout\);

\DATAIN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(4),
	o => \DATAIN[4]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\DATAOUT[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[4]$latch~combout\ = ( \DATAOUT[4]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a4~portadataout\ ) ) ) # ( !\DATAOUT[4]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a4~portadataout\ ) ) ) # ( 
-- \DATAOUT[4]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datae => \ALT_INV_DATAOUT[4]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[4]$latch~combout\);

\DATAIN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(5),
	o => \DATAIN[5]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\DATAOUT[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[5]$latch~combout\ = ( \DATAOUT[5]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a5~portadataout\ ) ) ) # ( !\DATAOUT[5]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a5~portadataout\ ) ) ) # ( 
-- \DATAOUT[5]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \ALT_INV_DATAOUT[5]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[5]$latch~combout\);

\DATAIN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(6),
	o => \DATAIN[6]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\DATAOUT[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[6]$latch~combout\ = ( \DATAOUT[6]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a6~portadataout\ ) ) ) # ( !\DATAOUT[6]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a6~portadataout\ ) ) ) # ( 
-- \DATAOUT[6]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	datae => \ALT_INV_DATAOUT[6]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[6]$latch~combout\);

\DATAIN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(7),
	o => \DATAIN[7]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\DATAOUT[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[7]$latch~combout\ = ( \DATAOUT[7]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a7~portadataout\ ) ) ) # ( !\DATAOUT[7]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a7~portadataout\ ) ) ) # ( 
-- \DATAOUT[7]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a7~portadataout\,
	datae => \ALT_INV_DATAOUT[7]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[7]$latch~combout\);

\DATAIN[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(8),
	o => \DATAIN[8]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\DATAOUT[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[8]$latch~combout\ = ( \DATAOUT[8]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a8~portadataout\ ) ) ) # ( !\DATAOUT[8]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a8~portadataout\ ) ) ) # ( 
-- \DATAOUT[8]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	datae => \ALT_INV_DATAOUT[8]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[8]$latch~combout\);

\DATAIN[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(9),
	o => \DATAIN[9]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\DATAOUT[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[9]$latch~combout\ = ( \DATAOUT[9]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a9~portadataout\ ) ) ) # ( !\DATAOUT[9]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a9~portadataout\ ) ) ) # ( 
-- \DATAOUT[9]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a9~portadataout\,
	datae => \ALT_INV_DATAOUT[9]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[9]$latch~combout\);

\DATAIN[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(10),
	o => \DATAIN[10]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\DATAOUT[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[10]$latch~combout\ = ( \DATAOUT[10]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a10~portadataout\ ) ) ) # ( !\DATAOUT[10]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a10~portadataout\ ) ) 
-- ) # ( \DATAOUT[10]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\,
	datae => \ALT_INV_DATAOUT[10]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[10]$latch~combout\);

\DATAIN[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(11),
	o => \DATAIN[11]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\DATAOUT[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[11]$latch~combout\ = ( \DATAOUT[11]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a11~portadataout\ ) ) ) # ( !\DATAOUT[11]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a11~portadataout\ ) ) 
-- ) # ( \DATAOUT[11]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a11~portadataout\,
	datae => \ALT_INV_DATAOUT[11]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[11]$latch~combout\);

\DATAIN[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(12),
	o => \DATAIN[12]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\DATAOUT[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[12]$latch~combout\ = ( \DATAOUT[12]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a12~portadataout\ ) ) ) # ( !\DATAOUT[12]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a12~portadataout\ ) ) 
-- ) # ( \DATAOUT[12]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\,
	datae => \ALT_INV_DATAOUT[12]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[12]$latch~combout\);

\DATAIN[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(13),
	o => \DATAIN[13]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\DATAOUT[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[13]$latch~combout\ = ( \DATAOUT[13]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a13~portadataout\ ) ) ) # ( !\DATAOUT[13]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a13~portadataout\ ) ) 
-- ) # ( \DATAOUT[13]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a13~portadataout\,
	datae => \ALT_INV_DATAOUT[13]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[13]$latch~combout\);

\DATAIN[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(14),
	o => \DATAIN[14]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\DATAOUT[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[14]$latch~combout\ = ( \DATAOUT[14]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a14~portadataout\ ) ) ) # ( !\DATAOUT[14]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a14~portadataout\ ) ) 
-- ) # ( \DATAOUT[14]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\,
	datae => \ALT_INV_DATAOUT[14]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[14]$latch~combout\);

\DATAIN[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(15),
	o => \DATAIN[15]~input_o\);

\RAM_rtl_0|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:RAM_rtl_0|altsyncram_4ka1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_ROW~input_o\,
	portare => VCC,
	clk0 => \CLOCK~input_o\,
	portadatain => \RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \RAM_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\DATAOUT[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATAOUT[15]$latch~combout\ = ( \DATAOUT[15]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a15~portadataout\ ) ) ) # ( !\DATAOUT[15]$latch~combout\ & ( \ROW~input_o\ & ( \RAM_rtl_0|auto_generated|ram_block1a15~portadataout\ ) ) 
-- ) # ( \DATAOUT[15]$latch~combout\ & ( !\ROW~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM_rtl_0|auto_generated|ALT_INV_ram_block1a15~portadataout\,
	datae => \ALT_INV_DATAOUT[15]$latch~combout\,
	dataf => \ALT_INV_ROW~input_o\,
	combout => \DATAOUT[15]$latch~combout\);

ww_DATAOUT(0) <= \DATAOUT[0]~output_o\;

ww_DATAOUT(1) <= \DATAOUT[1]~output_o\;

ww_DATAOUT(2) <= \DATAOUT[2]~output_o\;

ww_DATAOUT(3) <= \DATAOUT[3]~output_o\;

ww_DATAOUT(4) <= \DATAOUT[4]~output_o\;

ww_DATAOUT(5) <= \DATAOUT[5]~output_o\;

ww_DATAOUT(6) <= \DATAOUT[6]~output_o\;

ww_DATAOUT(7) <= \DATAOUT[7]~output_o\;

ww_DATAOUT(8) <= \DATAOUT[8]~output_o\;

ww_DATAOUT(9) <= \DATAOUT[9]~output_o\;

ww_DATAOUT(10) <= \DATAOUT[10]~output_o\;

ww_DATAOUT(11) <= \DATAOUT[11]~output_o\;

ww_DATAOUT(12) <= \DATAOUT[12]~output_o\;

ww_DATAOUT(13) <= \DATAOUT[13]~output_o\;

ww_DATAOUT(14) <= \DATAOUT[14]~output_o\;

ww_DATAOUT(15) <= \DATAOUT[15]~output_o\;
END structure;


