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

-- DATE "10/24/2018 00:09:07"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SOMA4 IS
    PORT (
	clk : IN std_logic;
	A : IN std_logic_vector(15 DOWNTO 0);
	cin : IN std_logic;
	cout : OUT std_logic;
	sum : OUT std_logic_vector(15 DOWNTO 0)
	);
END SOMA4;

ARCHITECTURE structure OF SOMA4 IS
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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_sum : std_logic_vector(15 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \sum[8]~output_o\ : std_logic;
SIGNAL \sum[9]~output_o\ : std_logic;
SIGNAL \sum[10]~output_o\ : std_logic;
SIGNAL \sum[11]~output_o\ : std_logic;
SIGNAL \sum[12]~output_o\ : std_logic;
SIGNAL \sum[13]~output_o\ : std_logic;
SIGNAL \sum[14]~output_o\ : std_logic;
SIGNAL \sum[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \c~q\ : std_logic;
SIGNAL \soma~0_combout\ : std_logic;
SIGNAL \soma~1_combout\ : std_logic;
SIGNAL \soma~2_combout\ : std_logic;
SIGNAL \soma~3_combout\ : std_logic;
SIGNAL \soma~4_combout\ : std_logic;
SIGNAL \soma~5_combout\ : std_logic;
SIGNAL \soma~6_combout\ : std_logic;
SIGNAL \soma~7_combout\ : std_logic;
SIGNAL \soma~8_combout\ : std_logic;
SIGNAL \soma~9_combout\ : std_logic;
SIGNAL \soma~10_combout\ : std_logic;
SIGNAL \soma~11_combout\ : std_logic;
SIGNAL \soma~12_combout\ : std_logic;
SIGNAL \soma~13_combout\ : std_logic;
SIGNAL \soma~14_combout\ : std_logic;
SIGNAL \soma~15_combout\ : std_logic;
SIGNAL soma : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_A <= A;
ww_cin <= cin;
cout <= ww_cout;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\ALT_INV_c~1_combout\ <= NOT \c~1_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;

\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c~q\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(0),
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

\sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(1),
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

\sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(2),
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

\sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(3),
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

\sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(4),
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

\sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(5),
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

\sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(6),
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

\sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(7),
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

\sum[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(8),
	devoe => ww_devoe,
	o => \sum[8]~output_o\);

\sum[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(9),
	devoe => ww_devoe,
	o => \sum[9]~output_o\);

\sum[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(10),
	devoe => ww_devoe,
	o => \sum[10]~output_o\);

\sum[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(11),
	devoe => ww_devoe,
	o => \sum[11]~output_o\);

\sum[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(12),
	devoe => ww_devoe,
	o => \sum[12]~output_o\);

\sum[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(13),
	devoe => ww_devoe,
	o => \sum[13]~output_o\);

\sum[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(14),
	devoe => ww_devoe,
	o => \sum[14]~output_o\);

\sum[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => soma(15),
	devoe => ww_devoe,
	o => \sum[15]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \A[3]~input_o\ & ( \A[4]~input_o\ & ( ((\A[0]~input_o\ & (\cin~input_o\ & \A[1]~input_o\))) # (\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \c~0_combout\);

\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~1_combout\ = ( \A[8]~input_o\ & ( \A[9]~input_o\ & ( (\c~0_combout\ & (\A[5]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~0_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \c~1_combout\);

\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~2_combout\ = (\c~1_combout\ & (\A[10]~input_o\ & (\A[11]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~1_combout\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	combout => \c~2_combout\);

\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~3_combout\ = (\c~2_combout\ & (\A[13]~input_o\ & (\A[14]~input_o\ & \A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~2_combout\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	combout => \c~3_combout\);

c : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c~q\);

\soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~0_combout\ = !\A[0]~input_o\ $ (!\cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	combout => \soma~0_combout\);

\soma[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(0));

\soma~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~1_combout\ = !\A[1]~input_o\ $ (((!\A[0]~input_o\) # (!\cin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	combout => \soma~1_combout\);

\soma[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(1));

\soma~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~2_combout\ = !\A[2]~input_o\ $ (((\A[0]~input_o\ & (\cin~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000001111111100000000111111110000000011111111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	combout => \soma~2_combout\);

\soma[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(2));

\soma~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~3_combout\ = ( \A[3]~input_o\ & ( (!\A[2]~input_o\ & ((!\A[0]~input_o\) # ((!\cin~input_o\) # (!\A[1]~input_o\)))) ) ) # ( !\A[3]~input_o\ & ( ((\A[0]~input_o\ & (\cin~input_o\ & \A[1]~input_o\))) # (\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111111111100000000000000001111111111111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	combout => \soma~3_combout\);

\soma[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(3));

\soma~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~4_combout\ = ( \A[3]~input_o\ & ( \A[4]~input_o\ & ( (!\A[2]~input_o\ & ((!\A[0]~input_o\) # ((!\cin~input_o\) # (!\A[1]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( \A[4]~input_o\ ) ) # ( \A[3]~input_o\ & ( !\A[4]~input_o\ & ( ((\A[0]~input_o\ & 
-- (\cin~input_o\ & \A[1]~input_o\))) # (\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111111111111111111111111111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \soma~4_combout\);

\soma[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(4));

\soma~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~5_combout\ = !\c~0_combout\ $ (!\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~0_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	combout => \soma~5_combout\);

\soma[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(5));

\soma~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~6_combout\ = !\A[6]~input_o\ $ (((!\c~0_combout\) # (!\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~0_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	combout => \soma~6_combout\);

\soma[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(6));

\soma~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~7_combout\ = !\A[7]~input_o\ $ (((!\c~0_combout\) # ((!\A[5]~input_o\) # (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~0_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	combout => \soma~7_combout\);

\soma[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(7));

\soma~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~8_combout\ = ( \A[8]~input_o\ & ( (!\c~0_combout\) # ((!\A[5]~input_o\) # ((!\A[6]~input_o\) # (!\A[7]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\c~0_combout\ & (\A[5]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~0_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	combout => \soma~8_combout\);

\soma[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(8));

\soma~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~9_combout\ = ( \A[8]~input_o\ & ( \A[9]~input_o\ & ( (!\c~0_combout\) # ((!\A[5]~input_o\) # ((!\A[6]~input_o\) # (!\A[7]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( \A[9]~input_o\ ) ) # ( \A[8]~input_o\ & ( !\A[9]~input_o\ & ( (\c~0_combout\ & 
-- (\A[5]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~0_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \soma~9_combout\);

\soma[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(9));

\soma~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~10_combout\ = !\c~1_combout\ $ (!\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~1_combout\,
	datab => \ALT_INV_A[10]~input_o\,
	combout => \soma~10_combout\);

\soma[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(10));

\soma~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~11_combout\ = !\A[11]~input_o\ $ (((!\c~1_combout\) # (!\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~1_combout\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	combout => \soma~11_combout\);

\soma[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(11));

\soma~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~12_combout\ = !\A[12]~input_o\ $ (((!\c~1_combout\) # ((!\A[10]~input_o\) # (!\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~1_combout\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	combout => \soma~12_combout\);

\soma[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(12));

\soma~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~13_combout\ = ( \A[13]~input_o\ & ( (!\c~1_combout\) # ((!\A[10]~input_o\) # ((!\A[11]~input_o\) # (!\A[12]~input_o\))) ) ) # ( !\A[13]~input_o\ & ( (\c~1_combout\ & (\A[10]~input_o\ & (\A[11]~input_o\ & \A[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~1_combout\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	combout => \soma~13_combout\);

\soma[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(13));

\soma~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~14_combout\ = ( \A[13]~input_o\ & ( \A[14]~input_o\ & ( (!\c~1_combout\) # ((!\A[10]~input_o\) # ((!\A[11]~input_o\) # (!\A[12]~input_o\))) ) ) ) # ( !\A[13]~input_o\ & ( \A[14]~input_o\ ) ) # ( \A[13]~input_o\ & ( !\A[14]~input_o\ & ( 
-- (\c~1_combout\ & (\A[10]~input_o\ & (\A[11]~input_o\ & \A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~1_combout\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \soma~14_combout\);

\soma[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(14));

\soma~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~15_combout\ = !\A[15]~input_o\ $ (((!\c~2_combout\) # ((!\A[13]~input_o\) # (!\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~2_combout\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	combout => \soma~15_combout\);

\soma[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \soma~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma(15));

ww_cout <= \cout~output_o\;

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(7) <= \sum[7]~output_o\;

ww_sum(8) <= \sum[8]~output_o\;

ww_sum(9) <= \sum[9]~output_o\;

ww_sum(10) <= \sum[10]~output_o\;

ww_sum(11) <= \sum[11]~output_o\;

ww_sum(12) <= \sum[12]~output_o\;

ww_sum(13) <= \sum[13]~output_o\;

ww_sum(14) <= \sum[14]~output_o\;

ww_sum(15) <= \sum[15]~output_o\;
END structure;


