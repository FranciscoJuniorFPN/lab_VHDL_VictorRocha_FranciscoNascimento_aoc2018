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

-- DATE "10/26/2018 10:48:50"

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

ENTITY 	FSM IS
    PORT (
	clk : IN std_logic;
	P : IN std_logic;
	rst : IN std_logic;
	SA : OUT std_logic;
	SB : OUT std_logic;
	SC : OUT std_logic;
	SD : OUT std_logic;
	R : OUT std_logic
	);
END FSM;

ARCHITECTURE structure OF FSM IS
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
SIGNAL ww_P : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_SA : std_logic;
SIGNAL ww_SB : std_logic;
SIGNAL ww_SC : std_logic;
SIGNAL ww_SD : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL \SA~output_o\ : std_logic;
SIGNAL \SB~output_o\ : std_logic;
SIGNAL \SC~output_o\ : std_logic;
SIGNAL \SD~output_o\ : std_logic;
SIGNAL \R~output_o\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \estado.A~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \estado.A_171~combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado.B_160~combout\ : std_logic;
SIGNAL \estado.C_149~combout\ : std_logic;
SIGNAL \estado.D_138~combout\ : std_logic;
SIGNAL \SA~0_combout\ : std_logic;
SIGNAL \SA$latch~combout\ : std_logic;
SIGNAL \SB~0_combout\ : std_logic;
SIGNAL \SB$latch~combout\ : std_logic;
SIGNAL \SC~0_combout\ : std_logic;
SIGNAL \SC$latch~combout\ : std_logic;
SIGNAL \SD~0_combout\ : std_logic;
SIGNAL \SD$latch~combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_P~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_estado.C_149~combout\ : std_logic;
SIGNAL \ALT_INV_estado.B_160~combout\ : std_logic;
SIGNAL \ALT_INV_estado.A_171~combout\ : std_logic;
SIGNAL \ALT_INV_estado.D_138~combout\ : std_logic;
SIGNAL \ALT_INV_SD$latch~combout\ : std_logic;
SIGNAL \ALT_INV_SC$latch~combout\ : std_logic;
SIGNAL \ALT_INV_SB$latch~combout\ : std_logic;
SIGNAL \ALT_INV_SA$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.A~0_combout\ : std_logic;
SIGNAL \ALT_INV_SD~0_combout\ : std_logic;
SIGNAL \ALT_INV_SC~0_combout\ : std_logic;
SIGNAL \ALT_INV_SB~0_combout\ : std_logic;
SIGNAL \ALT_INV_SA~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_P <= P;
ww_rst <= rst;
SA <= ww_SA;
SB <= ww_SB;
SC <= ww_SC;
SD <= ww_SD;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_P~input_o\ <= NOT \P~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_estado.C_149~combout\ <= NOT \estado.C_149~combout\;
\ALT_INV_estado.B_160~combout\ <= NOT \estado.B_160~combout\;
\ALT_INV_estado.A_171~combout\ <= NOT \estado.A_171~combout\;
\ALT_INV_estado.D_138~combout\ <= NOT \estado.D_138~combout\;
\ALT_INV_SD$latch~combout\ <= NOT \SD$latch~combout\;
\ALT_INV_SC$latch~combout\ <= NOT \SC$latch~combout\;
\ALT_INV_SB$latch~combout\ <= NOT \SB$latch~combout\;
\ALT_INV_SA$latch~combout\ <= NOT \SA$latch~combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_estado.A~0_combout\ <= NOT \estado.A~0_combout\;
\ALT_INV_SD~0_combout\ <= NOT \SD~0_combout\;
\ALT_INV_SC~0_combout\ <= NOT \SC~0_combout\;
\ALT_INV_SB~0_combout\ <= NOT \SB~0_combout\;
\ALT_INV_SA~0_combout\ <= NOT \SA~0_combout\;

\SA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SA$latch~combout\,
	devoe => ww_devoe,
	o => \SA~output_o\);

\SB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SB$latch~combout\,
	devoe => ww_devoe,
	o => \SB~output_o\);

\SC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SC$latch~combout\,
	devoe => ww_devoe,
	o => \SC~output_o\);

\SD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SD$latch~combout\,
	devoe => ww_devoe,
	o => \SD~output_o\);

\R~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \estado.D_138~combout\,
	devoe => ww_devoe,
	o => \R~output_o\);

\P~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado.D_138~combout\ & !\P~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.D_138~combout\,
	datab => \ALT_INV_P~input_o\,
	combout => \Selector1~0_combout\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\estado.A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.A~0_combout\ = (\clk~input_o\ & ((\P~input_o\) # (\estado.D_138~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.D_138~combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_P~input_o\,
	combout => \estado.A~0_combout\);

\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\estado.A_171\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.A_171~combout\ = ( \estado.A~0_combout\ & ( \rst~input_o\ ) ) # ( !\estado.A~0_combout\ & ( \rst~input_o\ ) ) # ( \estado.A~0_combout\ & ( !\rst~input_o\ & ( \Selector1~0_combout\ ) ) ) # ( !\estado.A~0_combout\ & ( !\rst~input_o\ & ( 
-- \estado.A_171~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector1~0_combout\,
	datad => \ALT_INV_estado.A_171~combout\,
	datae => \ALT_INV_estado.A~0_combout\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \estado.A_171~combout\);

\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\estado.D_138~combout\ & \P~input_o\)) # (\estado.A_171~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.D_138~combout\,
	datab => \ALT_INV_P~input_o\,
	datac => \ALT_INV_estado.A_171~combout\,
	combout => \Selector2~0_combout\);

\estado.B_160\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.B_160~combout\ = ( \estado.A~0_combout\ & ( !\rst~input_o\ & ( \Selector2~0_combout\ ) ) ) # ( !\estado.A~0_combout\ & ( !\rst~input_o\ & ( \estado.B_160~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector2~0_combout\,
	datad => \ALT_INV_estado.B_160~combout\,
	datae => \ALT_INV_estado.A~0_combout\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \estado.B_160~combout\);

\estado.C_149\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.C_149~combout\ = ( \estado.A~0_combout\ & ( !\rst~input_o\ & ( \estado.B_160~combout\ ) ) ) # ( !\estado.A~0_combout\ & ( !\rst~input_o\ & ( \estado.C_149~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.B_160~combout\,
	datad => \ALT_INV_estado.C_149~combout\,
	datae => \ALT_INV_estado.A~0_combout\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \estado.C_149~combout\);

\estado.D_138\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.D_138~combout\ = ( \estado.A~0_combout\ & ( !\rst~input_o\ & ( \estado.C_149~combout\ ) ) ) # ( !\estado.A~0_combout\ & ( !\rst~input_o\ & ( \estado.D_138~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.C_149~combout\,
	datad => \ALT_INV_estado.D_138~combout\,
	datae => \ALT_INV_estado.A~0_combout\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \estado.D_138~combout\);

\SA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SA~0_combout\ = (\clk~input_o\ & ((!\P~input_o\ & (\estado.D_138~combout\)) # (\P~input_o\ & ((\estado.A_171~combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000100000001001100010000000100110001000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.D_138~combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_P~input_o\,
	datad => \ALT_INV_estado.A_171~combout\,
	combout => \SA~0_combout\);

\SA$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \SA$latch~combout\ = ( \SA~0_combout\ & ( \rst~input_o\ ) ) # ( !\SA~0_combout\ & ( \rst~input_o\ ) ) # ( \SA~0_combout\ & ( !\rst~input_o\ & ( \estado.D_138~combout\ ) ) ) # ( !\SA~0_combout\ & ( !\rst~input_o\ & ( \SA$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.D_138~combout\,
	datad => \ALT_INV_SA$latch~combout\,
	datae => \ALT_INV_SA~0_combout\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \SA$latch~combout\);

\SB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SB~0_combout\ = (\clk~input_o\ & (\P~input_o\ & (!\rst~input_o\ & !\estado.C_149~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_P~input_o\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_estado.C_149~combout\,
	combout => \SB~0_combout\);

\SB$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \SB$latch~combout\ = ( \SB$latch~combout\ & ( \SB~0_combout\ & ( !\estado.B_160~combout\ ) ) ) # ( !\SB$latch~combout\ & ( \SB~0_combout\ & ( !\estado.B_160~combout\ ) ) ) # ( \SB$latch~combout\ & ( !\SB~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado.B_160~combout\,
	datae => \ALT_INV_SB$latch~combout\,
	dataf => \ALT_INV_SB~0_combout\,
	combout => \SB$latch~combout\);

\SC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SC~0_combout\ = ( !\rst~input_o\ & ( (!\estado.D_138~combout\ & (\clk~input_o\ & (\P~input_o\ & !\estado.A_171~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.D_138~combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_P~input_o\,
	datad => \ALT_INV_estado.A_171~combout\,
	datae => \ALT_INV_rst~input_o\,
	combout => \SC~0_combout\);

\SC$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \SC$latch~combout\ = ( \SC$latch~combout\ & ( \SC~0_combout\ & ( !\estado.C_149~combout\ ) ) ) # ( !\SC$latch~combout\ & ( \SC~0_combout\ & ( !\estado.C_149~combout\ ) ) ) # ( \SC$latch~combout\ & ( !\SC~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado.C_149~combout\,
	datae => \ALT_INV_SC$latch~combout\,
	dataf => \ALT_INV_SC~0_combout\,
	combout => \SC$latch~combout\);

\SD~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SD~0_combout\ = ( \estado.C_149~combout\ & ( (\clk~input_o\ & (!\rst~input_o\ & ((\P~input_o\) # (\estado.D_138~combout\)))) ) ) # ( !\estado.C_149~combout\ & ( (\estado.D_138~combout\ & (\clk~input_o\ & !\rst~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100110000000000010001000000000001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.D_138~combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \ALT_INV_P~input_o\,
	datad => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_estado.C_149~combout\,
	combout => \SD~0_combout\);

\SD$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \SD$latch~combout\ = ( \SD$latch~combout\ & ( \SD~0_combout\ & ( !\estado.D_138~combout\ ) ) ) # ( !\SD$latch~combout\ & ( \SD~0_combout\ & ( !\estado.D_138~combout\ ) ) ) # ( \SD$latch~combout\ & ( !\SD~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_estado.D_138~combout\,
	datae => \ALT_INV_SD$latch~combout\,
	dataf => \ALT_INV_SD~0_combout\,
	combout => \SD$latch~combout\);

ww_SA <= \SA~output_o\;

ww_SB <= \SB~output_o\;

ww_SC <= \SC~output_o\;

ww_SD <= \SD~output_o\;

ww_R <= \R~output_o\;
END structure;


