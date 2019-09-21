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

-- DATE "03/30/2017 17:21:40"

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

ENTITY 	parking_Phase4 IS
    PORT (
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(1 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 8);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END parking_Phase4;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parking_Phase4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \count|s_count[30]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \count|Add1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \count|Add1~1\ : std_logic;
SIGNAL \count|Add1~2_combout\ : std_logic;
SIGNAL \count|Add1~3\ : std_logic;
SIGNAL \count|Add1~4_combout\ : std_logic;
SIGNAL \count|Add1~5\ : std_logic;
SIGNAL \count|Add1~6_combout\ : std_logic;
SIGNAL \count|Add1~7\ : std_logic;
SIGNAL \count|Add1~8_combout\ : std_logic;
SIGNAL \count|Add1~9\ : std_logic;
SIGNAL \count|Add1~10_combout\ : std_logic;
SIGNAL \count|Add1~11\ : std_logic;
SIGNAL \count|Add1~12_combout\ : std_logic;
SIGNAL \count|Add1~13\ : std_logic;
SIGNAL \count|Add1~14_combout\ : std_logic;
SIGNAL \count|Add1~15\ : std_logic;
SIGNAL \count|Add1~16_combout\ : std_logic;
SIGNAL \count|Add1~17\ : std_logic;
SIGNAL \count|Add1~18_combout\ : std_logic;
SIGNAL \count|Add1~19\ : std_logic;
SIGNAL \count|Add1~20_combout\ : std_logic;
SIGNAL \count|LessThan1~0_combout\ : std_logic;
SIGNAL \count|Add1~21\ : std_logic;
SIGNAL \count|Add1~22_combout\ : std_logic;
SIGNAL \count|Add1~23\ : std_logic;
SIGNAL \count|Add1~24_combout\ : std_logic;
SIGNAL \count|Add1~25\ : std_logic;
SIGNAL \count|Add1~26_combout\ : std_logic;
SIGNAL \count|Add1~27\ : std_logic;
SIGNAL \count|Add1~28_combout\ : std_logic;
SIGNAL \count|Add1~29\ : std_logic;
SIGNAL \count|Add1~30_combout\ : std_logic;
SIGNAL \count|Add1~31\ : std_logic;
SIGNAL \count|Add1~32_combout\ : std_logic;
SIGNAL \count|Add1~33\ : std_logic;
SIGNAL \count|Add1~34_combout\ : std_logic;
SIGNAL \count|Add1~35\ : std_logic;
SIGNAL \count|Add1~36_combout\ : std_logic;
SIGNAL \count|LessThan1~2_combout\ : std_logic;
SIGNAL \count|LessThan1~1_combout\ : std_logic;
SIGNAL \count|Add1~37\ : std_logic;
SIGNAL \count|Add1~38_combout\ : std_logic;
SIGNAL \count|Add1~39\ : std_logic;
SIGNAL \count|Add1~40_combout\ : std_logic;
SIGNAL \count|Add1~41\ : std_logic;
SIGNAL \count|Add1~42_combout\ : std_logic;
SIGNAL \count|Add1~43\ : std_logic;
SIGNAL \count|Add1~44_combout\ : std_logic;
SIGNAL \count|LessThan1~3_combout\ : std_logic;
SIGNAL \count|LessThan1~4_combout\ : std_logic;
SIGNAL \count|Add1~45\ : std_logic;
SIGNAL \count|Add1~46_combout\ : std_logic;
SIGNAL \count|Add1~47\ : std_logic;
SIGNAL \count|Add1~48_combout\ : std_logic;
SIGNAL \count|Add1~49\ : std_logic;
SIGNAL \count|Add1~50_combout\ : std_logic;
SIGNAL \count|Add1~51\ : std_logic;
SIGNAL \count|Add1~52_combout\ : std_logic;
SIGNAL \count|LessThan1~5_combout\ : std_logic;
SIGNAL \count|Add1~53\ : std_logic;
SIGNAL \count|Add1~54_combout\ : std_logic;
SIGNAL \count|LessThan1~6_combout\ : std_logic;
SIGNAL \count|LessThan1~7_combout\ : std_logic;
SIGNAL \count|LessThan1~8_combout\ : std_logic;
SIGNAL \count|LessThan1~9_combout\ : std_logic;
SIGNAL \count|Add1~55\ : std_logic;
SIGNAL \count|Add1~56_combout\ : std_logic;
SIGNAL \count|Add1~57\ : std_logic;
SIGNAL \count|Add1~58_combout\ : std_logic;
SIGNAL \count|Add1~59\ : std_logic;
SIGNAL \count|Add1~60_combout\ : std_logic;
SIGNAL \count|s_count[30]~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \count|s_count[30]~2_combout\ : std_logic;
SIGNAL \count|LessThan0~2_combout\ : std_logic;
SIGNAL \count|LessThan0~0_combout\ : std_logic;
SIGNAL \count|LessThan0~1_combout\ : std_logic;
SIGNAL \count|s_count[30]~1_combout\ : std_logic;
SIGNAL \count|s_count[30]~3_combout\ : std_logic;
SIGNAL \count|s_count[30]~3clkctrl_outclk\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ : std_logic;
SIGNAL \bin3|decOut_n[0]~5_combout\ : std_logic;
SIGNAL \count|full~0_combout\ : std_logic;
SIGNAL \count|full~1_combout\ : std_logic;
SIGNAL \count|full~2_combout\ : std_logic;
SIGNAL \count|full~combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \bin3|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \bin3|decOut_n~4_combout\ : std_logic;
SIGNAL \bin3|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \bin3|decOut_n[0]~7_combout\ : std_logic;
SIGNAL \bin3|decOut_n[0]~9_combout\ : std_logic;
SIGNAL \bin3|decOut_n~10_combout\ : std_logic;
SIGNAL \bin3|decOut_n~11_combout\ : std_logic;
SIGNAL \bin3|decOut_n[2]~12_combout\ : std_logic;
SIGNAL \bin3|decOut_n~13_combout\ : std_logic;
SIGNAL \bin3|decOut_n[3]~14_combout\ : std_logic;
SIGNAL \bin3|decOut_n[3]~15_combout\ : std_logic;
SIGNAL \bin3|decOut_n~16_combout\ : std_logic;
SIGNAL \bin3|decOut_n~17_combout\ : std_logic;
SIGNAL \bin3|decOut_n[5]~20_combout\ : std_logic;
SIGNAL \bin3|decOut_n[5]~18_combout\ : std_logic;
SIGNAL \bin3|decOut_n[6]~19_combout\ : std_logic;
SIGNAL \bin2|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \bin2|decOut_n[4]~1_combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|op_2~1_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \count|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \count|ALT_INV_full~combout\ : std_logic;
SIGNAL \BCD|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~8_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count|s_count[30]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \count|s_count[30]~3_combout\);
\count|ALT_INV_full~combout\ <= NOT \count|full~combout\;
\BCD|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~8_combout\ <= NOT \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin3|decOut_n[0]~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin3|decOut_n~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin3|decOut_n[2]~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin3|decOut_n[3]~15_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin3|decOut_n~17_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin3|decOut_n[5]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin3|decOut_n[6]~19_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin2|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|full~combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|full~combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin2|decOut_n[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin2|decOut_n[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count|ALT_INV_full~combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: LCCOMB_X114_Y40_N2
\count|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~0_combout\ = \count|s_count\(0) $ (VCC)
-- \count|Add1~1\ = CARRY(\count|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(0),
	datad => VCC,
	combout => \count|Add1~0_combout\,
	cout => \count|Add1~1\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y40_N4
\count|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~2_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(1) & (!\count|Add1~1\)) # (!\count|s_count\(1) & ((\count|Add1~1\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(1) & (\count|Add1~1\ & VCC)) # (!\count|s_count\(1) & 
-- (!\count|Add1~1\))))
-- \count|Add1~3\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~1\) # (!\count|s_count\(1)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(1) & !\count|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(1),
	datad => VCC,
	cin => \count|Add1~1\,
	combout => \count|Add1~2_combout\,
	cout => \count|Add1~3\);

-- Location: LCCOMB_X111_Y40_N12
\count|s_count[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(1) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|Add1~2_combout\))) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(1),
	datac => \count|Add1~2_combout\,
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(1));

-- Location: LCCOMB_X114_Y40_N6
\count|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~4_combout\ = ((\count|s_count\(2) $ (\KEY[0]~input_o\ $ (\count|Add1~3\)))) # (GND)
-- \count|Add1~5\ = CARRY((\count|s_count\(2) & ((!\count|Add1~3\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(2) & (!\KEY[0]~input_o\ & !\count|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(2),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~3\,
	combout => \count|Add1~4_combout\,
	cout => \count|Add1~5\);

-- Location: LCCOMB_X111_Y40_N4
\count|s_count[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(2) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~4_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~4_combout\,
	datac => \count|s_count\(2),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(2));

-- Location: LCCOMB_X114_Y40_N8
\count|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~6_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(3) & (!\count|Add1~5\)) # (!\count|s_count\(3) & ((\count|Add1~5\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(3) & (\count|Add1~5\ & VCC)) # (!\count|s_count\(3) & 
-- (!\count|Add1~5\))))
-- \count|Add1~7\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~5\) # (!\count|s_count\(3)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(3) & !\count|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(3),
	datad => VCC,
	cin => \count|Add1~5\,
	combout => \count|Add1~6_combout\,
	cout => \count|Add1~7\);

-- Location: LCCOMB_X111_Y40_N8
\count|s_count[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(3) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~6_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~6_combout\,
	datac => \count|s_count\(3),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(3));

-- Location: LCCOMB_X114_Y40_N10
\count|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~8_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(4) $ (\count|Add1~7\)))) # (GND)
-- \count|Add1~9\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(4) & !\count|Add1~7\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(4)) # (!\count|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(4),
	datad => VCC,
	cin => \count|Add1~7\,
	combout => \count|Add1~8_combout\,
	cout => \count|Add1~9\);

-- Location: LCCOMB_X111_Y40_N26
\count|s_count[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(4) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~8_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~8_combout\,
	datac => \count|s_count\(4),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(4));

-- Location: LCCOMB_X114_Y40_N12
\count|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~10_combout\ = (\count|s_count\(5) & ((\KEY[0]~input_o\ & (!\count|Add1~9\)) # (!\KEY[0]~input_o\ & (\count|Add1~9\ & VCC)))) # (!\count|s_count\(5) & ((\KEY[0]~input_o\ & ((\count|Add1~9\) # (GND))) # (!\KEY[0]~input_o\ & (!\count|Add1~9\))))
-- \count|Add1~11\ = CARRY((\count|s_count\(5) & (\KEY[0]~input_o\ & !\count|Add1~9\)) # (!\count|s_count\(5) & ((\KEY[0]~input_o\) # (!\count|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(5),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~9\,
	combout => \count|Add1~10_combout\,
	cout => \count|Add1~11\);

-- Location: LCCOMB_X112_Y40_N16
\count|s_count[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(5) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~10_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~10_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(5),
	combout => \count|s_count\(5));

-- Location: LCCOMB_X114_Y40_N14
\count|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~12_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(6) $ (\count|Add1~11\)))) # (GND)
-- \count|Add1~13\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(6) & !\count|Add1~11\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(6)) # (!\count|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(6),
	datad => VCC,
	cin => \count|Add1~11\,
	combout => \count|Add1~12_combout\,
	cout => \count|Add1~13\);

-- Location: LCCOMB_X114_Y40_N0
\count|s_count[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(6) = (\count|s_count[30]~3_combout\ & (\count|Add1~12_combout\)) # (!\count|s_count[30]~3_combout\ & ((\count|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~12_combout\,
	datac => \count|s_count[30]~3_combout\,
	datad => \count|s_count\(6),
	combout => \count|s_count\(6));

-- Location: LCCOMB_X114_Y40_N16
\count|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~14_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(7) & (!\count|Add1~13\)) # (!\count|s_count\(7) & ((\count|Add1~13\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(7) & (\count|Add1~13\ & VCC)) # (!\count|s_count\(7) & 
-- (!\count|Add1~13\))))
-- \count|Add1~15\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~13\) # (!\count|s_count\(7)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(7) & !\count|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(7),
	datad => VCC,
	cin => \count|Add1~13\,
	combout => \count|Add1~14_combout\,
	cout => \count|Add1~15\);

-- Location: LCCOMB_X113_Y40_N30
\count|s_count[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(7) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~14_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~14_combout\,
	datac => \count|s_count\(7),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(7));

-- Location: LCCOMB_X114_Y40_N18
\count|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~16_combout\ = ((\count|s_count\(8) $ (\KEY[0]~input_o\ $ (\count|Add1~15\)))) # (GND)
-- \count|Add1~17\ = CARRY((\count|s_count\(8) & ((!\count|Add1~15\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(8) & (!\KEY[0]~input_o\ & !\count|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(8),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~15\,
	combout => \count|Add1~16_combout\,
	cout => \count|Add1~17\);

-- Location: LCCOMB_X112_Y40_N0
\count|s_count[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(8) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|Add1~16_combout\))) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|s_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(8),
	datac => \count|Add1~16_combout\,
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(8));

-- Location: LCCOMB_X114_Y40_N20
\count|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~18_combout\ = (\count|s_count\(9) & ((\KEY[0]~input_o\ & (!\count|Add1~17\)) # (!\KEY[0]~input_o\ & (\count|Add1~17\ & VCC)))) # (!\count|s_count\(9) & ((\KEY[0]~input_o\ & ((\count|Add1~17\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~17\))))
-- \count|Add1~19\ = CARRY((\count|s_count\(9) & (\KEY[0]~input_o\ & !\count|Add1~17\)) # (!\count|s_count\(9) & ((\KEY[0]~input_o\) # (!\count|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(9),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~17\,
	combout => \count|Add1~18_combout\,
	cout => \count|Add1~19\);

-- Location: LCCOMB_X112_Y40_N2
\count|s_count[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(9) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~18_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~18_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(9),
	combout => \count|s_count\(9));

-- Location: LCCOMB_X114_Y40_N22
\count|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~20_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(10) $ (\count|Add1~19\)))) # (GND)
-- \count|Add1~21\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(10) & !\count|Add1~19\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(10)) # (!\count|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(10),
	datad => VCC,
	cin => \count|Add1~19\,
	combout => \count|Add1~20_combout\,
	cout => \count|Add1~21\);

-- Location: LCCOMB_X113_Y40_N24
\count|s_count[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(10) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~20_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~20_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(10),
	combout => \count|s_count\(10));

-- Location: LCCOMB_X113_Y40_N12
\count|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~0_combout\ = (!\count|s_count\(7) & (!\count|s_count\(10) & (!\count|s_count\(8) & !\count|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(7),
	datab => \count|s_count\(10),
	datac => \count|s_count\(8),
	datad => \count|s_count\(9),
	combout => \count|LessThan1~0_combout\);

-- Location: LCCOMB_X114_Y40_N24
\count|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~22_combout\ = (\count|s_count\(11) & ((\KEY[0]~input_o\ & (!\count|Add1~21\)) # (!\KEY[0]~input_o\ & (\count|Add1~21\ & VCC)))) # (!\count|s_count\(11) & ((\KEY[0]~input_o\ & ((\count|Add1~21\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~21\))))
-- \count|Add1~23\ = CARRY((\count|s_count\(11) & (\KEY[0]~input_o\ & !\count|Add1~21\)) # (!\count|s_count\(11) & ((\KEY[0]~input_o\) # (!\count|Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(11),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~21\,
	combout => \count|Add1~22_combout\,
	cout => \count|Add1~23\);

-- Location: LCCOMB_X112_Y40_N10
\count|s_count[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(11) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~22_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~22_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(11),
	combout => \count|s_count\(11));

-- Location: LCCOMB_X114_Y40_N26
\count|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~24_combout\ = ((\count|s_count\(12) $ (\KEY[0]~input_o\ $ (\count|Add1~23\)))) # (GND)
-- \count|Add1~25\ = CARRY((\count|s_count\(12) & ((!\count|Add1~23\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(12) & (!\KEY[0]~input_o\ & !\count|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(12),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~23\,
	combout => \count|Add1~24_combout\,
	cout => \count|Add1~25\);

-- Location: LCCOMB_X112_Y40_N30
\count|s_count[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(12) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~24_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~24_combout\,
	datac => \count|s_count\(12),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(12));

-- Location: LCCOMB_X114_Y40_N28
\count|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~26_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(13) & (!\count|Add1~25\)) # (!\count|s_count\(13) & ((\count|Add1~25\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(13) & (\count|Add1~25\ & VCC)) # (!\count|s_count\(13) & 
-- (!\count|Add1~25\))))
-- \count|Add1~27\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~25\) # (!\count|s_count\(13)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(13) & !\count|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(13),
	datad => VCC,
	cin => \count|Add1~25\,
	combout => \count|Add1~26_combout\,
	cout => \count|Add1~27\);

-- Location: LCCOMB_X112_Y40_N4
\count|s_count[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(13) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~26_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~26_combout\,
	datac => \count|s_count\(13),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(13));

-- Location: LCCOMB_X114_Y40_N30
\count|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~28_combout\ = ((\count|s_count\(14) $ (\KEY[0]~input_o\ $ (\count|Add1~27\)))) # (GND)
-- \count|Add1~29\ = CARRY((\count|s_count\(14) & ((!\count|Add1~27\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(14) & (!\KEY[0]~input_o\ & !\count|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(14),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~27\,
	combout => \count|Add1~28_combout\,
	cout => \count|Add1~29\);

-- Location: LCCOMB_X112_Y40_N8
\count|s_count[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(14) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~28_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~28_combout\,
	datac => \count|s_count\(14),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(14));

-- Location: LCCOMB_X114_Y39_N0
\count|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~30_combout\ = (\count|s_count\(15) & ((\KEY[0]~input_o\ & (!\count|Add1~29\)) # (!\KEY[0]~input_o\ & (\count|Add1~29\ & VCC)))) # (!\count|s_count\(15) & ((\KEY[0]~input_o\ & ((\count|Add1~29\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~29\))))
-- \count|Add1~31\ = CARRY((\count|s_count\(15) & (\KEY[0]~input_o\ & !\count|Add1~29\)) # (!\count|s_count\(15) & ((\KEY[0]~input_o\) # (!\count|Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(15),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~29\,
	combout => \count|Add1~30_combout\,
	cout => \count|Add1~31\);

-- Location: LCCOMB_X113_Y40_N2
\count|s_count[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(15) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|Add1~30_combout\))) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(15),
	datac => \count|Add1~30_combout\,
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(15));

-- Location: LCCOMB_X114_Y39_N2
\count|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~32_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(16) $ (\count|Add1~31\)))) # (GND)
-- \count|Add1~33\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(16) & !\count|Add1~31\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(16)) # (!\count|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(16),
	datad => VCC,
	cin => \count|Add1~31\,
	combout => \count|Add1~32_combout\,
	cout => \count|Add1~33\);

-- Location: LCCOMB_X113_Y40_N22
\count|s_count[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(16) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~32_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~32_combout\,
	datac => \count|s_count\(16),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(16));

-- Location: LCCOMB_X114_Y39_N4
\count|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~34_combout\ = (\count|s_count\(17) & ((\KEY[0]~input_o\ & (!\count|Add1~33\)) # (!\KEY[0]~input_o\ & (\count|Add1~33\ & VCC)))) # (!\count|s_count\(17) & ((\KEY[0]~input_o\ & ((\count|Add1~33\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~33\))))
-- \count|Add1~35\ = CARRY((\count|s_count\(17) & (\KEY[0]~input_o\ & !\count|Add1~33\)) # (!\count|s_count\(17) & ((\KEY[0]~input_o\) # (!\count|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(17),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~33\,
	combout => \count|Add1~34_combout\,
	cout => \count|Add1~35\);

-- Location: LCCOMB_X113_Y40_N8
\count|s_count[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(17) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~34_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~34_combout\,
	datac => \count|s_count\(17),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(17));

-- Location: LCCOMB_X114_Y39_N6
\count|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~36_combout\ = ((\count|s_count\(18) $ (\KEY[0]~input_o\ $ (\count|Add1~35\)))) # (GND)
-- \count|Add1~37\ = CARRY((\count|s_count\(18) & ((!\count|Add1~35\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(18) & (!\KEY[0]~input_o\ & !\count|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(18),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~35\,
	combout => \count|Add1~36_combout\,
	cout => \count|Add1~37\);

-- Location: LCCOMB_X113_Y40_N20
\count|s_count[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(18) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~36_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~36_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(18),
	combout => \count|s_count\(18));

-- Location: LCCOMB_X113_Y40_N16
\count|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~2_combout\ = (!\count|s_count\(16) & (!\count|s_count\(15) & (!\count|s_count\(17) & !\count|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(16),
	datab => \count|s_count\(15),
	datac => \count|s_count\(17),
	datad => \count|s_count\(18),
	combout => \count|LessThan1~2_combout\);

-- Location: LCCOMB_X112_Y40_N6
\count|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~1_combout\ = (!\count|s_count\(12) & (!\count|s_count\(13) & (!\count|s_count\(14) & !\count|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(12),
	datab => \count|s_count\(13),
	datac => \count|s_count\(14),
	datad => \count|s_count\(11),
	combout => \count|LessThan1~1_combout\);

-- Location: LCCOMB_X114_Y39_N8
\count|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~38_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(19) & (!\count|Add1~37\)) # (!\count|s_count\(19) & ((\count|Add1~37\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(19) & (\count|Add1~37\ & VCC)) # (!\count|s_count\(19) & 
-- (!\count|Add1~37\))))
-- \count|Add1~39\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~37\) # (!\count|s_count\(19)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(19) & !\count|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(19),
	datad => VCC,
	cin => \count|Add1~37\,
	combout => \count|Add1~38_combout\,
	cout => \count|Add1~39\);

-- Location: LCCOMB_X113_Y40_N26
\count|s_count[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(19) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~38_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~38_combout\,
	datac => \count|s_count\(19),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(19));

-- Location: LCCOMB_X114_Y39_N10
\count|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~40_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(20) $ (\count|Add1~39\)))) # (GND)
-- \count|Add1~41\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(20) & !\count|Add1~39\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(20)) # (!\count|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(20),
	datad => VCC,
	cin => \count|Add1~39\,
	combout => \count|Add1~40_combout\,
	cout => \count|Add1~41\);

-- Location: LCCOMB_X113_Y40_N4
\count|s_count[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(20) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~40_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~40_combout\,
	datac => \count|s_count\(20),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(20));

-- Location: LCCOMB_X114_Y39_N12
\count|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~42_combout\ = (\count|s_count\(21) & ((\KEY[0]~input_o\ & (!\count|Add1~41\)) # (!\KEY[0]~input_o\ & (\count|Add1~41\ & VCC)))) # (!\count|s_count\(21) & ((\KEY[0]~input_o\ & ((\count|Add1~41\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~41\))))
-- \count|Add1~43\ = CARRY((\count|s_count\(21) & (\KEY[0]~input_o\ & !\count|Add1~41\)) # (!\count|s_count\(21) & ((\KEY[0]~input_o\) # (!\count|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(21),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~41\,
	combout => \count|Add1~42_combout\,
	cout => \count|Add1~43\);

-- Location: LCCOMB_X113_Y39_N0
\count|s_count[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(21) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~42_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~42_combout\,
	datab => \count|s_count\(21),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(21));

-- Location: LCCOMB_X114_Y39_N14
\count|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~44_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(22) $ (\count|Add1~43\)))) # (GND)
-- \count|Add1~45\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(22) & !\count|Add1~43\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(22)) # (!\count|Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(22),
	datad => VCC,
	cin => \count|Add1~43\,
	combout => \count|Add1~44_combout\,
	cout => \count|Add1~45\);

-- Location: LCCOMB_X113_Y39_N6
\count|s_count[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(22) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~44_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~44_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(22),
	combout => \count|s_count\(22));

-- Location: LCCOMB_X113_Y40_N18
\count|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~3_combout\ = (!\count|s_count\(19) & (!\count|s_count\(21) & (!\count|s_count\(20) & !\count|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(19),
	datab => \count|s_count\(21),
	datac => \count|s_count\(20),
	datad => \count|s_count\(22),
	combout => \count|LessThan1~3_combout\);

-- Location: LCCOMB_X113_Y40_N6
\count|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~4_combout\ = (\count|LessThan1~0_combout\ & (\count|LessThan1~2_combout\ & (\count|LessThan1~1_combout\ & \count|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|LessThan1~0_combout\,
	datab => \count|LessThan1~2_combout\,
	datac => \count|LessThan1~1_combout\,
	datad => \count|LessThan1~3_combout\,
	combout => \count|LessThan1~4_combout\);

-- Location: LCCOMB_X114_Y39_N16
\count|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~46_combout\ = (\count|s_count\(23) & ((\KEY[0]~input_o\ & (!\count|Add1~45\)) # (!\KEY[0]~input_o\ & (\count|Add1~45\ & VCC)))) # (!\count|s_count\(23) & ((\KEY[0]~input_o\ & ((\count|Add1~45\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~45\))))
-- \count|Add1~47\ = CARRY((\count|s_count\(23) & (\KEY[0]~input_o\ & !\count|Add1~45\)) # (!\count|s_count\(23) & ((\KEY[0]~input_o\) # (!\count|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(23),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~45\,
	combout => \count|Add1~46_combout\,
	cout => \count|Add1~47\);

-- Location: LCCOMB_X113_Y39_N16
\count|s_count[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(23) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~46_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~46_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(23),
	combout => \count|s_count\(23));

-- Location: LCCOMB_X114_Y39_N18
\count|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~48_combout\ = ((\count|s_count\(24) $ (\KEY[0]~input_o\ $ (\count|Add1~47\)))) # (GND)
-- \count|Add1~49\ = CARRY((\count|s_count\(24) & ((!\count|Add1~47\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(24) & (!\KEY[0]~input_o\ & !\count|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(24),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~47\,
	combout => \count|Add1~48_combout\,
	cout => \count|Add1~49\);

-- Location: LCCOMB_X113_Y39_N30
\count|s_count[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(24) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~48_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~48_combout\,
	datac => \count|s_count\(24),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(24));

-- Location: LCCOMB_X114_Y39_N20
\count|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~50_combout\ = (\count|s_count\(25) & ((\KEY[0]~input_o\ & (!\count|Add1~49\)) # (!\KEY[0]~input_o\ & (\count|Add1~49\ & VCC)))) # (!\count|s_count\(25) & ((\KEY[0]~input_o\ & ((\count|Add1~49\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~49\))))
-- \count|Add1~51\ = CARRY((\count|s_count\(25) & (\KEY[0]~input_o\ & !\count|Add1~49\)) # (!\count|s_count\(25) & ((\KEY[0]~input_o\) # (!\count|Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(25),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~49\,
	combout => \count|Add1~50_combout\,
	cout => \count|Add1~51\);

-- Location: LCCOMB_X113_Y39_N24
\count|s_count[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(25) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|Add1~50_combout\))) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(25),
	datac => \count|Add1~50_combout\,
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(25));

-- Location: LCCOMB_X114_Y39_N22
\count|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~52_combout\ = ((\count|s_count\(26) $ (\KEY[0]~input_o\ $ (\count|Add1~51\)))) # (GND)
-- \count|Add1~53\ = CARRY((\count|s_count\(26) & ((!\count|Add1~51\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(26) & (!\KEY[0]~input_o\ & !\count|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(26),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~51\,
	combout => \count|Add1~52_combout\,
	cout => \count|Add1~53\);

-- Location: LCCOMB_X113_Y39_N22
\count|s_count[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(26) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|Add1~52_combout\))) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|s_count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(26),
	datac => \count|Add1~52_combout\,
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(26));

-- Location: LCCOMB_X113_Y39_N28
\count|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~5_combout\ = (!\count|s_count\(26) & (!\count|s_count\(25) & (!\count|s_count\(24) & !\count|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(26),
	datab => \count|s_count\(25),
	datac => \count|s_count\(24),
	datad => \count|s_count\(23),
	combout => \count|LessThan1~5_combout\);

-- Location: LCCOMB_X114_Y39_N24
\count|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~54_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(27) & (!\count|Add1~53\)) # (!\count|s_count\(27) & ((\count|Add1~53\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(27) & (\count|Add1~53\ & VCC)) # (!\count|s_count\(27) & 
-- (!\count|Add1~53\))))
-- \count|Add1~55\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~53\) # (!\count|s_count\(27)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(27) & !\count|Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(27),
	datad => VCC,
	cin => \count|Add1~53\,
	combout => \count|Add1~54_combout\,
	cout => \count|Add1~55\);

-- Location: LCCOMB_X112_Y40_N18
\count|s_count[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(27) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~54_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~54_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(27),
	combout => \count|s_count\(27));

-- Location: LCCOMB_X113_Y39_N26
\count|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~6_combout\ = (\count|LessThan1~4_combout\ & (\count|LessThan1~5_combout\ & !\count|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|LessThan1~4_combout\,
	datab => \count|LessThan1~5_combout\,
	datad => \count|s_count\(27),
	combout => \count|LessThan1~6_combout\);

-- Location: LCCOMB_X111_Y40_N2
\count|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~7_combout\ = (!\count|s_count\(4) & (!\count|s_count\(2) & !\count|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(4),
	datab => \count|s_count\(2),
	datac => \count|s_count\(3),
	combout => \count|LessThan1~7_combout\);

-- Location: LCCOMB_X111_Y40_N10
\count|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~8_combout\ = (\count|LessThan1~7_combout\ & ((!\count|s_count\(1)) # (!\count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(0),
	datac => \count|LessThan1~7_combout\,
	datad => \count|s_count\(1),
	combout => \count|LessThan1~8_combout\);

-- Location: LCCOMB_X111_Y40_N0
\count|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~9_combout\ = (\count|LessThan1~6_combout\ & (((\count|LessThan1~8_combout\) # (!\count|s_count\(6))) # (!\count|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(5),
	datab => \count|s_count\(6),
	datac => \count|LessThan1~6_combout\,
	datad => \count|LessThan1~8_combout\,
	combout => \count|LessThan1~9_combout\);

-- Location: LCCOMB_X114_Y39_N26
\count|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~56_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(28) $ (\count|Add1~55\)))) # (GND)
-- \count|Add1~57\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(28) & !\count|Add1~55\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(28)) # (!\count|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(28),
	datad => VCC,
	cin => \count|Add1~55\,
	combout => \count|Add1~56_combout\,
	cout => \count|Add1~57\);

-- Location: LCCOMB_X112_Y40_N26
\count|s_count[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(28) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~56_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~56_combout\,
	datac => \count|s_count\(28),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(28));

-- Location: LCCOMB_X114_Y39_N28
\count|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~58_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(29) & (!\count|Add1~57\)) # (!\count|s_count\(29) & ((\count|Add1~57\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(29) & (\count|Add1~57\ & VCC)) # (!\count|s_count\(29) & 
-- (!\count|Add1~57\))))
-- \count|Add1~59\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~57\) # (!\count|s_count\(29)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(29) & !\count|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(29),
	datad => VCC,
	cin => \count|Add1~57\,
	combout => \count|Add1~58_combout\,
	cout => \count|Add1~59\);

-- Location: LCCOMB_X112_Y40_N22
\count|s_count[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(29) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~58_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~58_combout\,
	datac => \count|s_count\(29),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(29));

-- Location: LCCOMB_X114_Y39_N30
\count|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~60_combout\ = \KEY[0]~input_o\ $ (\count|Add1~59\ $ (\count|s_count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \count|s_count\(30),
	cin => \count|Add1~59\,
	combout => \count|Add1~60_combout\);

-- Location: LCCOMB_X112_Y40_N20
\count|s_count[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(30) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~60_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~60_combout\,
	datac => \count|s_count[30]~3clkctrl_outclk\,
	datad => \count|s_count\(30),
	combout => \count|s_count\(30));

-- Location: LCCOMB_X112_Y40_N28
\count|s_count[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count[30]~0_combout\ = (!\count|s_count\(28) & (!\count|s_count\(29) & !\count|s_count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(28),
	datac => \count|s_count\(29),
	datad => \count|s_count\(30),
	combout => \count|s_count[30]~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X111_Y40_N6
\count|s_count[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count[30]~2_combout\ = (!\KEY[1]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \count|s_count[30]~2_combout\);

-- Location: LCCOMB_X113_Y40_N10
\count|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan0~2_combout\ = (!\count|s_count\(27) & (\count|s_count[30]~0_combout\ & (\count|LessThan1~5_combout\ & \count|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(27),
	datab => \count|s_count[30]~0_combout\,
	datac => \count|LessThan1~5_combout\,
	datad => \count|LessThan1~4_combout\,
	combout => \count|LessThan0~2_combout\);

-- Location: LCCOMB_X111_Y40_N28
\count|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan0~0_combout\ = (\count|s_count\(3)) # ((\count|s_count\(4)) # ((\count|s_count\(2)) # (\count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(3),
	datab => \count|s_count\(4),
	datac => \count|s_count\(2),
	datad => \count|s_count\(0),
	combout => \count|LessThan0~0_combout\);

-- Location: LCCOMB_X112_Y41_N28
\count|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan0~1_combout\ = (\count|s_count\(1)) # ((\count|s_count\(5)) # (\count|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(1),
	datac => \count|s_count\(5),
	datad => \count|s_count\(6),
	combout => \count|LessThan0~1_combout\);

-- Location: LCCOMB_X112_Y40_N24
\count|s_count[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count[30]~1_combout\ = (!\KEY[0]~input_o\ & (((\count|LessThan0~0_combout\) # (\count|LessThan0~1_combout\)) # (!\count|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|LessThan0~2_combout\,
	datab => \count|LessThan0~0_combout\,
	datac => \count|LessThan0~1_combout\,
	datad => \KEY[0]~input_o\,
	combout => \count|s_count[30]~1_combout\);

-- Location: LCCOMB_X112_Y40_N12
\count|s_count[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count[30]~3_combout\ = (\count|s_count[30]~1_combout\) # ((\count|LessThan1~9_combout\ & (\count|s_count[30]~0_combout\ & \count|s_count[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|LessThan1~9_combout\,
	datab => \count|s_count[30]~0_combout\,
	datac => \count|s_count[30]~2_combout\,
	datad => \count|s_count[30]~1_combout\,
	combout => \count|s_count[30]~3_combout\);

-- Location: CLKCTRL_G8
\count|s_count[30]~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count|s_count[30]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count|s_count[30]~3clkctrl_outclk\);

-- Location: LCCOMB_X111_Y40_N30
\count|s_count[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(0) = (GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & (\count|Add1~0_combout\)) # (!GLOBAL(\count|s_count[30]~3clkctrl_outclk\) & ((\count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~0_combout\,
	datac => \count|s_count\(0),
	datad => \count|s_count[30]~3clkctrl_outclk\,
	combout => \count|s_count\(0));

-- Location: LCCOMB_X112_Y44_N6
\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \count|s_count\(1) $ (VCC)
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\count|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(1),
	datad => VCC,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X112_Y44_N8
\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\count|s_count\(2) & (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\count|s_count\(2) & 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\count|s_count\(2) & !\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(2),
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X112_Y44_N10
\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\count|s_count\(3) & (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\count|s_count\(3) & 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\count|s_count\(3) & !\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(3),
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X112_Y44_N12
\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X112_Y44_N30
\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\count|s_count\(1)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \count|s_count\(1),
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\);

-- Location: LCCOMB_X112_Y44_N4
\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\count|s_count\(2))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(2),
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\);

-- Location: LCCOMB_X111_Y44_N6
\bin3|decOut_n[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~5_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((\count|s_count\(0)) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(0),
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \bin3|decOut_n[0]~5_combout\);

-- Location: LCCOMB_X113_Y40_N28
\count|full~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|full~0_combout\ = (\count|LessThan0~2_combout\ & (((\count|LessThan1~7_combout\) # (!\count|s_count\(6))) # (!\count|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(5),
	datab => \count|LessThan1~7_combout\,
	datac => \count|s_count\(6),
	datad => \count|LessThan0~2_combout\,
	combout => \count|full~0_combout\);

-- Location: LCCOMB_X113_Y40_N0
\count|full~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|full~1_combout\ = (\KEY[0]~input_o\ & !\count|full~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \count|full~0_combout\,
	combout => \count|full~1_combout\);

-- Location: LCCOMB_X112_Y40_N14
\count|full~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|full~2_combout\ = (\count|s_count[30]~1_combout\) # ((\count|s_count[30]~2_combout\ & ((\count|LessThan1~9_combout\) # (!\count|full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|LessThan1~9_combout\,
	datab => \count|full~0_combout\,
	datac => \count|s_count[30]~2_combout\,
	datad => \count|s_count[30]~1_combout\,
	combout => \count|full~2_combout\);

-- Location: LCCOMB_X113_Y40_N14
\count|full\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|full~combout\ = (\count|full~2_combout\ & (\count|full~1_combout\)) # (!\count|full~2_combout\ & ((\count|full~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|full~1_combout\,
	datac => \count|full~combout\,
	datad => \count|full~2_combout\,
	combout => \count|full~combout\);

-- Location: LCCOMB_X112_Y44_N28
\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\count|s_count\(3))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \count|s_count\(3),
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X111_Y44_N12
\bin3|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~8_combout\ = (!\count|full~combout\ & ((\bin3|decOut_n[0]~5_combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin3|decOut_n[0]~5_combout\,
	datab => \count|full~combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \bin3|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X111_Y44_N28
\bin3|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~4_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & !\count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n~4_combout\);

-- Location: LCCOMB_X111_Y44_N8
\bin3|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~6_combout\ = (\bin3|decOut_n[0]~5_combout\) # ((\count|full~combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin3|decOut_n[0]~5_combout\,
	datab => \count|full~combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \bin3|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X111_Y44_N2
\bin3|decOut_n[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~7_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\) # (\count|s_count\(0) $ (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(0),
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \bin3|decOut_n[0]~7_combout\);

-- Location: LCCOMB_X111_Y44_N30
\bin3|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~9_combout\ = (\bin3|decOut_n[0]~8_combout\ & (\bin3|decOut_n~4_combout\ & ((\bin3|decOut_n[0]~6_combout\) # (\bin3|decOut_n[0]~7_combout\)))) # (!\bin3|decOut_n[0]~8_combout\ & (((\bin3|decOut_n[0]~6_combout\) # 
-- (\bin3|decOut_n[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin3|decOut_n[0]~8_combout\,
	datab => \bin3|decOut_n~4_combout\,
	datac => \bin3|decOut_n[0]~6_combout\,
	datad => \bin3|decOut_n[0]~7_combout\,
	combout => \bin3|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X111_Y44_N4
\bin3|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~10_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ 
-- (\count|s_count\(0))))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (((\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & !\count|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n~10_combout\);

-- Location: LCCOMB_X111_Y44_N18
\bin3|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~11_combout\ = (\bin3|decOut_n~10_combout\) # (\count|full~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin3|decOut_n~10_combout\,
	datad => \count|full~combout\,
	combout => \bin3|decOut_n~11_combout\);

-- Location: LCCOMB_X111_Y44_N0
\bin3|decOut_n[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[2]~12_combout\ = (\count|full~combout\) # (\bin3|decOut_n~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|full~combout\,
	datad => \bin3|decOut_n~4_combout\,
	combout => \bin3|decOut_n[2]~12_combout\);

-- Location: LCCOMB_X111_Y44_N10
\bin3|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~13_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & \count|s_count\(0))) 
-- # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & !\count|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n~13_combout\);

-- Location: LCCOMB_X111_Y44_N20
\bin3|decOut_n[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[3]~14_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\) # ((\count|s_count\(0) & !\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(0),
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \bin3|decOut_n[3]~14_combout\);

-- Location: LCCOMB_X111_Y44_N14
\bin3|decOut_n[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[3]~15_combout\ = (\bin3|decOut_n~13_combout\ & ((\bin3|decOut_n[0]~8_combout\) # ((\bin3|decOut_n[3]~14_combout\ & !\bin3|decOut_n[0]~6_combout\)))) # (!\bin3|decOut_n~13_combout\ & (\bin3|decOut_n[3]~14_combout\ & 
-- (!\bin3|decOut_n[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin3|decOut_n~13_combout\,
	datab => \bin3|decOut_n[3]~14_combout\,
	datac => \bin3|decOut_n[0]~6_combout\,
	datad => \bin3|decOut_n[0]~8_combout\,
	combout => \bin3|decOut_n[3]~15_combout\);

-- Location: LCCOMB_X111_Y44_N16
\bin3|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~16_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ 
-- (\count|s_count\(0))))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & ((\count|s_count\(0)) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ $ 
-- (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n~16_combout\);

-- Location: LCCOMB_X111_Y44_N26
\bin3|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~17_combout\ = (!\count|full~combout\ & \bin3|decOut_n~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|full~combout\,
	datad => \bin3|decOut_n~16_combout\,
	combout => \bin3|decOut_n~17_combout\);

-- Location: LCCOMB_X112_Y44_N26
\bin3|decOut_n[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[5]~20_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\count|s_count\(3))) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datac => \count|s_count\(3),
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin3|decOut_n[5]~20_combout\);

-- Location: LCCOMB_X111_Y44_N24
\bin3|decOut_n[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[5]~18_combout\ = (!\count|full~combout\ & ((\bin3|decOut_n[5]~20_combout\ & ((\count|s_count\(0)))) # (!\bin3|decOut_n[5]~20_combout\ & (\bin3|decOut_n~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin3|decOut_n~13_combout\,
	datab => \count|s_count\(0),
	datac => \bin3|decOut_n[5]~20_combout\,
	datad => \count|full~combout\,
	combout => \bin3|decOut_n[5]~18_combout\);

-- Location: LCCOMB_X111_Y44_N22
\bin3|decOut_n[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[6]~19_combout\ = (\count|full~combout\) # ((\bin3|decOut_n[5]~20_combout\ & ((!\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\))) # (!\bin3|decOut_n[5]~20_combout\ & (\bin3|decOut_n~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin3|decOut_n~13_combout\,
	datab => \count|full~combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \bin3|decOut_n[5]~20_combout\,
	combout => \bin3|decOut_n[6]~19_combout\);

-- Location: LCCOMB_X112_Y44_N22
\bin2|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2|decOut_n[0]~0_combout\ = (\count|full~combout\) # ((\count|s_count\(3) & ((\count|s_count\(1)) # (\count|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|full~combout\,
	datab => \count|s_count\(3),
	datac => \count|s_count\(1),
	datad => \count|s_count\(2),
	combout => \bin2|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X112_Y44_N16
\bin2|decOut_n[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2|decOut_n[4]~1_combout\ = (!\count|full~combout\ & (\count|s_count\(3) & ((\count|s_count\(1)) # (\count|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|full~combout\,
	datab => \count|s_count\(3),
	datac => \count|s_count\(1),
	datad => \count|s_count\(2),
	combout => \bin2|decOut_n[4]~1_combout\);

-- Location: LCCOMB_X111_Y40_N14
\BCD|Div0|auto_generated|divider|divider|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|op_2~1_cout\ = CARRY(!\count|full~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|full~combout\,
	datad => VCC,
	cout => \BCD|Div0|auto_generated|divider|divider|op_2~1_cout\);

-- Location: LCCOMB_X111_Y40_N16
\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\count|s_count\(0) & (\count|full~combout\ & !\BCD|Div0|auto_generated|divider|divider|op_2~1_cout\)) # (!\count|s_count\(0) & ((\count|full~combout\) # 
-- (!\BCD|Div0|auto_generated|divider|divider|op_2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(0),
	datab => \count|full~combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|op_2~1_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X111_Y40_N18
\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\count|s_count\(1) & !\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(1),
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X111_Y40_N20
\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\count|s_count\(2) & (\count|full~combout\ & !\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # (!\count|s_count\(2) & ((\count|full~combout\) # 
-- (!\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(2),
	datab => \count|full~combout\,
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X111_Y40_N22
\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\count|s_count\(3) & !\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(3),
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X111_Y40_N24
\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = !\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


