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

-- DATE "10/23/2018 22:28:16"

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

ENTITY 	SOMA16BITS IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	cin : IN std_logic;
	cout : OUT std_logic;
	sum : OUT std_logic_vector(15 DOWNTO 0)
	);
END SOMA16BITS;

-- Design Ports Information
-- cout	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[8]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[9]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[10]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[11]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[13]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[14]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[15]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SOMA16BITS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_sum : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \c~7_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \c~8_combout\ : std_logic;
SIGNAL \c~9_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \c~10_combout\ : std_logic;
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
SIGNAL \c~11_combout\ : std_logic;
SIGNAL \soma~14_combout\ : std_logic;
SIGNAL \soma~15_combout\ : std_logic;
SIGNAL \ALT_INV_c~11_combout\ : std_logic;
SIGNAL \ALT_INV_c~9_combout\ : std_logic;
SIGNAL \ALT_INV_c~8_combout\ : std_logic;
SIGNAL \ALT_INV_c~7_combout\ : std_logic;
SIGNAL \ALT_INV_c~6_combout\ : std_logic;
SIGNAL \ALT_INV_c~5_combout\ : std_logic;
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \ALT_INV_c~3_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;
SIGNAL \ALT_INV_c~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_cin <= cin;
cout <= ww_cout;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_c~11_combout\ <= NOT \c~11_combout\;
\ALT_INV_c~9_combout\ <= NOT \c~9_combout\;
\ALT_INV_c~8_combout\ <= NOT \c~8_combout\;
\ALT_INV_c~7_combout\ <= NOT \c~7_combout\;
\ALT_INV_c~6_combout\ <= NOT \c~6_combout\;
\ALT_INV_c~5_combout\ <= NOT \c~5_combout\;
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\ALT_INV_c~3_combout\ <= NOT \c~3_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;
\ALT_INV_c~1_combout\ <= NOT \c~1_combout\;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;

-- Location: IOOBUF_X70_Y0_N53
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c~10_combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X72_Y0_N2
\sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(0));

-- Location: IOOBUF_X62_Y0_N19
\sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~1_combout\,
	devoe => ww_devoe,
	o => ww_sum(1));

-- Location: IOOBUF_X64_Y0_N2
\sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~2_combout\,
	devoe => ww_devoe,
	o => ww_sum(2));

-- Location: IOOBUF_X62_Y0_N53
\sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~3_combout\,
	devoe => ww_devoe,
	o => ww_sum(3));

-- Location: IOOBUF_X72_Y0_N36
\sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~4_combout\,
	devoe => ww_devoe,
	o => ww_sum(4));

-- Location: IOOBUF_X89_Y36_N5
\sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~5_combout\,
	devoe => ww_devoe,
	o => ww_sum(5));

-- Location: IOOBUF_X89_Y36_N39
\sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~6_combout\,
	devoe => ww_devoe,
	o => ww_sum(6));

-- Location: IOOBUF_X89_Y35_N96
\sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~7_combout\,
	devoe => ww_devoe,
	o => ww_sum(7));

-- Location: IOOBUF_X89_Y36_N22
\sum[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~8_combout\,
	devoe => ww_devoe,
	o => ww_sum(8));

-- Location: IOOBUF_X89_Y35_N62
\sum[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~9_combout\,
	devoe => ww_devoe,
	o => ww_sum(9));

-- Location: IOOBUF_X89_Y4_N79
\sum[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~10_combout\,
	devoe => ww_devoe,
	o => ww_sum(10));

-- Location: IOOBUF_X89_Y35_N79
\sum[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~11_combout\,
	devoe => ww_devoe,
	o => ww_sum(11));

-- Location: IOOBUF_X89_Y4_N96
\sum[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~12_combout\,
	devoe => ww_devoe,
	o => ww_sum(12));

-- Location: IOOBUF_X60_Y0_N2
\sum[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~13_combout\,
	devoe => ww_devoe,
	o => ww_sum(13));

-- Location: IOOBUF_X64_Y0_N19
\sum[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~14_combout\,
	devoe => ww_devoe,
	o => ww_sum(14));

-- Location: IOOBUF_X70_Y0_N2
\sum[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~15_combout\,
	devoe => ww_devoe,
	o => ww_sum(15));

-- Location: IOIBUF_X70_Y0_N18
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X85_Y8_N30
\c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \B[9]~input_o\ & ( \A[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	combout => \c~0_combout\);

-- Location: IOIBUF_X89_Y9_N38
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X85_Y8_N45
\c~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~6_combout\ = ( \B[9]~input_o\ & ( !\A[9]~input_o\ ) ) # ( !\B[9]~input_o\ & ( \A[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	combout => \c~6_combout\);

-- Location: IOIBUF_X89_Y8_N38
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X68_Y1_N30
\c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~1_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \c~1_combout\);

-- Location: IOIBUF_X89_Y6_N4
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X68_Y1_N33
\c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~3_combout\ = !\A[4]~input_o\ $ (!\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \c~3_combout\);

-- Location: IOIBUF_X89_Y4_N44
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X68_Y1_N36
\c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~2_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\cin~input_o\) # (\B[0]~input_o\)))) # (\A[1]~input_o\ & (((\cin~input_o\) # (\B[1]~input_o\)) # (\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & (\B[0]~input_o\ 
-- & (\B[1]~input_o\ & \cin~input_o\))) # (\A[1]~input_o\ & (((\B[0]~input_o\ & \cin~input_o\)) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \c~2_combout\);

-- Location: IOIBUF_X66_Y0_N58
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X68_Y1_N42
\c~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \c~2_combout\ & ( \A[3]~input_o\ & ( (\c~3_combout\ & (((\A[2]~input_o\) # (\B[3]~input_o\)) # (\B[2]~input_o\))) ) ) ) # ( !\c~2_combout\ & ( \A[3]~input_o\ & ( (\c~3_combout\ & (((\B[2]~input_o\ & \A[2]~input_o\)) # (\B[3]~input_o\))) 
-- ) ) ) # ( \c~2_combout\ & ( !\A[3]~input_o\ & ( (\c~3_combout\ & (\B[3]~input_o\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))) ) ) ) # ( !\c~2_combout\ & ( !\A[3]~input_o\ & ( (\c~3_combout\ & (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000010100000101000101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~3_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_c~2_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \c~4_combout\);

-- Location: IOIBUF_X89_Y9_N55
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X85_Y8_N6
\c~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~5_combout\ = ( \c~4_combout\ & ( \A[6]~input_o\ & ( (!\A[5]~input_o\ & (!\B[6]~input_o\ & !\B[5]~input_o\)) ) ) ) # ( !\c~4_combout\ & ( \A[6]~input_o\ & ( (!\B[6]~input_o\ & ((!\A[5]~input_o\ & ((!\c~1_combout\) # (!\B[5]~input_o\))) # (\A[5]~input_o\ 
-- & (!\c~1_combout\ & !\B[5]~input_o\)))) ) ) ) # ( \c~4_combout\ & ( !\A[6]~input_o\ & ( (!\B[6]~input_o\) # ((!\A[5]~input_o\ & !\B[5]~input_o\)) ) ) ) # ( !\c~4_combout\ & ( !\A[6]~input_o\ & ( (!\B[6]~input_o\) # ((!\A[5]~input_o\ & ((!\c~1_combout\) # 
-- (!\B[5]~input_o\))) # (\A[5]~input_o\ & (!\c~1_combout\ & !\B[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111000111110101111000011100000100000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_c~1_combout\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_c~4_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \c~5_combout\);

-- Location: LABCELL_X85_Y8_N48
\c~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~7_combout\ = ( \A[8]~input_o\ & ( \c~5_combout\ & ( (\c~6_combout\ & (((\B[7]~input_o\ & \A[7]~input_o\)) # (\B[8]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( \c~5_combout\ & ( (\B[8]~input_o\ & (\c~6_combout\ & (\B[7]~input_o\ & \A[7]~input_o\))) ) ) ) 
-- # ( \A[8]~input_o\ & ( !\c~5_combout\ & ( (\c~6_combout\ & (((\A[7]~input_o\) # (\B[7]~input_o\)) # (\B[8]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( !\c~5_combout\ & ( (\B[8]~input_o\ & (\c~6_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000100110011001100000000000000010001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_c~6_combout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_c~5_combout\,
	combout => \c~7_combout\);

-- Location: IOIBUF_X89_Y35_N44
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X85_Y8_N54
\c~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~8_combout\ = ( \A[10]~input_o\ & ( \B[10]~input_o\ & ( (!\A[11]~input_o\ & !\B[11]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \B[10]~input_o\ & ( (!\A[11]~input_o\ & ((!\B[11]~input_o\) # ((!\c~0_combout\ & !\c~7_combout\)))) # (\A[11]~input_o\ & 
-- (!\c~0_combout\ & (!\c~7_combout\ & !\B[11]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\B[10]~input_o\ & ( (!\A[11]~input_o\ & ((!\B[11]~input_o\) # ((!\c~0_combout\ & !\c~7_combout\)))) # (\A[11]~input_o\ & (!\c~0_combout\ & (!\c~7_combout\ & 
-- !\B[11]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\B[10]~input_o\ & ( (!\A[11]~input_o\) # (!\B[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111010101000000011101010100000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_c~0_combout\,
	datac => \ALT_INV_c~7_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \c~8_combout\);

-- Location: LABCELL_X68_Y1_N51
\c~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~9_combout\ = ( \c~8_combout\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\))) # (\B[13]~input_o\ & (((\B[12]~input_o\ & \A[12]~input_o\)) # (\A[13]~input_o\))) ) ) # ( !\c~8_combout\ & ( (!\B[13]~input_o\ & 
-- (\A[13]~input_o\ & ((\A[12]~input_o\) # (\B[12]~input_o\)))) # (\B[13]~input_o\ & (((\A[12]~input_o\) # (\B[12]~input_o\)) # (\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000101110111011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_c~8_combout\,
	combout => \c~9_combout\);

-- Location: IOIBUF_X62_Y0_N35
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X68_Y1_N57
\c~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~10_combout\ = ( \B[15]~input_o\ & ( ((!\c~9_combout\ & (\A[14]~input_o\ & \B[14]~input_o\)) # (\c~9_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\)))) # (\A[15]~input_o\) ) ) # ( !\B[15]~input_o\ & ( (\A[15]~input_o\ & ((!\c~9_combout\ & 
-- (\A[14]~input_o\ & \B[14]~input_o\)) # (\c~9_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~9_combout\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \c~10_combout\);

-- Location: LABCELL_X68_Y1_N48
\soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~0_combout\ = ( \B[0]~input_o\ & ( !\A[0]~input_o\ $ (\cin~input_o\) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ $ (!\cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \soma~0_combout\);

-- Location: LABCELL_X68_Y1_N39
\soma~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~1_combout\ = ( \A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\cin~input_o\) # (\B[0]~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\B[0]~input_o\ & \cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_cin~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \soma~1_combout\);

-- Location: LABCELL_X68_Y1_N3
\soma~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~2_combout\ = ( \B[2]~input_o\ & ( !\c~2_combout\ $ (\A[2]~input_o\) ) ) # ( !\B[2]~input_o\ & ( !\c~2_combout\ $ (!\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~2_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \soma~2_combout\);

-- Location: LABCELL_X68_Y1_N0
\soma~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~3_combout\ = ( \B[2]~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\A[2]~input_o\) # (\c~2_combout\)))) ) ) # ( !\B[2]~input_o\ & ( !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (((\c~2_combout\ & \A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~2_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \soma~3_combout\);

-- Location: LABCELL_X68_Y1_N6
\soma~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~4_combout\ = ( \c~2_combout\ & ( \A[3]~input_o\ & ( !\c~3_combout\ $ (((!\B[2]~input_o\ & (!\B[3]~input_o\ & !\A[2]~input_o\)))) ) ) ) # ( !\c~2_combout\ & ( \A[3]~input_o\ & ( !\c~3_combout\ $ (((!\B[3]~input_o\ & ((!\B[2]~input_o\) # 
-- (!\A[2]~input_o\))))) ) ) ) # ( \c~2_combout\ & ( !\A[3]~input_o\ & ( !\c~3_combout\ $ (((!\B[3]~input_o\) # ((!\B[2]~input_o\ & !\A[2]~input_o\)))) ) ) ) # ( !\c~2_combout\ & ( !\A[3]~input_o\ & ( !\c~3_combout\ $ (((!\B[2]~input_o\) # ((!\B[3]~input_o\) 
-- # (!\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101100101101001011010011010100110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~3_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_c~2_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \soma~4_combout\);

-- Location: LABCELL_X85_Y8_N3
\soma~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~5_combout\ = ( \c~4_combout\ & ( !\A[5]~input_o\ $ (\B[5]~input_o\) ) ) # ( !\c~4_combout\ & ( !\A[5]~input_o\ $ (!\c~1_combout\ $ (\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_c~1_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_c~4_combout\,
	combout => \soma~5_combout\);

-- Location: LABCELL_X85_Y8_N36
\soma~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~6_combout\ = ( \c~4_combout\ & ( \A[6]~input_o\ & ( !\B[6]~input_o\ $ (((\B[5]~input_o\) # (\A[5]~input_o\))) ) ) ) # ( !\c~4_combout\ & ( \A[6]~input_o\ & ( !\B[6]~input_o\ $ (((!\A[5]~input_o\ & (\c~1_combout\ & \B[5]~input_o\)) # (\A[5]~input_o\ 
-- & ((\B[5]~input_o\) # (\c~1_combout\))))) ) ) ) # ( \c~4_combout\ & ( !\A[6]~input_o\ & ( !\B[6]~input_o\ $ (((!\A[5]~input_o\ & !\B[5]~input_o\))) ) ) ) # ( !\c~4_combout\ & ( !\A[6]~input_o\ & ( !\B[6]~input_o\ $ (((!\A[5]~input_o\ & ((!\c~1_combout\) # 
-- (!\B[5]~input_o\))) # (\A[5]~input_o\ & (!\c~1_combout\ & !\B[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000010110101111000011100001100001111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_c~1_combout\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_c~4_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \soma~6_combout\);

-- Location: LABCELL_X85_Y8_N15
\soma~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~7_combout\ = ( \B[7]~input_o\ & ( !\c~5_combout\ $ (!\A[7]~input_o\) ) ) # ( !\B[7]~input_o\ & ( !\c~5_combout\ $ (\A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~5_combout\,
	datab => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \soma~7_combout\);

-- Location: LABCELL_X85_Y8_N12
\soma~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~8_combout\ = ( \B[8]~input_o\ & ( !\A[8]~input_o\ $ (((!\c~5_combout\ & ((\B[7]~input_o\) # (\A[7]~input_o\))) # (\c~5_combout\ & (\A[7]~input_o\ & \B[7]~input_o\)))) ) ) # ( !\B[8]~input_o\ & ( !\A[8]~input_o\ $ (((!\c~5_combout\ & (!\A[7]~input_o\ 
-- & !\B[7]~input_o\)) # (\c~5_combout\ & ((!\A[7]~input_o\) # (!\B[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101111010100001010111101010011010100001010111101010000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~5_combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \soma~8_combout\);

-- Location: LABCELL_X85_Y8_N18
\soma~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~9_combout\ = ( \A[8]~input_o\ & ( \c~5_combout\ & ( !\c~6_combout\ $ (((!\B[8]~input_o\ & ((!\B[7]~input_o\) # (!\A[7]~input_o\))))) ) ) ) # ( !\A[8]~input_o\ & ( \c~5_combout\ & ( !\c~6_combout\ $ (((!\B[8]~input_o\) # ((!\B[7]~input_o\) # 
-- (!\A[7]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\c~5_combout\ & ( !\c~6_combout\ $ (((!\B[8]~input_o\ & (!\B[7]~input_o\ & !\A[7]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\c~5_combout\ & ( !\c~6_combout\ $ (((!\B[8]~input_o\) # ((!\B[7]~input_o\ & 
-- !\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001100110011011001100110000110011001101100110011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_c~6_combout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_c~5_combout\,
	combout => \soma~9_combout\);

-- Location: LABCELL_X85_Y8_N0
\soma~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~10_combout\ = ( \B[10]~input_o\ & ( !\A[10]~input_o\ $ (((\c~7_combout\) # (\c~0_combout\))) ) ) # ( !\B[10]~input_o\ & ( !\A[10]~input_o\ $ (((!\c~0_combout\ & !\c~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000011000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_c~0_combout\,
	datac => \ALT_INV_c~7_combout\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \soma~10_combout\);

-- Location: LABCELL_X85_Y8_N24
\soma~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~11_combout\ = ( \A[10]~input_o\ & ( \B[10]~input_o\ & ( !\A[11]~input_o\ $ (\B[11]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \B[10]~input_o\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((\c~7_combout\) # (\c~0_combout\)))) ) ) ) # ( \A[10]~input_o\ & 
-- ( !\B[10]~input_o\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\ $ (((\c~7_combout\) # (\c~0_combout\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\B[10]~input_o\ & ( !\A[11]~input_o\ $ (!\B[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010011010101001010101101010100101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_c~0_combout\,
	datac => \ALT_INV_c~7_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \soma~11_combout\);

-- Location: LABCELL_X68_Y1_N15
\soma~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~12_combout\ = ( \c~8_combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\) ) ) # ( !\c~8_combout\ & ( !\A[12]~input_o\ $ (\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_c~8_combout\,
	combout => \soma~12_combout\);

-- Location: LABCELL_X68_Y1_N12
\soma~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~13_combout\ = ( \c~8_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\A[12]~input_o\ & \B[12]~input_o\)))) ) ) # ( !\c~8_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\B[12]~input_o\) # (\A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111011110001000011100011110111000010001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_c~8_combout\,
	combout => \soma~13_combout\);

-- Location: LABCELL_X68_Y1_N18
\c~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~11_combout\ = ( \B[14]~input_o\ & ( !\A[14]~input_o\ ) ) # ( !\B[14]~input_o\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	combout => \c~11_combout\);

-- Location: LABCELL_X68_Y1_N24
\soma~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~14_combout\ = ( \A[12]~input_o\ & ( \c~8_combout\ & ( !\c~11_combout\ $ (((!\B[13]~input_o\ & ((!\A[13]~input_o\) # (!\B[12]~input_o\))) # (\B[13]~input_o\ & (!\A[13]~input_o\ & !\B[12]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \c~8_combout\ & ( 
-- !\c~11_combout\ $ (((!\B[13]~input_o\) # (!\A[13]~input_o\))) ) ) ) # ( \A[12]~input_o\ & ( !\c~8_combout\ & ( !\c~11_combout\ $ (((!\B[13]~input_o\ & !\A[13]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( !\c~8_combout\ & ( !\c~11_combout\ $ 
-- (((!\B[13]~input_o\ & ((!\A[13]~input_o\) # (!\B[12]~input_o\))) # (\B[13]~input_o\ & (!\A[13]~input_o\ & !\B[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000011110000111100000011110000111100001111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_c~11_combout\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_c~8_combout\,
	combout => \soma~14_combout\);

-- Location: LABCELL_X68_Y1_N54
\soma~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~15_combout\ = ( \B[15]~input_o\ & ( !\A[15]~input_o\ $ (((!\c~9_combout\ & (\A[14]~input_o\ & \B[14]~input_o\)) # (\c~9_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\))))) ) ) # ( !\B[15]~input_o\ & ( !\A[15]~input_o\ $ (((!\c~9_combout\ & 
-- ((!\A[14]~input_o\) # (!\B[14]~input_o\))) # (\c~9_combout\ & (!\A[14]~input_o\ & !\B[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~9_combout\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \soma~15_combout\);

-- Location: LABCELL_X73_Y56_N3
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


