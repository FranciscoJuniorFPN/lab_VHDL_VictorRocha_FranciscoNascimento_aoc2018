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

-- DATE "10/22/2018 22:48:35"

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

ENTITY 	ROM16 IS
    PORT (
	PC_address : IN std_logic_vector(3 DOWNTO 0);
	INSTRUCTION : OUT std_logic_vector(15 DOWNTO 0)
	);
END ROM16;

-- Design Ports Information
-- INSTRUCTION[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[5]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[8]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[10]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[12]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[13]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[14]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCTION[15]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_address[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PC_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INSTRUCTION : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \PC_address[3]~input_o\ : std_logic;
SIGNAL \PC_address[0]~input_o\ : std_logic;
SIGNAL \PC_address[1]~input_o\ : std_logic;
SIGNAL \PC_address[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_PC_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_address[0]~input_o\ : std_logic;

BEGIN

ww_PC_address <= PC_address;
INSTRUCTION <= ww_INSTRUCTION;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_PC_address[2]~input_o\ <= NOT \PC_address[2]~input_o\;
\ALT_INV_PC_address[1]~input_o\ <= NOT \PC_address[1]~input_o\;
\ALT_INV_PC_address[3]~input_o\ <= NOT \PC_address[3]~input_o\;
\ALT_INV_PC_address[0]~input_o\ <= NOT \PC_address[0]~input_o\;

-- Location: IOOBUF_X80_Y81_N53
\INSTRUCTION[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(0));

-- Location: IOOBUF_X89_Y4_N62
\INSTRUCTION[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(1));

-- Location: IOOBUF_X72_Y0_N19
\INSTRUCTION[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(2));

-- Location: IOOBUF_X89_Y6_N5
\INSTRUCTION[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(3));

-- Location: IOOBUF_X50_Y81_N76
\INSTRUCTION[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(4));

-- Location: IOOBUF_X89_Y4_N96
\INSTRUCTION[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(5));

-- Location: IOOBUF_X89_Y8_N56
\INSTRUCTION[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(6));

-- Location: IOOBUF_X89_Y6_N39
\INSTRUCTION[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~5_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(7));

-- Location: IOOBUF_X89_Y6_N22
\INSTRUCTION[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~6_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(8));

-- Location: IOOBUF_X89_Y8_N22
\INSTRUCTION[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~7_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(9));

-- Location: IOOBUF_X89_Y4_N45
\INSTRUCTION[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~8_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(10));

-- Location: IOOBUF_X89_Y6_N56
\INSTRUCTION[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~9_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(11));

-- Location: IOOBUF_X89_Y4_N79
\INSTRUCTION[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(12));

-- Location: IOOBUF_X89_Y8_N39
\INSTRUCTION[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(13));

-- Location: IOOBUF_X89_Y9_N39
\INSTRUCTION[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(14));

-- Location: IOOBUF_X38_Y0_N2
\INSTRUCTION[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION(15));

-- Location: IOIBUF_X89_Y9_N21
\PC_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(3),
	o => \PC_address[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\PC_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(0),
	o => \PC_address[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\PC_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(1),
	o => \PC_address[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\PC_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_address(2),
	o => \PC_address[2]~input_o\);

-- Location: LABCELL_X88_Y6_N30
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\PC_address[1]~input_o\ & ( !\PC_address[2]~input_o\ & ( (!\PC_address[3]~input_o\ & \PC_address[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datac => \ALT_INV_PC_address[0]~input_o\,
	datae => \ALT_INV_PC_address[1]~input_o\,
	dataf => \ALT_INV_PC_address[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y6_N9
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \PC_address[1]~input_o\ & ( !\PC_address[2]~input_o\ & ( (!\PC_address[0]~input_o\ & !\PC_address[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[0]~input_o\,
	datad => \ALT_INV_PC_address[3]~input_o\,
	datae => \ALT_INV_PC_address[1]~input_o\,
	dataf => \ALT_INV_PC_address[2]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X88_Y6_N42
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \PC_address[1]~input_o\ & ( !\PC_address[2]~input_o\ & ( (!\PC_address[3]~input_o\ & \PC_address[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datac => \ALT_INV_PC_address[0]~input_o\,
	datae => \ALT_INV_PC_address[1]~input_o\,
	dataf => \ALT_INV_PC_address[2]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X88_Y6_N51
\Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( !\PC_address[1]~input_o\ & ( \PC_address[2]~input_o\ & ( (!\PC_address[0]~input_o\ & !\PC_address[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[0]~input_o\,
	datad => \ALT_INV_PC_address[3]~input_o\,
	datae => \ALT_INV_PC_address[1]~input_o\,
	dataf => \ALT_INV_PC_address[2]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X88_Y6_N24
\Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( !\PC_address[1]~input_o\ & ( \PC_address[2]~input_o\ & ( (!\PC_address[3]~input_o\ & \PC_address[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datac => \ALT_INV_PC_address[0]~input_o\,
	datae => \ALT_INV_PC_address[1]~input_o\,
	dataf => \ALT_INV_PC_address[2]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LABCELL_X88_Y6_N3
\Mux5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = ( \PC_address[1]~input_o\ & ( \PC_address[2]~input_o\ & ( (!\PC_address[0]~input_o\ & !\PC_address[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[0]~input_o\,
	datad => \ALT_INV_PC_address[3]~input_o\,
	datae => \ALT_INV_PC_address[1]~input_o\,
	dataf => \ALT_INV_PC_address[2]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LABCELL_X88_Y6_N36
\Mux5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = ( \PC_address[0]~input_o\ & ( (\PC_address[1]~input_o\ & (!\PC_address[3]~input_o\ & \PC_address[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_address[1]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	datad => \ALT_INV_PC_address[2]~input_o\,
	dataf => \ALT_INV_PC_address[0]~input_o\,
	combout => \Mux5~6_combout\);

-- Location: LABCELL_X88_Y6_N39
\Mux5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = ( !\PC_address[0]~input_o\ & ( (\PC_address[3]~input_o\ & (!\PC_address[1]~input_o\ & !\PC_address[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datab => \ALT_INV_PC_address[1]~input_o\,
	datac => \ALT_INV_PC_address[2]~input_o\,
	dataf => \ALT_INV_PC_address[0]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: LABCELL_X88_Y6_N12
\Mux5~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = ( \PC_address[0]~input_o\ & ( (!\PC_address[1]~input_o\ & (\PC_address[3]~input_o\ & !\PC_address[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_address[1]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	datad => \ALT_INV_PC_address[2]~input_o\,
	dataf => \ALT_INV_PC_address[0]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: LABCELL_X88_Y6_N15
\Mux5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = ( !\PC_address[0]~input_o\ & ( (\PC_address[3]~input_o\ & (\PC_address[1]~input_o\ & !\PC_address[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datab => \ALT_INV_PC_address[1]~input_o\,
	datac => \ALT_INV_PC_address[2]~input_o\,
	dataf => \ALT_INV_PC_address[0]~input_o\,
	combout => \Mux5~9_combout\);

-- Location: LABCELL_X88_Y6_N18
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \PC_address[1]~input_o\ & ( \PC_address[3]~input_o\ & ( \PC_address[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_address[0]~input_o\,
	datae => \ALT_INV_PC_address[1]~input_o\,
	dataf => \ALT_INV_PC_address[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y6_N54
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \PC_address[0]~input_o\ & ( (\PC_address[1]~input_o\ & (\PC_address[3]~input_o\ & \PC_address[2]~input_o\)) ) ) # ( !\PC_address[0]~input_o\ & ( (\PC_address[3]~input_o\ & \PC_address[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_address[1]~input_o\,
	datac => \ALT_INV_PC_address[3]~input_o\,
	datad => \ALT_INV_PC_address[2]~input_o\,
	dataf => \ALT_INV_PC_address[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y6_N57
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \PC_address[0]~input_o\ & ( (\PC_address[3]~input_o\ & \PC_address[2]~input_o\) ) ) # ( !\PC_address[0]~input_o\ & ( (\PC_address[3]~input_o\ & (\PC_address[1]~input_o\ & \PC_address[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_address[3]~input_o\,
	datab => \ALT_INV_PC_address[1]~input_o\,
	datac => \ALT_INV_PC_address[2]~input_o\,
	dataf => \ALT_INV_PC_address[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X48_Y36_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


