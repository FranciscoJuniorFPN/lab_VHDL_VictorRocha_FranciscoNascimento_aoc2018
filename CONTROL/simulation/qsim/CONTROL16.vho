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

-- DATE "10/26/2018 11:54:19"

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

ENTITY 	CONTROL16 IS
    PORT (
	clk : IN std_logic;
	opcode : IN std_logic_vector(3 DOWNTO 0);
	regDst : OUT std_logic;
	ulaFont : OUT std_logic;
	memParaReg : OUT std_logic;
	escReg : OUT std_logic;
	lerMem : OUT std_logic;
	escMem : OUT std_logic;
	desvio : OUT std_logic;
	ulaOP : OUT std_logic_vector(7 DOWNTO 0)
	);
END CONTROL16;

ARCHITECTURE structure OF CONTROL16 IS
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
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_regDst : std_logic;
SIGNAL ww_ulaFont : std_logic;
SIGNAL ww_memParaReg : std_logic;
SIGNAL ww_escReg : std_logic;
SIGNAL ww_lerMem : std_logic;
SIGNAL ww_escMem : std_logic;
SIGNAL ww_desvio : std_logic;
SIGNAL ww_ulaOP : std_logic_vector(7 DOWNTO 0);
SIGNAL \regDst~output_o\ : std_logic;
SIGNAL \ulaFont~output_o\ : std_logic;
SIGNAL \memParaReg~output_o\ : std_logic;
SIGNAL \escReg~output_o\ : std_logic;
SIGNAL \lerMem~output_o\ : std_logic;
SIGNAL \escMem~output_o\ : std_logic;
SIGNAL \desvio~output_o\ : std_logic;
SIGNAL \ulaOP[0]~output_o\ : std_logic;
SIGNAL \ulaOP[1]~output_o\ : std_logic;
SIGNAL \ulaOP[2]~output_o\ : std_logic;
SIGNAL \ulaOP[3]~output_o\ : std_logic;
SIGNAL \ulaOP[4]~output_o\ : std_logic;
SIGNAL \ulaOP[5]~output_o\ : std_logic;
SIGNAL \ulaOP[6]~output_o\ : std_logic;
SIGNAL \ulaOP[7]~output_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \regDst$latch~combout\ : std_logic;
SIGNAL \escMem~1_combout\ : std_logic;
SIGNAL \escMem_655~combout\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \comb~21_combout\ : std_logic;
SIGNAL \comb~22_combout\ : std_logic;
SIGNAL \lerMem$latch~combout\ : std_logic;
SIGNAL \memParaReg$latch~combout\ : std_logic;
SIGNAL \comb~19_combout\ : std_logic;
SIGNAL \comb~20_combout\ : std_logic;
SIGNAL \escReg$latch~combout\ : std_logic;
SIGNAL \escMem~2_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \desvio$latch~combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \ulaOP[0]$latch~combout\ : std_logic;
SIGNAL \comb~17_combout\ : std_logic;
SIGNAL \comb~18_combout\ : std_logic;
SIGNAL \ulaOP[1]$latch~combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \ulaOP[2]$latch~combout\ : std_logic;
SIGNAL \comb~15_combout\ : std_logic;
SIGNAL \comb~16_combout\ : std_logic;
SIGNAL \ulaOP[3]$latch~combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \ulaOP[4]$latch~combout\ : std_logic;
SIGNAL \ulaOP[5]~8_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~14_combout\ : std_logic;
SIGNAL \ulaOP[5]$latch~combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \ulaOP[6]$latch~combout\ : std_logic;
SIGNAL \regDst~1_combout\ : std_logic;
SIGNAL \ulaOP[7]~9_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \ulaOP[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_escMem~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_escMem~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[7]~9_combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \ALT_INV_regDst~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \ALT_INV_comb~14_combout\ : std_logic;
SIGNAL \ALT_INV_comb~16_combout\ : std_logic;
SIGNAL \ALT_INV_comb~15_combout\ : std_logic;
SIGNAL \ALT_INV_comb~17_combout\ : std_logic;
SIGNAL \ALT_INV_comb~18_combout\ : std_logic;
SIGNAL \ALT_INV_comb~19_combout\ : std_logic;
SIGNAL \ALT_INV_comb~21_combout\ : std_logic;
SIGNAL \ALT_INV_comb~20_combout\ : std_logic;
SIGNAL \ALT_INV_comb~22_combout\ : std_logic;
SIGNAL \ALT_INV_regDst$latch~combout\ : std_logic;
SIGNAL \ALT_INV_lerMem$latch~combout\ : std_logic;
SIGNAL \ALT_INV_escMem_655~combout\ : std_logic;
SIGNAL \ALT_INV_memParaReg$latch~combout\ : std_logic;
SIGNAL \ALT_INV_escReg$latch~combout\ : std_logic;
SIGNAL \ALT_INV_desvio$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ulaOP[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_ulaOP[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_opcode <= opcode;
regDst <= ww_regDst;
ulaFont <= ww_ulaFont;
memParaReg <= ww_memParaReg;
escReg <= ww_escReg;
lerMem <= ww_lerMem;
escMem <= ww_escMem;
desvio <= ww_desvio;
ulaOP <= ww_ulaOP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_escMem~1_combout\ <= NOT \escMem~1_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_escMem~2_combout\ <= NOT \escMem~2_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_ulaOP[5]~8_combout\ <= NOT \ulaOP[5]~8_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_ulaOP[7]~9_combout\ <= NOT \ulaOP[7]~9_combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ALT_INV_comb~9_combout\ <= NOT \comb~9_combout\;
\ALT_INV_regDst~1_combout\ <= NOT \regDst~1_combout\;
\ALT_INV_comb~10_combout\ <= NOT \comb~10_combout\;
\ALT_INV_comb~11_combout\ <= NOT \comb~11_combout\;
\ALT_INV_comb~12_combout\ <= NOT \comb~12_combout\;
\ALT_INV_comb~13_combout\ <= NOT \comb~13_combout\;
\ALT_INV_comb~14_combout\ <= NOT \comb~14_combout\;
\ALT_INV_comb~16_combout\ <= NOT \comb~16_combout\;
\ALT_INV_comb~15_combout\ <= NOT \comb~15_combout\;
\ALT_INV_comb~17_combout\ <= NOT \comb~17_combout\;
\ALT_INV_comb~18_combout\ <= NOT \comb~18_combout\;
\ALT_INV_comb~19_combout\ <= NOT \comb~19_combout\;
\ALT_INV_comb~21_combout\ <= NOT \comb~21_combout\;
\ALT_INV_comb~20_combout\ <= NOT \comb~20_combout\;
\ALT_INV_comb~22_combout\ <= NOT \comb~22_combout\;
\ALT_INV_regDst$latch~combout\ <= NOT \regDst$latch~combout\;
\ALT_INV_lerMem$latch~combout\ <= NOT \lerMem$latch~combout\;
\ALT_INV_escMem_655~combout\ <= NOT \escMem_655~combout\;
\ALT_INV_memParaReg$latch~combout\ <= NOT \memParaReg$latch~combout\;
\ALT_INV_escReg$latch~combout\ <= NOT \escReg$latch~combout\;
\ALT_INV_desvio$latch~combout\ <= NOT \desvio$latch~combout\;
\ALT_INV_ulaOP[0]$latch~combout\ <= NOT \ulaOP[0]$latch~combout\;
\ALT_INV_ulaOP[1]$latch~combout\ <= NOT \ulaOP[1]$latch~combout\;
\ALT_INV_ulaOP[2]$latch~combout\ <= NOT \ulaOP[2]$latch~combout\;
\ALT_INV_ulaOP[3]$latch~combout\ <= NOT \ulaOP[3]$latch~combout\;
\ALT_INV_ulaOP[4]$latch~combout\ <= NOT \ulaOP[4]$latch~combout\;
\ALT_INV_ulaOP[5]$latch~combout\ <= NOT \ulaOP[5]$latch~combout\;
\ALT_INV_ulaOP[6]$latch~combout\ <= NOT \ulaOP[6]$latch~combout\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_ulaOP[7]$latch~combout\ <= NOT \ulaOP[7]$latch~combout\;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[3]~input_o\ <= NOT \opcode[3]~input_o\;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;

\regDst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regDst$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \regDst~output_o\);

\ulaFont~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lerMem$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaFont~output_o\);

\memParaReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memParaReg$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \memParaReg~output_o\);

\escReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \escReg$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \escReg~output_o\);

\lerMem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lerMem$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \lerMem~output_o\);

\escMem~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_escMem_655~combout\,
	devoe => ww_devoe,
	o => \escMem~output_o\);

\desvio~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \desvio$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \desvio~output_o\);

\ulaOP[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP[0]$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaOP[0]~output_o\);

\ulaOP[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP[1]$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaOP[1]~output_o\);

\ulaOP[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP[2]$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaOP[2]~output_o\);

\ulaOP[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP[3]$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaOP[3]~output_o\);

\ulaOP[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP[4]$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaOP[4]~output_o\);

\ulaOP[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP[5]$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaOP[5]~output_o\);

\ulaOP[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP[6]$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaOP[6]~output_o\);

\ulaOP[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ulaOP[7]$latch~combout\,
	oe => \escMem_655~combout\,
	devoe => ww_devoe,
	o => \ulaOP[7]~output_o\);

\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

\opcode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\opcode[3]~input_o\) # ((!\opcode[1]~input_o\ & !\opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \comb~1_combout\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\opcode[3]~input_o\ & ((!\opcode[1]~input_o\ & ((\opcode[2]~input_o\))) # (\opcode[1]~input_o\ & ((!\clk~input_o\) # (!\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111110000000000011111000000000001111100000000000111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \comb~0_combout\);

\regDst$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \regDst$latch~combout\ = ( \comb~1_combout\ & ( !\comb~0_combout\ ) ) # ( !\comb~1_combout\ & ( !\comb~0_combout\ & ( \regDst$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_regDst$latch~combout\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \regDst$latch~combout\);

\escMem~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \escMem~1_combout\ = (!\opcode[1]~input_o\) # ((!\opcode[2]~input_o\) # (!\opcode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[3]~input_o\,
	combout => \escMem~1_combout\);

escMem_655 : cyclonev_lcell_comb
-- Equation(s):
-- \escMem_655~combout\ = ( \escMem~1_combout\ & ( \clk~input_o\ ) ) # ( !\escMem~1_combout\ & ( \clk~input_o\ & ( \escMem_655~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_escMem_655~combout\,
	datae => \ALT_INV_escMem~1_combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \escMem_655~combout\);

\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

\comb~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~21_combout\ = (\opcode[3]~input_o\ & ((!\opcode[2]~input_o\ & ((\opcode[1]~input_o\))) # (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & !\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110000000000100011000000000010001100000000001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~21_combout\);

\comb~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~22_combout\ = ( \clk~input_o\ & ( (!\opcode[3]~input_o\) # ((!\opcode[1]~input_o\ & ((!\opcode[2]~input_o\) # (\opcode[0]~input_o\)))) ) ) # ( !\clk~input_o\ & ( (!\opcode[3]~input_o\) # ((!\opcode[2]~input_o\ & ((!\opcode[1]~input_o\))) # 
-- (\opcode[2]~input_o\ & ((\opcode[1]~input_o\) # (\opcode[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111001111111111011100110011111101110011111111110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_clk~input_o\,
	combout => \comb~22_combout\);

\lerMem$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \lerMem$latch~combout\ = ( \comb~21_combout\ & ( !\comb~22_combout\ ) ) # ( !\comb~21_combout\ & ( !\comb~22_combout\ & ( \lerMem$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_lerMem$latch~combout\,
	datae => \ALT_INV_comb~21_combout\,
	dataf => \ALT_INV_comb~22_combout\,
	combout => \lerMem$latch~combout\);

\memParaReg$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \memParaReg$latch~combout\ = ( \comb~0_combout\ & ( !\comb~1_combout\ ) ) # ( !\comb~0_combout\ & ( !\comb~1_combout\ & ( \memParaReg$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_memParaReg$latch~combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \memParaReg$latch~combout\);

\comb~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~19_combout\ = (!\opcode[3]~input_o\) # ((!\opcode[2]~input_o\) # ((!\opcode[0]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100111111101111110011111110111111001111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~19_combout\);

\comb~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~20_combout\ = ( \clk~input_o\ & ( (\opcode[0]~input_o\ & (\opcode[3]~input_o\ & (\opcode[2]~input_o\ & !\opcode[1]~input_o\))) ) ) # ( !\clk~input_o\ & ( (\opcode[3]~input_o\ & (\opcode[2]~input_o\ & ((\opcode[1]~input_o\) # (\opcode[0]~input_o\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000000000000001000000110000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_clk~input_o\,
	combout => \comb~20_combout\);

\escReg$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \escReg$latch~combout\ = ( \comb~19_combout\ & ( !\comb~20_combout\ ) ) # ( !\comb~19_combout\ & ( !\comb~20_combout\ & ( \escReg$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_escReg$latch~combout\,
	datae => \ALT_INV_comb~19_combout\,
	dataf => \ALT_INV_comb~20_combout\,
	combout => \escReg$latch~combout\);

\escMem~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \escMem~2_combout\ = (!\clk~input_o\) # ((!\opcode[1]~input_o\) # ((!\opcode[2]~input_o\) # (!\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \escMem~2_combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\opcode[2]~input_o\ & (\opcode[3]~input_o\ & ((\opcode[0]~input_o\) # (\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[3]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	combout => \comb~2_combout\);

\desvio$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \desvio$latch~combout\ = ( \escMem~2_combout\ & ( \comb~2_combout\ ) ) # ( !\escMem~2_combout\ & ( \comb~2_combout\ & ( \desvio$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_desvio$latch~combout\,
	datae => \ALT_INV_escMem~2_combout\,
	dataf => \ALT_INV_comb~2_combout\,
	combout => \desvio$latch~combout\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (((!\opcode[1]~input_o\)))) # (\opcode[2]~input_o\ & (\opcode[3]~input_o\ & ((!\clk~input_o\) # (!\opcode[1]~input_o\)))) ) ) # ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- (((\opcode[3]~input_o\)))) # (\opcode[1]~input_o\ & ((!\opcode[2]~input_o\ & ((!\opcode[3]~input_o\))) # (\opcode[2]~input_o\ & (!\clk~input_o\ & \opcode[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001110110000001100111000110000110011101100000011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	combout => \comb~4_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \opcode[0]~input_o\ & ( (!\opcode[2]~input_o\ & (\opcode[1]~input_o\)) # (\opcode[2]~input_o\ & ((!\opcode[3]~input_o\))) ) ) # ( !\opcode[0]~input_o\ & ( !\opcode[3]~input_o\ $ (((\opcode[1]~input_o\ & !\opcode[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100110000001111110011000011001111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	combout => \comb~3_combout\);

\ulaOP[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[0]$latch~combout\ = ( \comb~4_combout\ & ( !\comb~3_combout\ ) ) # ( !\comb~4_combout\ & ( !\comb~3_combout\ & ( \ulaOP[0]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ulaOP[0]$latch~combout\,
	datae => \ALT_INV_comb~4_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \ulaOP[0]$latch~combout\);

\comb~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~17_combout\ = ( \clk~input_o\ & ( (!\opcode[2]~input_o\ & (\opcode[3]~input_o\ & ((!\opcode[1]~input_o\) # (\opcode[0]~input_o\)))) # (\opcode[2]~input_o\ & ((!\opcode[0]~input_o\ & (!\opcode[3]~input_o\ & \opcode[1]~input_o\)) # 
-- (\opcode[0]~input_o\ & ((!\opcode[1]~input_o\))))) ) ) # ( !\clk~input_o\ & ( (!\opcode[3]~input_o\ & (\opcode[2]~input_o\ & (!\opcode[0]~input_o\ $ (!\opcode[1]~input_o\)))) # (\opcode[3]~input_o\ & ((!\opcode[2]~input_o\ $ (\opcode[1]~input_o\)) # 
-- (\opcode[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100011011001101010001100000110101000110110011010100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_clk~input_o\,
	combout => \comb~17_combout\);

\comb~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~18_combout\ = (!\opcode[3]~input_o\ & ((!\opcode[2]~input_o\) # (!\opcode[0]~input_o\ $ (\opcode[1]~input_o\)))) # (\opcode[3]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[2]~input_o\ $ (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011100100110010101110010011001010111001001100101011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~18_combout\);

\ulaOP[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[1]$latch~combout\ = ( \comb~17_combout\ & ( !\comb~18_combout\ ) ) # ( !\comb~17_combout\ & ( !\comb~18_combout\ & ( \ulaOP[1]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ulaOP[1]$latch~combout\,
	datae => \ALT_INV_comb~17_combout\,
	dataf => \ALT_INV_comb~18_combout\,
	combout => \ulaOP[1]$latch~combout\);

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \opcode[0]~input_o\ & ( (\opcode[2]~input_o\ & (\opcode[3]~input_o\ & ((!\clk~input_o\) # (!\opcode[1]~input_o\)))) ) ) # ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & (((\opcode[2]~input_o\)))) # (\opcode[1]~input_o\ & 
-- (\opcode[3]~input_o\ & ((!\clk~input_o\) # (!\opcode[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111110000000000000111000001100001111100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	combout => \comb~6_combout\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \opcode[0]~input_o\ & ( (!\opcode[2]~input_o\) # (!\opcode[3]~input_o\) ) ) # ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & (!\opcode[2]~input_o\)) # (\opcode[1]~input_o\ & ((!\opcode[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111000000111111111111000011110011110000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	combout => \comb~5_combout\);

\ulaOP[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[2]$latch~combout\ = ( \comb~6_combout\ & ( !\comb~5_combout\ ) ) # ( !\comb~6_combout\ & ( !\comb~5_combout\ & ( \ulaOP[2]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ulaOP[2]$latch~combout\,
	datae => \ALT_INV_comb~6_combout\,
	dataf => \ALT_INV_comb~5_combout\,
	combout => \ulaOP[2]$latch~combout\);

\comb~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~15_combout\ = ( \clk~input_o\ & ( (!\opcode[2]~input_o\ & (((\opcode[1]~input_o\)))) # (\opcode[2]~input_o\ & (\opcode[0]~input_o\ & (!\opcode[3]~input_o\ $ (!\opcode[1]~input_o\)))) ) ) # ( !\clk~input_o\ & ( (!\opcode[0]~input_o\ & 
-- (\opcode[1]~input_o\ & ((!\opcode[2]~input_o\) # (\opcode[3]~input_o\)))) # (\opcode[0]~input_o\ & (((\opcode[3]~input_o\ & \opcode[2]~input_o\)) # (\opcode[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110111000000011111010000000001111101110000000111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_clk~input_o\,
	combout => \comb~15_combout\);

\comb~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~16_combout\ = (!\opcode[0]~input_o\ & ((!\opcode[1]~input_o\) # ((!\opcode[3]~input_o\ & \opcode[2]~input_o\)))) # (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & ((!\opcode[3]~input_o\) # (!\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000001000111111100000100011111110000010001111111000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~16_combout\);

\ulaOP[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[3]$latch~combout\ = ( \comb~15_combout\ & ( !\comb~16_combout\ ) ) # ( !\comb~15_combout\ & ( !\comb~16_combout\ & ( \ulaOP[3]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ulaOP[3]$latch~combout\,
	datae => \ALT_INV_comb~15_combout\,
	dataf => \ALT_INV_comb~16_combout\,
	combout => \ulaOP[3]$latch~combout\);

\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( \opcode[0]~input_o\ & ( (\opcode[2]~input_o\ & (\opcode[3]~input_o\ & ((!\clk~input_o\) # (!\opcode[1]~input_o\)))) ) ) # ( !\opcode[0]~input_o\ & ( (\opcode[2]~input_o\ & ((!\opcode[1]~input_o\ & ((\opcode[3]~input_o\))) # 
-- (\opcode[1]~input_o\ & ((!\clk~input_o\) # (!\opcode[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001110000000000000111000000011000011100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	combout => \comb~8_combout\);

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \opcode[0]~input_o\ & ( (!\opcode[2]~input_o\) # (!\opcode[3]~input_o\) ) ) # ( !\opcode[0]~input_o\ & ( (!\opcode[2]~input_o\) # ((!\opcode[1]~input_o\ & !\opcode[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111111111111000011111100111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	combout => \comb~7_combout\);

\ulaOP[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[4]$latch~combout\ = ( \comb~8_combout\ & ( !\comb~7_combout\ ) ) # ( !\comb~8_combout\ & ( !\comb~7_combout\ & ( \ulaOP[4]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ulaOP[4]$latch~combout\,
	datae => \ALT_INV_comb~8_combout\,
	dataf => \ALT_INV_comb~7_combout\,
	combout => \ulaOP[4]$latch~combout\);

\ulaOP[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[5]~8_combout\ = (\opcode[3]~input_o\ & (!\opcode[0]~input_o\ & (!\opcode[2]~input_o\ $ (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000101000000000000010100000000000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	combout => \ulaOP[5]~8_combout\);

\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( \ulaOP[5]~8_combout\ & ( (!\opcode[1]~input_o\ & !\opcode[2]~input_o\) ) ) # ( !\ulaOP[5]~8_combout\ & ( (!\opcode[2]~input_o\ & (((\opcode[1]~input_o\)))) # (\opcode[2]~input_o\ & (\opcode[3]~input_o\ & ((!\clk~input_o\) # 
-- (!\opcode[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111110110000001100000000110000001111101100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_ulaOP[5]~8_combout\,
	combout => \comb~9_combout\);

\comb~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~14_combout\ = (!\opcode[0]~input_o\ & ((!\opcode[1]~input_o\) # (!\opcode[3]~input_o\ $ (!\opcode[2]~input_o\)))) # (\opcode[0]~input_o\ & ((!\opcode[2]~input_o\ & ((!\opcode[1]~input_o\))) # (\opcode[2]~input_o\ & (!\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000101100111111100010110011111110001011001111111000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~14_combout\);

\ulaOP[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[5]$latch~combout\ = ( \comb~9_combout\ & ( !\comb~14_combout\ ) ) # ( !\comb~9_combout\ & ( !\comb~14_combout\ & ( \ulaOP[5]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ulaOP[5]$latch~combout\,
	datae => \ALT_INV_comb~9_combout\,
	dataf => \ALT_INV_comb~14_combout\,
	combout => \ulaOP[5]$latch~combout\);

\comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = ( \clk~input_o\ & ( (!\opcode[0]~input_o\ & (\opcode[3]~input_o\ & (!\opcode[2]~input_o\ $ (!\opcode[1]~input_o\)))) # (\opcode[0]~input_o\ & (\opcode[2]~input_o\ & (!\opcode[3]~input_o\ $ (!\opcode[1]~input_o\)))) ) ) # ( 
-- !\clk~input_o\ & ( (!\opcode[1]~input_o\ & (((\opcode[3]~input_o\ & \opcode[2]~input_o\)))) # (\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (\opcode[3]~input_o\)) # (\opcode[0]~input_o\ & ((\opcode[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100111000000110010010000000011001001110000001100100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_clk~input_o\,
	combout => \comb~12_combout\);

\comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (!\opcode[1]~input_o\ & (((!\opcode[3]~input_o\) # (!\opcode[2]~input_o\)))) # (\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (!\opcode[3]~input_o\)) # (\opcode[0]~input_o\ & ((!\opcode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011011000111111001101100011111100110110001111110011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	combout => \comb~13_combout\);

\ulaOP[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[6]$latch~combout\ = ( \comb~12_combout\ & ( !\comb~13_combout\ ) ) # ( !\comb~12_combout\ & ( !\comb~13_combout\ & ( \ulaOP[6]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ulaOP[6]$latch~combout\,
	datae => \ALT_INV_comb~12_combout\,
	dataf => \ALT_INV_comb~13_combout\,
	combout => \ulaOP[6]$latch~combout\);

\regDst~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regDst~1_combout\ = (!\opcode[1]~input_o\ & !\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	combout => \regDst~1_combout\);

\ulaOP[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[7]~9_combout\ = (\opcode[3]~input_o\ & (!\opcode[1]~input_o\ & (!\opcode[2]~input_o\ $ (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000000100000100000000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	combout => \ulaOP[7]~9_combout\);

\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( \ulaOP[7]~9_combout\ & ( (\opcode[3]~input_o\ & (\escMem~2_combout\ & (\regDst~1_combout\ & !\opcode[0]~input_o\))) ) ) # ( !\ulaOP[7]~9_combout\ & ( (\opcode[3]~input_o\ & \escMem~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000010000000000010001000100010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[3]~input_o\,
	datab => \ALT_INV_escMem~2_combout\,
	datac => \ALT_INV_regDst~1_combout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_ulaOP[7]~9_combout\,
	combout => \comb~10_combout\);

\comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (!\opcode[3]~input_o\) # ((!\opcode[1]~input_o\ & (!\opcode[2]~input_o\ $ (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101001000111111110100100011111111010010001111111101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	combout => \comb~11_combout\);

\ulaOP[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ulaOP[7]$latch~combout\ = ( \comb~10_combout\ & ( !\comb~11_combout\ ) ) # ( !\comb~10_combout\ & ( !\comb~11_combout\ & ( \ulaOP[7]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ulaOP[7]$latch~combout\,
	datae => \ALT_INV_comb~10_combout\,
	dataf => \ALT_INV_comb~11_combout\,
	combout => \ulaOP[7]$latch~combout\);

ww_regDst <= \regDst~output_o\;

ww_ulaFont <= \ulaFont~output_o\;

ww_memParaReg <= \memParaReg~output_o\;

ww_escReg <= \escReg~output_o\;

ww_lerMem <= \lerMem~output_o\;

ww_escMem <= \escMem~output_o\;

ww_desvio <= \desvio~output_o\;

ww_ulaOP(0) <= \ulaOP[0]~output_o\;

ww_ulaOP(1) <= \ulaOP[1]~output_o\;

ww_ulaOP(2) <= \ulaOP[2]~output_o\;

ww_ulaOP(3) <= \ulaOP[3]~output_o\;

ww_ulaOP(4) <= \ulaOP[4]~output_o\;

ww_ulaOP(5) <= \ulaOP[5]~output_o\;

ww_ulaOP(6) <= \ulaOP[6]~output_o\;

ww_ulaOP(7) <= \ulaOP[7]~output_o\;
END structure;


