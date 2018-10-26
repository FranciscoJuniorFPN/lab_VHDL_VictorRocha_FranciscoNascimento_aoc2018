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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/26/2018 16:51:40"

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

ENTITY 	FlipFlopD IS
    PORT (
	d : IN std_logic;
	clk : IN std_logic;
	q0 : BUFFER std_logic;
	q1 : BUFFER std_logic
	);
END FlipFlopD;

ARCHITECTURE structure OF FlipFlopD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q0 : std_logic;
SIGNAL ww_q1 : std_logic;
SIGNAL \q0~input_o\ : std_logic;
SIGNAL \q1~input_o\ : std_logic;
SIGNAL \q0~output_o\ : std_logic;
SIGNAL \q1~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \G01|q0~1_combout\ : std_logic;
SIGNAL \G02|q0~1_combout\ : std_logic;
SIGNAL \G02|q1~0_combout\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \G01|ALT_INV_q0~1_combout\ : std_logic;
SIGNAL \G02|ALT_INV_q0~1_combout\ : std_logic;

BEGIN

ww_d <= d;
ww_clk <= clk;
q0 <= ww_q0;
q1 <= ww_q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\G01|ALT_INV_q0~1_combout\ <= NOT \G01|q0~1_combout\;
\G02|ALT_INV_q0~1_combout\ <= NOT \G02|q0~1_combout\;

\q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G02|q0~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q0~output_o\);

\q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G02|q1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q1~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

\G01|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G01|q0~1_combout\ = (!\clk~input_o\ & (\G01|q0~1_combout\)) # (\clk~input_o\ & ((!\d~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001001110010011100100111001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \G01|ALT_INV_q0~1_combout\,
	datac => \ALT_INV_d~input_o\,
	combout => \G01|q0~1_combout\);

\G02|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G02|q0~1_combout\ = (!\clk~input_o\ & ((!\G01|q0~1_combout\))) # (\clk~input_o\ & (\G02|q0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G02|ALT_INV_q0~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \G01|ALT_INV_q0~1_combout\,
	combout => \G02|q0~1_combout\);

\G02|q1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G02|q1~0_combout\ = (!\G02|q0~1_combout\) # ((!\clk~input_o\ & \G01|q0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011101010111010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G02|ALT_INV_q0~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \G01|ALT_INV_q0~1_combout\,
	combout => \G02|q1~0_combout\);

\q0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q0,
	o => \q0~input_o\);

\q1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q1,
	o => \q1~input_o\);

ww_q0 <= \q0~output_o\;

ww_q1 <= \q1~output_o\;
END structure;


