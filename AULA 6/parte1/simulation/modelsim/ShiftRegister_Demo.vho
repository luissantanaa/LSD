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

-- DATE "03/28/2017 18:04:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShiftRegisterDemo IS
    PORT (
	clock_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ShiftRegisterDemo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegisterDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \freq|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq|s_divCounter~0_combout\ : std_logic;
SIGNAL \freq|s_divCounter~1_combout\ : std_logic;
SIGNAL \freq|s_divCounter~3_combout\ : std_logic;
SIGNAL \freq|s_divCounter~2_combout\ : std_logic;
SIGNAL \freq|LessThan0~0_combout\ : std_logic;
SIGNAL \freq|clkOut~0_combout\ : std_logic;
SIGNAL \freq|clkOut~feeder_combout\ : std_logic;
SIGNAL \freq|clkOut~q\ : std_logic;
SIGNAL \freq|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \shift|shiftreg[0]~feeder_combout\ : std_logic;
SIGNAL \shift|shiftreg[1]~feeder_combout\ : std_logic;
SIGNAL \shift|shiftreg[2]~feeder_combout\ : std_logic;
SIGNAL \shift|shiftreg[3]~feeder_combout\ : std_logic;
SIGNAL \shift|shiftreg[4]~feeder_combout\ : std_logic;
SIGNAL \shift|shiftreg[5]~feeder_combout\ : std_logic;
SIGNAL \shift|shiftreg[6]~feeder_combout\ : std_logic;
SIGNAL \shift|shiftreg[7]~feeder_combout\ : std_logic;
SIGNAL \shift|shiftreg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freq|s_divCounter\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock_50 <= clock_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\freq|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq|clkOut~q\);

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);

-- Location: IOOBUF_X9_Y0_N2
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|shiftreg\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|shiftreg\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|shiftreg\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|shiftreg\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|shiftreg\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|shiftreg\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|shiftreg\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift|shiftreg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G2
\clock_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y1_N4
\freq|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter~0_combout\ = (!\freq|s_divCounter\(0) & (((!\freq|s_divCounter\(1) & !\freq|s_divCounter\(2))) # (!\freq|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(3),
	datab => \freq|s_divCounter\(1),
	datac => \freq|s_divCounter\(0),
	datad => \freq|s_divCounter\(2),
	combout => \freq|s_divCounter~0_combout\);

-- Location: FF_X59_Y1_N5
\freq|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(0));

-- Location: LCCOMB_X59_Y1_N2
\freq|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter~1_combout\ = (!\freq|s_divCounter\(3) & (\freq|s_divCounter\(1) $ (\freq|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(3),
	datac => \freq|s_divCounter\(1),
	datad => \freq|s_divCounter\(0),
	combout => \freq|s_divCounter~1_combout\);

-- Location: FF_X59_Y1_N3
\freq|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(1));

-- Location: LCCOMB_X59_Y1_N30
\freq|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter~3_combout\ = (\freq|s_divCounter\(2) & (\freq|s_divCounter\(1) & (!\freq|s_divCounter\(3) & \freq|s_divCounter\(0)))) # (!\freq|s_divCounter\(2) & (!\freq|s_divCounter\(1) & (\freq|s_divCounter\(3) & !\freq|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(2),
	datab => \freq|s_divCounter\(1),
	datac => \freq|s_divCounter\(3),
	datad => \freq|s_divCounter\(0),
	combout => \freq|s_divCounter~3_combout\);

-- Location: FF_X59_Y1_N31
\freq|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(3));

-- Location: LCCOMB_X59_Y1_N26
\freq|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|s_divCounter~2_combout\ = (!\freq|s_divCounter\(3) & (\freq|s_divCounter\(2) $ (((\freq|s_divCounter\(1) & \freq|s_divCounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(3),
	datab => \freq|s_divCounter\(1),
	datac => \freq|s_divCounter\(2),
	datad => \freq|s_divCounter\(0),
	combout => \freq|s_divCounter~2_combout\);

-- Location: FF_X59_Y1_N27
\freq|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freq|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|s_divCounter\(2));

-- Location: LCCOMB_X59_Y1_N12
\freq|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|LessThan0~0_combout\ = (!\freq|s_divCounter\(0) & !\freq|s_divCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq|s_divCounter\(0),
	datad => \freq|s_divCounter\(1),
	combout => \freq|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y1_N18
\freq|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~0_combout\ = (\freq|LessThan0~0_combout\ & ((\freq|s_divCounter\(2) & ((!\freq|s_divCounter\(3)))) # (!\freq|s_divCounter\(2) & (\freq|clkOut~q\)))) # (!\freq|LessThan0~0_combout\ & (((\freq|clkOut~q\ & !\freq|s_divCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|s_divCounter\(2),
	datab => \freq|clkOut~q\,
	datac => \freq|s_divCounter\(3),
	datad => \freq|LessThan0~0_combout\,
	combout => \freq|clkOut~0_combout\);

-- Location: LCCOMB_X59_Y1_N28
\freq|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq|clkOut~feeder_combout\ = \freq|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq|clkOut~0_combout\,
	combout => \freq|clkOut~feeder_combout\);

-- Location: FF_X59_Y1_N29
\freq|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freq|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq|clkOut~q\);

-- Location: CLKCTRL_G16
\freq|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X11_Y0_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X10_Y1_N24
\shift|shiftreg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|shiftreg[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \shift|shiftreg[0]~feeder_combout\);

-- Location: FF_X10_Y1_N25
\shift|shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \shift|shiftreg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|shiftreg\(0));

-- Location: LCCOMB_X10_Y1_N6
\shift|shiftreg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|shiftreg[1]~feeder_combout\ = \shift|shiftreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift|shiftreg\(0),
	combout => \shift|shiftreg[1]~feeder_combout\);

-- Location: FF_X10_Y1_N7
\shift|shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \shift|shiftreg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|shiftreg\(1));

-- Location: LCCOMB_X10_Y1_N20
\shift|shiftreg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|shiftreg[2]~feeder_combout\ = \shift|shiftreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift|shiftreg\(1),
	combout => \shift|shiftreg[2]~feeder_combout\);

-- Location: FF_X10_Y1_N21
\shift|shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \shift|shiftreg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|shiftreg\(2));

-- Location: LCCOMB_X10_Y1_N18
\shift|shiftreg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|shiftreg[3]~feeder_combout\ = \shift|shiftreg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift|shiftreg\(2),
	combout => \shift|shiftreg[3]~feeder_combout\);

-- Location: FF_X10_Y1_N19
\shift|shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \shift|shiftreg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|shiftreg\(3));

-- Location: LCCOMB_X10_Y1_N28
\shift|shiftreg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|shiftreg[4]~feeder_combout\ = \shift|shiftreg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift|shiftreg\(3),
	combout => \shift|shiftreg[4]~feeder_combout\);

-- Location: FF_X10_Y1_N29
\shift|shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \shift|shiftreg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|shiftreg\(4));

-- Location: LCCOMB_X10_Y1_N10
\shift|shiftreg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|shiftreg[5]~feeder_combout\ = \shift|shiftreg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift|shiftreg\(4),
	combout => \shift|shiftreg[5]~feeder_combout\);

-- Location: FF_X10_Y1_N11
\shift|shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \shift|shiftreg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|shiftreg\(5));

-- Location: LCCOMB_X10_Y1_N12
\shift|shiftreg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|shiftreg[6]~feeder_combout\ = \shift|shiftreg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift|shiftreg\(5),
	combout => \shift|shiftreg[6]~feeder_combout\);

-- Location: FF_X10_Y1_N13
\shift|shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \shift|shiftreg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|shiftreg\(6));

-- Location: LCCOMB_X10_Y1_N30
\shift|shiftreg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift|shiftreg[7]~feeder_combout\ = \shift|shiftreg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift|shiftreg\(6),
	combout => \shift|shiftreg[7]~feeder_combout\);

-- Location: FF_X10_Y1_N31
\shift|shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq|clkOut~clkctrl_outclk\,
	d => \shift|shiftreg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|shiftreg\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


