-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "04/27/2017 16:08:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CmpN IS
    PORT (
	input0 : IN std_logic_vector(3 DOWNTO 0);
	input1 : IN std_logic_vector(3 DOWNTO 0);
	equal : OUT std_logic;
	notEqual : OUT std_logic;
	ltSigned : OUT std_logic;
	ltUnsigned : OUT std_logic
	);
END CmpN;

-- Design Ports Information
-- equal	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notEqual	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ltSigned	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ltUnsigned	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input0[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input0[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input0[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input0[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[0]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CmpN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_input1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_equal : std_logic;
SIGNAL ww_notEqual : std_logic;
SIGNAL ww_ltSigned : std_logic;
SIGNAL ww_ltUnsigned : std_logic;
SIGNAL \equal~output_o\ : std_logic;
SIGNAL \notEqual~output_o\ : std_logic;
SIGNAL \ltSigned~output_o\ : std_logic;
SIGNAL \ltUnsigned~output_o\ : std_logic;
SIGNAL \input1[1]~input_o\ : std_logic;
SIGNAL \input0[2]~input_o\ : std_logic;
SIGNAL \input0[1]~input_o\ : std_logic;
SIGNAL \input1[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \input1[0]~input_o\ : std_logic;
SIGNAL \input0[0]~input_o\ : std_logic;
SIGNAL \input1[3]~input_o\ : std_logic;
SIGNAL \input0[3]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;

BEGIN

ww_input0 <= input0;
ww_input1 <= input1;
equal <= ww_equal;
notEqual <= ww_notEqual;
ltSigned <= ww_ltSigned;
ltUnsigned <= ww_ltUnsigned;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;

-- Location: IOOBUF_X0_Y32_N16
\equal~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \equal~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\notEqual~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~2_combout\,
	devoe => ww_devoe,
	o => \notEqual~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\ltSigned~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \ltSigned~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\ltUnsigned~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~0_combout\,
	devoe => ww_devoe,
	o => \ltUnsigned~output_o\);

-- Location: IOIBUF_X0_Y28_N15
\input1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(1),
	o => \input1[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\input0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input0(2),
	o => \input0[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\input0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input0(1),
	o => \input0[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\input1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(2),
	o => \input1[2]~input_o\);

-- Location: LCCOMB_X1_Y29_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\input1[1]~input_o\ & (\input0[1]~input_o\ & (\input0[2]~input_o\ $ (!\input1[2]~input_o\)))) # (!\input1[1]~input_o\ & (!\input0[1]~input_o\ & (\input0[2]~input_o\ $ (!\input1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datab => \input0[2]~input_o\,
	datac => \input0[1]~input_o\,
	datad => \input1[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y27_N22
\input1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(0),
	o => \input1[0]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\input0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input0(0),
	o => \input0[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\input1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(3),
	o => \input1[3]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\input0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input0(3),
	o => \input0[3]~input_o\);

-- Location: LCCOMB_X1_Y29_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\input1[0]~input_o\ & (\input0[0]~input_o\ & (\input1[3]~input_o\ $ (!\input0[3]~input_o\)))) # (!\input1[0]~input_o\ & (!\input0[0]~input_o\ & (\input1[3]~input_o\ $ (!\input0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input0[0]~input_o\,
	datac => \input1[3]~input_o\,
	datad => \input0[3]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y29_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y29_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\input0[2]~input_o\ & (\input1[1]~input_o\ & (!\input0[1]~input_o\ & \input1[2]~input_o\))) # (!\input0[2]~input_o\ & ((\input1[2]~input_o\) # ((\input1[1]~input_o\ & !\input0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datab => \input0[2]~input_o\,
	datac => \input0[1]~input_o\,
	datad => \input1[2]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y29_N24
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\) # ((\input1[0]~input_o\ & (\Equal0~0_combout\ & !\input0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \input0[0]~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y29_N10
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\input0[3]~input_o\ & ((\LessThan0~1_combout\) # (!\input1[3]~input_o\))) # (!\input0[3]~input_o\ & (!\input1[3]~input_o\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input0[3]~input_o\,
	datac => \input1[3]~input_o\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y29_N20
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\input0[3]~input_o\ & (\input1[3]~input_o\ & \LessThan0~1_combout\)) # (!\input0[3]~input_o\ & ((\input1[3]~input_o\) # (\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input0[3]~input_o\,
	datac => \input1[3]~input_o\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan1~0_combout\);

ww_equal <= \equal~output_o\;

ww_notEqual <= \notEqual~output_o\;

ww_ltSigned <= \ltSigned~output_o\;

ww_ltUnsigned <= \ltUnsigned~output_o\;
END structure;


