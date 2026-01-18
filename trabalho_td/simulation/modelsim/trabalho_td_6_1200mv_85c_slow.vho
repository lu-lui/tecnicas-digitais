-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/05/2026 17:37:04"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplicador IS
    PORT (
	a : IN std_logic_vector(2 DOWNTO 0);
	b : IN std_logic_vector(2 DOWNTO 0);
	m : OUT std_logic_vector(5 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- m[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(5 DOWNTO 0);
SIGNAL \soma1|soma1|c_out~combout\ : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \m[4]~output_o\ : std_logic;
SIGNAL \m[5]~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \m~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \soma1|soma1|s~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \soma1|soma2|s~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \soma2|soma1|s~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \soma2|soma1|c_out~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \soma1|soma2|c_out~0_combout\ : std_logic;
SIGNAL \soma2|soma2|s~combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \soma2|soma2|c_out~4_combout\ : std_logic;
SIGNAL \soma2|soma2|c_out~3_combout\ : std_logic;
SIGNAL \soma2|soma2|c_out~7_combout\ : std_logic;
SIGNAL \soma2|soma3|s~combout\ : std_logic;
SIGNAL \soma2|soma3|c_out~3_combout\ : std_logic;
SIGNAL \soma2|soma3|c_out~6_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
m <= ww_m;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X13_Y1_N30
\soma1|soma1|c_out\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma1|soma1|c_out~combout\ = (\a[1]~input_o\ & (\b[1]~input_o\ & (\a[0]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \soma1|soma1|c_out~combout\);

-- Location: IOOBUF_X12_Y0_N9
\m[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~0_combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\m[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \soma1|soma1|s~0_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\m[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \soma2|soma1|s~0_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\m[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \soma2|soma2|s~combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\m[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \soma2|soma3|s~combout\,
	devoe => ww_devoe,
	o => \m[4]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\m[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \soma2|soma3|c_out~6_combout\,
	devoe => ww_devoe,
	o => \m[5]~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X13_Y1_N24
\m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m~0_combout\ = (\a[0]~input_o\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \m~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X13_Y1_N2
\soma1|soma1|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma1|soma1|s~0_combout\ = (\a[1]~input_o\ & (\b[0]~input_o\ $ (((\b[1]~input_o\ & \a[0]~input_o\))))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \soma1|soma1|s~0_combout\);

-- Location: LCCOMB_X13_Y1_N12
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\b[1]~input_o\ & \a[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \comb~0_combout\);

-- Location: IOIBUF_X22_Y0_N8
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X13_Y1_N16
\soma1|soma2|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma1|soma2|s~combout\ = \soma1|soma1|c_out~combout\ $ (\comb~0_combout\ $ (((\a[0]~input_o\ & \b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma1|soma1|c_out~combout\,
	datab => \comb~0_combout\,
	datac => \a[0]~input_o\,
	datad => \b[2]~input_o\,
	combout => \soma1|soma2|s~combout\);

-- Location: IOIBUF_X20_Y0_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X13_Y1_N26
\soma2|soma1|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma1|s~0_combout\ = \soma1|soma2|s~combout\ $ (((\b[0]~input_o\ & \a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \soma1|soma2|s~combout\,
	datad => \a[2]~input_o\,
	combout => \soma2|soma1|s~0_combout\);

-- Location: LCCOMB_X13_Y1_N6
\comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\b[1]~input_o\ & \a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datad => \a[2]~input_o\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X13_Y1_N18
\soma2|soma1|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma1|c_out~0_combout\ = (\b[0]~input_o\ & (\soma1|soma2|s~combout\ & \a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \soma1|soma2|s~combout\,
	datad => \a[2]~input_o\,
	combout => \soma2|soma1|c_out~0_combout\);

-- Location: LCCOMB_X13_Y1_N4
\comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\a[1]~input_o\ & \b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datad => \b[2]~input_o\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X13_Y1_N28
\soma1|soma2|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma1|soma2|c_out~0_combout\ = (\soma1|soma1|c_out~combout\ & ((\comb~0_combout\) # ((\a[0]~input_o\ & \b[2]~input_o\)))) # (!\soma1|soma1|c_out~combout\ & (\comb~0_combout\ & (\a[0]~input_o\ & \b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma1|soma1|c_out~combout\,
	datab => \comb~0_combout\,
	datac => \a[0]~input_o\,
	datad => \b[2]~input_o\,
	combout => \soma1|soma2|c_out~0_combout\);

-- Location: LCCOMB_X13_Y1_N22
\soma2|soma2|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma2|s~combout\ = \comb~2_combout\ $ (\soma2|soma1|c_out~0_combout\ $ (\comb~1_combout\ $ (\soma1|soma2|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \soma2|soma1|c_out~0_combout\,
	datac => \comb~1_combout\,
	datad => \soma1|soma2|c_out~0_combout\,
	combout => \soma2|soma2|s~combout\);

-- Location: LCCOMB_X13_Y2_N16
\comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\a[2]~input_o\ & \b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datad => \b[2]~input_o\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X13_Y1_N20
\soma2|soma2|c_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma2|c_out~4_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\) # ((\a[0]~input_o\ & \b[2]~input_o\)))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & (\a[0]~input_o\ & \b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[2]~input_o\,
	combout => \soma2|soma2|c_out~4_combout\);

-- Location: LCCOMB_X13_Y1_N10
\soma2|soma2|c_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma2|c_out~3_combout\ = (\a[1]~input_o\ & (\b[1]~input_o\ & (!\a[0]~input_o\ & \b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[2]~input_o\,
	combout => \soma2|soma2|c_out~3_combout\);

-- Location: LCCOMB_X13_Y1_N14
\soma2|soma2|c_out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma2|c_out~7_combout\ = (\a[2]~input_o\ & ((\b[0]~input_o\ & (\soma2|soma2|c_out~4_combout\)) # (!\b[0]~input_o\ & ((\soma2|soma2|c_out~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \soma2|soma2|c_out~4_combout\,
	datac => \soma2|soma2|c_out~3_combout\,
	datad => \a[2]~input_o\,
	combout => \soma2|soma2|c_out~7_combout\);

-- Location: LCCOMB_X13_Y1_N8
\soma2|soma3|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma3|s~combout\ = \comb~3_combout\ $ (\soma2|soma2|c_out~7_combout\ $ (((\comb~1_combout\ & \soma1|soma2|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datab => \soma2|soma2|c_out~7_combout\,
	datac => \comb~1_combout\,
	datad => \soma1|soma2|c_out~0_combout\,
	combout => \soma2|soma3|s~combout\);

-- Location: LCCOMB_X13_Y1_N0
\soma2|soma3|c_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma3|c_out~3_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\) # ((\a[0]~input_o\ & \b[0]~input_o\)))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & (\a[0]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \soma2|soma3|c_out~3_combout\);

-- Location: LCCOMB_X13_Y2_N26
\soma2|soma3|c_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \soma2|soma3|c_out~6_combout\ = (\a[2]~input_o\ & (\soma2|soma3|c_out~3_combout\ & \b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \soma2|soma3|c_out~3_combout\,
	datad => \b[2]~input_o\,
	combout => \soma2|soma3|c_out~6_combout\);

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_m(4) <= \m[4]~output_o\;

ww_m(5) <= \m[5]~output_o\;
END structure;


