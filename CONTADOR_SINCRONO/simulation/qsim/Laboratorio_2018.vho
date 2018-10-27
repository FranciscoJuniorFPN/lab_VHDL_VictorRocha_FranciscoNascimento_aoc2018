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

-- DATE "10/26/2018 22:29:26"

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

ENTITY 	CONTADOR_SICRONO IS
    PORT (
	clk : IN std_logic;
	s : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END CONTADOR_SICRONO;

ARCHITECTURE structure OF CONTADOR_SICRONO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s : std_logic_vector(4 DOWNTO 0);
SIGNAL \s[4]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \s[2]~input_o\ : std_logic;
SIGNAL \s[3]~input_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \G00|G01|G01|q0~1_combout\ : std_logic;
SIGNAL \G00|G01|G02|q0~1_combout\ : std_logic;
SIGNAL \G01|G01|G01|q0~1_combout\ : std_logic;
SIGNAL \G01|G01|G02|q0~1_combout\ : std_logic;
SIGNAL \G02|G01|G01|q0~1_combout\ : std_logic;
SIGNAL \G02|G01|G02|q0~1_combout\ : std_logic;
SIGNAL \G03|G01|G01|q0~1_combout\ : std_logic;
SIGNAL \G03|G01|G02|q0~1_combout\ : std_logic;
SIGNAL \G00|G01|G01|ALT_INV_q0~1_combout\ : std_logic;
SIGNAL \G03|G01|G02|ALT_INV_q0~1_combout\ : std_logic;
SIGNAL \G02|G01|G02|ALT_INV_q0~1_combout\ : std_logic;
SIGNAL \G01|G01|G02|ALT_INV_q0~1_combout\ : std_logic;
SIGNAL \G00|G01|G02|ALT_INV_q0~1_combout\ : std_logic;
SIGNAL \G01|G01|G01|ALT_INV_q0~1_combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \G03|G01|G01|ALT_INV_q0~1_combout\ : std_logic;
SIGNAL \G02|G01|G01|ALT_INV_q0~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\G00|G01|G01|ALT_INV_q0~1_combout\ <= NOT \G00|G01|G01|q0~1_combout\;
\G03|G01|G02|ALT_INV_q0~1_combout\ <= NOT \G03|G01|G02|q0~1_combout\;
\G02|G01|G02|ALT_INV_q0~1_combout\ <= NOT \G02|G01|G02|q0~1_combout\;
\G01|G01|G02|ALT_INV_q0~1_combout\ <= NOT \G01|G01|G02|q0~1_combout\;
\G00|G01|G02|ALT_INV_q0~1_combout\ <= NOT \G00|G01|G02|q0~1_combout\;
\G01|G01|G01|ALT_INV_q0~1_combout\ <= NOT \G01|G01|G01|q0~1_combout\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\G03|G01|G01|ALT_INV_q0~1_combout\ <= NOT \G03|G01|G01|q0~1_combout\;
\G02|G01|G01|ALT_INV_q0~1_combout\ <= NOT \G02|G01|G01|q0~1_combout\;

\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G00|G01|G02|q0~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G01|G01|G02|q0~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G02|G01|G02|q0~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G03|G01|G02|q0~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\G00|G01|G01|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G00|G01|G01|q0~1_combout\ = (!\clk~input_o\ & ((\G00|G01|G01|q0~1_combout\))) # (\clk~input_o\ & (\G00|G01|G02|q0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G00|G01|G02|ALT_INV_q0~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \G00|G01|G01|ALT_INV_q0~1_combout\,
	combout => \G00|G01|G01|q0~1_combout\);

\G00|G01|G02|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G00|G01|G02|q0~1_combout\ = (!\clk~input_o\ & ((!\G00|G01|G01|q0~1_combout\))) # (\clk~input_o\ & (\G00|G01|G02|q0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G00|G01|G02|ALT_INV_q0~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \G00|G01|G01|ALT_INV_q0~1_combout\,
	combout => \G00|G01|G02|q0~1_combout\);

\G01|G01|G01|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G01|G01|G01|q0~1_combout\ = (!\clk~input_o\ & (((\G01|G01|G01|q0~1_combout\)))) # (\clk~input_o\ & (!\G00|G01|G02|q0~1_combout\ $ ((\G01|G01|G02|q0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111001000010011111100100001001111110010000100111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G00|G01|G02|ALT_INV_q0~1_combout\,
	datab => \G01|G01|G02|ALT_INV_q0~1_combout\,
	datac => \ALT_INV_clk~input_o\,
	datad => \G01|G01|G01|ALT_INV_q0~1_combout\,
	combout => \G01|G01|G01|q0~1_combout\);

\G01|G01|G02|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G01|G01|G02|q0~1_combout\ = (!\clk~input_o\ & ((!\G01|G01|G01|q0~1_combout\))) # (\clk~input_o\ & (\G01|G01|G02|q0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G01|G01|G02|ALT_INV_q0~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \G01|G01|G01|ALT_INV_q0~1_combout\,
	combout => \G01|G01|G02|q0~1_combout\);

\G02|G01|G01|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G02|G01|G01|q0~1_combout\ = ( \G02|G01|G01|q0~1_combout\ & ( (!\clk~input_o\) # (!\G02|G01|G02|q0~1_combout\ $ (((\G00|G01|G02|q0~1_combout\ & \G01|G01|G02|q0~1_combout\)))) ) ) # ( !\G02|G01|G01|q0~1_combout\ & ( (\clk~input_o\ & 
-- (!\G02|G01|G02|q0~1_combout\ $ (((\G00|G01|G02|q0~1_combout\ & \G01|G01|G02|q0~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100001111111111110000100000000111000011111111111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G00|G01|G02|ALT_INV_q0~1_combout\,
	datab => \G01|G01|G02|ALT_INV_q0~1_combout\,
	datac => \G02|G01|G02|ALT_INV_q0~1_combout\,
	datad => \ALT_INV_clk~input_o\,
	datae => \G02|G01|G01|ALT_INV_q0~1_combout\,
	combout => \G02|G01|G01|q0~1_combout\);

\G02|G01|G02|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G02|G01|G02|q0~1_combout\ = (!\clk~input_o\ & ((!\G02|G01|G01|q0~1_combout\))) # (\clk~input_o\ & (\G02|G01|G02|q0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G02|G01|G02|ALT_INV_q0~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \G02|G01|G01|ALT_INV_q0~1_combout\,
	combout => \G02|G01|G02|q0~1_combout\);

\G03|G01|G01|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G03|G01|G01|q0~1_combout\ = ( \clk~input_o\ & ( \G03|G01|G01|q0~1_combout\ & ( !\G03|G01|G02|q0~1_combout\ $ (((\G00|G01|G02|q0~1_combout\ & (\G01|G01|G02|q0~1_combout\ & \G02|G01|G02|q0~1_combout\)))) ) ) ) # ( !\clk~input_o\ & ( 
-- \G03|G01|G01|q0~1_combout\ ) ) # ( \clk~input_o\ & ( !\G03|G01|G01|q0~1_combout\ & ( !\G03|G01|G02|q0~1_combout\ $ (((\G00|G01|G02|q0~1_combout\ & (\G01|G01|G02|q0~1_combout\ & \G02|G01|G02|q0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111100000000111111111111111111111111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G00|G01|G02|ALT_INV_q0~1_combout\,
	datab => \G01|G01|G02|ALT_INV_q0~1_combout\,
	datac => \G02|G01|G02|ALT_INV_q0~1_combout\,
	datad => \G03|G01|G02|ALT_INV_q0~1_combout\,
	datae => \ALT_INV_clk~input_o\,
	dataf => \G03|G01|G01|ALT_INV_q0~1_combout\,
	combout => \G03|G01|G01|q0~1_combout\);

\G03|G01|G02|q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G03|G01|G02|q0~1_combout\ = (!\clk~input_o\ & ((!\G03|G01|G01|q0~1_combout\))) # (\clk~input_o\ & (\G03|G01|G02|q0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G03|G01|G02|ALT_INV_q0~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \G03|G01|G01|ALT_INV_q0~1_combout\,
	combout => \G03|G01|G02|q0~1_combout\);

\s[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(4),
	o => \s[4]~input_o\);

\s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(0),
	o => \s[0]~input_o\);

\s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(1),
	o => \s[1]~input_o\);

\s[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(2),
	o => \s[2]~input_o\);

\s[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => s(3),
	o => \s[3]~input_o\);

s(4) <= \s[4]~output_o\;

s(0) <= \s[0]~output_o\;

s(1) <= \s[1]~output_o\;

s(2) <= \s[2]~output_o\;

s(3) <= \s[3]~output_o\;
END structure;


