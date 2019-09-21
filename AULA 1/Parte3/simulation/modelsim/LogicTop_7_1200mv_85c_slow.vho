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

-- DATE "02/14/2017 18:04:45"

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

ENTITY 	LogicUnit IS
    PORT (
	input0 : IN std_logic;
	input1 : IN std_logic;
	invOut : OUT std_logic;
	andOut : OUT std_logic;
	orOut : OUT std_logic;
	xorOut : OUT std_logic;
	nandOut : OUT std_logic;
	norOut : OUT std_logic
	);
END LogicUnit;

-- Design Ports Information
-- invOut	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- andOut	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- orOut	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xorOut	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nandOut	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- norOut	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input0	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LogicUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input0 : std_logic;
SIGNAL ww_input1 : std_logic;
SIGNAL ww_invOut : std_logic;
SIGNAL ww_andOut : std_logic;
SIGNAL ww_orOut : std_logic;
SIGNAL ww_xorOut : std_logic;
SIGNAL ww_nandOut : std_logic;
SIGNAL ww_norOut : std_logic;
SIGNAL \invOut~output_o\ : std_logic;
SIGNAL \andOut~output_o\ : std_logic;
SIGNAL \orOut~output_o\ : std_logic;
SIGNAL \xorOut~output_o\ : std_logic;
SIGNAL \nandOut~output_o\ : std_logic;
SIGNAL \norOut~output_o\ : std_logic;
SIGNAL \input0~input_o\ : std_logic;
SIGNAL \input1~input_o\ : std_logic;
SIGNAL \andOut~0_combout\ : std_logic;
SIGNAL \orOut~0_combout\ : std_logic;
SIGNAL \xorOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_input0~input_o\ : std_logic;
SIGNAL \ALT_INV_orOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_andOut~0_combout\ : std_logic;

BEGIN

ww_input0 <= input0;
ww_input1 <= input1;
invOut <= ww_invOut;
andOut <= ww_andOut;
orOut <= ww_orOut;
xorOut <= ww_xorOut;
nandOut <= ww_nandOut;
norOut <= ww_norOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input0~input_o\ <= NOT \input0~input_o\;
\ALT_INV_orOut~0_combout\ <= NOT \orOut~0_combout\;
\ALT_INV_andOut~0_combout\ <= NOT \andOut~0_combout\;

-- Location: IOOBUF_X18_Y0_N23
\invOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_input0~input_o\,
	devoe => ww_devoe,
	o => \invOut~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\andOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \andOut~0_combout\,
	devoe => ww_devoe,
	o => \andOut~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\orOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \orOut~0_combout\,
	devoe => ww_devoe,
	o => \orOut~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\xorOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xorOut~0_combout\,
	devoe => ww_devoe,
	o => \xorOut~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\nandOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_andOut~0_combout\,
	devoe => ww_devoe,
	o => \nandOut~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\norOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_orOut~0_combout\,
	devoe => ww_devoe,
	o => \norOut~output_o\);

-- Location: IOIBUF_X18_Y0_N8
\input0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input0,
	o => \input0~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\input1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1,
	o => \input1~input_o\);

-- Location: LCCOMB_X18_Y1_N24
\andOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \andOut~0_combout\ = (\input1~input_o\ & \input0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1~input_o\,
	datad => \input0~input_o\,
	combout => \andOut~0_combout\);

-- Location: LCCOMB_X18_Y1_N18
\orOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \orOut~0_combout\ = (\input1~input_o\) # (\input0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1~input_o\,
	datad => \input0~input_o\,
	combout => \orOut~0_combout\);

-- Location: LCCOMB_X18_Y1_N20
\xorOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xorOut~0_combout\ = \input1~input_o\ $ (\input0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1~input_o\,
	datad => \input0~input_o\,
	combout => \xorOut~0_combout\);

ww_invOut <= \invOut~output_o\;

ww_andOut <= \andOut~output_o\;

ww_orOut <= \orOut~output_o\;

ww_xorOut <= \xorOut~output_o\;

ww_nandOut <= \nandOut~output_o\;

ww_norOut <= \norOut~output_o\;
END structure;


