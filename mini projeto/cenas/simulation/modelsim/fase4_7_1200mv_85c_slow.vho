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

-- DATE "03/30/2017 10:43:42"

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

ENTITY 	parking_Phase4 IS
    PORT (
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
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
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count|s_count[31]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \de|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \de|s_dirtyIn~q\ : std_logic;
SIGNAL \de|s_previousIn~q\ : std_logic;
SIGNAL \de|Add0~0_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \de|Add0~1\ : std_logic;
SIGNAL \de|Add0~2_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \de|Add0~3\ : std_logic;
SIGNAL \de|Add0~4_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \de|Add0~5\ : std_logic;
SIGNAL \de|Add0~7\ : std_logic;
SIGNAL \de|Add0~8_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \de|Add0~9\ : std_logic;
SIGNAL \de|Add0~10_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \de|Add0~11\ : std_logic;
SIGNAL \de|Add0~12_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \de|Add0~13\ : std_logic;
SIGNAL \de|Add0~14_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \de|Add0~15\ : std_logic;
SIGNAL \de|Add0~16_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \de|Add0~17\ : std_logic;
SIGNAL \de|Add0~18_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \de|Add0~19\ : std_logic;
SIGNAL \de|Add0~20_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \de|Add0~21\ : std_logic;
SIGNAL \de|Add0~22_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \de|Add0~23\ : std_logic;
SIGNAL \de|Add0~24_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \de|Add0~25\ : std_logic;
SIGNAL \de|Add0~26_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \de|Add0~27\ : std_logic;
SIGNAL \de|Add0~28_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \de|Add0~29\ : std_logic;
SIGNAL \de|Add0~30_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \de|Add0~31\ : std_logic;
SIGNAL \de|Add0~32_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \de|Add0~33\ : std_logic;
SIGNAL \de|Add0~34_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \de|Add0~35\ : std_logic;
SIGNAL \de|Add0~36_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \de|Add0~37\ : std_logic;
SIGNAL \de|Add0~38_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \de|Add0~39\ : std_logic;
SIGNAL \de|Add0~41\ : std_logic;
SIGNAL \de|Add0~42_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[17]~2_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[17]~3_combout\ : std_logic;
SIGNAL \de|Add0~40_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \de|LessThan0~0_combout\ : std_logic;
SIGNAL \de|LessThan0~6_combout\ : std_logic;
SIGNAL \de|LessThan0~4_combout\ : std_logic;
SIGNAL \de|LessThan0~5_combout\ : std_logic;
SIGNAL \de|LessThan0~1_combout\ : std_logic;
SIGNAL \de|LessThan0~2_combout\ : std_logic;
SIGNAL \de|LessThan0~3_combout\ : std_logic;
SIGNAL \de|LessThan0~7_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \de|Add0~43\ : std_logic;
SIGNAL \de|Add0~44_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \de|s_debounceCnt[17]~0_combout\ : std_logic;
SIGNAL \de|Add0~6_combout\ : std_logic;
SIGNAL \de|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \de|s_pulsedOut~q\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|Add0~41\ : std_logic;
SIGNAL \t1|Add0~42_combout\ : std_logic;
SIGNAL \t1|s_count[21]~15_combout\ : std_logic;
SIGNAL \t1|Add0~43\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \t1|s_count[22]~22_combout\ : std_logic;
SIGNAL \t1|Add0~45\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|s_count[23]~23_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \t1|s_count[24]~14_combout\ : std_logic;
SIGNAL \t1|Add0~49\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|s_count[25]~19_combout\ : std_logic;
SIGNAL \t1|Add0~51\ : std_logic;
SIGNAL \t1|Add0~52_combout\ : std_logic;
SIGNAL \t1|s_count[26]~29_combout\ : std_logic;
SIGNAL \t1|Add0~53\ : std_logic;
SIGNAL \t1|Add0~54_combout\ : std_logic;
SIGNAL \t1|s_count[27]~31_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \t1|p1~1_combout\ : std_logic;
SIGNAL \t1|p1~0_combout\ : std_logic;
SIGNAL \t1|Equal1~0_combout\ : std_logic;
SIGNAL \t1|Add0~55\ : std_logic;
SIGNAL \t1|Add0~56_combout\ : std_logic;
SIGNAL \t1|s_count[28]~24_combout\ : std_logic;
SIGNAL \t1|Equal2~1_combout\ : std_logic;
SIGNAL \t1|Equal2~0_combout\ : std_logic;
SIGNAL \t1|Equal2~2_combout\ : std_logic;
SIGNAL \t1|Equal2~3_combout\ : std_logic;
SIGNAL \t1|s_count[0]~0_combout\ : std_logic;
SIGNAL \t1|s_count[0]~1_combout\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|s_count[1]~2_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|s_count[2]~3_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|s_count[3]~4_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \t1|s_count[4]~5_combout\ : std_logic;
SIGNAL \t1|Add0~9\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|s_count[5]~6_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \t1|s_count[6]~7_combout\ : std_logic;
SIGNAL \t1|Add0~13\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|s_count[7]~16_combout\ : std_logic;
SIGNAL \t1|Add0~15\ : std_logic;
SIGNAL \t1|Add0~16_combout\ : std_logic;
SIGNAL \t1|s_count[8]~11_combout\ : std_logic;
SIGNAL \t1|Add0~17\ : std_logic;
SIGNAL \t1|Add0~18_combout\ : std_logic;
SIGNAL \t1|s_count[9]~30_combout\ : std_logic;
SIGNAL \t1|Add0~19\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \t1|s_count[10]~12_combout\ : std_logic;
SIGNAL \t1|Add0~21\ : std_logic;
SIGNAL \t1|Add0~22_combout\ : std_logic;
SIGNAL \t1|s_count[11]~8_combout\ : std_logic;
SIGNAL \t1|Add0~23\ : std_logic;
SIGNAL \t1|Add0~24_combout\ : std_logic;
SIGNAL \t1|s_count[12]~20_combout\ : std_logic;
SIGNAL \t1|Add0~25\ : std_logic;
SIGNAL \t1|Add0~26_combout\ : std_logic;
SIGNAL \t1|s_count[13]~21_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~28_combout\ : std_logic;
SIGNAL \t1|s_count[14]~26_combout\ : std_logic;
SIGNAL \t1|Add0~29\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|s_count[15]~17_combout\ : std_logic;
SIGNAL \t1|Add0~31\ : std_logic;
SIGNAL \t1|Add0~32_combout\ : std_logic;
SIGNAL \t1|s_count[16]~13_combout\ : std_logic;
SIGNAL \t1|Add0~33\ : std_logic;
SIGNAL \t1|Add0~34_combout\ : std_logic;
SIGNAL \t1|s_count[17]~18_combout\ : std_logic;
SIGNAL \t1|Add0~35\ : std_logic;
SIGNAL \t1|Add0~36_combout\ : std_logic;
SIGNAL \t1|s_count[18]~28_combout\ : std_logic;
SIGNAL \t1|Add0~37\ : std_logic;
SIGNAL \t1|Add0~38_combout\ : std_logic;
SIGNAL \t1|s_count[19]~27_combout\ : std_logic;
SIGNAL \t1|Add0~39\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \t1|s_count[20]~25_combout\ : std_logic;
SIGNAL \t1|Equal0~3_combout\ : std_logic;
SIGNAL \t1|Equal0~7_combout\ : std_logic;
SIGNAL \t1|Equal0~5_combout\ : std_logic;
SIGNAL \t1|Equal1~1_combout\ : std_logic;
SIGNAL \t1|Equal0~4_combout\ : std_logic;
SIGNAL \t1|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Equal0~8_combout\ : std_logic;
SIGNAL \t1|Add0~57\ : std_logic;
SIGNAL \t1|Add0~58_combout\ : std_logic;
SIGNAL \t1|s_count[29]~9_combout\ : std_logic;
SIGNAL \t1|Add0~59\ : std_logic;
SIGNAL \t1|Add0~60_combout\ : std_logic;
SIGNAL \t1|s_count[30]~10_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|Equal0~2_combout\ : std_logic;
SIGNAL \t1|Equal1~3_combout\ : std_logic;
SIGNAL \t1|Equal1~2_combout\ : std_logic;
SIGNAL \t1|Equal1~4_combout\ : std_logic;
SIGNAL \t1|Equal1~5_combout\ : std_logic;
SIGNAL \t1|Equal2~4_combout\ : std_logic;
SIGNAL \t1|Equal2~5_combout\ : std_logic;
SIGNAL \t1|pulseOut2~0_combout\ : std_logic;
SIGNAL \t1|pulseOut2~1_combout\ : std_logic;
SIGNAL \t1|pulseOut2~q\ : std_logic;
SIGNAL \t1|pulseOut3~0_combout\ : std_logic;
SIGNAL \t1|pulseOut3~1_combout\ : std_logic;
SIGNAL \t1|pulseOut3~2_combout\ : std_logic;
SIGNAL \t1|pulseOut3~q\ : std_logic;
SIGNAL \t1|pulseOut~0_combout\ : std_logic;
SIGNAL \t1|pulseOut~q\ : std_logic;
SIGNAL \f1|Add0~0_combout\ : std_logic;
SIGNAL \f1|Add0~1\ : std_logic;
SIGNAL \f1|Add0~2_combout\ : std_logic;
SIGNAL \f1|Add0~3\ : std_logic;
SIGNAL \f1|Add0~4_combout\ : std_logic;
SIGNAL \f1|Add0~5\ : std_logic;
SIGNAL \f1|Add0~6_combout\ : std_logic;
SIGNAL \f1|Add0~7\ : std_logic;
SIGNAL \f1|Add0~8_combout\ : std_logic;
SIGNAL \f1|Add0~9\ : std_logic;
SIGNAL \f1|Add0~10_combout\ : std_logic;
SIGNAL \f1|Add0~11\ : std_logic;
SIGNAL \f1|Add0~12_combout\ : std_logic;
SIGNAL \f1|s_count~7_combout\ : std_logic;
SIGNAL \f1|Add0~13\ : std_logic;
SIGNAL \f1|Add0~14_combout\ : std_logic;
SIGNAL \f1|Add0~15\ : std_logic;
SIGNAL \f1|Add0~16_combout\ : std_logic;
SIGNAL \f1|Add0~17\ : std_logic;
SIGNAL \f1|Add0~18_combout\ : std_logic;
SIGNAL \f1|Add0~19\ : std_logic;
SIGNAL \f1|Add0~20_combout\ : std_logic;
SIGNAL \f1|Add0~21\ : std_logic;
SIGNAL \f1|Add0~22_combout\ : std_logic;
SIGNAL \f1|s_count~6_combout\ : std_logic;
SIGNAL \f1|Add0~23\ : std_logic;
SIGNAL \f1|Add0~24_combout\ : std_logic;
SIGNAL \f1|s_count~5_combout\ : std_logic;
SIGNAL \f1|Add0~25\ : std_logic;
SIGNAL \f1|Add0~26_combout\ : std_logic;
SIGNAL \f1|s_count~4_combout\ : std_logic;
SIGNAL \f1|Add0~27\ : std_logic;
SIGNAL \f1|Add0~28_combout\ : std_logic;
SIGNAL \f1|s_count~11_combout\ : std_logic;
SIGNAL \f1|Add0~29\ : std_logic;
SIGNAL \f1|Add0~30_combout\ : std_logic;
SIGNAL \f1|Add0~31\ : std_logic;
SIGNAL \f1|Add0~32_combout\ : std_logic;
SIGNAL \f1|s_count~10_combout\ : std_logic;
SIGNAL \f1|Add0~33\ : std_logic;
SIGNAL \f1|Add0~34_combout\ : std_logic;
SIGNAL \f1|Add0~35\ : std_logic;
SIGNAL \f1|Add0~36_combout\ : std_logic;
SIGNAL \f1|s_count~3_combout\ : std_logic;
SIGNAL \f1|Add0~37\ : std_logic;
SIGNAL \f1|Add0~38_combout\ : std_logic;
SIGNAL \f1|s_count~2_combout\ : std_logic;
SIGNAL \f1|Add0~39\ : std_logic;
SIGNAL \f1|Add0~40_combout\ : std_logic;
SIGNAL \f1|s_count~1_combout\ : std_logic;
SIGNAL \f1|Add0~41\ : std_logic;
SIGNAL \f1|Add0~42_combout\ : std_logic;
SIGNAL \f1|s_count~0_combout\ : std_logic;
SIGNAL \f1|Add0~43\ : std_logic;
SIGNAL \f1|Add0~44_combout\ : std_logic;
SIGNAL \f1|s_count~9_combout\ : std_logic;
SIGNAL \f1|Add0~45\ : std_logic;
SIGNAL \f1|Add0~46_combout\ : std_logic;
SIGNAL \f1|Add0~47\ : std_logic;
SIGNAL \f1|Add0~48_combout\ : std_logic;
SIGNAL \f1|s_count~8_combout\ : std_logic;
SIGNAL \f1|Equal0~7_combout\ : std_logic;
SIGNAL \f1|Equal0~8_combout\ : std_logic;
SIGNAL \f1|Equal0~5_combout\ : std_logic;
SIGNAL \f1|Add0~49\ : std_logic;
SIGNAL \f1|Add0~50_combout\ : std_logic;
SIGNAL \f1|Add0~51\ : std_logic;
SIGNAL \f1|Add0~52_combout\ : std_logic;
SIGNAL \f1|Equal0~1_combout\ : std_logic;
SIGNAL \f1|Add0~53\ : std_logic;
SIGNAL \f1|Add0~54_combout\ : std_logic;
SIGNAL \f1|Add0~55\ : std_logic;
SIGNAL \f1|Add0~56_combout\ : std_logic;
SIGNAL \f1|Add0~57\ : std_logic;
SIGNAL \f1|Add0~58_combout\ : std_logic;
SIGNAL \f1|Add0~59\ : std_logic;
SIGNAL \f1|Add0~60_combout\ : std_logic;
SIGNAL \f1|Equal0~0_combout\ : std_logic;
SIGNAL \f1|Equal0~3_combout\ : std_logic;
SIGNAL \f1|Equal0~2_combout\ : std_logic;
SIGNAL \f1|Equal0~4_combout\ : std_logic;
SIGNAL \f1|Equal0~6_combout\ : std_logic;
SIGNAL \f1|Equal0~9_combout\ : std_logic;
SIGNAL \f1|Equal1~0_combout\ : std_logic;
SIGNAL \f1|Equal1~1_combout\ : std_logic;
SIGNAL \f1|Equal1~2_combout\ : std_logic;
SIGNAL \f1|clkOut~0_combout\ : std_logic;
SIGNAL \f1|clkOut~q\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \count|Add1~0_combout\ : std_logic;
SIGNAL \count|Add1~7\ : std_logic;
SIGNAL \count|Add1~8_combout\ : std_logic;
SIGNAL \count|Add1~9\ : std_logic;
SIGNAL \count|Add1~10_combout\ : std_logic;
SIGNAL \count|Add1~11\ : std_logic;
SIGNAL \count|Add1~12_combout\ : std_logic;
SIGNAL \count|LessThan0~1_combout\ : std_logic;
SIGNAL \count|Add1~13\ : std_logic;
SIGNAL \count|Add1~14_combout\ : std_logic;
SIGNAL \count|Add1~15\ : std_logic;
SIGNAL \count|Add1~16_combout\ : std_logic;
SIGNAL \count|Add1~17\ : std_logic;
SIGNAL \count|Add1~18_combout\ : std_logic;
SIGNAL \count|Add1~19\ : std_logic;
SIGNAL \count|Add1~20_combout\ : std_logic;
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
SIGNAL \count|Add1~37\ : std_logic;
SIGNAL \count|Add1~38_combout\ : std_logic;
SIGNAL \count|Add1~39\ : std_logic;
SIGNAL \count|Add1~40_combout\ : std_logic;
SIGNAL \count|Add1~41\ : std_logic;
SIGNAL \count|Add1~42_combout\ : std_logic;
SIGNAL \count|Add1~43\ : std_logic;
SIGNAL \count|Add1~44_combout\ : std_logic;
SIGNAL \count|Add1~45\ : std_logic;
SIGNAL \count|Add1~46_combout\ : std_logic;
SIGNAL \count|Add1~47\ : std_logic;
SIGNAL \count|Add1~48_combout\ : std_logic;
SIGNAL \count|Add1~49\ : std_logic;
SIGNAL \count|Add1~50_combout\ : std_logic;
SIGNAL \count|Add1~51\ : std_logic;
SIGNAL \count|Add1~52_combout\ : std_logic;
SIGNAL \count|Add1~53\ : std_logic;
SIGNAL \count|Add1~54_combout\ : std_logic;
SIGNAL \count|Add1~55\ : std_logic;
SIGNAL \count|Add1~56_combout\ : std_logic;
SIGNAL \count|Add1~57\ : std_logic;
SIGNAL \count|Add1~58_combout\ : std_logic;
SIGNAL \count|Add1~59\ : std_logic;
SIGNAL \count|Add1~60_combout\ : std_logic;
SIGNAL \count|Add1~61\ : std_logic;
SIGNAL \count|Add1~62_combout\ : std_logic;
SIGNAL \count|LessThan0~0_combout\ : std_logic;
SIGNAL \count|LessThan1~5_combout\ : std_logic;
SIGNAL \count|LessThan1~6_combout\ : std_logic;
SIGNAL \count|LessThan1~2_combout\ : std_logic;
SIGNAL \count|LessThan1~1_combout\ : std_logic;
SIGNAL \count|LessThan1~0_combout\ : std_logic;
SIGNAL \count|LessThan1~3_combout\ : std_logic;
SIGNAL \count|LessThan1~4_combout\ : std_logic;
SIGNAL \count|LessThan1~7_combout\ : std_logic;
SIGNAL \count|LessThan0~2_combout\ : std_logic;
SIGNAL \count|LessThan1~8_combout\ : std_logic;
SIGNAL \count|LessThan1~9_combout\ : std_logic;
SIGNAL \count|LessThan1~10_combout\ : std_logic;
SIGNAL \count|s_count[31]~0_combout\ : std_logic;
SIGNAL \count|s_count[31]~0clkctrl_outclk\ : std_logic;
SIGNAL \count|Add1~1\ : std_logic;
SIGNAL \count|Add1~2_combout\ : std_logic;
SIGNAL \count|Add1~3\ : std_logic;
SIGNAL \count|Add1~4_combout\ : std_logic;
SIGNAL \count|Add1~5\ : std_logic;
SIGNAL \count|Add1~6_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \count|full~0_combout\ : std_logic;
SIGNAL \count|full~1_combout\ : std_logic;
SIGNAL \count|full~combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ : std_logic;
SIGNAL \bin3|decOut_n[0]~5_combout\ : std_logic;
SIGNAL \bin3|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \bin3|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \bin3|decOut_n[0]~7_combout\ : std_logic;
SIGNAL \bin3|decOut_n~4_combout\ : std_logic;
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
SIGNAL \t1|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \f1|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \de|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \count|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BCD|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \count|ALT_INV_full~combout\ : std_logic;

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

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\count|s_count[31]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \count|s_count[31]~0_combout\);
\BCD|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~8_combout\ <= NOT \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\;
\count|ALT_INV_full~combout\ <= NOT \count|full~combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|pulseOut2~q\,
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
	i => \t1|pulseOut3~q\,
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
	i => \LEDG~0_combout\,
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

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

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

-- Location: LCCOMB_X100_Y41_N26
\de|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_dirtyIn~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \de|s_dirtyIn~feeder_combout\);

-- Location: FF_X100_Y41_N27
\de|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_dirtyIn~q\);

-- Location: FF_X100_Y41_N13
\de|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \de|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_previousIn~q\);

-- Location: LCCOMB_X98_Y42_N10
\de|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~0_combout\ = \de|s_debounceCnt\(0) $ (VCC)
-- \de|Add0~1\ = CARRY(\de|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(0),
	datad => VCC,
	combout => \de|Add0~0_combout\,
	cout => \de|Add0~1\);

-- Location: LCCOMB_X99_Y41_N4
\de|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~23_combout\ = (\de|Add0~0_combout\ & (\de|s_previousIn~q\ & \de|s_debounceCnt[17]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|Add0~0_combout\,
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	combout => \de|s_debounceCnt~23_combout\);

-- Location: FF_X99_Y41_N5
\de|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~23_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y42_N12
\de|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~2_combout\ = (\de|s_debounceCnt\(1) & (\de|Add0~1\ & VCC)) # (!\de|s_debounceCnt\(1) & (!\de|Add0~1\))
-- \de|Add0~3\ = CARRY((!\de|s_debounceCnt\(1) & !\de|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(1),
	datad => VCC,
	cin => \de|Add0~1\,
	combout => \de|Add0~2_combout\,
	cout => \de|Add0~3\);

-- Location: LCCOMB_X99_Y41_N2
\de|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~19_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~2_combout\,
	combout => \de|s_debounceCnt~19_combout\);

-- Location: FF_X99_Y41_N3
\de|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~19_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y42_N14
\de|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~4_combout\ = (\de|s_debounceCnt\(2) & ((GND) # (!\de|Add0~3\))) # (!\de|s_debounceCnt\(2) & (\de|Add0~3\ $ (GND)))
-- \de|Add0~5\ = CARRY((\de|s_debounceCnt\(2)) # (!\de|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(2),
	datad => VCC,
	cin => \de|Add0~3\,
	combout => \de|Add0~4_combout\,
	cout => \de|Add0~5\);

-- Location: LCCOMB_X99_Y41_N8
\de|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~20_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~4_combout\,
	combout => \de|s_debounceCnt~20_combout\);

-- Location: FF_X99_Y41_N9
\de|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~20_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y42_N16
\de|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~6_combout\ = (\de|s_debounceCnt\(3) & (\de|Add0~5\ & VCC)) # (!\de|s_debounceCnt\(3) & (!\de|Add0~5\))
-- \de|Add0~7\ = CARRY((!\de|s_debounceCnt\(3) & !\de|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(3),
	datad => VCC,
	cin => \de|Add0~5\,
	combout => \de|Add0~6_combout\,
	cout => \de|Add0~7\);

-- Location: LCCOMB_X98_Y42_N18
\de|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~8_combout\ = (\de|s_debounceCnt\(4) & ((GND) # (!\de|Add0~7\))) # (!\de|s_debounceCnt\(4) & (\de|Add0~7\ $ (GND)))
-- \de|Add0~9\ = CARRY((\de|s_debounceCnt\(4)) # (!\de|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(4),
	datad => VCC,
	cin => \de|Add0~7\,
	combout => \de|Add0~8_combout\,
	cout => \de|Add0~9\);

-- Location: LCCOMB_X99_Y41_N0
\de|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~22_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~8_combout\,
	combout => \de|s_debounceCnt~22_combout\);

-- Location: FF_X99_Y41_N1
\de|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~22_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y42_N20
\de|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~10_combout\ = (\de|s_debounceCnt\(5) & (\de|Add0~9\ & VCC)) # (!\de|s_debounceCnt\(5) & (!\de|Add0~9\))
-- \de|Add0~11\ = CARRY((!\de|s_debounceCnt\(5) & !\de|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(5),
	datad => VCC,
	cin => \de|Add0~9\,
	combout => \de|Add0~10_combout\,
	cout => \de|Add0~11\);

-- Location: LCCOMB_X98_Y41_N30
\de|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~27_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~10_combout\,
	combout => \de|s_debounceCnt~27_combout\);

-- Location: FF_X98_Y41_N31
\de|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~27_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y42_N22
\de|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~12_combout\ = (\de|s_debounceCnt\(6) & ((GND) # (!\de|Add0~11\))) # (!\de|s_debounceCnt\(6) & (\de|Add0~11\ $ (GND)))
-- \de|Add0~13\ = CARRY((\de|s_debounceCnt\(6)) # (!\de|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(6),
	datad => VCC,
	cin => \de|Add0~11\,
	combout => \de|Add0~12_combout\,
	cout => \de|Add0~13\);

-- Location: LCCOMB_X100_Y41_N2
\de|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~1_combout\ = (\de|s_debounceCnt[17]~0_combout\ & ((\de|Add0~12_combout\) # (!\de|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_previousIn~q\,
	datac => \de|Add0~12_combout\,
	datad => \de|s_debounceCnt[17]~0_combout\,
	combout => \de|s_debounceCnt~1_combout\);

-- Location: FF_X100_Y41_N3
\de|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~1_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y42_N24
\de|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~14_combout\ = (\de|s_debounceCnt\(7) & (\de|Add0~13\ & VCC)) # (!\de|s_debounceCnt\(7) & (!\de|Add0~13\))
-- \de|Add0~15\ = CARRY((!\de|s_debounceCnt\(7) & !\de|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(7),
	datad => VCC,
	cin => \de|Add0~13\,
	combout => \de|Add0~14_combout\,
	cout => \de|Add0~15\);

-- Location: LCCOMB_X98_Y42_N8
\de|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~11_combout\ = (\de|s_debounceCnt[17]~0_combout\ & (\de|s_previousIn~q\ & \de|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt[17]~0_combout\,
	datab => \de|s_previousIn~q\,
	datad => \de|Add0~14_combout\,
	combout => \de|s_debounceCnt~11_combout\);

-- Location: FF_X98_Y42_N9
\de|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~11_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y42_N26
\de|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~16_combout\ = (\de|s_debounceCnt\(8) & ((GND) # (!\de|Add0~15\))) # (!\de|s_debounceCnt\(8) & (\de|Add0~15\ $ (GND)))
-- \de|Add0~17\ = CARRY((\de|s_debounceCnt\(8)) # (!\de|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(8),
	datad => VCC,
	cin => \de|Add0~15\,
	combout => \de|Add0~16_combout\,
	cout => \de|Add0~17\);

-- Location: LCCOMB_X98_Y42_N6
\de|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~12_combout\ = (\de|s_debounceCnt[17]~0_combout\ & ((\de|Add0~16_combout\) # (!\de|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|Add0~16_combout\,
	datad => \de|s_debounceCnt[17]~0_combout\,
	combout => \de|s_debounceCnt~12_combout\);

-- Location: FF_X98_Y42_N7
\de|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~12_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y42_N28
\de|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~18_combout\ = (\de|s_debounceCnt\(9) & (\de|Add0~17\ & VCC)) # (!\de|s_debounceCnt\(9) & (!\de|Add0~17\))
-- \de|Add0~19\ = CARRY((!\de|s_debounceCnt\(9) & !\de|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(9),
	datad => VCC,
	cin => \de|Add0~17\,
	combout => \de|Add0~18_combout\,
	cout => \de|Add0~19\);

-- Location: LCCOMB_X98_Y42_N0
\de|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~13_combout\ = (\de|s_debounceCnt[17]~0_combout\ & ((\de|Add0~18_combout\) # (!\de|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|Add0~18_combout\,
	datad => \de|s_debounceCnt[17]~0_combout\,
	combout => \de|s_debounceCnt~13_combout\);

-- Location: FF_X98_Y42_N1
\de|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~13_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y42_N30
\de|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~20_combout\ = (\de|s_debounceCnt\(10) & ((GND) # (!\de|Add0~19\))) # (!\de|s_debounceCnt\(10) & (\de|Add0~19\ $ (GND)))
-- \de|Add0~21\ = CARRY((\de|s_debounceCnt\(10)) # (!\de|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(10),
	datad => VCC,
	cin => \de|Add0~19\,
	combout => \de|Add0~20_combout\,
	cout => \de|Add0~21\);

-- Location: LCCOMB_X98_Y42_N2
\de|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~14_combout\ = (\de|s_previousIn~q\ & (\de|Add0~20_combout\ & \de|s_debounceCnt[17]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|Add0~20_combout\,
	datad => \de|s_debounceCnt[17]~0_combout\,
	combout => \de|s_debounceCnt~14_combout\);

-- Location: FF_X98_Y42_N3
\de|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~14_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y41_N0
\de|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~22_combout\ = (\de|s_debounceCnt\(11) & (\de|Add0~21\ & VCC)) # (!\de|s_debounceCnt\(11) & (!\de|Add0~21\))
-- \de|Add0~23\ = CARRY((!\de|s_debounceCnt\(11) & !\de|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(11),
	datad => VCC,
	cin => \de|Add0~21\,
	combout => \de|Add0~22_combout\,
	cout => \de|Add0~23\);

-- Location: LCCOMB_X99_Y41_N22
\de|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~15_combout\ = (\de|s_debounceCnt[17]~0_combout\ & ((\de|Add0~22_combout\) # (!\de|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|Add0~22_combout\,
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	combout => \de|s_debounceCnt~15_combout\);

-- Location: FF_X99_Y41_N23
\de|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~15_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y41_N2
\de|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~24_combout\ = (\de|s_debounceCnt\(12) & ((GND) # (!\de|Add0~23\))) # (!\de|s_debounceCnt\(12) & (\de|Add0~23\ $ (GND)))
-- \de|Add0~25\ = CARRY((\de|s_debounceCnt\(12)) # (!\de|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(12),
	datad => VCC,
	cin => \de|Add0~23\,
	combout => \de|Add0~24_combout\,
	cout => \de|Add0~25\);

-- Location: LCCOMB_X97_Y41_N20
\de|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~7_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~24_combout\,
	combout => \de|s_debounceCnt~7_combout\);

-- Location: FF_X97_Y41_N21
\de|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~7_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y41_N4
\de|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~26_combout\ = (\de|s_debounceCnt\(13) & (\de|Add0~25\ & VCC)) # (!\de|s_debounceCnt\(13) & (!\de|Add0~25\))
-- \de|Add0~27\ = CARRY((!\de|s_debounceCnt\(13) & !\de|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(13),
	datad => VCC,
	cin => \de|Add0~25\,
	combout => \de|Add0~26_combout\,
	cout => \de|Add0~27\);

-- Location: LCCOMB_X97_Y41_N18
\de|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~8_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~26_combout\,
	combout => \de|s_debounceCnt~8_combout\);

-- Location: FF_X97_Y41_N19
\de|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~8_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y41_N6
\de|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~28_combout\ = (\de|s_debounceCnt\(14) & ((GND) # (!\de|Add0~27\))) # (!\de|s_debounceCnt\(14) & (\de|Add0~27\ $ (GND)))
-- \de|Add0~29\ = CARRY((\de|s_debounceCnt\(14)) # (!\de|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(14),
	datad => VCC,
	cin => \de|Add0~27\,
	combout => \de|Add0~28_combout\,
	cout => \de|Add0~29\);

-- Location: LCCOMB_X99_Y41_N16
\de|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~16_combout\ = (\de|s_debounceCnt[17]~0_combout\ & ((\de|Add0~28_combout\) # (!\de|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt[17]~0_combout\,
	datab => \de|s_previousIn~q\,
	datac => \de|Add0~28_combout\,
	combout => \de|s_debounceCnt~16_combout\);

-- Location: FF_X99_Y41_N17
\de|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~16_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y41_N8
\de|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~30_combout\ = (\de|s_debounceCnt\(15) & (\de|Add0~29\ & VCC)) # (!\de|s_debounceCnt\(15) & (!\de|Add0~29\))
-- \de|Add0~31\ = CARRY((!\de|s_debounceCnt\(15) & !\de|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(15),
	datad => VCC,
	cin => \de|Add0~29\,
	combout => \de|Add0~30_combout\,
	cout => \de|Add0~31\);

-- Location: LCCOMB_X98_Y41_N24
\de|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~4_combout\ = (\de|s_previousIn~q\ & (\de|Add0~30_combout\ & \de|s_debounceCnt[17]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_previousIn~q\,
	datac => \de|Add0~30_combout\,
	datad => \de|s_debounceCnt[17]~0_combout\,
	combout => \de|s_debounceCnt~4_combout\);

-- Location: FF_X98_Y41_N25
\de|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~4_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y41_N10
\de|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~32_combout\ = (\de|s_debounceCnt\(16) & ((GND) # (!\de|Add0~31\))) # (!\de|s_debounceCnt\(16) & (\de|Add0~31\ $ (GND)))
-- \de|Add0~33\ = CARRY((\de|s_debounceCnt\(16)) # (!\de|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(16),
	datad => VCC,
	cin => \de|Add0~31\,
	combout => \de|Add0~32_combout\,
	cout => \de|Add0~33\);

-- Location: LCCOMB_X98_Y41_N26
\de|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~5_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~32_combout\,
	combout => \de|s_debounceCnt~5_combout\);

-- Location: FF_X98_Y41_N27
\de|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~5_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y41_N12
\de|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~34_combout\ = (\de|s_debounceCnt\(17) & (\de|Add0~33\ & VCC)) # (!\de|s_debounceCnt\(17) & (!\de|Add0~33\))
-- \de|Add0~35\ = CARRY((!\de|s_debounceCnt\(17) & !\de|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(17),
	datad => VCC,
	cin => \de|Add0~33\,
	combout => \de|Add0~34_combout\,
	cout => \de|Add0~35\);

-- Location: LCCOMB_X98_Y41_N28
\de|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~6_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~34_combout\,
	combout => \de|s_debounceCnt~6_combout\);

-- Location: FF_X98_Y41_N29
\de|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~6_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(17));

-- Location: LCCOMB_X99_Y41_N12
\de|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_pulsedOut~0_combout\ = (!\de|s_debounceCnt\(6) & (!\de|s_debounceCnt\(17) & (!\de|s_debounceCnt\(16) & !\de|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(6),
	datab => \de|s_debounceCnt\(17),
	datac => \de|s_debounceCnt\(16),
	datad => \de|s_debounceCnt\(15),
	combout => \de|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X98_Y41_N14
\de|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~36_combout\ = (\de|s_debounceCnt\(18) & ((GND) # (!\de|Add0~35\))) # (!\de|s_debounceCnt\(18) & (\de|Add0~35\ $ (GND)))
-- \de|Add0~37\ = CARRY((\de|s_debounceCnt\(18)) # (!\de|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(18),
	datad => VCC,
	cin => \de|Add0~35\,
	combout => \de|Add0~36_combout\,
	cout => \de|Add0~37\);

-- Location: LCCOMB_X97_Y41_N2
\de|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[18]~17_combout\ = (\de|s_debounceCnt[17]~0_combout\ & (\de|s_debounceCnt[17]~3_combout\ & ((\de|Add0~36_combout\) # (!\de|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt[17]~0_combout\,
	datab => \de|s_previousIn~q\,
	datac => \de|Add0~36_combout\,
	datad => \de|s_debounceCnt[17]~3_combout\,
	combout => \de|s_debounceCnt[18]~17_combout\);

-- Location: FF_X97_Y41_N3
\de|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(18));

-- Location: LCCOMB_X98_Y41_N16
\de|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~38_combout\ = (\de|s_debounceCnt\(19) & (\de|Add0~37\ & VCC)) # (!\de|s_debounceCnt\(19) & (!\de|Add0~37\))
-- \de|Add0~39\ = CARRY((!\de|s_debounceCnt\(19) & !\de|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(19),
	datad => VCC,
	cin => \de|Add0~37\,
	combout => \de|Add0~38_combout\,
	cout => \de|Add0~39\);

-- Location: LCCOMB_X97_Y41_N28
\de|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[19]~18_combout\ = (\de|s_debounceCnt[17]~3_combout\ & (\de|s_debounceCnt[17]~0_combout\ & ((\de|Add0~38_combout\) # (!\de|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt[17]~3_combout\,
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~38_combout\,
	combout => \de|s_debounceCnt[19]~18_combout\);

-- Location: FF_X97_Y41_N29
\de|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(19));

-- Location: LCCOMB_X99_Y41_N18
\de|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_pulsedOut~3_combout\ = (!\de|s_debounceCnt\(11) & (!\de|s_debounceCnt\(14) & (!\de|s_debounceCnt\(19) & !\de|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(11),
	datab => \de|s_debounceCnt\(14),
	datac => \de|s_debounceCnt\(19),
	datad => \de|s_debounceCnt\(18),
	combout => \de|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X98_Y41_N18
\de|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~40_combout\ = (\de|s_debounceCnt\(20) & ((GND) # (!\de|Add0~39\))) # (!\de|s_debounceCnt\(20) & (\de|Add0~39\ $ (GND)))
-- \de|Add0~41\ = CARRY((\de|s_debounceCnt\(20)) # (!\de|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(20),
	datad => VCC,
	cin => \de|Add0~39\,
	combout => \de|Add0~40_combout\,
	cout => \de|Add0~41\);

-- Location: LCCOMB_X98_Y41_N20
\de|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~42_combout\ = (\de|s_debounceCnt\(21) & (\de|Add0~41\ & VCC)) # (!\de|s_debounceCnt\(21) & (!\de|Add0~41\))
-- \de|Add0~43\ = CARRY((!\de|s_debounceCnt\(21) & !\de|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \de|s_debounceCnt\(21),
	datad => VCC,
	cin => \de|Add0~41\,
	combout => \de|Add0~42_combout\,
	cout => \de|Add0~43\);

-- Location: LCCOMB_X97_Y41_N6
\de|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[21]~10_combout\ = (\de|s_debounceCnt[17]~0_combout\ & (\de|s_previousIn~q\ & (\de|Add0~42_combout\ & \de|s_debounceCnt[17]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt[17]~0_combout\,
	datab => \de|s_previousIn~q\,
	datac => \de|Add0~42_combout\,
	datad => \de|s_debounceCnt[17]~3_combout\,
	combout => \de|s_debounceCnt[21]~10_combout\);

-- Location: FF_X97_Y41_N7
\de|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(21));

-- Location: LCCOMB_X97_Y41_N0
\de|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_pulsedOut~1_combout\ = (!\de|s_debounceCnt\(21) & (!\de|s_debounceCnt\(13) & (!\de|s_debounceCnt\(20) & !\de|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(21),
	datab => \de|s_debounceCnt\(13),
	datac => \de|s_debounceCnt\(20),
	datad => \de|s_debounceCnt\(12),
	combout => \de|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X98_Y42_N4
\de|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_pulsedOut~2_combout\ = (!\de|s_debounceCnt\(8) & (!\de|s_debounceCnt\(10) & (!\de|s_debounceCnt\(7) & !\de|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(8),
	datab => \de|s_debounceCnt\(10),
	datac => \de|s_debounceCnt\(7),
	datad => \de|s_debounceCnt\(9),
	combout => \de|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X99_Y41_N24
\de|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_pulsedOut~4_combout\ = (\de|s_pulsedOut~0_combout\ & (\de|s_pulsedOut~3_combout\ & (\de|s_pulsedOut~1_combout\ & \de|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~0_combout\,
	datab => \de|s_pulsedOut~3_combout\,
	datac => \de|s_pulsedOut~1_combout\,
	datad => \de|s_pulsedOut~2_combout\,
	combout => \de|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X99_Y41_N20
\de|s_debounceCnt[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[17]~2_combout\ = ((\de|s_debounceCnt\(5)) # ((\de|s_debounceCnt\(0)) # (!\de|s_pulsedOut~4_combout\))) # (!\de|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~5_combout\,
	datab => \de|s_debounceCnt\(5),
	datac => \de|s_debounceCnt\(0),
	datad => \de|s_pulsedOut~4_combout\,
	combout => \de|s_debounceCnt[17]~2_combout\);

-- Location: LCCOMB_X99_Y41_N10
\de|s_debounceCnt[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[17]~3_combout\ = (\de|s_debounceCnt\(22)) # (((\de|s_debounceCnt[17]~2_combout\) # (!\de|s_previousIn~q\)) # (!\de|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(22),
	datab => \de|s_dirtyIn~q\,
	datac => \de|s_previousIn~q\,
	datad => \de|s_debounceCnt[17]~2_combout\,
	combout => \de|s_debounceCnt[17]~3_combout\);

-- Location: LCCOMB_X97_Y41_N4
\de|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[20]~9_combout\ = (\de|s_debounceCnt[17]~3_combout\ & (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt[17]~3_combout\,
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~40_combout\,
	combout => \de|s_debounceCnt[20]~9_combout\);

-- Location: FF_X97_Y41_N5
\de|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(20));

-- Location: LCCOMB_X97_Y41_N14
\de|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|LessThan0~0_combout\ = (!\de|s_debounceCnt\(20) & !\de|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \de|s_debounceCnt\(20),
	datad => \de|s_debounceCnt\(21),
	combout => \de|LessThan0~0_combout\);

-- Location: LCCOMB_X97_Y41_N22
\de|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|LessThan0~6_combout\ = (\de|s_debounceCnt\(6) & (((\de|s_debounceCnt\(0)) # (\de|s_debounceCnt\(5))) # (!\de|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~5_combout\,
	datab => \de|s_debounceCnt\(0),
	datac => \de|s_debounceCnt\(6),
	datad => \de|s_debounceCnt\(5),
	combout => \de|LessThan0~6_combout\);

-- Location: LCCOMB_X97_Y41_N10
\de|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|LessThan0~4_combout\ = (\de|s_debounceCnt\(14) & (\de|s_debounceCnt\(18) & (\de|s_debounceCnt\(8) & \de|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(14),
	datab => \de|s_debounceCnt\(18),
	datac => \de|s_debounceCnt\(8),
	datad => \de|s_debounceCnt\(19),
	combout => \de|LessThan0~4_combout\);

-- Location: LCCOMB_X97_Y41_N8
\de|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|LessThan0~5_combout\ = (\de|s_debounceCnt\(11) & (\de|s_debounceCnt\(9) & \de|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(11),
	datac => \de|s_debounceCnt\(9),
	datad => \de|LessThan0~4_combout\,
	combout => \de|LessThan0~5_combout\);

-- Location: LCCOMB_X97_Y41_N16
\de|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|LessThan0~1_combout\ = (\de|s_debounceCnt\(12)) # ((\de|s_debounceCnt\(13)) # ((\de|s_debounceCnt\(11) & \de|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(11),
	datab => \de|s_debounceCnt\(12),
	datac => \de|s_debounceCnt\(10),
	datad => \de|s_debounceCnt\(13),
	combout => \de|LessThan0~1_combout\);

-- Location: LCCOMB_X97_Y41_N30
\de|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|LessThan0~2_combout\ = (\de|s_debounceCnt\(16)) # ((\de|s_debounceCnt\(15)) # ((\de|s_debounceCnt\(14) & \de|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(14),
	datab => \de|s_debounceCnt\(16),
	datac => \de|s_debounceCnt\(15),
	datad => \de|LessThan0~1_combout\,
	combout => \de|LessThan0~2_combout\);

-- Location: LCCOMB_X97_Y41_N12
\de|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|LessThan0~3_combout\ = (\de|s_debounceCnt\(18) & (\de|s_debounceCnt\(19) & ((\de|s_debounceCnt\(17)) # (\de|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(18),
	datab => \de|s_debounceCnt\(17),
	datac => \de|LessThan0~2_combout\,
	datad => \de|s_debounceCnt\(19),
	combout => \de|LessThan0~3_combout\);

-- Location: LCCOMB_X97_Y41_N24
\de|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|LessThan0~7_combout\ = (\de|LessThan0~3_combout\) # ((\de|LessThan0~5_combout\ & ((\de|LessThan0~6_combout\) # (\de|s_debounceCnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|LessThan0~6_combout\,
	datab => \de|s_debounceCnt\(7),
	datac => \de|LessThan0~5_combout\,
	datad => \de|LessThan0~3_combout\,
	combout => \de|LessThan0~7_combout\);

-- Location: LCCOMB_X99_Y41_N28
\de|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[22]~24_combout\ = (\de|s_debounceCnt\(22) & (\de|LessThan0~0_combout\ & (!\de|LessThan0~7_combout\))) # (!\de|s_debounceCnt\(22) & (((\de|s_debounceCnt[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(22),
	datab => \de|LessThan0~0_combout\,
	datac => \de|LessThan0~7_combout\,
	datad => \de|s_debounceCnt[17]~2_combout\,
	combout => \de|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X99_Y41_N30
\de|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[22]~25_combout\ = (\de|s_dirtyIn~q\ & \de|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_dirtyIn~q\,
	datad => \de|s_debounceCnt[22]~24_combout\,
	combout => \de|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X98_Y41_N22
\de|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|Add0~44_combout\ = \de|Add0~43\ $ (\de|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \de|s_debounceCnt\(22),
	cin => \de|Add0~43\,
	combout => \de|Add0~44_combout\);

-- Location: LCCOMB_X99_Y41_N6
\de|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[22]~26_combout\ = (\de|s_previousIn~q\ & (((\de|s_debounceCnt[22]~25_combout\ & \de|Add0~44_combout\)))) # (!\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt[17]~0_combout\,
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[22]~25_combout\,
	datad => \de|Add0~44_combout\,
	combout => \de|s_debounceCnt[22]~26_combout\);

-- Location: FF_X99_Y41_N7
\de|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(22));

-- Location: LCCOMB_X97_Y41_N26
\de|s_debounceCnt[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt[17]~0_combout\ = (\de|s_dirtyIn~q\ & (((\de|LessThan0~0_combout\ & !\de|LessThan0~7_combout\)) # (!\de|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_dirtyIn~q\,
	datab => \de|s_debounceCnt\(22),
	datac => \de|LessThan0~0_combout\,
	datad => \de|LessThan0~7_combout\,
	combout => \de|s_debounceCnt[17]~0_combout\);

-- Location: LCCOMB_X99_Y41_N26
\de|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_debounceCnt~21_combout\ = (\de|s_previousIn~q\ & (\de|s_debounceCnt[17]~0_combout\ & \de|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_previousIn~q\,
	datac => \de|s_debounceCnt[17]~0_combout\,
	datad => \de|Add0~6_combout\,
	combout => \de|s_debounceCnt~21_combout\);

-- Location: FF_X99_Y41_N27
\de|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_debounceCnt~21_combout\,
	ena => \de|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_debounceCnt\(3));

-- Location: LCCOMB_X99_Y41_N14
\de|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_pulsedOut~5_combout\ = (!\de|s_debounceCnt\(3) & (!\de|s_debounceCnt\(1) & (!\de|s_debounceCnt\(2) & !\de|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_debounceCnt\(3),
	datab => \de|s_debounceCnt\(1),
	datac => \de|s_debounceCnt\(2),
	datad => \de|s_debounceCnt\(4),
	combout => \de|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X100_Y41_N16
\de|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_pulsedOut~6_combout\ = (\de|s_dirtyIn~q\ & (!\de|s_debounceCnt\(22) & (\de|s_debounceCnt\(0) & \de|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_dirtyIn~q\,
	datab => \de|s_debounceCnt\(22),
	datac => \de|s_debounceCnt\(0),
	datad => \de|s_previousIn~q\,
	combout => \de|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X100_Y41_N28
\de|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \de|s_pulsedOut~7_combout\ = (\de|s_pulsedOut~5_combout\ & (\de|s_pulsedOut~6_combout\ & (!\de|s_debounceCnt\(5) & \de|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~5_combout\,
	datab => \de|s_pulsedOut~6_combout\,
	datac => \de|s_debounceCnt\(5),
	datad => \de|s_pulsedOut~4_combout\,
	combout => \de|s_pulsedOut~7_combout\);

-- Location: FF_X100_Y41_N29
\de|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \de|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \de|s_pulsedOut~q\);

-- Location: LCCOMB_X98_Y51_N2
\t1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~0_combout\ = \t1|s_count\(0) $ (VCC)
-- \t1|Add0~1\ = CARRY(\t1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(0),
	datad => VCC,
	combout => \t1|Add0~0_combout\,
	cout => \t1|Add0~1\);

-- Location: LCCOMB_X98_Y50_N10
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|s_count\(20) & (\t1|Add0~39\ $ (GND))) # (!\t1|s_count\(20) & (!\t1|Add0~39\ & VCC))
-- \t1|Add0~41\ = CARRY((\t1|s_count\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: LCCOMB_X98_Y50_N12
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|s_count\(21) & (!\t1|Add0~41\)) # (!\t1|s_count\(21) & ((\t1|Add0~41\) # (GND)))
-- \t1|Add0~43\ = CARRY((!\t1|Add0~41\) # (!\t1|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(21),
	datad => VCC,
	cin => \t1|Add0~41\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X99_Y50_N26
\t1|s_count[21]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[21]~15_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~42_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|Add0~42_combout\,
	combout => \t1|s_count[21]~15_combout\);

-- Location: FF_X99_Y50_N27
\t1|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[21]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(21));

-- Location: LCCOMB_X98_Y50_N14
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|s_count\(22) & (\t1|Add0~43\ $ (GND))) # (!\t1|s_count\(22) & (!\t1|Add0~43\ & VCC))
-- \t1|Add0~45\ = CARRY((\t1|s_count\(22) & !\t1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(22),
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~44_combout\,
	cout => \t1|Add0~45\);

-- Location: LCCOMB_X97_Y50_N14
\t1|s_count[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[22]~22_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~44_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~44_combout\,
	combout => \t1|s_count[22]~22_combout\);

-- Location: FF_X97_Y50_N15
\t1|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(22));

-- Location: LCCOMB_X98_Y50_N16
\t1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~46_combout\ = (\t1|s_count\(23) & (!\t1|Add0~45\)) # (!\t1|s_count\(23) & ((\t1|Add0~45\) # (GND)))
-- \t1|Add0~47\ = CARRY((!\t1|Add0~45\) # (!\t1|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(23),
	datad => VCC,
	cin => \t1|Add0~45\,
	combout => \t1|Add0~46_combout\,
	cout => \t1|Add0~47\);

-- Location: LCCOMB_X97_Y50_N16
\t1|s_count[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[23]~23_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~46_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~46_combout\,
	combout => \t1|s_count[23]~23_combout\);

-- Location: FF_X97_Y50_N17
\t1|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(23));

-- Location: LCCOMB_X98_Y50_N18
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = (\t1|s_count\(24) & (\t1|Add0~47\ $ (GND))) # (!\t1|s_count\(24) & (!\t1|Add0~47\ & VCC))
-- \t1|Add0~49\ = CARRY((\t1|s_count\(24) & !\t1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(24),
	datad => VCC,
	cin => \t1|Add0~47\,
	combout => \t1|Add0~48_combout\,
	cout => \t1|Add0~49\);

-- Location: LCCOMB_X97_Y50_N8
\t1|s_count[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[24]~14_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~48_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~48_combout\,
	combout => \t1|s_count[24]~14_combout\);

-- Location: FF_X97_Y50_N9
\t1|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(24));

-- Location: LCCOMB_X98_Y50_N20
\t1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~50_combout\ = (\t1|s_count\(25) & (!\t1|Add0~49\)) # (!\t1|s_count\(25) & ((\t1|Add0~49\) # (GND)))
-- \t1|Add0~51\ = CARRY((!\t1|Add0~49\) # (!\t1|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(25),
	datad => VCC,
	cin => \t1|Add0~49\,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~51\);

-- Location: LCCOMB_X99_Y51_N18
\t1|s_count[25]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[25]~19_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~50_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~50_combout\,
	combout => \t1|s_count[25]~19_combout\);

-- Location: FF_X99_Y51_N19
\t1|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[25]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(25));

-- Location: LCCOMB_X98_Y50_N22
\t1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~52_combout\ = (\t1|s_count\(26) & (\t1|Add0~51\ $ (GND))) # (!\t1|s_count\(26) & (!\t1|Add0~51\ & VCC))
-- \t1|Add0~53\ = CARRY((\t1|s_count\(26) & !\t1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(26),
	datad => VCC,
	cin => \t1|Add0~51\,
	combout => \t1|Add0~52_combout\,
	cout => \t1|Add0~53\);

-- Location: LCCOMB_X99_Y50_N30
\t1|s_count[26]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[26]~29_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~52_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|Add0~52_combout\,
	combout => \t1|s_count[26]~29_combout\);

-- Location: FF_X99_Y50_N31
\t1|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[26]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(26));

-- Location: LCCOMB_X98_Y50_N24
\t1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~54_combout\ = (\t1|s_count\(27) & (!\t1|Add0~53\)) # (!\t1|s_count\(27) & ((\t1|Add0~53\) # (GND)))
-- \t1|Add0~55\ = CARRY((!\t1|Add0~53\) # (!\t1|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(27),
	datad => VCC,
	cin => \t1|Add0~53\,
	combout => \t1|Add0~54_combout\,
	cout => \t1|Add0~55\);

-- Location: LCCOMB_X99_Y50_N20
\t1|s_count[27]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[27]~31_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~54_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|Add0~54_combout\,
	combout => \t1|s_count[27]~31_combout\);

-- Location: FF_X99_Y50_N21
\t1|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[27]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(27));

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

-- Location: LCCOMB_X99_Y51_N2
\t1|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~1_combout\ = (\t1|s_count\(9) & (\t1|s_count\(27) & (!\KEY[1]~input_o\ & !\t1|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(9),
	datab => \t1|s_count\(27),
	datac => \KEY[1]~input_o\,
	datad => \t1|s_count\(20),
	combout => \t1|p1~1_combout\);

-- Location: LCCOMB_X99_Y50_N22
\t1|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|p1~0_combout\ = (!\t1|s_count\(14) & (\t1|s_count\(26) & (\t1|s_count\(18) & !\t1|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(14),
	datab => \t1|s_count\(26),
	datac => \t1|s_count\(18),
	datad => \t1|s_count\(19),
	combout => \t1|p1~0_combout\);

-- Location: LCCOMB_X97_Y50_N26
\t1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal1~0_combout\ = (!\t1|s_count\(10) & (!\t1|s_count\(8) & (!\t1|s_count\(24) & !\t1|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(10),
	datab => \t1|s_count\(8),
	datac => \t1|s_count\(24),
	datad => \t1|s_count\(16),
	combout => \t1|Equal1~0_combout\);

-- Location: LCCOMB_X98_Y50_N26
\t1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~56_combout\ = (\t1|s_count\(28) & (\t1|Add0~55\ $ (GND))) # (!\t1|s_count\(28) & (!\t1|Add0~55\ & VCC))
-- \t1|Add0~57\ = CARRY((\t1|s_count\(28) & !\t1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(28),
	datad => VCC,
	cin => \t1|Add0~55\,
	combout => \t1|Add0~56_combout\,
	cout => \t1|Add0~57\);

-- Location: LCCOMB_X97_Y50_N18
\t1|s_count[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[28]~24_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~56_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~56_combout\,
	combout => \t1|s_count[28]~24_combout\);

-- Location: FF_X97_Y50_N19
\t1|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[28]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(28));

-- Location: LCCOMB_X97_Y50_N22
\t1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal2~1_combout\ = (\t1|s_count\(13) & (\t1|s_count\(12) & (\t1|s_count\(22) & \t1|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(13),
	datab => \t1|s_count\(12),
	datac => \t1|s_count\(22),
	datad => \t1|s_count\(23),
	combout => \t1|Equal2~1_combout\);

-- Location: LCCOMB_X99_Y51_N28
\t1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal2~0_combout\ = (\t1|s_count\(7) & (\t1|s_count\(17) & (\t1|s_count\(15) & \t1|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(7),
	datab => \t1|s_count\(17),
	datac => \t1|s_count\(15),
	datad => \t1|s_count\(25),
	combout => \t1|Equal2~0_combout\);

-- Location: LCCOMB_X97_Y50_N20
\t1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal2~2_combout\ = (\t1|s_count\(21) & (\t1|Equal2~1_combout\ & \t1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(21),
	datac => \t1|Equal2~1_combout\,
	datad => \t1|Equal2~0_combout\,
	combout => \t1|Equal2~2_combout\);

-- Location: LCCOMB_X97_Y50_N0
\t1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal2~3_combout\ = (\t1|Equal1~0_combout\ & (!\t1|s_count\(28) & (\t1|Equal2~2_combout\ & \t1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal1~0_combout\,
	datab => \t1|s_count\(28),
	datac => \t1|Equal2~2_combout\,
	datad => \t1|Equal0~2_combout\,
	combout => \t1|Equal2~3_combout\);

-- Location: LCCOMB_X97_Y51_N10
\t1|s_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[0]~0_combout\ = (\t1|Add0~0_combout\ & (((!\t1|Equal2~3_combout\) # (!\t1|p1~0_combout\)) # (!\t1|p1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~0_combout\,
	datab => \t1|p1~1_combout\,
	datac => \t1|p1~0_combout\,
	datad => \t1|Equal2~3_combout\,
	combout => \t1|s_count[0]~0_combout\);

-- Location: LCCOMB_X97_Y51_N6
\t1|s_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[0]~1_combout\ = (\t1|s_count[0]~0_combout\ & (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count[0]~0_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[0]~1_combout\);

-- Location: FF_X97_Y51_N7
\t1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(0));

-- Location: LCCOMB_X98_Y51_N4
\t1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~2_combout\ = (\t1|s_count\(1) & (!\t1|Add0~1\)) # (!\t1|s_count\(1) & ((\t1|Add0~1\) # (GND)))
-- \t1|Add0~3\ = CARRY((!\t1|Add0~1\) # (!\t1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(1),
	datad => VCC,
	cin => \t1|Add0~1\,
	combout => \t1|Add0~2_combout\,
	cout => \t1|Add0~3\);

-- Location: LCCOMB_X98_Y51_N0
\t1|s_count[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[1]~2_combout\ = (\t1|Add0~2_combout\ & (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal1~5_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Add0~2_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|s_count[1]~2_combout\);

-- Location: FF_X98_Y51_N1
\t1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(1));

-- Location: LCCOMB_X98_Y51_N6
\t1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~4_combout\ = (\t1|s_count\(2) & (\t1|Add0~3\ $ (GND))) # (!\t1|s_count\(2) & (!\t1|Add0~3\ & VCC))
-- \t1|Add0~5\ = CARRY((\t1|s_count\(2) & !\t1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(2),
	datad => VCC,
	cin => \t1|Add0~3\,
	combout => \t1|Add0~4_combout\,
	cout => \t1|Add0~5\);

-- Location: LCCOMB_X97_Y51_N16
\t1|s_count[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[2]~3_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~4_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Add0~4_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[2]~3_combout\);

-- Location: FF_X97_Y51_N17
\t1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(2));

-- Location: LCCOMB_X98_Y51_N8
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = (\t1|s_count\(3) & (!\t1|Add0~5\)) # (!\t1|s_count\(3) & ((\t1|Add0~5\) # (GND)))
-- \t1|Add0~7\ = CARRY((!\t1|Add0~5\) # (!\t1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(3),
	datad => VCC,
	cin => \t1|Add0~5\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: LCCOMB_X97_Y51_N14
\t1|s_count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[3]~4_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~6_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \t1|Add0~6_combout\,
	datac => \de|s_pulsedOut~q\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[3]~4_combout\);

-- Location: FF_X97_Y51_N15
\t1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(3));

-- Location: LCCOMB_X98_Y51_N10
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|s_count\(4) & (\t1|Add0~7\ $ (GND))) # (!\t1|s_count\(4) & (!\t1|Add0~7\ & VCC))
-- \t1|Add0~9\ = CARRY((\t1|s_count\(4) & !\t1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(4),
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~8_combout\,
	cout => \t1|Add0~9\);

-- Location: LCCOMB_X97_Y51_N26
\t1|s_count[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[4]~5_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \t1|Add0~8_combout\,
	datac => \de|s_pulsedOut~q\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[4]~5_combout\);

-- Location: FF_X97_Y51_N27
\t1|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(4));

-- Location: LCCOMB_X98_Y51_N12
\t1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~10_combout\ = (\t1|s_count\(5) & (!\t1|Add0~9\)) # (!\t1|s_count\(5) & ((\t1|Add0~9\) # (GND)))
-- \t1|Add0~11\ = CARRY((!\t1|Add0~9\) # (!\t1|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(5),
	datad => VCC,
	cin => \t1|Add0~9\,
	combout => \t1|Add0~10_combout\,
	cout => \t1|Add0~11\);

-- Location: LCCOMB_X97_Y51_N12
\t1|s_count[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[5]~6_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~10_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Add0~10_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[5]~6_combout\);

-- Location: FF_X97_Y51_N13
\t1|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(5));

-- Location: LCCOMB_X98_Y51_N14
\t1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~12_combout\ = (\t1|s_count\(6) & (\t1|Add0~11\ $ (GND))) # (!\t1|s_count\(6) & (!\t1|Add0~11\ & VCC))
-- \t1|Add0~13\ = CARRY((\t1|s_count\(6) & !\t1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(6),
	datad => VCC,
	cin => \t1|Add0~11\,
	combout => \t1|Add0~12_combout\,
	cout => \t1|Add0~13\);

-- Location: LCCOMB_X97_Y51_N2
\t1|s_count[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[6]~7_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~12_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Add0~12_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[6]~7_combout\);

-- Location: FF_X97_Y51_N3
\t1|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(6));

-- Location: LCCOMB_X98_Y51_N16
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = (\t1|s_count\(7) & (!\t1|Add0~13\)) # (!\t1|s_count\(7) & ((\t1|Add0~13\) # (GND)))
-- \t1|Add0~15\ = CARRY((!\t1|Add0~13\) # (!\t1|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(7),
	datad => VCC,
	cin => \t1|Add0~13\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: LCCOMB_X99_Y51_N12
\t1|s_count[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[7]~16_combout\ = (\t1|Add0~14_combout\ & (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~14_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[7]~16_combout\);

-- Location: FF_X99_Y51_N13
\t1|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(7));

-- Location: LCCOMB_X98_Y51_N18
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|s_count\(8) & (\t1|Add0~15\ $ (GND))) # (!\t1|s_count\(8) & (!\t1|Add0~15\ & VCC))
-- \t1|Add0~17\ = CARRY((\t1|s_count\(8) & !\t1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(8),
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~16_combout\,
	cout => \t1|Add0~17\);

-- Location: LCCOMB_X99_Y51_N10
\t1|s_count[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[8]~11_combout\ = (\t1|Add0~16_combout\ & (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Add0~16_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[8]~11_combout\);

-- Location: FF_X99_Y51_N11
\t1|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(8));

-- Location: LCCOMB_X98_Y51_N20
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|s_count\(9) & (!\t1|Add0~17\)) # (!\t1|s_count\(9) & ((\t1|Add0~17\) # (GND)))
-- \t1|Add0~19\ = CARRY((!\t1|Add0~17\) # (!\t1|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: LCCOMB_X99_Y50_N14
\t1|s_count[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[9]~30_combout\ = (\t1|Add0~18_combout\ & (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Add0~18_combout\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|s_count[9]~30_combout\);

-- Location: FF_X99_Y50_N15
\t1|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(9));

-- Location: LCCOMB_X98_Y51_N22
\t1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|s_count\(10) & (\t1|Add0~19\ $ (GND))) # (!\t1|s_count\(10) & (!\t1|Add0~19\ & VCC))
-- \t1|Add0~21\ = CARRY((\t1|s_count\(10) & !\t1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(10),
	datad => VCC,
	cin => \t1|Add0~19\,
	combout => \t1|Add0~20_combout\,
	cout => \t1|Add0~21\);

-- Location: LCCOMB_X97_Y50_N12
\t1|s_count[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[10]~12_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~20_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~20_combout\,
	combout => \t1|s_count[10]~12_combout\);

-- Location: FF_X97_Y50_N13
\t1|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[10]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(10));

-- Location: LCCOMB_X98_Y51_N24
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|s_count\(11) & (!\t1|Add0~21\)) # (!\t1|s_count\(11) & ((\t1|Add0~21\) # (GND)))
-- \t1|Add0~23\ = CARRY((!\t1|Add0~21\) # (!\t1|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X97_Y51_N4
\t1|s_count[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[11]~8_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~22_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \t1|Add0~22_combout\,
	datac => \de|s_pulsedOut~q\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[11]~8_combout\);

-- Location: FF_X97_Y51_N5
\t1|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(11));

-- Location: LCCOMB_X98_Y51_N26
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|s_count\(12) & (\t1|Add0~23\ $ (GND))) # (!\t1|s_count\(12) & (!\t1|Add0~23\ & VCC))
-- \t1|Add0~25\ = CARRY((\t1|s_count\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: LCCOMB_X99_Y50_N0
\t1|s_count[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[12]~20_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~24_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|Add0~24_combout\,
	combout => \t1|s_count[12]~20_combout\);

-- Location: FF_X99_Y50_N1
\t1|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(12));

-- Location: LCCOMB_X98_Y51_N28
\t1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~26_combout\ = (\t1|s_count\(13) & (!\t1|Add0~25\)) # (!\t1|s_count\(13) & ((\t1|Add0~25\) # (GND)))
-- \t1|Add0~27\ = CARRY((!\t1|Add0~25\) # (!\t1|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(13),
	datad => VCC,
	cin => \t1|Add0~25\,
	combout => \t1|Add0~26_combout\,
	cout => \t1|Add0~27\);

-- Location: LCCOMB_X97_Y50_N24
\t1|s_count[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[13]~21_combout\ = (\t1|Add0~26_combout\ & (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Add0~26_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[13]~21_combout\);

-- Location: FF_X97_Y50_N25
\t1|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(13));

-- Location: LCCOMB_X98_Y51_N30
\t1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~28_combout\ = (\t1|s_count\(14) & (\t1|Add0~27\ $ (GND))) # (!\t1|s_count\(14) & (!\t1|Add0~27\ & VCC))
-- \t1|Add0~29\ = CARRY((\t1|s_count\(14) & !\t1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(14),
	datad => VCC,
	cin => \t1|Add0~27\,
	combout => \t1|Add0~28_combout\,
	cout => \t1|Add0~29\);

-- Location: LCCOMB_X99_Y51_N8
\t1|s_count[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[14]~26_combout\ = (\t1|Add0~28_combout\ & (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Add0~28_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[14]~26_combout\);

-- Location: FF_X99_Y51_N9
\t1|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(14));

-- Location: LCCOMB_X98_Y50_N0
\t1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~30_combout\ = (\t1|s_count\(15) & (!\t1|Add0~29\)) # (!\t1|s_count\(15) & ((\t1|Add0~29\) # (GND)))
-- \t1|Add0~31\ = CARRY((!\t1|Add0~29\) # (!\t1|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(15),
	datad => VCC,
	cin => \t1|Add0~29\,
	combout => \t1|Add0~30_combout\,
	cout => \t1|Add0~31\);

-- Location: LCCOMB_X99_Y51_N14
\t1|s_count[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[15]~17_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~30_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal0~8_combout\,
	datac => \t1|Add0~30_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[15]~17_combout\);

-- Location: FF_X99_Y51_N15
\t1|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(15));

-- Location: LCCOMB_X98_Y50_N2
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|s_count\(16) & (\t1|Add0~31\ $ (GND))) # (!\t1|s_count\(16) & (!\t1|Add0~31\ & VCC))
-- \t1|Add0~33\ = CARRY((\t1|s_count\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X97_Y50_N6
\t1|s_count[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[16]~13_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~32_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~32_combout\,
	combout => \t1|s_count[16]~13_combout\);

-- Location: FF_X97_Y50_N7
\t1|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[16]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(16));

-- Location: LCCOMB_X98_Y50_N4
\t1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~34_combout\ = (\t1|s_count\(17) & (!\t1|Add0~33\)) # (!\t1|s_count\(17) & ((\t1|Add0~33\) # (GND)))
-- \t1|Add0~35\ = CARRY((!\t1|Add0~33\) # (!\t1|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(17),
	datad => VCC,
	cin => \t1|Add0~33\,
	combout => \t1|Add0~34_combout\,
	cout => \t1|Add0~35\);

-- Location: LCCOMB_X99_Y51_N24
\t1|s_count[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[17]~18_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~34_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~34_combout\,
	combout => \t1|s_count[17]~18_combout\);

-- Location: FF_X99_Y51_N25
\t1|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(17));

-- Location: LCCOMB_X98_Y50_N6
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|s_count\(18) & (\t1|Add0~35\ $ (GND))) # (!\t1|s_count\(18) & (!\t1|Add0~35\ & VCC))
-- \t1|Add0~37\ = CARRY((\t1|s_count\(18) & !\t1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(18),
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~36_combout\,
	cout => \t1|Add0~37\);

-- Location: LCCOMB_X99_Y50_N4
\t1|s_count[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[18]~28_combout\ = (\t1|Add0~36_combout\ & (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Add0~36_combout\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|Equal0~8_combout\,
	combout => \t1|s_count[18]~28_combout\);

-- Location: FF_X99_Y50_N5
\t1|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[18]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(18));

-- Location: LCCOMB_X98_Y50_N8
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = (\t1|s_count\(19) & (!\t1|Add0~37\)) # (!\t1|s_count\(19) & ((\t1|Add0~37\) # (GND)))
-- \t1|Add0~39\ = CARRY((!\t1|Add0~37\) # (!\t1|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(19),
	datad => VCC,
	cin => \t1|Add0~37\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: LCCOMB_X99_Y50_N2
\t1|s_count[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[19]~27_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~38_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|Add0~38_combout\,
	combout => \t1|s_count[19]~27_combout\);

-- Location: FF_X99_Y50_N3
\t1|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(19));

-- Location: LCCOMB_X99_Y51_N6
\t1|s_count[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[20]~25_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~40_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \de|s_pulsedOut~q\,
	datab => \t1|Equal1~5_combout\,
	datac => \t1|Equal0~8_combout\,
	datad => \t1|Add0~40_combout\,
	combout => \t1|s_count[20]~25_combout\);

-- Location: FF_X99_Y51_N7
\t1|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(20));

-- Location: LCCOMB_X99_Y51_N30
\t1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~3_combout\ = (!\t1|s_count\(20) & (!\t1|s_count\(17) & (!\t1|s_count\(15) & !\t1|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(20),
	datab => \t1|s_count\(17),
	datac => \t1|s_count\(15),
	datad => \t1|s_count\(25),
	combout => \t1|Equal0~3_combout\);

-- Location: LCCOMB_X99_Y51_N26
\t1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~7_combout\ = (\t1|s_count\(8) & (\t1|s_count\(14) & (\t1|s_count\(19) & \t1|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(8),
	datab => \t1|s_count\(14),
	datac => \t1|s_count\(19),
	datad => \t1|s_count\(13),
	combout => \t1|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y50_N30
\t1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~5_combout\ = (\t1|s_count\(10) & (\t1|s_count\(28) & (\t1|s_count\(24) & \t1|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(10),
	datab => \t1|s_count\(28),
	datac => \t1|s_count\(24),
	datad => \t1|s_count\(16),
	combout => \t1|Equal0~5_combout\);

-- Location: LCCOMB_X99_Y50_N16
\t1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal1~1_combout\ = (!\t1|s_count\(9) & (!\t1|s_count\(7) & (!\t1|s_count\(21) & !\t1|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(9),
	datab => \t1|s_count\(7),
	datac => \t1|s_count\(21),
	datad => \t1|s_count\(12),
	combout => \t1|Equal1~1_combout\);

-- Location: LCCOMB_X97_Y50_N4
\t1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~4_combout\ = (\t1|s_count\(18) & (\t1|s_count\(22) & (\t1|s_count\(26) & \t1|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(18),
	datab => \t1|s_count\(22),
	datac => \t1|s_count\(26),
	datad => \t1|s_count\(23),
	combout => \t1|Equal0~4_combout\);

-- Location: LCCOMB_X99_Y51_N0
\t1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~6_combout\ = (\t1|Equal0~2_combout\ & (\t1|Equal0~5_combout\ & (\t1|Equal1~1_combout\ & \t1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~2_combout\,
	datab => \t1|Equal0~5_combout\,
	datac => \t1|Equal1~1_combout\,
	datad => \t1|Equal0~4_combout\,
	combout => \t1|Equal0~6_combout\);

-- Location: LCCOMB_X99_Y51_N4
\t1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~8_combout\ = (((!\t1|Equal0~6_combout\) # (!\t1|Equal0~7_combout\)) # (!\t1|s_count\(27))) # (!\t1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~3_combout\,
	datab => \t1|s_count\(27),
	datac => \t1|Equal0~7_combout\,
	datad => \t1|Equal0~6_combout\,
	combout => \t1|Equal0~8_combout\);

-- Location: LCCOMB_X98_Y50_N28
\t1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~58_combout\ = (\t1|s_count\(29) & (!\t1|Add0~57\)) # (!\t1|s_count\(29) & ((\t1|Add0~57\) # (GND)))
-- \t1|Add0~59\ = CARRY((!\t1|Add0~57\) # (!\t1|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(29),
	datad => VCC,
	cin => \t1|Add0~57\,
	combout => \t1|Add0~58_combout\,
	cout => \t1|Add0~59\);

-- Location: LCCOMB_X97_Y51_N20
\t1|s_count[29]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[29]~9_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~58_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Add0~58_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[29]~9_combout\);

-- Location: FF_X97_Y51_N21
\t1|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[29]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(29));

-- Location: LCCOMB_X98_Y50_N30
\t1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~60_combout\ = \t1|Add0~59\ $ (!\t1|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t1|s_count\(30),
	cin => \t1|Add0~59\,
	combout => \t1|Add0~60_combout\);

-- Location: LCCOMB_X97_Y51_N30
\t1|s_count[30]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[30]~10_combout\ = (\t1|Equal0~8_combout\ & (\t1|Add0~60_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Add0~60_combout\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|s_count[30]~10_combout\);

-- Location: FF_X97_Y51_N31
\t1|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|s_count[30]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(30));

-- Location: LCCOMB_X97_Y51_N22
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (!\t1|s_count\(4) & (!\t1|s_count\(6) & (!\t1|s_count\(11) & !\t1|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(4),
	datab => \t1|s_count\(6),
	datac => \t1|s_count\(11),
	datad => \t1|s_count\(5),
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X97_Y51_N28
\t1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~0_combout\ = (!\t1|s_count\(0) & (!\t1|s_count\(3) & (!\t1|s_count\(1) & !\t1|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(0),
	datab => \t1|s_count\(3),
	datac => \t1|s_count\(1),
	datad => \t1|s_count\(2),
	combout => \t1|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y51_N24
\t1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~2_combout\ = (!\t1|s_count\(30) & (!\t1|s_count\(29) & (\t1|Equal0~1_combout\ & \t1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(30),
	datab => \t1|s_count\(29),
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Equal0~0_combout\,
	combout => \t1|Equal0~2_combout\);

-- Location: LCCOMB_X97_Y50_N10
\t1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal1~3_combout\ = (!\t1|s_count\(18) & (!\t1|s_count\(22) & (!\t1|s_count\(26) & !\t1|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(18),
	datab => \t1|s_count\(22),
	datac => \t1|s_count\(26),
	datad => \t1|s_count\(23),
	combout => \t1|Equal1~3_combout\);

-- Location: LCCOMB_X99_Y50_N10
\t1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal1~2_combout\ = (!\t1|s_count\(13) & (!\t1|s_count\(19) & (!\t1|s_count\(14) & !\t1|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(13),
	datab => \t1|s_count\(19),
	datac => \t1|s_count\(14),
	datad => \t1|s_count\(27),
	combout => \t1|Equal1~2_combout\);

-- Location: LCCOMB_X97_Y50_N28
\t1|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal1~4_combout\ = (\t1|Equal1~3_combout\ & (\t1|Equal0~3_combout\ & (\t1|Equal1~2_combout\ & \t1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal1~3_combout\,
	datab => \t1|Equal0~3_combout\,
	datac => \t1|Equal1~2_combout\,
	datad => \t1|Equal1~1_combout\,
	combout => \t1|Equal1~4_combout\);

-- Location: LCCOMB_X97_Y50_N2
\t1|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal1~5_combout\ = (\t1|Equal0~2_combout\ & (!\t1|s_count\(28) & (\t1|Equal1~0_combout\ & \t1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~2_combout\,
	datab => \t1|s_count\(28),
	datac => \t1|Equal1~0_combout\,
	datad => \t1|Equal1~4_combout\,
	combout => \t1|Equal1~5_combout\);

-- Location: LCCOMB_X99_Y50_N12
\t1|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal2~4_combout\ = (\t1|s_count\(14) & (!\t1|s_count\(26) & (!\t1|s_count\(18) & \t1|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(14),
	datab => \t1|s_count\(26),
	datac => \t1|s_count\(18),
	datad => \t1|s_count\(19),
	combout => \t1|Equal2~4_combout\);

-- Location: LCCOMB_X99_Y50_N6
\t1|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal2~5_combout\ = (\t1|Equal2~4_combout\ & (!\t1|s_count\(9) & (\t1|s_count\(20) & !\t1|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal2~4_combout\,
	datab => \t1|s_count\(9),
	datac => \t1|s_count\(20),
	datad => \t1|s_count\(27),
	combout => \t1|Equal2~5_combout\);

-- Location: LCCOMB_X99_Y50_N28
\t1|pulseOut2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut2~0_combout\ = (\t1|pulseOut2~q\ & (!\t1|Equal1~5_combout\ & ((!\t1|Equal2~3_combout\) # (!\t1|Equal2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal2~5_combout\,
	datab => \t1|pulseOut2~q\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|Equal2~3_combout\,
	combout => \t1|pulseOut2~0_combout\);

-- Location: LCCOMB_X99_Y50_N24
\t1|pulseOut2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut2~1_combout\ = (\t1|pulseOut2~0_combout\) # ((\de|s_pulsedOut~q\ & \t1|Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \de|s_pulsedOut~q\,
	datac => \t1|Equal1~5_combout\,
	datad => \t1|pulseOut2~0_combout\,
	combout => \t1|pulseOut2~1_combout\);

-- Location: FF_X99_Y50_N25
\t1|pulseOut2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|pulseOut2~1_combout\,
	ena => \t1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|pulseOut2~q\);

-- Location: LCCOMB_X99_Y51_N22
\t1|pulseOut3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut3~0_combout\ = (!\t1|s_count\(8) & (\t1|s_count\(17) & (\t1|s_count\(15) & \t1|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(8),
	datab => \t1|s_count\(17),
	datac => \t1|s_count\(15),
	datad => \t1|s_count\(25),
	combout => \t1|pulseOut3~0_combout\);

-- Location: LCCOMB_X99_Y51_N20
\t1|pulseOut3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut3~1_combout\ = (\t1|s_count\(20) & (\t1|Equal1~2_combout\ & (\t1|pulseOut3~0_combout\ & \t1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(20),
	datab => \t1|Equal1~2_combout\,
	datac => \t1|pulseOut3~0_combout\,
	datad => \t1|Equal0~6_combout\,
	combout => \t1|pulseOut3~1_combout\);

-- Location: LCCOMB_X99_Y51_N16
\t1|pulseOut3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut3~2_combout\ = (\t1|pulseOut3~1_combout\ & ((\de|s_pulsedOut~q\) # ((!\t1|Equal1~5_combout\)))) # (!\t1|pulseOut3~1_combout\ & (\t1|pulseOut3~q\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|pulseOut3~1_combout\,
	datab => \de|s_pulsedOut~q\,
	datac => \t1|pulseOut3~q\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|pulseOut3~2_combout\);

-- Location: FF_X99_Y51_N17
\t1|pulseOut3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|pulseOut3~2_combout\,
	ena => \t1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|pulseOut3~q\);

-- Location: LCCOMB_X97_Y51_N8
\t1|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|pulseOut~0_combout\ = (\t1|Equal0~8_combout\ & ((\de|s_pulsedOut~q\) # (!\t1|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~8_combout\,
	datab => \de|s_pulsedOut~q\,
	datad => \t1|Equal1~5_combout\,
	combout => \t1|pulseOut~0_combout\);

-- Location: FF_X97_Y51_N9
\t1|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t1|pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|pulseOut~q\);

-- Location: LCCOMB_X69_Y54_N2
\f1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~0_combout\ = \f1|s_count\(0) $ (VCC)
-- \f1|Add0~1\ = CARRY(\f1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(0),
	datad => VCC,
	combout => \f1|Add0~0_combout\,
	cout => \f1|Add0~1\);

-- Location: FF_X69_Y54_N3
\f1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(0));

-- Location: LCCOMB_X69_Y54_N4
\f1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~2_combout\ = (\f1|s_count\(1) & (!\f1|Add0~1\)) # (!\f1|s_count\(1) & ((\f1|Add0~1\) # (GND)))
-- \f1|Add0~3\ = CARRY((!\f1|Add0~1\) # (!\f1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(1),
	datad => VCC,
	cin => \f1|Add0~1\,
	combout => \f1|Add0~2_combout\,
	cout => \f1|Add0~3\);

-- Location: FF_X69_Y54_N5
\f1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(1));

-- Location: LCCOMB_X69_Y54_N6
\f1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~4_combout\ = (\f1|s_count\(2) & (\f1|Add0~3\ $ (GND))) # (!\f1|s_count\(2) & (!\f1|Add0~3\ & VCC))
-- \f1|Add0~5\ = CARRY((\f1|s_count\(2) & !\f1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(2),
	datad => VCC,
	cin => \f1|Add0~3\,
	combout => \f1|Add0~4_combout\,
	cout => \f1|Add0~5\);

-- Location: FF_X69_Y54_N7
\f1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(2));

-- Location: LCCOMB_X69_Y54_N8
\f1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~6_combout\ = (\f1|s_count\(3) & (!\f1|Add0~5\)) # (!\f1|s_count\(3) & ((\f1|Add0~5\) # (GND)))
-- \f1|Add0~7\ = CARRY((!\f1|Add0~5\) # (!\f1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(3),
	datad => VCC,
	cin => \f1|Add0~5\,
	combout => \f1|Add0~6_combout\,
	cout => \f1|Add0~7\);

-- Location: FF_X69_Y54_N9
\f1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(3));

-- Location: LCCOMB_X69_Y54_N10
\f1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~8_combout\ = (\f1|s_count\(4) & (\f1|Add0~7\ $ (GND))) # (!\f1|s_count\(4) & (!\f1|Add0~7\ & VCC))
-- \f1|Add0~9\ = CARRY((\f1|s_count\(4) & !\f1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(4),
	datad => VCC,
	cin => \f1|Add0~7\,
	combout => \f1|Add0~8_combout\,
	cout => \f1|Add0~9\);

-- Location: FF_X69_Y54_N11
\f1|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(4));

-- Location: LCCOMB_X69_Y54_N12
\f1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~10_combout\ = (\f1|s_count\(5) & (!\f1|Add0~9\)) # (!\f1|s_count\(5) & ((\f1|Add0~9\) # (GND)))
-- \f1|Add0~11\ = CARRY((!\f1|Add0~9\) # (!\f1|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(5),
	datad => VCC,
	cin => \f1|Add0~9\,
	combout => \f1|Add0~10_combout\,
	cout => \f1|Add0~11\);

-- Location: FF_X69_Y54_N13
\f1|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(5));

-- Location: LCCOMB_X69_Y54_N14
\f1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~12_combout\ = (\f1|s_count\(6) & (\f1|Add0~11\ $ (GND))) # (!\f1|s_count\(6) & (!\f1|Add0~11\ & VCC))
-- \f1|Add0~13\ = CARRY((\f1|s_count\(6) & !\f1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(6),
	datad => VCC,
	cin => \f1|Add0~11\,
	combout => \f1|Add0~12_combout\,
	cout => \f1|Add0~13\);

-- Location: LCCOMB_X70_Y53_N0
\f1|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~7_combout\ = (\f1|Add0~12_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~12_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~7_combout\);

-- Location: FF_X70_Y53_N1
\f1|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(6));

-- Location: LCCOMB_X69_Y54_N16
\f1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~14_combout\ = (\f1|s_count\(7) & (!\f1|Add0~13\)) # (!\f1|s_count\(7) & ((\f1|Add0~13\) # (GND)))
-- \f1|Add0~15\ = CARRY((!\f1|Add0~13\) # (!\f1|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(7),
	datad => VCC,
	cin => \f1|Add0~13\,
	combout => \f1|Add0~14_combout\,
	cout => \f1|Add0~15\);

-- Location: FF_X69_Y54_N17
\f1|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(7));

-- Location: LCCOMB_X69_Y54_N18
\f1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~16_combout\ = (\f1|s_count\(8) & (\f1|Add0~15\ $ (GND))) # (!\f1|s_count\(8) & (!\f1|Add0~15\ & VCC))
-- \f1|Add0~17\ = CARRY((\f1|s_count\(8) & !\f1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(8),
	datad => VCC,
	cin => \f1|Add0~15\,
	combout => \f1|Add0~16_combout\,
	cout => \f1|Add0~17\);

-- Location: FF_X69_Y54_N19
\f1|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(8));

-- Location: LCCOMB_X69_Y54_N20
\f1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~18_combout\ = (\f1|s_count\(9) & (!\f1|Add0~17\)) # (!\f1|s_count\(9) & ((\f1|Add0~17\) # (GND)))
-- \f1|Add0~19\ = CARRY((!\f1|Add0~17\) # (!\f1|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(9),
	datad => VCC,
	cin => \f1|Add0~17\,
	combout => \f1|Add0~18_combout\,
	cout => \f1|Add0~19\);

-- Location: FF_X69_Y54_N21
\f1|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(9));

-- Location: LCCOMB_X69_Y54_N22
\f1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~20_combout\ = (\f1|s_count\(10) & (\f1|Add0~19\ $ (GND))) # (!\f1|s_count\(10) & (!\f1|Add0~19\ & VCC))
-- \f1|Add0~21\ = CARRY((\f1|s_count\(10) & !\f1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(10),
	datad => VCC,
	cin => \f1|Add0~19\,
	combout => \f1|Add0~20_combout\,
	cout => \f1|Add0~21\);

-- Location: FF_X69_Y54_N23
\f1|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(10));

-- Location: LCCOMB_X69_Y54_N24
\f1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~22_combout\ = (\f1|s_count\(11) & (!\f1|Add0~21\)) # (!\f1|s_count\(11) & ((\f1|Add0~21\) # (GND)))
-- \f1|Add0~23\ = CARRY((!\f1|Add0~21\) # (!\f1|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(11),
	datad => VCC,
	cin => \f1|Add0~21\,
	combout => \f1|Add0~22_combout\,
	cout => \f1|Add0~23\);

-- Location: LCCOMB_X68_Y53_N0
\f1|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~6_combout\ = (\f1|Add0~22_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~22_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~6_combout\);

-- Location: FF_X68_Y53_N1
\f1|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(11));

-- Location: LCCOMB_X69_Y54_N26
\f1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~24_combout\ = (\f1|s_count\(12) & (\f1|Add0~23\ $ (GND))) # (!\f1|s_count\(12) & (!\f1|Add0~23\ & VCC))
-- \f1|Add0~25\ = CARRY((\f1|s_count\(12) & !\f1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(12),
	datad => VCC,
	cin => \f1|Add0~23\,
	combout => \f1|Add0~24_combout\,
	cout => \f1|Add0~25\);

-- Location: LCCOMB_X68_Y53_N24
\f1|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~5_combout\ = (\f1|Add0~24_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~24_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~5_combout\);

-- Location: FF_X68_Y53_N25
\f1|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(12));

-- Location: LCCOMB_X69_Y54_N28
\f1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~26_combout\ = (\f1|s_count\(13) & (!\f1|Add0~25\)) # (!\f1|s_count\(13) & ((\f1|Add0~25\) # (GND)))
-- \f1|Add0~27\ = CARRY((!\f1|Add0~25\) # (!\f1|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(13),
	datad => VCC,
	cin => \f1|Add0~25\,
	combout => \f1|Add0~26_combout\,
	cout => \f1|Add0~27\);

-- Location: LCCOMB_X69_Y54_N0
\f1|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~4_combout\ = (\f1|Add0~26_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Add0~26_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~4_combout\);

-- Location: FF_X69_Y54_N1
\f1|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(13));

-- Location: LCCOMB_X69_Y54_N30
\f1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~28_combout\ = (\f1|s_count\(14) & (\f1|Add0~27\ $ (GND))) # (!\f1|s_count\(14) & (!\f1|Add0~27\ & VCC))
-- \f1|Add0~29\ = CARRY((\f1|s_count\(14) & !\f1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(14),
	datad => VCC,
	cin => \f1|Add0~27\,
	combout => \f1|Add0~28_combout\,
	cout => \f1|Add0~29\);

-- Location: LCCOMB_X70_Y53_N14
\f1|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~11_combout\ = (\f1|Add0~28_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~28_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~11_combout\);

-- Location: FF_X70_Y53_N15
\f1|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(14));

-- Location: LCCOMB_X69_Y53_N0
\f1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~30_combout\ = (\f1|s_count\(15) & (!\f1|Add0~29\)) # (!\f1|s_count\(15) & ((\f1|Add0~29\) # (GND)))
-- \f1|Add0~31\ = CARRY((!\f1|Add0~29\) # (!\f1|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(15),
	datad => VCC,
	cin => \f1|Add0~29\,
	combout => \f1|Add0~30_combout\,
	cout => \f1|Add0~31\);

-- Location: FF_X69_Y53_N1
\f1|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(15));

-- Location: LCCOMB_X69_Y53_N2
\f1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~32_combout\ = (\f1|s_count\(16) & (\f1|Add0~31\ $ (GND))) # (!\f1|s_count\(16) & (!\f1|Add0~31\ & VCC))
-- \f1|Add0~33\ = CARRY((\f1|s_count\(16) & !\f1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(16),
	datad => VCC,
	cin => \f1|Add0~31\,
	combout => \f1|Add0~32_combout\,
	cout => \f1|Add0~33\);

-- Location: LCCOMB_X70_Y53_N12
\f1|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~10_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datad => \f1|Add0~32_combout\,
	combout => \f1|s_count~10_combout\);

-- Location: FF_X70_Y53_N13
\f1|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(16));

-- Location: LCCOMB_X69_Y53_N4
\f1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~34_combout\ = (\f1|s_count\(17) & (!\f1|Add0~33\)) # (!\f1|s_count\(17) & ((\f1|Add0~33\) # (GND)))
-- \f1|Add0~35\ = CARRY((!\f1|Add0~33\) # (!\f1|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(17),
	datad => VCC,
	cin => \f1|Add0~33\,
	combout => \f1|Add0~34_combout\,
	cout => \f1|Add0~35\);

-- Location: FF_X69_Y53_N5
\f1|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(17));

-- Location: LCCOMB_X69_Y53_N6
\f1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~36_combout\ = (\f1|s_count\(18) & (\f1|Add0~35\ $ (GND))) # (!\f1|s_count\(18) & (!\f1|Add0~35\ & VCC))
-- \f1|Add0~37\ = CARRY((\f1|s_count\(18) & !\f1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(18),
	datad => VCC,
	cin => \f1|Add0~35\,
	combout => \f1|Add0~36_combout\,
	cout => \f1|Add0~37\);

-- Location: LCCOMB_X68_Y53_N10
\f1|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~3_combout\ = (\f1|Add0~36_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~36_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~3_combout\);

-- Location: FF_X68_Y53_N11
\f1|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(18));

-- Location: LCCOMB_X69_Y53_N8
\f1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~38_combout\ = (\f1|s_count\(19) & (!\f1|Add0~37\)) # (!\f1|s_count\(19) & ((\f1|Add0~37\) # (GND)))
-- \f1|Add0~39\ = CARRY((!\f1|Add0~37\) # (!\f1|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(19),
	datad => VCC,
	cin => \f1|Add0~37\,
	combout => \f1|Add0~38_combout\,
	cout => \f1|Add0~39\);

-- Location: LCCOMB_X68_Y53_N16
\f1|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~2_combout\ = (\f1|Add0~38_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~38_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~2_combout\);

-- Location: FF_X68_Y53_N17
\f1|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(19));

-- Location: LCCOMB_X69_Y53_N10
\f1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~40_combout\ = (\f1|s_count\(20) & (\f1|Add0~39\ $ (GND))) # (!\f1|s_count\(20) & (!\f1|Add0~39\ & VCC))
-- \f1|Add0~41\ = CARRY((\f1|s_count\(20) & !\f1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(20),
	datad => VCC,
	cin => \f1|Add0~39\,
	combout => \f1|Add0~40_combout\,
	cout => \f1|Add0~41\);

-- Location: LCCOMB_X68_Y53_N20
\f1|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~1_combout\ = (\f1|Add0~40_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~40_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~1_combout\);

-- Location: FF_X68_Y53_N21
\f1|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(20));

-- Location: LCCOMB_X69_Y53_N12
\f1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~42_combout\ = (\f1|s_count\(21) & (!\f1|Add0~41\)) # (!\f1|s_count\(21) & ((\f1|Add0~41\) # (GND)))
-- \f1|Add0~43\ = CARRY((!\f1|Add0~41\) # (!\f1|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(21),
	datad => VCC,
	cin => \f1|Add0~41\,
	combout => \f1|Add0~42_combout\,
	cout => \f1|Add0~43\);

-- Location: LCCOMB_X68_Y53_N30
\f1|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~0_combout\ = (\f1|Add0~42_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Add0~42_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~0_combout\);

-- Location: FF_X68_Y53_N31
\f1|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(21));

-- Location: LCCOMB_X69_Y53_N14
\f1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~44_combout\ = (\f1|s_count\(22) & (\f1|Add0~43\ $ (GND))) # (!\f1|s_count\(22) & (!\f1|Add0~43\ & VCC))
-- \f1|Add0~45\ = CARRY((\f1|s_count\(22) & !\f1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(22),
	datad => VCC,
	cin => \f1|Add0~43\,
	combout => \f1|Add0~44_combout\,
	cout => \f1|Add0~45\);

-- Location: LCCOMB_X70_Y53_N20
\f1|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~9_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datad => \f1|Add0~44_combout\,
	combout => \f1|s_count~9_combout\);

-- Location: FF_X70_Y53_N21
\f1|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(22));

-- Location: LCCOMB_X69_Y53_N16
\f1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~46_combout\ = (\f1|s_count\(23) & (!\f1|Add0~45\)) # (!\f1|s_count\(23) & ((\f1|Add0~45\) # (GND)))
-- \f1|Add0~47\ = CARRY((!\f1|Add0~45\) # (!\f1|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(23),
	datad => VCC,
	cin => \f1|Add0~45\,
	combout => \f1|Add0~46_combout\,
	cout => \f1|Add0~47\);

-- Location: FF_X69_Y53_N17
\f1|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(23));

-- Location: LCCOMB_X69_Y53_N18
\f1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~48_combout\ = (\f1|s_count\(24) & (\f1|Add0~47\ $ (GND))) # (!\f1|s_count\(24) & (!\f1|Add0~47\ & VCC))
-- \f1|Add0~49\ = CARRY((\f1|s_count\(24) & !\f1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(24),
	datad => VCC,
	cin => \f1|Add0~47\,
	combout => \f1|Add0~48_combout\,
	cout => \f1|Add0~49\);

-- Location: LCCOMB_X70_Y53_N18
\f1|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~8_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datad => \f1|Add0~48_combout\,
	combout => \f1|s_count~8_combout\);

-- Location: FF_X70_Y53_N19
\f1|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(24));

-- Location: LCCOMB_X70_Y53_N6
\f1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~7_combout\ = (!\f1|s_count\(23) & (\f1|s_count\(24) & (!\f1|s_count\(17) & \f1|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(23),
	datab => \f1|s_count\(24),
	datac => \f1|s_count\(17),
	datad => \f1|s_count\(22),
	combout => \f1|Equal0~7_combout\);

-- Location: LCCOMB_X70_Y53_N16
\f1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~8_combout\ = (!\f1|s_count\(15) & (!\f1|s_count\(10) & (\f1|s_count\(14) & \f1|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(15),
	datab => \f1|s_count\(10),
	datac => \f1|s_count\(14),
	datad => \f1|s_count\(16),
	combout => \f1|Equal0~8_combout\);

-- Location: LCCOMB_X70_Y53_N22
\f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~5_combout\ = (\f1|s_count\(3) & (!\f1|s_count\(6) & (\f1|s_count\(4) & \f1|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(3),
	datab => \f1|s_count\(6),
	datac => \f1|s_count\(4),
	datad => \f1|s_count\(2),
	combout => \f1|Equal0~5_combout\);

-- Location: LCCOMB_X69_Y53_N20
\f1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~50_combout\ = (\f1|s_count\(25) & (!\f1|Add0~49\)) # (!\f1|s_count\(25) & ((\f1|Add0~49\) # (GND)))
-- \f1|Add0~51\ = CARRY((!\f1|Add0~49\) # (!\f1|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(25),
	datad => VCC,
	cin => \f1|Add0~49\,
	combout => \f1|Add0~50_combout\,
	cout => \f1|Add0~51\);

-- Location: FF_X69_Y53_N21
\f1|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(25));

-- Location: LCCOMB_X69_Y53_N22
\f1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~52_combout\ = (\f1|s_count\(26) & (\f1|Add0~51\ $ (GND))) # (!\f1|s_count\(26) & (!\f1|Add0~51\ & VCC))
-- \f1|Add0~53\ = CARRY((\f1|s_count\(26) & !\f1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(26),
	datad => VCC,
	cin => \f1|Add0~51\,
	combout => \f1|Add0~52_combout\,
	cout => \f1|Add0~53\);

-- Location: FF_X69_Y53_N23
\f1|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(26));

-- Location: LCCOMB_X68_Y53_N22
\f1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~1_combout\ = (\f1|s_count\(21) & (\f1|s_count\(20) & (!\f1|s_count\(25) & !\f1|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(21),
	datab => \f1|s_count\(20),
	datac => \f1|s_count\(25),
	datad => \f1|s_count\(26),
	combout => \f1|Equal0~1_combout\);

-- Location: LCCOMB_X69_Y53_N24
\f1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~54_combout\ = (\f1|s_count\(27) & (!\f1|Add0~53\)) # (!\f1|s_count\(27) & ((\f1|Add0~53\) # (GND)))
-- \f1|Add0~55\ = CARRY((!\f1|Add0~53\) # (!\f1|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(27),
	datad => VCC,
	cin => \f1|Add0~53\,
	combout => \f1|Add0~54_combout\,
	cout => \f1|Add0~55\);

-- Location: FF_X69_Y53_N25
\f1|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(27));

-- Location: LCCOMB_X69_Y53_N26
\f1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~56_combout\ = (\f1|s_count\(28) & (\f1|Add0~55\ $ (GND))) # (!\f1|s_count\(28) & (!\f1|Add0~55\ & VCC))
-- \f1|Add0~57\ = CARRY((\f1|s_count\(28) & !\f1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(28),
	datad => VCC,
	cin => \f1|Add0~55\,
	combout => \f1|Add0~56_combout\,
	cout => \f1|Add0~57\);

-- Location: FF_X69_Y53_N27
\f1|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(28));

-- Location: LCCOMB_X69_Y53_N28
\f1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~58_combout\ = (\f1|s_count\(29) & (!\f1|Add0~57\)) # (!\f1|s_count\(29) & ((\f1|Add0~57\) # (GND)))
-- \f1|Add0~59\ = CARRY((!\f1|Add0~57\) # (!\f1|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(29),
	datad => VCC,
	cin => \f1|Add0~57\,
	combout => \f1|Add0~58_combout\,
	cout => \f1|Add0~59\);

-- Location: FF_X69_Y53_N29
\f1|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(29));

-- Location: LCCOMB_X69_Y53_N30
\f1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~60_combout\ = \f1|s_count\(30) $ (!\f1|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(30),
	cin => \f1|Add0~59\,
	combout => \f1|Add0~60_combout\);

-- Location: FF_X69_Y53_N31
\f1|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(30));

-- Location: LCCOMB_X68_Y53_N8
\f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~0_combout\ = (!\f1|s_count\(27) & (!\f1|s_count\(30) & (!\f1|s_count\(29) & !\f1|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(27),
	datab => \f1|s_count\(30),
	datac => \f1|s_count\(29),
	datad => \f1|s_count\(28),
	combout => \f1|Equal0~0_combout\);

-- Location: LCCOMB_X68_Y53_N26
\f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~3_combout\ = (!\f1|s_count\(9) & (\f1|s_count\(11) & (!\f1|s_count\(7) & !\f1|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(9),
	datab => \f1|s_count\(11),
	datac => \f1|s_count\(7),
	datad => \f1|s_count\(8),
	combout => \f1|Equal0~3_combout\);

-- Location: LCCOMB_X68_Y53_N18
\f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~2_combout\ = (\f1|s_count\(18) & (\f1|s_count\(12) & (\f1|s_count\(13) & \f1|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(18),
	datab => \f1|s_count\(12),
	datac => \f1|s_count\(13),
	datad => \f1|s_count\(19),
	combout => \f1|Equal0~2_combout\);

-- Location: LCCOMB_X68_Y53_N28
\f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~4_combout\ = (\f1|Equal0~1_combout\ & (\f1|Equal0~0_combout\ & (\f1|Equal0~3_combout\ & \f1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~1_combout\,
	datab => \f1|Equal0~0_combout\,
	datac => \f1|Equal0~3_combout\,
	datad => \f1|Equal0~2_combout\,
	combout => \f1|Equal0~4_combout\);

-- Location: LCCOMB_X70_Y53_N28
\f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~6_combout\ = (\f1|s_count\(1) & (\f1|s_count\(0) & (\f1|Equal0~5_combout\ & \f1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(1),
	datab => \f1|s_count\(0),
	datac => \f1|Equal0~5_combout\,
	datad => \f1|Equal0~4_combout\,
	combout => \f1|Equal0~6_combout\);

-- Location: LCCOMB_X70_Y53_N10
\f1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~9_combout\ = (\f1|Equal0~7_combout\ & (\f1|Equal0~8_combout\ & (\f1|s_count\(5) & \f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~7_combout\,
	datab => \f1|Equal0~8_combout\,
	datac => \f1|s_count\(5),
	datad => \f1|Equal0~6_combout\,
	combout => \f1|Equal0~9_combout\);

-- Location: LCCOMB_X70_Y53_N24
\f1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~0_combout\ = (\f1|s_count\(23) & (!\f1|s_count\(24) & (\f1|s_count\(17) & !\f1|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(23),
	datab => \f1|s_count\(24),
	datac => \f1|s_count\(17),
	datad => \f1|s_count\(22),
	combout => \f1|Equal1~0_combout\);

-- Location: LCCOMB_X70_Y53_N26
\f1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~1_combout\ = (\f1|s_count\(15) & (\f1|s_count\(10) & (!\f1|s_count\(14) & !\f1|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(15),
	datab => \f1|s_count\(10),
	datac => \f1|s_count\(14),
	datad => \f1|s_count\(16),
	combout => \f1|Equal1~1_combout\);

-- Location: LCCOMB_X70_Y53_N8
\f1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~2_combout\ = (!\f1|s_count\(5) & (\f1|Equal1~0_combout\ & (\f1|Equal1~1_combout\ & \f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(5),
	datab => \f1|Equal1~0_combout\,
	datac => \f1|Equal1~1_combout\,
	datad => \f1|Equal0~6_combout\,
	combout => \f1|Equal1~2_combout\);

-- Location: LCCOMB_X70_Y53_N4
\f1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|clkOut~0_combout\ = (\f1|Equal0~9_combout\) # ((!\f1|Equal1~2_combout\ & \f1|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~9_combout\,
	datab => \f1|Equal1~2_combout\,
	datac => \f1|clkOut~q\,
	combout => \f1|clkOut~0_combout\);

-- Location: FF_X70_Y53_N5
\f1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|clkOut~q\);

-- Location: LCCOMB_X70_Y53_N2
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\t1|pulseOut~q\ & \f1|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|pulseOut~q\,
	datac => \f1|clkOut~q\,
	combout => \LEDG~0_combout\);

-- Location: LCCOMB_X114_Y40_N0
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

-- Location: LCCOMB_X114_Y40_N6
\count|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~6_combout\ = (\count|s_count\(3) & ((\KEY[0]~input_o\ & (!\count|Add1~5\)) # (!\KEY[0]~input_o\ & (\count|Add1~5\ & VCC)))) # (!\count|s_count\(3) & ((\KEY[0]~input_o\ & ((\count|Add1~5\) # (GND))) # (!\KEY[0]~input_o\ & (!\count|Add1~5\))))
-- \count|Add1~7\ = CARRY((\count|s_count\(3) & (\KEY[0]~input_o\ & !\count|Add1~5\)) # (!\count|s_count\(3) & ((\KEY[0]~input_o\) # (!\count|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(3),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~5\,
	combout => \count|Add1~6_combout\,
	cout => \count|Add1~7\);

-- Location: LCCOMB_X114_Y40_N8
\count|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~8_combout\ = ((\count|s_count\(4) $ (\KEY[0]~input_o\ $ (\count|Add1~7\)))) # (GND)
-- \count|Add1~9\ = CARRY((\count|s_count\(4) & ((!\count|Add1~7\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(4) & (!\KEY[0]~input_o\ & !\count|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(4),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~7\,
	combout => \count|Add1~8_combout\,
	cout => \count|Add1~9\);

-- Location: LCCOMB_X112_Y40_N6
\count|s_count[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(4) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~8_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~8_combout\,
	datac => \count|s_count[31]~0clkctrl_outclk\,
	datad => \count|s_count\(4),
	combout => \count|s_count\(4));

-- Location: LCCOMB_X114_Y40_N10
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

-- Location: LCCOMB_X112_Y40_N22
\count|s_count[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(5) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~10_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~10_combout\,
	datac => \count|s_count\(5),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(5));

-- Location: LCCOMB_X114_Y40_N12
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

-- Location: LCCOMB_X112_Y40_N16
\count|s_count[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(6) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~12_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~12_combout\,
	datac => \count|s_count[31]~0clkctrl_outclk\,
	datad => \count|s_count\(6),
	combout => \count|s_count\(6));

-- Location: LCCOMB_X112_Y40_N12
\count|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan0~1_combout\ = (!\count|s_count\(1) & (!\count|s_count\(5) & !\count|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(1),
	datac => \count|s_count\(5),
	datad => \count|s_count\(6),
	combout => \count|LessThan0~1_combout\);

-- Location: LCCOMB_X114_Y40_N14
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

-- Location: LCCOMB_X113_Y40_N24
\count|s_count[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(7) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~14_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~14_combout\,
	datac => \count|s_count\(7),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(7));

-- Location: LCCOMB_X114_Y40_N16
\count|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~16_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(8) $ (\count|Add1~15\)))) # (GND)
-- \count|Add1~17\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(8) & !\count|Add1~15\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(8)) # (!\count|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(8),
	datad => VCC,
	cin => \count|Add1~15\,
	combout => \count|Add1~16_combout\,
	cout => \count|Add1~17\);

-- Location: LCCOMB_X113_Y40_N2
\count|s_count[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(8) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~16_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(8),
	datac => \count|Add1~16_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(8));

-- Location: LCCOMB_X114_Y40_N18
\count|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~18_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(9) & (!\count|Add1~17\)) # (!\count|s_count\(9) & ((\count|Add1~17\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(9) & (\count|Add1~17\ & VCC)) # (!\count|s_count\(9) & 
-- (!\count|Add1~17\))))
-- \count|Add1~19\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~17\) # (!\count|s_count\(9)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(9) & !\count|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(9),
	datad => VCC,
	cin => \count|Add1~17\,
	combout => \count|Add1~18_combout\,
	cout => \count|Add1~19\);

-- Location: LCCOMB_X113_Y40_N8
\count|s_count[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(9) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~18_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~18_combout\,
	datac => \count|s_count\(9),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(9));

-- Location: LCCOMB_X114_Y40_N20
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

-- Location: LCCOMB_X113_Y40_N10
\count|s_count[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(10) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~20_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~20_combout\,
	datac => \count|s_count\(10),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(10));

-- Location: LCCOMB_X114_Y40_N22
\count|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~22_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(11) & (!\count|Add1~21\)) # (!\count|s_count\(11) & ((\count|Add1~21\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(11) & (\count|Add1~21\ & VCC)) # (!\count|s_count\(11) & 
-- (!\count|Add1~21\))))
-- \count|Add1~23\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~21\) # (!\count|s_count\(11)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(11) & !\count|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(11),
	datad => VCC,
	cin => \count|Add1~21\,
	combout => \count|Add1~22_combout\,
	cout => \count|Add1~23\);

-- Location: LCCOMB_X113_Y40_N20
\count|s_count[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(11) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~22_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(11),
	datac => \count|Add1~22_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(11));

-- Location: LCCOMB_X114_Y40_N24
\count|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~24_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(12) $ (\count|Add1~23\)))) # (GND)
-- \count|Add1~25\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(12) & !\count|Add1~23\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(12)) # (!\count|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(12),
	datad => VCC,
	cin => \count|Add1~23\,
	combout => \count|Add1~24_combout\,
	cout => \count|Add1~25\);

-- Location: LCCOMB_X113_Y40_N30
\count|s_count[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(12) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~24_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~24_combout\,
	datac => \count|s_count\(12),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(12));

-- Location: LCCOMB_X114_Y40_N26
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

-- Location: LCCOMB_X113_Y40_N16
\count|s_count[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(13) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~26_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(13),
	datac => \count|Add1~26_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(13));

-- Location: LCCOMB_X114_Y40_N28
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

-- Location: LCCOMB_X113_Y40_N26
\count|s_count[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(14) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~28_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(14),
	datac => \count|Add1~28_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(14));

-- Location: LCCOMB_X114_Y40_N30
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

-- Location: LCCOMB_X113_Y40_N28
\count|s_count[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(15) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~30_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(15),
	datac => \count|Add1~30_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(15));

-- Location: LCCOMB_X114_Y39_N0
\count|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~32_combout\ = ((\count|s_count\(16) $ (\KEY[0]~input_o\ $ (\count|Add1~31\)))) # (GND)
-- \count|Add1~33\ = CARRY((\count|s_count\(16) & ((!\count|Add1~31\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(16) & (!\KEY[0]~input_o\ & !\count|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(16),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~31\,
	combout => \count|Add1~32_combout\,
	cout => \count|Add1~33\);

-- Location: LCCOMB_X113_Y40_N14
\count|s_count[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(16) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~32_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~32_combout\,
	datac => \count|s_count\(16),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(16));

-- Location: LCCOMB_X114_Y39_N2
\count|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~34_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(17) & (!\count|Add1~33\)) # (!\count|s_count\(17) & ((\count|Add1~33\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(17) & (\count|Add1~33\ & VCC)) # (!\count|s_count\(17) & 
-- (!\count|Add1~33\))))
-- \count|Add1~35\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~33\) # (!\count|s_count\(17)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(17) & !\count|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(17),
	datad => VCC,
	cin => \count|Add1~33\,
	combout => \count|Add1~34_combout\,
	cout => \count|Add1~35\);

-- Location: LCCOMB_X113_Y40_N0
\count|s_count[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(17) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~34_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(17),
	datac => \count|Add1~34_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(17));

-- Location: LCCOMB_X114_Y39_N4
\count|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~36_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(18) $ (\count|Add1~35\)))) # (GND)
-- \count|Add1~37\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(18) & !\count|Add1~35\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(18)) # (!\count|Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(18),
	datad => VCC,
	cin => \count|Add1~35\,
	combout => \count|Add1~36_combout\,
	cout => \count|Add1~37\);

-- Location: LCCOMB_X113_Y40_N22
\count|s_count[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(18) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~36_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~36_combout\,
	datac => \count|s_count\(18),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(18));

-- Location: LCCOMB_X114_Y39_N6
\count|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~38_combout\ = (\count|s_count\(19) & ((\KEY[0]~input_o\ & (!\count|Add1~37\)) # (!\KEY[0]~input_o\ & (\count|Add1~37\ & VCC)))) # (!\count|s_count\(19) & ((\KEY[0]~input_o\ & ((\count|Add1~37\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~37\))))
-- \count|Add1~39\ = CARRY((\count|s_count\(19) & (\KEY[0]~input_o\ & !\count|Add1~37\)) # (!\count|s_count\(19) & ((\KEY[0]~input_o\) # (!\count|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(19),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~37\,
	combout => \count|Add1~38_combout\,
	cout => \count|Add1~39\);

-- Location: LCCOMB_X113_Y39_N16
\count|s_count[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(19) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~38_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~38_combout\,
	datab => \count|s_count\(19),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(19));

-- Location: LCCOMB_X114_Y39_N8
\count|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~40_combout\ = ((\count|s_count\(20) $ (\KEY[0]~input_o\ $ (\count|Add1~39\)))) # (GND)
-- \count|Add1~41\ = CARRY((\count|s_count\(20) & ((!\count|Add1~39\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(20) & (!\KEY[0]~input_o\ & !\count|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(20),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~39\,
	combout => \count|Add1~40_combout\,
	cout => \count|Add1~41\);

-- Location: LCCOMB_X113_Y39_N18
\count|s_count[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(20) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~40_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~40_combout\,
	datab => \count|s_count\(20),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(20));

-- Location: LCCOMB_X114_Y39_N10
\count|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~42_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(21) & (!\count|Add1~41\)) # (!\count|s_count\(21) & ((\count|Add1~41\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(21) & (\count|Add1~41\ & VCC)) # (!\count|s_count\(21) & 
-- (!\count|Add1~41\))))
-- \count|Add1~43\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~41\) # (!\count|s_count\(21)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(21) & !\count|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(21),
	datad => VCC,
	cin => \count|Add1~41\,
	combout => \count|Add1~42_combout\,
	cout => \count|Add1~43\);

-- Location: LCCOMB_X113_Y39_N4
\count|s_count[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(21) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~42_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~42_combout\,
	datac => \count|s_count\(21),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(21));

-- Location: LCCOMB_X114_Y39_N12
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

-- Location: LCCOMB_X113_Y39_N26
\count|s_count[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(22) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~44_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(22),
	datac => \count|Add1~44_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(22));

-- Location: LCCOMB_X114_Y39_N14
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

-- Location: LCCOMB_X113_Y39_N24
\count|s_count[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(23) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~46_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(23),
	datac => \count|Add1~46_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(23));

-- Location: LCCOMB_X114_Y39_N16
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

-- Location: LCCOMB_X113_Y39_N2
\count|s_count[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(24) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~48_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(24),
	datac => \count|Add1~48_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(24));

-- Location: LCCOMB_X114_Y39_N18
\count|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~50_combout\ = (\KEY[0]~input_o\ & ((\count|s_count\(25) & (!\count|Add1~49\)) # (!\count|s_count\(25) & ((\count|Add1~49\) # (GND))))) # (!\KEY[0]~input_o\ & ((\count|s_count\(25) & (\count|Add1~49\ & VCC)) # (!\count|s_count\(25) & 
-- (!\count|Add1~49\))))
-- \count|Add1~51\ = CARRY((\KEY[0]~input_o\ & ((!\count|Add1~49\) # (!\count|s_count\(25)))) # (!\KEY[0]~input_o\ & (!\count|s_count\(25) & !\count|Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(25),
	datad => VCC,
	cin => \count|Add1~49\,
	combout => \count|Add1~50_combout\,
	cout => \count|Add1~51\);

-- Location: LCCOMB_X113_Y39_N8
\count|s_count[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(25) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~50_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|Add1~50_combout\,
	datac => \count|s_count\(25),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(25));

-- Location: LCCOMB_X114_Y39_N20
\count|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~52_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(26) $ (\count|Add1~51\)))) # (GND)
-- \count|Add1~53\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(26) & !\count|Add1~51\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(26)) # (!\count|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(26),
	datad => VCC,
	cin => \count|Add1~51\,
	combout => \count|Add1~52_combout\,
	cout => \count|Add1~53\);

-- Location: LCCOMB_X113_Y39_N22
\count|s_count[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(26) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~52_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~52_combout\,
	datac => \count|s_count\(26),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(26));

-- Location: LCCOMB_X114_Y39_N22
\count|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~54_combout\ = (\count|s_count\(27) & ((\KEY[0]~input_o\ & (!\count|Add1~53\)) # (!\KEY[0]~input_o\ & (\count|Add1~53\ & VCC)))) # (!\count|s_count\(27) & ((\KEY[0]~input_o\ & ((\count|Add1~53\) # (GND))) # (!\KEY[0]~input_o\ & 
-- (!\count|Add1~53\))))
-- \count|Add1~55\ = CARRY((\count|s_count\(27) & (\KEY[0]~input_o\ & !\count|Add1~53\)) # (!\count|s_count\(27) & ((\KEY[0]~input_o\) # (!\count|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(27),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~53\,
	combout => \count|Add1~54_combout\,
	cout => \count|Add1~55\);

-- Location: LCCOMB_X113_Y39_N28
\count|s_count[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(27) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~54_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(27),
	datac => \count|Add1~54_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(27));

-- Location: LCCOMB_X114_Y39_N24
\count|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~56_combout\ = ((\count|s_count\(28) $ (\KEY[0]~input_o\ $ (\count|Add1~55\)))) # (GND)
-- \count|Add1~57\ = CARRY((\count|s_count\(28) & ((!\count|Add1~55\) # (!\KEY[0]~input_o\))) # (!\count|s_count\(28) & (!\KEY[0]~input_o\ & !\count|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(28),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~55\,
	combout => \count|Add1~56_combout\,
	cout => \count|Add1~57\);

-- Location: LCCOMB_X113_Y39_N6
\count|s_count[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(28) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~56_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(28),
	datac => \count|Add1~56_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(28));

-- Location: LCCOMB_X114_Y39_N26
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

-- Location: LCCOMB_X113_Y39_N12
\count|s_count[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(29) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~58_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(29),
	datab => \count|Add1~58_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(29));

-- Location: LCCOMB_X114_Y39_N28
\count|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~60_combout\ = ((\KEY[0]~input_o\ $ (\count|s_count\(30) $ (\count|Add1~59\)))) # (GND)
-- \count|Add1~61\ = CARRY((\KEY[0]~input_o\ & (\count|s_count\(30) & !\count|Add1~59\)) # (!\KEY[0]~input_o\ & ((\count|s_count\(30)) # (!\count|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \count|s_count\(30),
	datad => VCC,
	cin => \count|Add1~59\,
	combout => \count|Add1~60_combout\,
	cout => \count|Add1~61\);

-- Location: LCCOMB_X113_Y39_N14
\count|s_count[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(30) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~60_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~60_combout\,
	datac => \count|s_count\(30),
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(30));

-- Location: LCCOMB_X114_Y39_N30
\count|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~62_combout\ = \count|s_count\(31) $ (\count|Add1~61\ $ (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(31),
	datad => \KEY[0]~input_o\,
	cin => \count|Add1~61\,
	combout => \count|Add1~62_combout\);

-- Location: LCCOMB_X113_Y39_N30
\count|s_count[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(31) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~62_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(31),
	datac => \count|Add1~62_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(31));

-- Location: LCCOMB_X112_Y40_N14
\count|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan0~0_combout\ = (!\count|s_count\(4) & (!\count|s_count\(2) & (!\count|s_count\(3) & !\count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(4),
	datab => \count|s_count\(2),
	datac => \count|s_count\(3),
	datad => \count|s_count\(0),
	combout => \count|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y39_N10
\count|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~5_combout\ = (!\count|s_count\(26) & (!\count|s_count\(24) & (!\count|s_count\(25) & !\count|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(26),
	datab => \count|s_count\(24),
	datac => \count|s_count\(25),
	datad => \count|s_count\(23),
	combout => \count|LessThan1~5_combout\);

-- Location: LCCOMB_X113_Y39_N20
\count|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~6_combout\ = (!\count|s_count\(29) & (!\count|s_count\(27) & (!\count|s_count\(30) & !\count|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(29),
	datab => \count|s_count\(27),
	datac => \count|s_count\(30),
	datad => \count|s_count\(28),
	combout => \count|LessThan1~6_combout\);

-- Location: LCCOMB_X113_Y40_N4
\count|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~2_combout\ = (!\count|s_count\(18) & (!\count|s_count\(17) & (!\count|s_count\(16) & !\count|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(18),
	datab => \count|s_count\(17),
	datac => \count|s_count\(16),
	datad => \count|s_count\(15),
	combout => \count|LessThan1~2_combout\);

-- Location: LCCOMB_X113_Y40_N18
\count|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~1_combout\ = (!\count|s_count\(12) & (!\count|s_count\(11) & (!\count|s_count\(14) & !\count|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(12),
	datab => \count|s_count\(11),
	datac => \count|s_count\(14),
	datad => \count|s_count\(13),
	combout => \count|LessThan1~1_combout\);

-- Location: LCCOMB_X113_Y40_N12
\count|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~0_combout\ = (!\count|s_count\(10) & (!\count|s_count\(7) & (!\count|s_count\(9) & !\count|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(10),
	datab => \count|s_count\(7),
	datac => \count|s_count\(9),
	datad => \count|s_count\(8),
	combout => \count|LessThan1~0_combout\);

-- Location: LCCOMB_X113_Y39_N0
\count|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~3_combout\ = (!\count|s_count\(22) & (!\count|s_count\(20) & (!\count|s_count\(21) & !\count|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(22),
	datab => \count|s_count\(20),
	datac => \count|s_count\(21),
	datad => \count|s_count\(19),
	combout => \count|LessThan1~3_combout\);

-- Location: LCCOMB_X112_Y40_N20
\count|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~4_combout\ = (\count|LessThan1~2_combout\ & (\count|LessThan1~1_combout\ & (\count|LessThan1~0_combout\ & \count|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|LessThan1~2_combout\,
	datab => \count|LessThan1~1_combout\,
	datac => \count|LessThan1~0_combout\,
	datad => \count|LessThan1~3_combout\,
	combout => \count|LessThan1~4_combout\);

-- Location: LCCOMB_X112_Y40_N18
\count|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~7_combout\ = (\count|LessThan1~5_combout\ & (\count|LessThan1~6_combout\ & \count|LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|LessThan1~5_combout\,
	datac => \count|LessThan1~6_combout\,
	datad => \count|LessThan1~4_combout\,
	combout => \count|LessThan1~7_combout\);

-- Location: LCCOMB_X112_Y40_N26
\count|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan0~2_combout\ = (\count|s_count\(31)) # ((\count|LessThan0~1_combout\ & (\count|LessThan0~0_combout\ & \count|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|LessThan0~1_combout\,
	datab => \count|s_count\(31),
	datac => \count|LessThan0~0_combout\,
	datad => \count|LessThan1~7_combout\,
	combout => \count|LessThan0~2_combout\);

-- Location: LCCOMB_X112_Y40_N4
\count|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~8_combout\ = (\count|s_count\(3)) # ((\count|s_count\(4)) # (\count|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(3),
	datac => \count|s_count\(4),
	datad => \count|s_count\(2),
	combout => \count|LessThan1~8_combout\);

-- Location: LCCOMB_X112_Y40_N30
\count|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~9_combout\ = (\count|s_count\(6) & ((\count|LessThan1~8_combout\) # ((\count|s_count\(0) & \count|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(0),
	datab => \count|s_count\(6),
	datac => \count|LessThan1~8_combout\,
	datad => \count|s_count\(1),
	combout => \count|LessThan1~9_combout\);

-- Location: LCCOMB_X112_Y40_N28
\count|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|LessThan1~10_combout\ = (\count|s_count\(31)) # ((\count|LessThan1~7_combout\ & ((!\count|LessThan1~9_combout\) # (!\count|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(5),
	datab => \count|s_count\(31),
	datac => \count|LessThan1~9_combout\,
	datad => \count|LessThan1~7_combout\,
	combout => \count|LessThan1~10_combout\);

-- Location: LCCOMB_X114_Y37_N2
\count|s_count[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count[31]~0_combout\ = (\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & ((\count|LessThan1~10_combout\)))) # (!\KEY[0]~input_o\ & (((!\count|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \count|LessThan0~2_combout\,
	datac => \count|LessThan1~10_combout\,
	datad => \KEY[0]~input_o\,
	combout => \count|s_count[31]~0_combout\);

-- Location: CLKCTRL_G9
\count|s_count[31]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count|s_count[31]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count|s_count[31]~0clkctrl_outclk\);

-- Location: LCCOMB_X113_Y40_N6
\count|s_count[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(0) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|Add1~0_combout\))) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(0),
	datac => \count|Add1~0_combout\,
	datad => \count|s_count[31]~0clkctrl_outclk\,
	combout => \count|s_count\(0));

-- Location: LCCOMB_X114_Y40_N2
\count|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|Add1~2_combout\ = (\count|s_count\(1) & ((\KEY[0]~input_o\ & (!\count|Add1~1\)) # (!\KEY[0]~input_o\ & (\count|Add1~1\ & VCC)))) # (!\count|s_count\(1) & ((\KEY[0]~input_o\ & ((\count|Add1~1\) # (GND))) # (!\KEY[0]~input_o\ & (!\count|Add1~1\))))
-- \count|Add1~3\ = CARRY((\count|s_count\(1) & (\KEY[0]~input_o\ & !\count|Add1~1\)) # (!\count|s_count\(1) & ((\KEY[0]~input_o\) # (!\count|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(1),
	datab => \KEY[0]~input_o\,
	datad => VCC,
	cin => \count|Add1~1\,
	combout => \count|Add1~2_combout\,
	cout => \count|Add1~3\);

-- Location: LCCOMB_X112_Y40_N2
\count|s_count[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(1) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~2_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~2_combout\,
	datac => \count|s_count[31]~0clkctrl_outclk\,
	datad => \count|s_count\(1),
	combout => \count|s_count\(1));

-- Location: LCCOMB_X114_Y40_N4
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

-- Location: LCCOMB_X112_Y40_N24
\count|s_count[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(2) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~4_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~4_combout\,
	datac => \count|s_count[31]~0clkctrl_outclk\,
	datad => \count|s_count\(2),
	combout => \count|s_count\(2));

-- Location: LCCOMB_X112_Y40_N10
\count|s_count[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|s_count\(3) = (GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & (\count|Add1~6_combout\)) # (!GLOBAL(\count|s_count[31]~0clkctrl_outclk\) & ((\count|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|Add1~6_combout\,
	datac => \count|s_count[31]~0clkctrl_outclk\,
	datad => \count|s_count\(3),
	combout => \count|s_count\(3));

-- Location: LCCOMB_X114_Y44_N18
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

-- Location: LCCOMB_X114_Y44_N20
\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\count|s_count\(2) & (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\count|s_count\(2) & 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\count|s_count\(2) & !\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(2),
	datad => VCC,
	cin => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X114_Y44_N22
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

-- Location: LCCOMB_X114_Y44_N24
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

-- Location: LCCOMB_X114_Y44_N12
\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\count|s_count\(3))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(3),
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X112_Y40_N8
\count|full~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|full~0_combout\ = (\KEY[0]~input_o\ & ((!\count|LessThan1~10_combout\))) # (!\KEY[0]~input_o\ & (\count|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \count|LessThan0~2_combout\,
	datad => \count|LessThan1~10_combout\,
	combout => \count|full~0_combout\);

-- Location: LCCOMB_X111_Y40_N14
\count|full~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|full~1_combout\ = (!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \count|full~1_combout\);

-- Location: LCCOMB_X112_Y40_N0
\count|full\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|full~combout\ = (\count|full~1_combout\ & ((\count|full~0_combout\))) # (!\count|full~1_combout\ & (\count|full~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|full~combout\,
	datac => \count|full~0_combout\,
	datad => \count|full~1_combout\,
	combout => \count|full~combout\);

-- Location: LCCOMB_X114_Y44_N2
\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\count|s_count\(1))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \count|s_count\(1),
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\);

-- Location: LCCOMB_X114_Y44_N4
\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ = (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\count|s_count\(2)))) # (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \count|s_count\(2),
	combout => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\);

-- Location: LCCOMB_X114_Y48_N6
\bin3|decOut_n[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~5_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\) # (\count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n[0]~5_combout\);

-- Location: LCCOMB_X114_Y48_N12
\bin3|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[3]~8_combout\ = (!\count|full~combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\) # (\bin3|decOut_n[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \count|full~combout\,
	datad => \bin3|decOut_n[0]~5_combout\,
	combout => \bin3|decOut_n[3]~8_combout\);

-- Location: LCCOMB_X114_Y48_N24
\bin3|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~6_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\) # ((\count|full~combout\) # (\bin3|decOut_n[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \count|full~combout\,
	datad => \bin3|decOut_n[0]~5_combout\,
	combout => \bin3|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X114_Y48_N22
\bin3|decOut_n[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~7_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\) # (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ (\count|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n[0]~7_combout\);

-- Location: LCCOMB_X114_Y48_N28
\bin3|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~4_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & !\count|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n~4_combout\);

-- Location: LCCOMB_X114_Y48_N14
\bin3|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[0]~9_combout\ = (\bin3|decOut_n[3]~8_combout\ & (\bin3|decOut_n~4_combout\ & ((\bin3|decOut_n[0]~6_combout\) # (\bin3|decOut_n[0]~7_combout\)))) # (!\bin3|decOut_n[3]~8_combout\ & ((\bin3|decOut_n[0]~6_combout\) # 
-- ((\bin3|decOut_n[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin3|decOut_n[3]~8_combout\,
	datab => \bin3|decOut_n[0]~6_combout\,
	datac => \bin3|decOut_n[0]~7_combout\,
	datad => \bin3|decOut_n~4_combout\,
	combout => \bin3|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X114_Y48_N20
\bin3|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~10_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ 
-- (\count|s_count\(0))))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((!\count|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n~10_combout\);

-- Location: LCCOMB_X114_Y48_N30
\bin3|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~11_combout\ = (\count|full~combout\) # (\bin3|decOut_n~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count|full~combout\,
	datad => \bin3|decOut_n~10_combout\,
	combout => \bin3|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y48_N0
\bin3|decOut_n[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[2]~12_combout\ = (\count|full~combout\) # (\bin3|decOut_n~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count|full~combout\,
	datad => \bin3|decOut_n~4_combout\,
	combout => \bin3|decOut_n[2]~12_combout\);

-- Location: LCCOMB_X114_Y48_N10
\bin3|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~13_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & 
-- !\count|s_count\(0))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & \count|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n~13_combout\);

-- Location: LCCOMB_X114_Y48_N8
\bin3|decOut_n[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[3]~14_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\) # ((!\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & \count|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n[3]~14_combout\);

-- Location: LCCOMB_X114_Y48_N18
\bin3|decOut_n[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[3]~15_combout\ = (\bin3|decOut_n~13_combout\ & ((\bin3|decOut_n[3]~8_combout\) # ((!\bin3|decOut_n[0]~6_combout\ & \bin3|decOut_n[3]~14_combout\)))) # (!\bin3|decOut_n~13_combout\ & (!\bin3|decOut_n[0]~6_combout\ & 
-- (\bin3|decOut_n[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin3|decOut_n~13_combout\,
	datab => \bin3|decOut_n[0]~6_combout\,
	datac => \bin3|decOut_n[3]~14_combout\,
	datad => \bin3|decOut_n[3]~8_combout\,
	combout => \bin3|decOut_n[3]~15_combout\);

-- Location: LCCOMB_X114_Y48_N16
\bin3|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~16_combout\ = (\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\count|s_count\(0) & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)) # (!\count|s_count\(0) & 
-- ((!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\))))) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & 
-- (!\BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)) # (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((\count|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \BCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datad => \count|s_count\(0),
	combout => \bin3|decOut_n~16_combout\);

-- Location: LCCOMB_X114_Y48_N2
\bin3|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n~17_combout\ = (!\count|full~combout\ & \bin3|decOut_n~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count|full~combout\,
	datad => \bin3|decOut_n~16_combout\,
	combout => \bin3|decOut_n~17_combout\);

-- Location: LCCOMB_X114_Y44_N26
\bin3|decOut_n[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[5]~20_combout\ = (!\BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\count|s_count\(3)))) # 
-- (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \count|s_count\(3),
	datac => \BCD|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	datad => \BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin3|decOut_n[5]~20_combout\);

-- Location: LCCOMB_X114_Y48_N4
\bin3|decOut_n[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[5]~18_combout\ = (!\count|full~combout\ & ((\bin3|decOut_n[5]~20_combout\ & (\count|s_count\(0))) # (!\bin3|decOut_n[5]~20_combout\ & ((\bin3|decOut_n~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(0),
	datab => \bin3|decOut_n[5]~20_combout\,
	datac => \count|full~combout\,
	datad => \bin3|decOut_n~13_combout\,
	combout => \bin3|decOut_n[5]~18_combout\);

-- Location: LCCOMB_X114_Y48_N26
\bin3|decOut_n[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin3|decOut_n[6]~19_combout\ = (\count|full~combout\) # ((\bin3|decOut_n[5]~20_combout\ & (!\BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\)) # (!\bin3|decOut_n[5]~20_combout\ & ((\bin3|decOut_n~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \bin3|decOut_n[5]~20_combout\,
	datac => \count|full~combout\,
	datad => \bin3|decOut_n~13_combout\,
	combout => \bin3|decOut_n[6]~19_combout\);

-- Location: LCCOMB_X112_Y41_N8
\bin2|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2|decOut_n[0]~0_combout\ = (\count|full~combout\) # ((\count|s_count\(3) & ((\count|s_count\(2)) # (\count|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(2),
	datab => \count|s_count\(3),
	datac => \count|full~combout\,
	datad => \count|s_count\(1),
	combout => \bin2|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X112_Y41_N6
\bin2|decOut_n[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2|decOut_n[4]~1_combout\ = (\count|s_count\(3) & (!\count|full~combout\ & ((\count|s_count\(2)) # (\count|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|s_count\(2),
	datab => \count|s_count\(3),
	datac => \count|full~combout\,
	datad => \count|s_count\(1),
	combout => \bin2|decOut_n[4]~1_combout\);

-- Location: LCCOMB_X112_Y41_N10
\BCD|Div0|auto_generated|divider|divider|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|op_2~1_cout\ = CARRY(!\count|full~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|full~combout\,
	datad => VCC,
	cout => \BCD|Div0|auto_generated|divider|divider|op_2~1_cout\);

-- Location: LCCOMB_X112_Y41_N12
\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\count|full~combout\ & ((!\BCD|Div0|auto_generated|divider|divider|op_2~1_cout\) # (!\count|s_count\(0)))) # (!\count|full~combout\ & (!\count|s_count\(0) & 
-- !\BCD|Div0|auto_generated|divider|divider|op_2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|full~combout\,
	datab => \count|s_count\(0),
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|op_2~1_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X112_Y41_N14
\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\count|s_count\(1) & !\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|s_count\(1),
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X112_Y41_N16
\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\count|full~combout\ & ((!\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # (!\count|s_count\(2)))) # (!\count|full~combout\ & (!\count|s_count\(2) 
-- & !\BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|full~combout\,
	datab => \count|s_count\(2),
	datad => VCC,
	cin => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X112_Y41_N18
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

-- Location: LCCOMB_X112_Y41_N20
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


