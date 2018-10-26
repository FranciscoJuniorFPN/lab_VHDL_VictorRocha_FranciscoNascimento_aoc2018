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

-- DATE "10/26/2018 18:11:30"

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

ENTITY 	MULTIPLEXADOR_16BITS IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	c : IN std_logic_vector(15 DOWNTO 0);
	d : IN std_logic_vector(15 DOWNTO 0);
	selector : IN std_logic_vector(1 DOWNTO 0);
	q : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END MULTIPLEXADOR_16BITS;

ARCHITECTURE structure OF MULTIPLEXADOR_16BITS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_selector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(15 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \selector[0]~input_o\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \selector[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \c[0]~input_o\ : std_logic;
SIGNAL \G00|x~0_combout\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \c[1]~input_o\ : std_logic;
SIGNAL \G01|x~0_combout\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \c[2]~input_o\ : std_logic;
SIGNAL \G02|x~0_combout\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \c[3]~input_o\ : std_logic;
SIGNAL \G03|x~0_combout\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \c[4]~input_o\ : std_logic;
SIGNAL \G04|x~0_combout\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \c[5]~input_o\ : std_logic;
SIGNAL \G05|x~0_combout\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \c[6]~input_o\ : std_logic;
SIGNAL \G06|x~0_combout\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \c[7]~input_o\ : std_logic;
SIGNAL \G07|x~0_combout\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \c[8]~input_o\ : std_logic;
SIGNAL \G08|x~0_combout\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \c[9]~input_o\ : std_logic;
SIGNAL \G09|x~0_combout\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \c[10]~input_o\ : std_logic;
SIGNAL \G10|x~0_combout\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \c[11]~input_o\ : std_logic;
SIGNAL \G11|x~0_combout\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \c[12]~input_o\ : std_logic;
SIGNAL \G12|x~0_combout\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \c[13]~input_o\ : std_logic;
SIGNAL \G13|x~0_combout\ : std_logic;
SIGNAL \d[14]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \c[14]~input_o\ : std_logic;
SIGNAL \G14|x~0_combout\ : std_logic;
SIGNAL \d[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \c[15]~input_o\ : std_logic;
SIGNAL \G15|x~0_combout\ : std_logic;
SIGNAL \ALT_INV_d[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_selector[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_selector[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_c[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_selector <= selector;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d[8]~input_o\ <= NOT \d[8]~input_o\;
\ALT_INV_c[7]~input_o\ <= NOT \c[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_d[7]~input_o\ <= NOT \d[7]~input_o\;
\ALT_INV_c[6]~input_o\ <= NOT \c[6]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_d[6]~input_o\ <= NOT \d[6]~input_o\;
\ALT_INV_c[5]~input_o\ <= NOT \c[5]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_d[5]~input_o\ <= NOT \d[5]~input_o\;
\ALT_INV_c[4]~input_o\ <= NOT \c[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_d[4]~input_o\ <= NOT \d[4]~input_o\;
\ALT_INV_c[3]~input_o\ <= NOT \c[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_d[3]~input_o\ <= NOT \d[3]~input_o\;
\ALT_INV_c[2]~input_o\ <= NOT \c[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_d[2]~input_o\ <= NOT \d[2]~input_o\;
\ALT_INV_c[1]~input_o\ <= NOT \c[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_d[1]~input_o\ <= NOT \d[1]~input_o\;
\ALT_INV_c[0]~input_o\ <= NOT \c[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_selector[1]~input_o\ <= NOT \selector[1]~input_o\;
\ALT_INV_d[0]~input_o\ <= NOT \d[0]~input_o\;
\ALT_INV_selector[0]~input_o\ <= NOT \selector[0]~input_o\;
\ALT_INV_c[15]~input_o\ <= NOT \c[15]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_d[15]~input_o\ <= NOT \d[15]~input_o\;
\ALT_INV_c[14]~input_o\ <= NOT \c[14]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\ALT_INV_d[14]~input_o\ <= NOT \d[14]~input_o\;
\ALT_INV_c[13]~input_o\ <= NOT \c[13]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\ALT_INV_d[13]~input_o\ <= NOT \d[13]~input_o\;
\ALT_INV_c[12]~input_o\ <= NOT \c[12]~input_o\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\ALT_INV_d[12]~input_o\ <= NOT \d[12]~input_o\;
\ALT_INV_c[11]~input_o\ <= NOT \c[11]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\ALT_INV_d[11]~input_o\ <= NOT \d[11]~input_o\;
\ALT_INV_c[10]~input_o\ <= NOT \c[10]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\ALT_INV_d[10]~input_o\ <= NOT \d[10]~input_o\;
\ALT_INV_c[9]~input_o\ <= NOT \c[9]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_d[9]~input_o\ <= NOT \d[9]~input_o\;
\ALT_INV_c[8]~input_o\ <= NOT \c[8]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;

\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G00|x~0_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G01|x~0_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G02|x~0_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G03|x~0_combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

\q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G04|x~0_combout\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

\q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G05|x~0_combout\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

\q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G06|x~0_combout\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

\q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G07|x~0_combout\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

\q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G08|x~0_combout\,
	devoe => ww_devoe,
	o => \q[8]~output_o\);

\q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G09|x~0_combout\,
	devoe => ww_devoe,
	o => \q[9]~output_o\);

\q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G10|x~0_combout\,
	devoe => ww_devoe,
	o => \q[10]~output_o\);

\q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|x~0_combout\,
	devoe => ww_devoe,
	o => \q[11]~output_o\);

\q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G12|x~0_combout\,
	devoe => ww_devoe,
	o => \q[12]~output_o\);

\q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G13|x~0_combout\,
	devoe => ww_devoe,
	o => \q[13]~output_o\);

\q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G14|x~0_combout\,
	devoe => ww_devoe,
	o => \q[14]~output_o\);

\q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G15|x~0_combout\,
	devoe => ww_devoe,
	o => \q[15]~output_o\);

\selector[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(0),
	o => \selector[0]~input_o\);

\d[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

\selector[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(1),
	o => \selector[1]~input_o\);

\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\c[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

\G00|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G00|x~0_combout\ = ( \a[0]~input_o\ & ( \c[0]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[0]~input_o\))) # (\selector[1]~input_o\ & (\d[0]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( \c[0]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (((\selector[1]~input_o\)))) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[0]~input_o\))) # (\selector[1]~input_o\ & (\d[0]~input_o\)))) ) ) ) # ( \a[0]~input_o\ & ( !\c[0]~input_o\ & ( (!\selector[0]~input_o\ & (((!\selector[1]~input_o\)))) 
-- # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[0]~input_o\))) # (\selector[1]~input_o\ & (\d[0]~input_o\)))) ) ) ) # ( !\a[0]~input_o\ & ( !\c[0]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[0]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_d[0]~input_o\,
	datac => \ALT_INV_selector[1]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_c[0]~input_o\,
	combout => \G00|x~0_combout\);

\d[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\c[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

\G01|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G01|x~0_combout\ = ( \a[1]~input_o\ & ( \c[1]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[1]~input_o\))) # (\selector[1]~input_o\ & (\d[1]~input_o\))) ) ) ) # ( !\a[1]~input_o\ & ( \c[1]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[1]~input_o\))) # (\selector[1]~input_o\ & (\d[1]~input_o\)))) ) ) ) # ( \a[1]~input_o\ & ( !\c[1]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[1]~input_o\))) # (\selector[1]~input_o\ & (\d[1]~input_o\)))) ) ) ) # ( !\a[1]~input_o\ & ( !\c[1]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[1]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_c[1]~input_o\,
	combout => \G01|x~0_combout\);

\d[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\c[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(2),
	o => \c[2]~input_o\);

\G02|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G02|x~0_combout\ = ( \a[2]~input_o\ & ( \c[2]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[2]~input_o\))) # (\selector[1]~input_o\ & (\d[2]~input_o\))) ) ) ) # ( !\a[2]~input_o\ & ( \c[2]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[2]~input_o\))) # (\selector[1]~input_o\ & (\d[2]~input_o\)))) ) ) ) # ( \a[2]~input_o\ & ( !\c[2]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[2]~input_o\))) # (\selector[1]~input_o\ & (\d[2]~input_o\)))) ) ) ) # ( !\a[2]~input_o\ & ( !\c[2]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[2]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[2]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	datae => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_c[2]~input_o\,
	combout => \G02|x~0_combout\);

\d[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\c[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(3),
	o => \c[3]~input_o\);

\G03|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G03|x~0_combout\ = ( \a[3]~input_o\ & ( \c[3]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[3]~input_o\))) # (\selector[1]~input_o\ & (\d[3]~input_o\))) ) ) ) # ( !\a[3]~input_o\ & ( \c[3]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[3]~input_o\))) # (\selector[1]~input_o\ & (\d[3]~input_o\)))) ) ) ) # ( \a[3]~input_o\ & ( !\c[3]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[3]~input_o\))) # (\selector[1]~input_o\ & (\d[3]~input_o\)))) ) ) ) # ( !\a[3]~input_o\ & ( !\c[3]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[3]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[3]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_c[3]~input_o\,
	combout => \G03|x~0_combout\);

\d[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

\c[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(4),
	o => \c[4]~input_o\);

\G04|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G04|x~0_combout\ = ( \a[4]~input_o\ & ( \c[4]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[4]~input_o\))) # (\selector[1]~input_o\ & (\d[4]~input_o\))) ) ) ) # ( !\a[4]~input_o\ & ( \c[4]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[4]~input_o\))) # (\selector[1]~input_o\ & (\d[4]~input_o\)))) ) ) ) # ( \a[4]~input_o\ & ( !\c[4]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[4]~input_o\))) # (\selector[1]~input_o\ & (\d[4]~input_o\)))) ) ) ) # ( !\a[4]~input_o\ & ( !\c[4]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[4]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[4]~input_o\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_a[4]~input_o\,
	dataf => \ALT_INV_c[4]~input_o\,
	combout => \G04|x~0_combout\);

\d[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

\c[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(5),
	o => \c[5]~input_o\);

\G05|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G05|x~0_combout\ = ( \a[5]~input_o\ & ( \c[5]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[5]~input_o\))) # (\selector[1]~input_o\ & (\d[5]~input_o\))) ) ) ) # ( !\a[5]~input_o\ & ( \c[5]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[5]~input_o\))) # (\selector[1]~input_o\ & (\d[5]~input_o\)))) ) ) ) # ( \a[5]~input_o\ & ( !\c[5]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[5]~input_o\))) # (\selector[1]~input_o\ & (\d[5]~input_o\)))) ) ) ) # ( !\a[5]~input_o\ & ( !\c[5]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[5]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[5]~input_o\,
	datad => \ALT_INV_b[5]~input_o\,
	datae => \ALT_INV_a[5]~input_o\,
	dataf => \ALT_INV_c[5]~input_o\,
	combout => \G05|x~0_combout\);

\d[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

\c[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(6),
	o => \c[6]~input_o\);

\G06|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G06|x~0_combout\ = ( \a[6]~input_o\ & ( \c[6]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[6]~input_o\))) # (\selector[1]~input_o\ & (\d[6]~input_o\))) ) ) ) # ( !\a[6]~input_o\ & ( \c[6]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[6]~input_o\))) # (\selector[1]~input_o\ & (\d[6]~input_o\)))) ) ) ) # ( \a[6]~input_o\ & ( !\c[6]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[6]~input_o\))) # (\selector[1]~input_o\ & (\d[6]~input_o\)))) ) ) ) # ( !\a[6]~input_o\ & ( !\c[6]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[6]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[6]~input_o\,
	datad => \ALT_INV_b[6]~input_o\,
	datae => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_c[6]~input_o\,
	combout => \G06|x~0_combout\);

\d[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

\c[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(7),
	o => \c[7]~input_o\);

\G07|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G07|x~0_combout\ = ( \a[7]~input_o\ & ( \c[7]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[7]~input_o\))) # (\selector[1]~input_o\ & (\d[7]~input_o\))) ) ) ) # ( !\a[7]~input_o\ & ( \c[7]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[7]~input_o\))) # (\selector[1]~input_o\ & (\d[7]~input_o\)))) ) ) ) # ( \a[7]~input_o\ & ( !\c[7]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[7]~input_o\))) # (\selector[1]~input_o\ & (\d[7]~input_o\)))) ) ) ) # ( !\a[7]~input_o\ & ( !\c[7]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[7]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[7]~input_o\,
	datad => \ALT_INV_b[7]~input_o\,
	datae => \ALT_INV_a[7]~input_o\,
	dataf => \ALT_INV_c[7]~input_o\,
	combout => \G07|x~0_combout\);

\d[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

\c[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(8),
	o => \c[8]~input_o\);

\G08|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G08|x~0_combout\ = ( \a[8]~input_o\ & ( \c[8]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[8]~input_o\))) # (\selector[1]~input_o\ & (\d[8]~input_o\))) ) ) ) # ( !\a[8]~input_o\ & ( \c[8]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[8]~input_o\))) # (\selector[1]~input_o\ & (\d[8]~input_o\)))) ) ) ) # ( \a[8]~input_o\ & ( !\c[8]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[8]~input_o\))) # (\selector[1]~input_o\ & (\d[8]~input_o\)))) ) ) ) # ( !\a[8]~input_o\ & ( !\c[8]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[8]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[8]~input_o\,
	datad => \ALT_INV_b[8]~input_o\,
	datae => \ALT_INV_a[8]~input_o\,
	dataf => \ALT_INV_c[8]~input_o\,
	combout => \G08|x~0_combout\);

\d[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

\c[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(9),
	o => \c[9]~input_o\);

\G09|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G09|x~0_combout\ = ( \a[9]~input_o\ & ( \c[9]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[9]~input_o\))) # (\selector[1]~input_o\ & (\d[9]~input_o\))) ) ) ) # ( !\a[9]~input_o\ & ( \c[9]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[9]~input_o\))) # (\selector[1]~input_o\ & (\d[9]~input_o\)))) ) ) ) # ( \a[9]~input_o\ & ( !\c[9]~input_o\ & ( (!\selector[0]~input_o\ & (!\selector[1]~input_o\)) # 
-- (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[9]~input_o\))) # (\selector[1]~input_o\ & (\d[9]~input_o\)))) ) ) ) # ( !\a[9]~input_o\ & ( !\c[9]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[9]~input_o\))) # 
-- (\selector[1]~input_o\ & (\d[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[9]~input_o\,
	datad => \ALT_INV_b[9]~input_o\,
	datae => \ALT_INV_a[9]~input_o\,
	dataf => \ALT_INV_c[9]~input_o\,
	combout => \G09|x~0_combout\);

\d[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

\c[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(10),
	o => \c[10]~input_o\);

\G10|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G10|x~0_combout\ = ( \a[10]~input_o\ & ( \c[10]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[10]~input_o\))) # (\selector[1]~input_o\ & (\d[10]~input_o\))) ) ) ) # ( !\a[10]~input_o\ & ( \c[10]~input_o\ & ( 
-- (!\selector[0]~input_o\ & (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[10]~input_o\))) # (\selector[1]~input_o\ & (\d[10]~input_o\)))) ) ) ) # ( \a[10]~input_o\ & ( !\c[10]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (!\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[10]~input_o\))) # (\selector[1]~input_o\ & (\d[10]~input_o\)))) ) ) ) # ( !\a[10]~input_o\ & ( !\c[10]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & 
-- ((\b[10]~input_o\))) # (\selector[1]~input_o\ & (\d[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[10]~input_o\,
	datad => \ALT_INV_b[10]~input_o\,
	datae => \ALT_INV_a[10]~input_o\,
	dataf => \ALT_INV_c[10]~input_o\,
	combout => \G10|x~0_combout\);

\d[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

\c[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(11),
	o => \c[11]~input_o\);

\G11|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|x~0_combout\ = ( \a[11]~input_o\ & ( \c[11]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[11]~input_o\))) # (\selector[1]~input_o\ & (\d[11]~input_o\))) ) ) ) # ( !\a[11]~input_o\ & ( \c[11]~input_o\ & ( 
-- (!\selector[0]~input_o\ & (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[11]~input_o\))) # (\selector[1]~input_o\ & (\d[11]~input_o\)))) ) ) ) # ( \a[11]~input_o\ & ( !\c[11]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (!\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[11]~input_o\))) # (\selector[1]~input_o\ & (\d[11]~input_o\)))) ) ) ) # ( !\a[11]~input_o\ & ( !\c[11]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & 
-- ((\b[11]~input_o\))) # (\selector[1]~input_o\ & (\d[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[11]~input_o\,
	datad => \ALT_INV_b[11]~input_o\,
	datae => \ALT_INV_a[11]~input_o\,
	dataf => \ALT_INV_c[11]~input_o\,
	combout => \G11|x~0_combout\);

\d[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

\c[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(12),
	o => \c[12]~input_o\);

\G12|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G12|x~0_combout\ = ( \a[12]~input_o\ & ( \c[12]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[12]~input_o\))) # (\selector[1]~input_o\ & (\d[12]~input_o\))) ) ) ) # ( !\a[12]~input_o\ & ( \c[12]~input_o\ & ( 
-- (!\selector[0]~input_o\ & (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[12]~input_o\))) # (\selector[1]~input_o\ & (\d[12]~input_o\)))) ) ) ) # ( \a[12]~input_o\ & ( !\c[12]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (!\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[12]~input_o\))) # (\selector[1]~input_o\ & (\d[12]~input_o\)))) ) ) ) # ( !\a[12]~input_o\ & ( !\c[12]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & 
-- ((\b[12]~input_o\))) # (\selector[1]~input_o\ & (\d[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[12]~input_o\,
	datad => \ALT_INV_b[12]~input_o\,
	datae => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_c[12]~input_o\,
	combout => \G12|x~0_combout\);

\d[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

\c[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(13),
	o => \c[13]~input_o\);

\G13|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G13|x~0_combout\ = ( \a[13]~input_o\ & ( \c[13]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[13]~input_o\))) # (\selector[1]~input_o\ & (\d[13]~input_o\))) ) ) ) # ( !\a[13]~input_o\ & ( \c[13]~input_o\ & ( 
-- (!\selector[0]~input_o\ & (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[13]~input_o\))) # (\selector[1]~input_o\ & (\d[13]~input_o\)))) ) ) ) # ( \a[13]~input_o\ & ( !\c[13]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (!\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[13]~input_o\))) # (\selector[1]~input_o\ & (\d[13]~input_o\)))) ) ) ) # ( !\a[13]~input_o\ & ( !\c[13]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & 
-- ((\b[13]~input_o\))) # (\selector[1]~input_o\ & (\d[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[13]~input_o\,
	datad => \ALT_INV_b[13]~input_o\,
	datae => \ALT_INV_a[13]~input_o\,
	dataf => \ALT_INV_c[13]~input_o\,
	combout => \G13|x~0_combout\);

\d[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(14),
	o => \d[14]~input_o\);

\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

\c[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(14),
	o => \c[14]~input_o\);

\G14|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G14|x~0_combout\ = ( \a[14]~input_o\ & ( \c[14]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[14]~input_o\))) # (\selector[1]~input_o\ & (\d[14]~input_o\))) ) ) ) # ( !\a[14]~input_o\ & ( \c[14]~input_o\ & ( 
-- (!\selector[0]~input_o\ & (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[14]~input_o\))) # (\selector[1]~input_o\ & (\d[14]~input_o\)))) ) ) ) # ( \a[14]~input_o\ & ( !\c[14]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (!\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[14]~input_o\))) # (\selector[1]~input_o\ & (\d[14]~input_o\)))) ) ) ) # ( !\a[14]~input_o\ & ( !\c[14]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & 
-- ((\b[14]~input_o\))) # (\selector[1]~input_o\ & (\d[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[14]~input_o\,
	datad => \ALT_INV_b[14]~input_o\,
	datae => \ALT_INV_a[14]~input_o\,
	dataf => \ALT_INV_c[14]~input_o\,
	combout => \G14|x~0_combout\);

\d[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(15),
	o => \d[15]~input_o\);

\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

\c[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(15),
	o => \c[15]~input_o\);

\G15|x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G15|x~0_combout\ = ( \a[15]~input_o\ & ( \c[15]~input_o\ & ( (!\selector[0]~input_o\) # ((!\selector[1]~input_o\ & ((\b[15]~input_o\))) # (\selector[1]~input_o\ & (\d[15]~input_o\))) ) ) ) # ( !\a[15]~input_o\ & ( \c[15]~input_o\ & ( 
-- (!\selector[0]~input_o\ & (\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[15]~input_o\))) # (\selector[1]~input_o\ & (\d[15]~input_o\)))) ) ) ) # ( \a[15]~input_o\ & ( !\c[15]~input_o\ & ( (!\selector[0]~input_o\ & 
-- (!\selector[1]~input_o\)) # (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & ((\b[15]~input_o\))) # (\selector[1]~input_o\ & (\d[15]~input_o\)))) ) ) ) # ( !\a[15]~input_o\ & ( !\c[15]~input_o\ & ( (\selector[0]~input_o\ & ((!\selector[1]~input_o\ & 
-- ((\b[15]~input_o\))) # (\selector[1]~input_o\ & (\d[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selector[0]~input_o\,
	datab => \ALT_INV_selector[1]~input_o\,
	datac => \ALT_INV_d[15]~input_o\,
	datad => \ALT_INV_b[15]~input_o\,
	datae => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_c[15]~input_o\,
	combout => \G15|x~0_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(15) <= \q[15]~output_o\;
END structure;


