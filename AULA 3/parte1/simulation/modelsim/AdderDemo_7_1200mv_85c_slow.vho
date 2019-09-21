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

-- DATE "03/07/2017 17:27:25"

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

ENTITY 	CenasDemo IS
    PORT (
	LEDR : OUT std_logic_vector(4 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END CenasDemo;

-- Design Ports Information
-- LEDR[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CenasDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \SW[8]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[8]~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|output[3]~1_combout\ : std_logic;
SIGNAL \inst1|output[3]~2_combout\ : std_logic;
SIGNAL \inst|bit3|s~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst1|output[2]~5_combout\ : std_logic;
SIGNAL \inst1|output[2]~6_combout\ : std_logic;
SIGNAL \inst|bit2|s~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst1|output[1]~9_combout\ : std_logic;
SIGNAL \inst1|output[1]~10_combout\ : std_logic;
SIGNAL \inst|bit1|s~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst1|output[0]~13_combout\ : std_logic;
SIGNAL \inst1|output[0]~14_combout\ : std_logic;
SIGNAL \inst|bit0|s~0_combout\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SW[8]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[8]~input_o\);

-- Location: IOOBUF_X74_Y0_N9
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit3|s~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit2|s~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit1|s~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bit0|s~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y42_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: CLKCTRL_G2
\SW[8]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[8]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[8]~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y44_N16
\inst1|output[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~1_combout\ = (GLOBAL(\SW[8]~inputclkctrl_outclk\) & (!\SW[7]~input_o\)) # (!GLOBAL(\SW[8]~inputclkctrl_outclk\) & ((\inst1|output[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[8]~inputclkctrl_outclk\,
	datad => \inst1|output[3]~1_combout\,
	combout => \inst1|output[3]~1_combout\);

-- Location: LCCOMB_X1_Y44_N24
\inst1|output[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~2_combout\ = (\SW[8]~input_o\ & ((!\SW[7]~input_o\))) # (!\SW[8]~input_o\ & (\inst1|output[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output[3]~1_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst1|output[3]~2_combout\);

-- Location: LCCOMB_X1_Y44_N0
\inst|bit3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit3|s~0_combout\ = \SW[3]~input_o\ $ (\SW[9]~input_o\ $ (\inst1|output[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[9]~input_o\,
	datad => \inst1|output[3]~2_combout\,
	combout => \inst|bit3|s~0_combout\);

-- Location: IOIBUF_X0_Y45_N22
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X1_Y44_N18
\inst1|output[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~5_combout\ = (GLOBAL(\SW[8]~inputclkctrl_outclk\) & (!\SW[6]~input_o\)) # (!GLOBAL(\SW[8]~inputclkctrl_outclk\) & ((\inst1|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[8]~inputclkctrl_outclk\,
	datad => \inst1|output[2]~5_combout\,
	combout => \inst1|output[2]~5_combout\);

-- Location: LCCOMB_X1_Y44_N10
\inst1|output[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~6_combout\ = (\SW[8]~input_o\ & ((!\SW[6]~input_o\))) # (!\SW[8]~input_o\ & (\inst1|output[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|output[2]~5_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst1|output[2]~6_combout\);

-- Location: LCCOMB_X1_Y44_N26
\inst|bit2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit2|s~0_combout\ = \SW[9]~input_o\ $ (\SW[2]~input_o\ $ (\inst1|output[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst1|output[2]~6_combout\,
	combout => \inst|bit2|s~0_combout\);

-- Location: IOIBUF_X0_Y44_N8
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X1_Y44_N20
\inst1|output[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~9_combout\ = (GLOBAL(\SW[8]~inputclkctrl_outclk\) & (!\SW[5]~input_o\)) # (!GLOBAL(\SW[8]~inputclkctrl_outclk\) & ((\inst1|output[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[8]~inputclkctrl_outclk\,
	datad => \inst1|output[1]~9_combout\,
	combout => \inst1|output[1]~9_combout\);

-- Location: LCCOMB_X1_Y44_N12
\inst1|output[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~10_combout\ = (\SW[8]~input_o\ & (!\SW[5]~input_o\)) # (!\SW[8]~input_o\ & ((\inst1|output[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|output[1]~9_combout\,
	datac => \SW[8]~input_o\,
	combout => \inst1|output[1]~10_combout\);

-- Location: LCCOMB_X1_Y44_N4
\inst|bit1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit1|s~0_combout\ = \SW[1]~input_o\ $ (\SW[9]~input_o\ $ (\inst1|output[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[9]~input_o\,
	datad => \inst1|output[1]~10_combout\,
	combout => \inst|bit1|s~0_combout\);

-- Location: IOIBUF_X0_Y44_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X1_Y44_N6
\inst1|output[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~13_combout\ = (GLOBAL(\SW[8]~inputclkctrl_outclk\) & (!\SW[4]~input_o\)) # (!GLOBAL(\SW[8]~inputclkctrl_outclk\) & ((\inst1|output[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[8]~inputclkctrl_outclk\,
	datad => \inst1|output[0]~13_combout\,
	combout => \inst1|output[0]~13_combout\);

-- Location: LCCOMB_X1_Y44_N14
\inst1|output[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~14_combout\ = (\SW[8]~input_o\ & ((!\SW[4]~input_o\))) # (!\SW[8]~input_o\ & (\inst1|output[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[0]~13_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst1|output[0]~14_combout\);

-- Location: LCCOMB_X1_Y44_N22
\inst|bit0|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bit0|s~0_combout\ = \SW[0]~input_o\ $ (\SW[9]~input_o\ $ (\inst1|output[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \inst1|output[0]~14_combout\,
	combout => \inst|bit0|s~0_combout\);

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


