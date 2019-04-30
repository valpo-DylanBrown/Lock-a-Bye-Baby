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

-- DATE "04/30/2019 14:55:05"

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

ENTITY 	lockabyebaby IS
    PORT (
	insidePad : IN std_logic_vector(3 DOWNTO 0);
	outsidePad : IN std_logic_vector(3 DOWNTO 0);
	parent : IN std_logic;
	clk : IN std_logic;
	clr : IN std_logic;
	lock : OUT std_logic;
	gps : OUT std_logic;
	innerDisplay : OUT std_logic_vector(6 DOWNTO 0);
	outerDisplay : OUT std_logic_vector(6 DOWNTO 0);
	pattern1 : OUT std_logic_vector(1 DOWNTO 0);
	pattern2 : OUT std_logic_vector(1 DOWNTO 0);
	LCD_RS : OUT std_logic;
	LCD_E : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic;
	DATA_BUS : INOUT std_logic_vector(7 DOWNTO 0)
	);
END lockabyebaby;

-- Design Ports Information
-- lock	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gps	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- innerDisplay[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- innerDisplay[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- innerDisplay[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- innerDisplay[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- innerDisplay[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- innerDisplay[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- innerDisplay[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outerDisplay[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outerDisplay[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outerDisplay[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outerDisplay[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outerDisplay[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outerDisplay[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outerDisplay[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pattern1[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pattern1[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pattern2[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pattern2[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_E	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- insidePad[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- insidePad[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- insidePad[2]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- insidePad[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outsidePad[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outsidePad[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outsidePad[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outsidePad[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parent	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lockabyebaby IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_insidePad : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outsidePad : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_parent : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_lock : std_logic;
SIGNAL ww_gps : std_logic;
SIGNAL ww_innerDisplay : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outerDisplay : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_pattern1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pattern2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \phone|CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \slowclk|Out_Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \slowclk|Add0~0_combout\ : std_logic;
SIGNAL \slowclk|Add0~8_combout\ : std_logic;
SIGNAL \slowclk|Add0~12_combout\ : std_logic;
SIGNAL \slowclk|Add0~14_combout\ : std_logic;
SIGNAL \slowclk|Add0~32_combout\ : std_logic;
SIGNAL \slowclk|Add0~48_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[14]~49\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[15]~50_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[15]~51\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[16]~52_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[16]~53\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[17]~54_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[17]~55\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[18]~56_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[18]~57\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[19]~58_combout\ : std_logic;
SIGNAL \slowclk|Equal0~2_combout\ : std_logic;
SIGNAL \phone|LessThan0~0_combout\ : std_logic;
SIGNAL \phone|Mux1~0_combout\ : std_logic;
SIGNAL \phone|Selector8~0_combout\ : std_logic;
SIGNAL \phone|Selector7~0_combout\ : std_logic;
SIGNAL \phone|state.RESET3~q\ : std_logic;
SIGNAL \phone|state.FUNC_SET~q\ : std_logic;
SIGNAL \phone|next_command.MODE_SET~q\ : std_logic;
SIGNAL \phone|next_command.RESET3~q\ : std_logic;
SIGNAL \phone|state~34_combout\ : std_logic;
SIGNAL \phone|next_command.FUNC_SET~q\ : std_logic;
SIGNAL \phone|state~36_combout\ : std_logic;
SIGNAL \phone|Selector14~0_combout\ : std_logic;
SIGNAL \phone|Selector16~0_combout\ : std_logic;
SIGNAL \phone|Selector19~0_combout\ : std_logic;
SIGNAL \phone|Selector12~0_combout\ : std_logic;
SIGNAL \DATA_BUS[0]~input_o\ : std_logic;
SIGNAL \DATA_BUS[1]~input_o\ : std_logic;
SIGNAL \DATA_BUS[2]~input_o\ : std_logic;
SIGNAL \DATA_BUS[3]~input_o\ : std_logic;
SIGNAL \DATA_BUS[4]~input_o\ : std_logic;
SIGNAL \DATA_BUS[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS[6]~input_o\ : std_logic;
SIGNAL \DATA_BUS[7]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA_BUS[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS[7]~output_o\ : std_logic;
SIGNAL \lock~output_o\ : std_logic;
SIGNAL \gps~output_o\ : std_logic;
SIGNAL \innerDisplay[0]~output_o\ : std_logic;
SIGNAL \innerDisplay[1]~output_o\ : std_logic;
SIGNAL \innerDisplay[2]~output_o\ : std_logic;
SIGNAL \innerDisplay[3]~output_o\ : std_logic;
SIGNAL \innerDisplay[4]~output_o\ : std_logic;
SIGNAL \innerDisplay[5]~output_o\ : std_logic;
SIGNAL \innerDisplay[6]~output_o\ : std_logic;
SIGNAL \outerDisplay[0]~output_o\ : std_logic;
SIGNAL \outerDisplay[1]~output_o\ : std_logic;
SIGNAL \outerDisplay[2]~output_o\ : std_logic;
SIGNAL \outerDisplay[3]~output_o\ : std_logic;
SIGNAL \outerDisplay[4]~output_o\ : std_logic;
SIGNAL \outerDisplay[5]~output_o\ : std_logic;
SIGNAL \outerDisplay[6]~output_o\ : std_logic;
SIGNAL \pattern1[0]~output_o\ : std_logic;
SIGNAL \pattern1[1]~output_o\ : std_logic;
SIGNAL \pattern2[0]~output_o\ : std_logic;
SIGNAL \pattern2[1]~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_E~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[3]~26_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[3]~27\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[4]~28_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[4]~29\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[5]~30_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[5]~31\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[6]~33\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[7]~34_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[7]~35\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[8]~37\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[9]~38_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[9]~feeder_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[9]~39\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[10]~40_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[10]~41\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[11]~42_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[11]~43\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[12]~44_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[12]~45\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[13]~47\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[14]~48_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[13]~46_combout\ : std_logic;
SIGNAL \phone|LessThan0~1_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[8]~36_combout\ : std_logic;
SIGNAL \phone|CLK_COUNT_400HZ[6]~32_combout\ : std_logic;
SIGNAL \phone|LessThan0~2_combout\ : std_logic;
SIGNAL \phone|LessThan0~3_combout\ : std_logic;
SIGNAL \phone|LessThan0~4_combout\ : std_logic;
SIGNAL \phone|CLK_400HZ~0_combout\ : std_logic;
SIGNAL \phone|CLK_400HZ~feeder_combout\ : std_logic;
SIGNAL \phone|CLK_400HZ~q\ : std_logic;
SIGNAL \phone|CLK_400HZ~clkctrl_outclk\ : std_logic;
SIGNAL \phone|state.HOLD~q\ : std_logic;
SIGNAL \phone|LCD_RS~0_combout\ : std_logic;
SIGNAL \phone|state.DROP_LCD_E~q\ : std_logic;
SIGNAL \phone|Selector20~0_combout\ : std_logic;
SIGNAL \phone|next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \phone|state~35_combout\ : std_logic;
SIGNAL \phone|state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \phone|Selector21~0_combout\ : std_logic;
SIGNAL \phone|next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \phone|state~32_combout\ : std_logic;
SIGNAL \phone|state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \phone|Selector9~1_combout\ : std_logic;
SIGNAL \phone|CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \phone|CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \phone|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \phone|state.RESET1~q\ : std_logic;
SIGNAL \phone|Selector25~0_combout\ : std_logic;
SIGNAL \phone|CHAR_COUNT[3]~12\ : std_logic;
SIGNAL \phone|CHAR_COUNT[4]~13_combout\ : std_logic;
SIGNAL \phone|Selector22~0_combout\ : std_logic;
SIGNAL \phone|CHAR_COUNT[0]~5_combout\ : std_logic;
SIGNAL \phone|Selector26~0_combout\ : std_logic;
SIGNAL \phone|Equal2~0_combout\ : std_logic;
SIGNAL \phone|Selector16~1_combout\ : std_logic;
SIGNAL \phone|next_command.LINE2~q\ : std_logic;
SIGNAL \phone|state~31_combout\ : std_logic;
SIGNAL \phone|state.LINE2~q\ : std_logic;
SIGNAL \phone|state~30_combout\ : std_logic;
SIGNAL \phone|state.MODE_SET~q\ : std_logic;
SIGNAL \phone|Selector15~0_combout\ : std_logic;
SIGNAL \phone|Selector15~1_combout\ : std_logic;
SIGNAL \phone|next_command.Print_String~q\ : std_logic;
SIGNAL \phone|state~28_combout\ : std_logic;
SIGNAL \phone|state.Print_String~q\ : std_logic;
SIGNAL \phone|CHAR_COUNT[1]~8\ : std_logic;
SIGNAL \phone|CHAR_COUNT[2]~10\ : std_logic;
SIGNAL \phone|CHAR_COUNT[3]~11_combout\ : std_logic;
SIGNAL \phone|Selector23~0_combout\ : std_logic;
SIGNAL \phone|CHAR_COUNT[2]~9_combout\ : std_logic;
SIGNAL \phone|Selector24~0_combout\ : std_logic;
SIGNAL \phone|Mux6~1_combout\ : std_logic;
SIGNAL \phone|Selector9~2_combout\ : std_logic;
SIGNAL \phone|Mux3~1_combout\ : std_logic;
SIGNAL \phone|Mux3~0_combout\ : std_logic;
SIGNAL \phone|Mux3~2_combout\ : std_logic;
SIGNAL \phone|Mux4~1_combout\ : std_logic;
SIGNAL \phone|Mux4~0_combout\ : std_logic;
SIGNAL \phone|Mux4~2_combout\ : std_logic;
SIGNAL \phone|Mux5~0_combout\ : std_logic;
SIGNAL \phone|Mux5~1_combout\ : std_logic;
SIGNAL \phone|Mux5~2_combout\ : std_logic;
SIGNAL \phone|LessThan1~0_combout\ : std_logic;
SIGNAL \phone|Mux2~0_combout\ : std_logic;
SIGNAL \phone|Mux2~1_combout\ : std_logic;
SIGNAL \phone|Mux0~0_combout\ : std_logic;
SIGNAL \phone|Mux0~1_combout\ : std_logic;
SIGNAL \phone|Equal0~0_combout\ : std_logic;
SIGNAL \phone|Selector9~0_combout\ : std_logic;
SIGNAL \phone|Selector9~3_combout\ : std_logic;
SIGNAL \phone|Add1~5_combout\ : std_logic;
SIGNAL \phone|Selector8~1_combout\ : std_logic;
SIGNAL \phone|Selector8~2_combout\ : std_logic;
SIGNAL \phone|Selector8~3_combout\ : std_logic;
SIGNAL \phone|Selector7~1_combout\ : std_logic;
SIGNAL \phone|Mux6~0_combout\ : std_logic;
SIGNAL \phone|Mux6~2_combout\ : std_logic;
SIGNAL \phone|Add1~4_combout\ : std_logic;
SIGNAL \phone|Selector7~2_combout\ : std_logic;
SIGNAL \phone|Selector6~1_combout\ : std_logic;
SIGNAL \phone|Selector18~0_combout\ : std_logic;
SIGNAL \phone|next_command.RESET2~q\ : std_logic;
SIGNAL \phone|state~37_combout\ : std_logic;
SIGNAL \phone|state.RESET2~q\ : std_logic;
SIGNAL \phone|Selector13~0_combout\ : std_logic;
SIGNAL \phone|next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \phone|state~33_combout\ : std_logic;
SIGNAL \phone|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \phone|Selector6~2_combout\ : std_logic;
SIGNAL \phone|Selector6~0_combout\ : std_logic;
SIGNAL \phone|Selector6~3_combout\ : std_logic;
SIGNAL \phone|Selector17~0_combout\ : std_logic;
SIGNAL \phone|Selector17~1_combout\ : std_logic;
SIGNAL \phone|next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \phone|state~29_combout\ : std_logic;
SIGNAL \phone|state.RETURN_HOME~q\ : std_logic;
SIGNAL \phone|Selector5~0_combout\ : std_logic;
SIGNAL \phone|Selector5~1_combout\ : std_logic;
SIGNAL \phone|Selector5~2_combout\ : std_logic;
SIGNAL \phone|Selector5~3_combout\ : std_logic;
SIGNAL \phone|Selector4~0_combout\ : std_logic;
SIGNAL \phone|Selector3~0_combout\ : std_logic;
SIGNAL \phone|Selector3~1_combout\ : std_logic;
SIGNAL \phone|Selector2~0_combout\ : std_logic;
SIGNAL \slowclk|Add0~1\ : std_logic;
SIGNAL \slowclk|Add0~2_combout\ : std_logic;
SIGNAL \slowclk|Add0~3\ : std_logic;
SIGNAL \slowclk|Add0~5\ : std_logic;
SIGNAL \slowclk|Add0~7\ : std_logic;
SIGNAL \slowclk|Add0~9\ : std_logic;
SIGNAL \slowclk|Add0~10_combout\ : std_logic;
SIGNAL \slowclk|Add0~11\ : std_logic;
SIGNAL \slowclk|Add0~13\ : std_logic;
SIGNAL \slowclk|Add0~15\ : std_logic;
SIGNAL \slowclk|Add0~16_combout\ : std_logic;
SIGNAL \slowclk|Add0~17\ : std_logic;
SIGNAL \slowclk|Add0~19\ : std_logic;
SIGNAL \slowclk|Add0~20_combout\ : std_logic;
SIGNAL \slowclk|Add0~21\ : std_logic;
SIGNAL \slowclk|Add0~23\ : std_logic;
SIGNAL \slowclk|Add0~25\ : std_logic;
SIGNAL \slowclk|Add0~26_combout\ : std_logic;
SIGNAL \slowclk|Add0~27\ : std_logic;
SIGNAL \slowclk|Add0~28_combout\ : std_logic;
SIGNAL \slowclk|Add0~29\ : std_logic;
SIGNAL \slowclk|Add0~30_combout\ : std_logic;
SIGNAL \slowclk|Add0~31\ : std_logic;
SIGNAL \slowclk|Add0~33\ : std_logic;
SIGNAL \slowclk|Add0~34_combout\ : std_logic;
SIGNAL \slowclk|Add0~35\ : std_logic;
SIGNAL \slowclk|Add0~37\ : std_logic;
SIGNAL \slowclk|Add0~38_combout\ : std_logic;
SIGNAL \slowclk|Add0~39\ : std_logic;
SIGNAL \slowclk|Add0~40_combout\ : std_logic;
SIGNAL \slowclk|Add0~41\ : std_logic;
SIGNAL \slowclk|Add0~43\ : std_logic;
SIGNAL \slowclk|Add0~45\ : std_logic;
SIGNAL \slowclk|Add0~46_combout\ : std_logic;
SIGNAL \slowclk|Add0~47\ : std_logic;
SIGNAL \slowclk|Add0~49\ : std_logic;
SIGNAL \slowclk|Add0~50_combout\ : std_logic;
SIGNAL \slowclk|Add0~42_combout\ : std_logic;
SIGNAL \slowclk|Add0~44_combout\ : std_logic;
SIGNAL \slowclk|Equal0~0_combout\ : std_logic;
SIGNAL \slowclk|Add0~36_combout\ : std_logic;
SIGNAL \slowclk|Add0~4_combout\ : std_logic;
SIGNAL \slowclk|Add0~6_combout\ : std_logic;
SIGNAL \slowclk|Equal0~1_combout\ : std_logic;
SIGNAL \slowclk|Add0~24_combout\ : std_logic;
SIGNAL \slowclk|Equal0~4_combout\ : std_logic;
SIGNAL \slowclk|Add0~18_combout\ : std_logic;
SIGNAL \slowclk|Add0~22_combout\ : std_logic;
SIGNAL \slowclk|Equal0~3_combout\ : std_logic;
SIGNAL \slowclk|Equal0~5_combout\ : std_logic;
SIGNAL \slowclk|Equal0~6_combout\ : std_logic;
SIGNAL \slowclk|Equal0~7_combout\ : std_logic;
SIGNAL \slowclk|Equal0~8_combout\ : std_logic;
SIGNAL \slowclk|Out_Clk~q\ : std_logic;
SIGNAL \slowclk|Out_Clk~clkctrl_outclk\ : std_logic;
SIGNAL \insidePad[2]~input_o\ : std_logic;
SIGNAL \insidePad[0]~input_o\ : std_logic;
SIGNAL \insidePad[3]~input_o\ : std_logic;
SIGNAL \innerLock|Equal1~0_combout\ : std_logic;
SIGNAL \innerLock|FS.S4~0_combout\ : std_logic;
SIGNAL \innerLock|Selector0~0_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \innerLock|PS.S0~q\ : std_logic;
SIGNAL \innerLock|FS.S1~0_combout\ : std_logic;
SIGNAL \innerLock|FS.S1~1_combout\ : std_logic;
SIGNAL \innerLock|PS.S1~q\ : std_logic;
SIGNAL \innerLock|FS.S2~0_combout\ : std_logic;
SIGNAL \innerLock|PS.S2~q\ : std_logic;
SIGNAL \innerLock|z[1]~0_combout\ : std_logic;
SIGNAL \innerLock|FS.S3~0_combout\ : std_logic;
SIGNAL \innerLock|PS.S3~q\ : std_logic;
SIGNAL \innerLock|FS.S4~1_combout\ : std_logic;
SIGNAL \innerLock|PS.S4~q\ : std_logic;
SIGNAL \childLock|Equal0~0_combout\ : std_logic;
SIGNAL \childLock|int_lock~0_combout\ : std_logic;
SIGNAL \parent~input_o\ : std_logic;
SIGNAL \childLock|int_lock~q\ : std_logic;
SIGNAL \childLock|emergencyGPS~q\ : std_logic;
SIGNAL \insidePad[1]~input_o\ : std_logic;
SIGNAL \insideDisplay|Mux6~0_combout\ : std_logic;
SIGNAL \insideDisplay|Mux5~0_combout\ : std_logic;
SIGNAL \insideDisplay|Mux4~0_combout\ : std_logic;
SIGNAL \insideDisplay|Mux3~0_combout\ : std_logic;
SIGNAL \insideDisplay|Mux2~0_combout\ : std_logic;
SIGNAL \insideDisplay|Mux1~0_combout\ : std_logic;
SIGNAL \insideDisplay|Mux0~0_combout\ : std_logic;
SIGNAL \outsidePad[0]~input_o\ : std_logic;
SIGNAL \outsidePad[2]~input_o\ : std_logic;
SIGNAL \outsidePad[1]~input_o\ : std_logic;
SIGNAL \outsidePad[3]~input_o\ : std_logic;
SIGNAL \outsideDisplay|Mux6~0_combout\ : std_logic;
SIGNAL \outsideDisplay|Mux5~0_combout\ : std_logic;
SIGNAL \outsideDisplay|Mux4~0_combout\ : std_logic;
SIGNAL \outsideDisplay|Mux3~0_combout\ : std_logic;
SIGNAL \outsideDisplay|Mux2~0_combout\ : std_logic;
SIGNAL \outsideDisplay|Mux1~0_combout\ : std_logic;
SIGNAL \outsideDisplay|Mux0~0_combout\ : std_logic;
SIGNAL \outerLock|FS.S2~0_combout\ : std_logic;
SIGNAL \outerLock|Selector0~0_combout\ : std_logic;
SIGNAL \outerLock|PS.S0~q\ : std_logic;
SIGNAL \outerLock|FS.S1~0_combout\ : std_logic;
SIGNAL \outerLock|PS.S1~feeder_combout\ : std_logic;
SIGNAL \outerLock|PS.S1~q\ : std_logic;
SIGNAL \outerLock|FS.S2~1_combout\ : std_logic;
SIGNAL \outerLock|PS.S2~q\ : std_logic;
SIGNAL \outerLock|z[1]~0_combout\ : std_logic;
SIGNAL \phone|Selector1~0_combout\ : std_logic;
SIGNAL \phone|LCD_RS~q\ : std_logic;
SIGNAL \phone|LCD_E~0_combout\ : std_logic;
SIGNAL \phone|LCD_E~q\ : std_logic;
SIGNAL \phone|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \phone|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \phone|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \slowclk|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \phone|ALT_INV_state.Print_String~q\ : std_logic;
SIGNAL \outsideDisplay|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \insideDisplay|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \childLock|ALT_INV_int_lock~q\ : std_logic;
SIGNAL \ALT_INV_clr~input_o\ : std_logic;

BEGIN

ww_insidePad <= insidePad;
ww_outsidePad <= outsidePad;
ww_parent <= parent;
ww_clk <= clk;
ww_clr <= clr;
lock <= ww_lock;
gps <= ww_gps;
innerDisplay <= ww_innerDisplay;
outerDisplay <= ww_outerDisplay;
pattern1 <= ww_pattern1;
pattern2 <= ww_pattern2;
LCD_RS <= ww_LCD_RS;
LCD_E <= ww_LCD_E;
LCD_RW <= ww_LCD_RW;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\phone|CLK_400HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \phone|CLK_400HZ~q\);

\slowclk|Out_Clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slowclk|Out_Clk~q\);
\phone|ALT_INV_state.Print_String~q\ <= NOT \phone|state.Print_String~q\;
\outsideDisplay|ALT_INV_Mux6~0_combout\ <= NOT \outsideDisplay|Mux6~0_combout\;
\insideDisplay|ALT_INV_Mux6~0_combout\ <= NOT \insideDisplay|Mux6~0_combout\;
\childLock|ALT_INV_int_lock~q\ <= NOT \childLock|int_lock~q\;
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;

-- Location: LCCOMB_X2_Y29_N6
\slowclk|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~0_combout\ = \slowclk|cnt\(0) $ (VCC)
-- \slowclk|Add0~1\ = CARRY(\slowclk|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(0),
	datad => VCC,
	combout => \slowclk|Add0~0_combout\,
	cout => \slowclk|Add0~1\);

-- Location: LCCOMB_X2_Y29_N14
\slowclk|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~8_combout\ = (\slowclk|cnt\(4) & (\slowclk|Add0~7\ $ (GND))) # (!\slowclk|cnt\(4) & (!\slowclk|Add0~7\ & VCC))
-- \slowclk|Add0~9\ = CARRY((\slowclk|cnt\(4) & !\slowclk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(4),
	datad => VCC,
	cin => \slowclk|Add0~7\,
	combout => \slowclk|Add0~8_combout\,
	cout => \slowclk|Add0~9\);

-- Location: LCCOMB_X2_Y29_N18
\slowclk|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~12_combout\ = (\slowclk|cnt\(6) & (\slowclk|Add0~11\ $ (GND))) # (!\slowclk|cnt\(6) & (!\slowclk|Add0~11\ & VCC))
-- \slowclk|Add0~13\ = CARRY((\slowclk|cnt\(6) & !\slowclk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(6),
	datad => VCC,
	cin => \slowclk|Add0~11\,
	combout => \slowclk|Add0~12_combout\,
	cout => \slowclk|Add0~13\);

-- Location: LCCOMB_X2_Y29_N20
\slowclk|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~14_combout\ = (\slowclk|cnt\(7) & (!\slowclk|Add0~13\)) # (!\slowclk|cnt\(7) & ((\slowclk|Add0~13\) # (GND)))
-- \slowclk|Add0~15\ = CARRY((!\slowclk|Add0~13\) # (!\slowclk|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(7),
	datad => VCC,
	cin => \slowclk|Add0~13\,
	combout => \slowclk|Add0~14_combout\,
	cout => \slowclk|Add0~15\);

-- Location: LCCOMB_X2_Y28_N6
\slowclk|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~32_combout\ = (\slowclk|cnt\(16) & (\slowclk|Add0~31\ $ (GND))) # (!\slowclk|cnt\(16) & (!\slowclk|Add0~31\ & VCC))
-- \slowclk|Add0~33\ = CARRY((\slowclk|cnt\(16) & !\slowclk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(16),
	datad => VCC,
	cin => \slowclk|Add0~31\,
	combout => \slowclk|Add0~32_combout\,
	cout => \slowclk|Add0~33\);

-- Location: LCCOMB_X2_Y28_N22
\slowclk|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~48_combout\ = (\slowclk|cnt\(24) & (\slowclk|Add0~47\ $ (GND))) # (!\slowclk|cnt\(24) & (!\slowclk|Add0~47\ & VCC))
-- \slowclk|Add0~49\ = CARRY((\slowclk|cnt\(24) & !\slowclk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(24),
	datad => VCC,
	cin => \slowclk|Add0~47\,
	combout => \slowclk|Add0~48_combout\,
	cout => \slowclk|Add0~49\);

-- Location: FF_X56_Y2_N13
\phone|CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[16]~52_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(16));

-- Location: FF_X56_Y2_N15
\phone|CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[17]~54_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(17));

-- Location: FF_X56_Y2_N17
\phone|CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[18]~56_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(18));

-- Location: FF_X56_Y2_N19
\phone|CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[19]~58_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(19));

-- Location: FF_X56_Y2_N11
\phone|CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[15]~50_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(15));

-- Location: FF_X56_Y3_N13
\phone|CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X56_Y3_N12
\phone|CLK_COUNT_400HZ[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[0]~20_combout\ = \phone|CLK_COUNT_400HZ\(0) $ (VCC)
-- \phone|CLK_COUNT_400HZ[0]~21\ = CARRY(\phone|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \phone|CLK_COUNT_400HZ[0]~20_combout\,
	cout => \phone|CLK_COUNT_400HZ[0]~21\);

-- Location: LCCOMB_X56_Y2_N8
\phone|CLK_COUNT_400HZ[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[14]~48_combout\ = (\phone|CLK_COUNT_400HZ\(14) & (\phone|CLK_COUNT_400HZ[13]~47\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(14) & (!\phone|CLK_COUNT_400HZ[13]~47\ & VCC))
-- \phone|CLK_COUNT_400HZ[14]~49\ = CARRY((\phone|CLK_COUNT_400HZ\(14) & !\phone|CLK_COUNT_400HZ[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[13]~47\,
	combout => \phone|CLK_COUNT_400HZ[14]~48_combout\,
	cout => \phone|CLK_COUNT_400HZ[14]~49\);

-- Location: LCCOMB_X56_Y2_N10
\phone|CLK_COUNT_400HZ[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[15]~50_combout\ = (\phone|CLK_COUNT_400HZ\(15) & (!\phone|CLK_COUNT_400HZ[14]~49\)) # (!\phone|CLK_COUNT_400HZ\(15) & ((\phone|CLK_COUNT_400HZ[14]~49\) # (GND)))
-- \phone|CLK_COUNT_400HZ[15]~51\ = CARRY((!\phone|CLK_COUNT_400HZ[14]~49\) # (!\phone|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[14]~49\,
	combout => \phone|CLK_COUNT_400HZ[15]~50_combout\,
	cout => \phone|CLK_COUNT_400HZ[15]~51\);

-- Location: LCCOMB_X56_Y2_N12
\phone|CLK_COUNT_400HZ[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[16]~52_combout\ = (\phone|CLK_COUNT_400HZ\(16) & (\phone|CLK_COUNT_400HZ[15]~51\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(16) & (!\phone|CLK_COUNT_400HZ[15]~51\ & VCC))
-- \phone|CLK_COUNT_400HZ[16]~53\ = CARRY((\phone|CLK_COUNT_400HZ\(16) & !\phone|CLK_COUNT_400HZ[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[15]~51\,
	combout => \phone|CLK_COUNT_400HZ[16]~52_combout\,
	cout => \phone|CLK_COUNT_400HZ[16]~53\);

-- Location: LCCOMB_X56_Y2_N14
\phone|CLK_COUNT_400HZ[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[17]~54_combout\ = (\phone|CLK_COUNT_400HZ\(17) & (!\phone|CLK_COUNT_400HZ[16]~53\)) # (!\phone|CLK_COUNT_400HZ\(17) & ((\phone|CLK_COUNT_400HZ[16]~53\) # (GND)))
-- \phone|CLK_COUNT_400HZ[17]~55\ = CARRY((!\phone|CLK_COUNT_400HZ[16]~53\) # (!\phone|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[16]~53\,
	combout => \phone|CLK_COUNT_400HZ[17]~54_combout\,
	cout => \phone|CLK_COUNT_400HZ[17]~55\);

-- Location: LCCOMB_X56_Y2_N16
\phone|CLK_COUNT_400HZ[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[18]~56_combout\ = (\phone|CLK_COUNT_400HZ\(18) & (\phone|CLK_COUNT_400HZ[17]~55\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(18) & (!\phone|CLK_COUNT_400HZ[17]~55\ & VCC))
-- \phone|CLK_COUNT_400HZ[18]~57\ = CARRY((\phone|CLK_COUNT_400HZ\(18) & !\phone|CLK_COUNT_400HZ[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[17]~55\,
	combout => \phone|CLK_COUNT_400HZ[18]~56_combout\,
	cout => \phone|CLK_COUNT_400HZ[18]~57\);

-- Location: LCCOMB_X56_Y2_N18
\phone|CLK_COUNT_400HZ[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[19]~58_combout\ = \phone|CLK_COUNT_400HZ\(19) $ (\phone|CLK_COUNT_400HZ[18]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(19),
	cin => \phone|CLK_COUNT_400HZ[18]~57\,
	combout => \phone|CLK_COUNT_400HZ[19]~58_combout\);

-- Location: FF_X2_Y28_N23
\slowclk|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(24));

-- Location: FF_X2_Y28_N19
\slowclk|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(22));

-- Location: FF_X2_Y28_N17
\slowclk|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(21));

-- Location: FF_X2_Y28_N11
\slowclk|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(18));

-- Location: FF_X2_Y28_N7
\slowclk|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(16));

-- Location: FF_X2_Y29_N31
\slowclk|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(12));

-- Location: FF_X2_Y29_N29
\slowclk|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(11));

-- Location: FF_X2_Y29_N25
\slowclk|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(9));

-- Location: FF_X2_Y29_N21
\slowclk|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(7));

-- Location: FF_X2_Y29_N19
\slowclk|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(6));

-- Location: FF_X2_Y29_N15
\slowclk|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(4));

-- Location: FF_X2_Y29_N13
\slowclk|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(3));

-- Location: FF_X2_Y29_N11
\slowclk|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(2));

-- Location: FF_X2_Y29_N7
\slowclk|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(0));

-- Location: LCCOMB_X2_Y29_N2
\slowclk|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~2_combout\ = (!\slowclk|Add0~10_combout\ & (!\slowclk|Add0~12_combout\ & (!\slowclk|Add0~8_combout\ & \slowclk|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|Add0~10_combout\,
	datab => \slowclk|Add0~12_combout\,
	datac => \slowclk|Add0~8_combout\,
	datad => \slowclk|Add0~14_combout\,
	combout => \slowclk|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y2_N26
\phone|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|LessThan0~0_combout\ = (!\phone|CLK_COUNT_400HZ\(16) & (!\phone|CLK_COUNT_400HZ\(17) & (!\phone|CLK_COUNT_400HZ\(19) & !\phone|CLK_COUNT_400HZ\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(16),
	datab => \phone|CLK_COUNT_400HZ\(17),
	datac => \phone|CLK_COUNT_400HZ\(19),
	datad => \phone|CLK_COUNT_400HZ\(18),
	combout => \phone|LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y48_N22
\phone|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux1~0_combout\ = (\phone|CHAR_COUNT\(0) & ((\phone|CHAR_COUNT\(4)) # ((\phone|CHAR_COUNT\(2) & \phone|CHAR_COUNT\(1))))) # (!\phone|CHAR_COUNT\(0) & (\phone|CHAR_COUNT\(4) & ((\phone|CHAR_COUNT\(2)) # (\phone|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(0),
	datab => \phone|CHAR_COUNT\(2),
	datac => \phone|CHAR_COUNT\(4),
	datad => \phone|CHAR_COUNT\(1),
	combout => \phone|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y48_N8
\phone|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector8~0_combout\ = (\phone|state.MODE_SET~q\) # ((\phone|DATA_BUS_VALUE\(1) & ((\phone|state.DROP_LCD_E~q\) # (\phone|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|DATA_BUS_VALUE\(1),
	datab => \phone|state.MODE_SET~q\,
	datac => \phone|state.DROP_LCD_E~q\,
	datad => \phone|state.HOLD~q\,
	combout => \phone|Selector8~0_combout\);

-- Location: LCCOMB_X4_Y48_N22
\phone|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector7~0_combout\ = (\phone|state.MODE_SET~q\) # ((\phone|state.DISPLAY_ON~q\) # ((\phone|DATA_BUS_VALUE\(2) & !\phone|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|DATA_BUS_VALUE\(2),
	datab => \phone|state.MODE_SET~q\,
	datac => \phone|LCD_RS~0_combout\,
	datad => \phone|state.DISPLAY_ON~q\,
	combout => \phone|Selector7~0_combout\);

-- Location: FF_X7_Y48_N5
\phone|state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.RESET3~q\);

-- Location: FF_X7_Y48_N7
\phone|state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.FUNC_SET~q\);

-- Location: FF_X3_Y48_N19
\phone|next_command.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.MODE_SET~q\);

-- Location: FF_X7_Y48_N27
\phone|next_command.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.RESET3~q\);

-- Location: LCCOMB_X7_Y48_N4
\phone|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~34_combout\ = (\phone|next_command.RESET3~q\ & \phone|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|next_command.RESET3~q\,
	datad => \phone|state.HOLD~q\,
	combout => \phone|state~34_combout\);

-- Location: FF_X7_Y48_N11
\phone|next_command.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.FUNC_SET~q\);

-- Location: LCCOMB_X7_Y48_N6
\phone|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~36_combout\ = (\phone|next_command.FUNC_SET~q\ & \phone|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|next_command.FUNC_SET~q\,
	datad => \phone|state.HOLD~q\,
	combout => \phone|state~36_combout\);

-- Location: LCCOMB_X3_Y48_N18
\phone|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector14~0_combout\ = (\phone|state.DISPLAY_ON~q\) # ((\phone|next_command.MODE_SET~q\ & ((\phone|state.DROP_LCD_E~q\) # (\phone|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.DROP_LCD_E~q\,
	datab => \phone|state.HOLD~q\,
	datac => \phone|next_command.MODE_SET~q\,
	datad => \phone|state.DISPLAY_ON~q\,
	combout => \phone|Selector14~0_combout\);

-- Location: LCCOMB_X3_Y48_N16
\phone|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector16~0_combout\ = (\phone|next_command.LINE2~q\ & ((\phone|state.HOLD~q\) # (\phone|state.DROP_LCD_E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.HOLD~q\,
	datac => \phone|state.DROP_LCD_E~q\,
	datad => \phone|next_command.LINE2~q\,
	combout => \phone|Selector16~0_combout\);

-- Location: LCCOMB_X7_Y48_N26
\phone|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector19~0_combout\ = (\phone|state.RESET2~q\) # ((\phone|next_command.RESET3~q\ & ((\phone|state.HOLD~q\) # (\phone|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.HOLD~q\,
	datab => \phone|state.DROP_LCD_E~q\,
	datac => \phone|next_command.RESET3~q\,
	datad => \phone|state.RESET2~q\,
	combout => \phone|Selector19~0_combout\);

-- Location: LCCOMB_X7_Y48_N10
\phone|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector12~0_combout\ = (\phone|state.RESET3~q\) # ((\phone|next_command.FUNC_SET~q\ & ((\phone|state.DROP_LCD_E~q\) # (\phone|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.RESET3~q\,
	datab => \phone|state.DROP_LCD_E~q\,
	datac => \phone|next_command.FUNC_SET~q\,
	datad => \phone|state.HOLD~q\,
	combout => \phone|Selector12~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y52_N16
\DATA_BUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|DATA_BUS_VALUE\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\DATA_BUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|DATA_BUS_VALUE\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\DATA_BUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|DATA_BUS_VALUE\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\DATA_BUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|DATA_BUS_VALUE\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\DATA_BUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|DATA_BUS_VALUE\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\DATA_BUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|DATA_BUS_VALUE\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\DATA_BUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|DATA_BUS_VALUE\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\DATA_BUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|DATA_BUS_VALUE\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\lock~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \childLock|ALT_INV_int_lock~q\,
	devoe => ww_devoe,
	o => \lock~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\gps~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \childLock|emergencyGPS~q\,
	devoe => ww_devoe,
	o => \gps~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\innerDisplay[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insideDisplay|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \innerDisplay[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\innerDisplay[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insideDisplay|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \innerDisplay[1]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\innerDisplay[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insideDisplay|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \innerDisplay[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\innerDisplay[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insideDisplay|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \innerDisplay[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\innerDisplay[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insideDisplay|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \innerDisplay[4]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\innerDisplay[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insideDisplay|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \innerDisplay[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\innerDisplay[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insideDisplay|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \innerDisplay[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\outerDisplay[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outsideDisplay|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \outerDisplay[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\outerDisplay[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outsideDisplay|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \outerDisplay[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\outerDisplay[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outsideDisplay|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \outerDisplay[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\outerDisplay[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outsideDisplay|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \outerDisplay[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\outerDisplay[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outsideDisplay|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \outerDisplay[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\outerDisplay[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outsideDisplay|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \outerDisplay[5]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\outerDisplay[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outsideDisplay|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \outerDisplay[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\pattern1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \childLock|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \pattern1[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\pattern1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \innerLock|z[1]~0_combout\,
	devoe => ww_devoe,
	o => \pattern1[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\pattern2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pattern2[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\pattern2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outerLock|z[1]~0_combout\,
	devoe => ww_devoe,
	o => \pattern2[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|LCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \phone|LCD_E~q\,
	devoe => ww_devoe,
	o => \LCD_E~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \childLock|emergencyGPS~q\,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \childLock|emergencyGPS~q\,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: LCCOMB_X56_Y3_N14
\phone|CLK_COUNT_400HZ[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[1]~22_combout\ = (\phone|CLK_COUNT_400HZ\(1) & (!\phone|CLK_COUNT_400HZ[0]~21\)) # (!\phone|CLK_COUNT_400HZ\(1) & ((\phone|CLK_COUNT_400HZ[0]~21\) # (GND)))
-- \phone|CLK_COUNT_400HZ[1]~23\ = CARRY((!\phone|CLK_COUNT_400HZ[0]~21\) # (!\phone|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[0]~21\,
	combout => \phone|CLK_COUNT_400HZ[1]~22_combout\,
	cout => \phone|CLK_COUNT_400HZ[1]~23\);

-- Location: FF_X56_Y3_N15
\phone|CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X56_Y3_N16
\phone|CLK_COUNT_400HZ[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[2]~24_combout\ = (\phone|CLK_COUNT_400HZ\(2) & (\phone|CLK_COUNT_400HZ[1]~23\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(2) & (!\phone|CLK_COUNT_400HZ[1]~23\ & VCC))
-- \phone|CLK_COUNT_400HZ[2]~25\ = CARRY((\phone|CLK_COUNT_400HZ\(2) & !\phone|CLK_COUNT_400HZ[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[1]~23\,
	combout => \phone|CLK_COUNT_400HZ[2]~24_combout\,
	cout => \phone|CLK_COUNT_400HZ[2]~25\);

-- Location: FF_X56_Y3_N17
\phone|CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X56_Y3_N18
\phone|CLK_COUNT_400HZ[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[3]~26_combout\ = (\phone|CLK_COUNT_400HZ\(3) & (!\phone|CLK_COUNT_400HZ[2]~25\)) # (!\phone|CLK_COUNT_400HZ\(3) & ((\phone|CLK_COUNT_400HZ[2]~25\) # (GND)))
-- \phone|CLK_COUNT_400HZ[3]~27\ = CARRY((!\phone|CLK_COUNT_400HZ[2]~25\) # (!\phone|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[2]~25\,
	combout => \phone|CLK_COUNT_400HZ[3]~26_combout\,
	cout => \phone|CLK_COUNT_400HZ[3]~27\);

-- Location: FF_X56_Y3_N19
\phone|CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[3]~26_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X56_Y3_N20
\phone|CLK_COUNT_400HZ[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[4]~28_combout\ = (\phone|CLK_COUNT_400HZ\(4) & (\phone|CLK_COUNT_400HZ[3]~27\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(4) & (!\phone|CLK_COUNT_400HZ[3]~27\ & VCC))
-- \phone|CLK_COUNT_400HZ[4]~29\ = CARRY((\phone|CLK_COUNT_400HZ\(4) & !\phone|CLK_COUNT_400HZ[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[3]~27\,
	combout => \phone|CLK_COUNT_400HZ[4]~28_combout\,
	cout => \phone|CLK_COUNT_400HZ[4]~29\);

-- Location: FF_X56_Y3_N21
\phone|CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[4]~28_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X56_Y3_N22
\phone|CLK_COUNT_400HZ[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[5]~30_combout\ = (\phone|CLK_COUNT_400HZ\(5) & (!\phone|CLK_COUNT_400HZ[4]~29\)) # (!\phone|CLK_COUNT_400HZ\(5) & ((\phone|CLK_COUNT_400HZ[4]~29\) # (GND)))
-- \phone|CLK_COUNT_400HZ[5]~31\ = CARRY((!\phone|CLK_COUNT_400HZ[4]~29\) # (!\phone|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[4]~29\,
	combout => \phone|CLK_COUNT_400HZ[5]~30_combout\,
	cout => \phone|CLK_COUNT_400HZ[5]~31\);

-- Location: FF_X56_Y3_N23
\phone|CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[5]~30_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X56_Y3_N24
\phone|CLK_COUNT_400HZ[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[6]~32_combout\ = (\phone|CLK_COUNT_400HZ\(6) & (\phone|CLK_COUNT_400HZ[5]~31\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(6) & (!\phone|CLK_COUNT_400HZ[5]~31\ & VCC))
-- \phone|CLK_COUNT_400HZ[6]~33\ = CARRY((\phone|CLK_COUNT_400HZ\(6) & !\phone|CLK_COUNT_400HZ[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[5]~31\,
	combout => \phone|CLK_COUNT_400HZ[6]~32_combout\,
	cout => \phone|CLK_COUNT_400HZ[6]~33\);

-- Location: LCCOMB_X56_Y3_N26
\phone|CLK_COUNT_400HZ[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[7]~34_combout\ = (\phone|CLK_COUNT_400HZ\(7) & (!\phone|CLK_COUNT_400HZ[6]~33\)) # (!\phone|CLK_COUNT_400HZ\(7) & ((\phone|CLK_COUNT_400HZ[6]~33\) # (GND)))
-- \phone|CLK_COUNT_400HZ[7]~35\ = CARRY((!\phone|CLK_COUNT_400HZ[6]~33\) # (!\phone|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[6]~33\,
	combout => \phone|CLK_COUNT_400HZ[7]~34_combout\,
	cout => \phone|CLK_COUNT_400HZ[7]~35\);

-- Location: FF_X56_Y3_N27
\phone|CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[7]~34_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X56_Y3_N28
\phone|CLK_COUNT_400HZ[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[8]~36_combout\ = (\phone|CLK_COUNT_400HZ\(8) & (\phone|CLK_COUNT_400HZ[7]~35\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(8) & (!\phone|CLK_COUNT_400HZ[7]~35\ & VCC))
-- \phone|CLK_COUNT_400HZ[8]~37\ = CARRY((\phone|CLK_COUNT_400HZ\(8) & !\phone|CLK_COUNT_400HZ[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[7]~35\,
	combout => \phone|CLK_COUNT_400HZ[8]~36_combout\,
	cout => \phone|CLK_COUNT_400HZ[8]~37\);

-- Location: LCCOMB_X56_Y3_N30
\phone|CLK_COUNT_400HZ[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[9]~38_combout\ = (\phone|CLK_COUNT_400HZ\(9) & (!\phone|CLK_COUNT_400HZ[8]~37\)) # (!\phone|CLK_COUNT_400HZ\(9) & ((\phone|CLK_COUNT_400HZ[8]~37\) # (GND)))
-- \phone|CLK_COUNT_400HZ[9]~39\ = CARRY((!\phone|CLK_COUNT_400HZ[8]~37\) # (!\phone|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[8]~37\,
	combout => \phone|CLK_COUNT_400HZ[9]~38_combout\,
	cout => \phone|CLK_COUNT_400HZ[9]~39\);

-- Location: LCCOMB_X56_Y2_N20
\phone|CLK_COUNT_400HZ[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[9]~feeder_combout\ = \phone|CLK_COUNT_400HZ[9]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|CLK_COUNT_400HZ[9]~38_combout\,
	combout => \phone|CLK_COUNT_400HZ[9]~feeder_combout\);

-- Location: FF_X56_Y2_N21
\phone|CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[9]~feeder_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X56_Y2_N0
\phone|CLK_COUNT_400HZ[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[10]~40_combout\ = (\phone|CLK_COUNT_400HZ\(10) & (\phone|CLK_COUNT_400HZ[9]~39\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(10) & (!\phone|CLK_COUNT_400HZ[9]~39\ & VCC))
-- \phone|CLK_COUNT_400HZ[10]~41\ = CARRY((\phone|CLK_COUNT_400HZ\(10) & !\phone|CLK_COUNT_400HZ[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[9]~39\,
	combout => \phone|CLK_COUNT_400HZ[10]~40_combout\,
	cout => \phone|CLK_COUNT_400HZ[10]~41\);

-- Location: FF_X56_Y2_N1
\phone|CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[10]~40_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X56_Y2_N2
\phone|CLK_COUNT_400HZ[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[11]~42_combout\ = (\phone|CLK_COUNT_400HZ\(11) & (!\phone|CLK_COUNT_400HZ[10]~41\)) # (!\phone|CLK_COUNT_400HZ\(11) & ((\phone|CLK_COUNT_400HZ[10]~41\) # (GND)))
-- \phone|CLK_COUNT_400HZ[11]~43\ = CARRY((!\phone|CLK_COUNT_400HZ[10]~41\) # (!\phone|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[10]~41\,
	combout => \phone|CLK_COUNT_400HZ[11]~42_combout\,
	cout => \phone|CLK_COUNT_400HZ[11]~43\);

-- Location: FF_X56_Y2_N3
\phone|CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[11]~42_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X56_Y2_N4
\phone|CLK_COUNT_400HZ[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[12]~44_combout\ = (\phone|CLK_COUNT_400HZ\(12) & (\phone|CLK_COUNT_400HZ[11]~43\ $ (GND))) # (!\phone|CLK_COUNT_400HZ\(12) & (!\phone|CLK_COUNT_400HZ[11]~43\ & VCC))
-- \phone|CLK_COUNT_400HZ[12]~45\ = CARRY((\phone|CLK_COUNT_400HZ\(12) & !\phone|CLK_COUNT_400HZ[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[11]~43\,
	combout => \phone|CLK_COUNT_400HZ[12]~44_combout\,
	cout => \phone|CLK_COUNT_400HZ[12]~45\);

-- Location: FF_X56_Y2_N5
\phone|CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[12]~44_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X56_Y2_N6
\phone|CLK_COUNT_400HZ[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_COUNT_400HZ[13]~46_combout\ = (\phone|CLK_COUNT_400HZ\(13) & (!\phone|CLK_COUNT_400HZ[12]~45\)) # (!\phone|CLK_COUNT_400HZ\(13) & ((\phone|CLK_COUNT_400HZ[12]~45\) # (GND)))
-- \phone|CLK_COUNT_400HZ[13]~47\ = CARRY((!\phone|CLK_COUNT_400HZ[12]~45\) # (!\phone|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \phone|CLK_COUNT_400HZ[12]~45\,
	combout => \phone|CLK_COUNT_400HZ[13]~46_combout\,
	cout => \phone|CLK_COUNT_400HZ[13]~47\);

-- Location: FF_X56_Y2_N9
\phone|CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[14]~48_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(14));

-- Location: FF_X56_Y2_N7
\phone|CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[13]~46_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X56_Y2_N24
\phone|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|LessThan0~1_combout\ = ((!\phone|CLK_COUNT_400HZ\(13)) # (!\phone|CLK_COUNT_400HZ\(14))) # (!\phone|CLK_COUNT_400HZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(15),
	datac => \phone|CLK_COUNT_400HZ\(14),
	datad => \phone|CLK_COUNT_400HZ\(13),
	combout => \phone|LessThan0~1_combout\);

-- Location: FF_X56_Y3_N29
\phone|CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[8]~36_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(8));

-- Location: FF_X56_Y3_N25
\phone|CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_COUNT_400HZ[6]~32_combout\,
	sclr => \phone|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X56_Y3_N8
\phone|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|LessThan0~2_combout\ = (!\phone|CLK_COUNT_400HZ\(7) & (!\phone|CLK_COUNT_400HZ\(8) & ((!\phone|CLK_COUNT_400HZ\(6)) # (!\phone|CLK_COUNT_400HZ\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(7),
	datab => \phone|CLK_COUNT_400HZ\(8),
	datac => \phone|CLK_COUNT_400HZ\(5),
	datad => \phone|CLK_COUNT_400HZ\(6),
	combout => \phone|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y2_N30
\phone|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|LessThan0~3_combout\ = ((!\phone|CLK_COUNT_400HZ\(10) & ((\phone|LessThan0~2_combout\) # (!\phone|CLK_COUNT_400HZ\(9))))) # (!\phone|CLK_COUNT_400HZ\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CLK_COUNT_400HZ\(9),
	datab => \phone|CLK_COUNT_400HZ\(10),
	datac => \phone|CLK_COUNT_400HZ\(11),
	datad => \phone|LessThan0~2_combout\,
	combout => \phone|LessThan0~3_combout\);

-- Location: LCCOMB_X56_Y2_N28
\phone|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|LessThan0~4_combout\ = ((!\phone|LessThan0~1_combout\ & ((\phone|CLK_COUNT_400HZ\(12)) # (!\phone|LessThan0~3_combout\)))) # (!\phone|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|LessThan0~0_combout\,
	datab => \phone|LessThan0~1_combout\,
	datac => \phone|LessThan0~3_combout\,
	datad => \phone|CLK_COUNT_400HZ\(12),
	combout => \phone|LessThan0~4_combout\);

-- Location: LCCOMB_X57_Y2_N0
\phone|CLK_400HZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_400HZ~0_combout\ = \phone|CLK_400HZ~q\ $ (\phone|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phone|CLK_400HZ~q\,
	datad => \phone|LessThan0~4_combout\,
	combout => \phone|CLK_400HZ~0_combout\);

-- Location: LCCOMB_X57_Y2_N4
\phone|CLK_400HZ~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CLK_400HZ~feeder_combout\ = \phone|CLK_400HZ~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|CLK_400HZ~0_combout\,
	combout => \phone|CLK_400HZ~feeder_combout\);

-- Location: FF_X57_Y2_N5
\phone|CLK_400HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phone|CLK_400HZ~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CLK_400HZ~q\);

-- Location: CLKCTRL_G18
\phone|CLK_400HZ~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \phone|CLK_400HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \phone|CLK_400HZ~clkctrl_outclk\);

-- Location: FF_X3_Y48_N15
\phone|state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	asdata => \phone|state.DROP_LCD_E~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.HOLD~q\);

-- Location: LCCOMB_X3_Y48_N14
\phone|LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|LCD_RS~0_combout\ = (!\phone|state.HOLD~q\ & !\phone|state.DROP_LCD_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|state.HOLD~q\,
	datad => \phone|state.DROP_LCD_E~q\,
	combout => \phone|LCD_RS~0_combout\);

-- Location: FF_X3_Y48_N17
\phone|state.DROP_LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	asdata => \phone|LCD_RS~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.DROP_LCD_E~q\);

-- Location: LCCOMB_X7_Y48_N16
\phone|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector20~0_combout\ = (\phone|state.FUNC_SET~q\) # ((\phone|next_command.DISPLAY_OFF~q\ & ((\phone|state.DROP_LCD_E~q\) # (\phone|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.FUNC_SET~q\,
	datab => \phone|state.DROP_LCD_E~q\,
	datac => \phone|next_command.DISPLAY_OFF~q\,
	datad => \phone|state.HOLD~q\,
	combout => \phone|Selector20~0_combout\);

-- Location: FF_X7_Y48_N17
\phone|next_command.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.DISPLAY_OFF~q\);

-- Location: LCCOMB_X8_Y48_N8
\phone|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~35_combout\ = (\phone|next_command.DISPLAY_OFF~q\ & \phone|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|next_command.DISPLAY_OFF~q\,
	datad => \phone|state.HOLD~q\,
	combout => \phone|state~35_combout\);

-- Location: FF_X8_Y48_N9
\phone|state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X4_Y48_N18
\phone|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector21~0_combout\ = (\phone|state.DISPLAY_OFF~q\) # ((\phone|next_command.DISPLAY_CLEAR~q\ & ((\phone|state.HOLD~q\) # (\phone|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.HOLD~q\,
	datab => \phone|state.DROP_LCD_E~q\,
	datac => \phone|next_command.DISPLAY_CLEAR~q\,
	datad => \phone|state.DISPLAY_OFF~q\,
	combout => \phone|Selector21~0_combout\);

-- Location: FF_X4_Y48_N19
\phone|next_command.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X3_Y48_N4
\phone|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~32_combout\ = (\phone|state.HOLD~q\ & \phone|next_command.DISPLAY_CLEAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|state.HOLD~q\,
	datad => \phone|next_command.DISPLAY_CLEAR~q\,
	combout => \phone|state~32_combout\);

-- Location: FF_X3_Y48_N5
\phone|state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X4_Y48_N2
\phone|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector9~1_combout\ = (\phone|state.DISPLAY_CLEAR~q\) # ((\phone|DATA_BUS_VALUE\(0) & ((\phone|state.HOLD~q\) # (\phone|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.HOLD~q\,
	datab => \phone|state.DROP_LCD_E~q\,
	datac => \phone|state.DISPLAY_CLEAR~q\,
	datad => \phone|DATA_BUS_VALUE\(0),
	combout => \phone|Selector9~1_combout\);

-- Location: LCCOMB_X6_Y48_N4
\phone|CHAR_COUNT[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CHAR_COUNT[0]~5_combout\ = \phone|CHAR_COUNT\(0) $ (VCC)
-- \phone|CHAR_COUNT[0]~6\ = CARRY(\phone|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(0),
	datad => VCC,
	combout => \phone|CHAR_COUNT[0]~5_combout\,
	cout => \phone|CHAR_COUNT[0]~6\);

-- Location: LCCOMB_X6_Y48_N6
\phone|CHAR_COUNT[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CHAR_COUNT[1]~7_combout\ = (\phone|CHAR_COUNT\(1) & (!\phone|CHAR_COUNT[0]~6\)) # (!\phone|CHAR_COUNT\(1) & ((\phone|CHAR_COUNT[0]~6\) # (GND)))
-- \phone|CHAR_COUNT[1]~8\ = CARRY((!\phone|CHAR_COUNT[0]~6\) # (!\phone|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CHAR_COUNT\(1),
	datad => VCC,
	cin => \phone|CHAR_COUNT[0]~6\,
	combout => \phone|CHAR_COUNT[1]~7_combout\,
	cout => \phone|CHAR_COUNT[1]~8\);

-- Location: LCCOMB_X7_Y48_N22
\phone|state.RESET1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \phone|state.RESET1~feeder_combout\);

-- Location: FF_X7_Y48_N23
\phone|state.RESET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state.RESET1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.RESET1~q\);

-- Location: LCCOMB_X7_Y48_N30
\phone|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector25~0_combout\ = (\phone|CHAR_COUNT\(1) & \phone|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phone|CHAR_COUNT\(1),
	datac => \phone|state.RESET1~q\,
	combout => \phone|Selector25~0_combout\);

-- Location: LCCOMB_X6_Y48_N10
\phone|CHAR_COUNT[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CHAR_COUNT[3]~11_combout\ = (\phone|CHAR_COUNT\(3) & (!\phone|CHAR_COUNT[2]~10\)) # (!\phone|CHAR_COUNT\(3) & ((\phone|CHAR_COUNT[2]~10\) # (GND)))
-- \phone|CHAR_COUNT[3]~12\ = CARRY((!\phone|CHAR_COUNT[2]~10\) # (!\phone|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CHAR_COUNT\(3),
	datad => VCC,
	cin => \phone|CHAR_COUNT[2]~10\,
	combout => \phone|CHAR_COUNT[3]~11_combout\,
	cout => \phone|CHAR_COUNT[3]~12\);

-- Location: LCCOMB_X6_Y48_N12
\phone|CHAR_COUNT[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CHAR_COUNT[4]~13_combout\ = \phone|CHAR_COUNT\(4) $ (!\phone|CHAR_COUNT[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phone|CHAR_COUNT\(4),
	cin => \phone|CHAR_COUNT[3]~12\,
	combout => \phone|CHAR_COUNT[4]~13_combout\);

-- Location: LCCOMB_X5_Y48_N16
\phone|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector22~0_combout\ = (\phone|CHAR_COUNT\(4) & \phone|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|CHAR_COUNT\(4),
	datad => \phone|state.RESET1~q\,
	combout => \phone|Selector22~0_combout\);

-- Location: FF_X6_Y48_N13
\phone|CHAR_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|CHAR_COUNT[4]~13_combout\,
	asdata => \phone|Selector22~0_combout\,
	sload => \phone|ALT_INV_state.Print_String~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CHAR_COUNT\(4));

-- Location: LCCOMB_X7_Y48_N20
\phone|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector26~0_combout\ = (\phone|CHAR_COUNT\(0) & \phone|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phone|CHAR_COUNT\(0),
	datac => \phone|state.RESET1~q\,
	combout => \phone|Selector26~0_combout\);

-- Location: FF_X6_Y48_N5
\phone|CHAR_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|CHAR_COUNT[0]~5_combout\,
	asdata => \phone|Selector26~0_combout\,
	sload => \phone|ALT_INV_state.Print_String~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CHAR_COUNT\(0));

-- Location: LCCOMB_X7_Y48_N0
\phone|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Equal2~0_combout\ = (\phone|CHAR_COUNT\(2) & (\phone|CHAR_COUNT\(0) & (\phone|CHAR_COUNT\(1) & \phone|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(2),
	datab => \phone|CHAR_COUNT\(0),
	datac => \phone|CHAR_COUNT\(1),
	datad => \phone|CHAR_COUNT\(3),
	combout => \phone|Equal2~0_combout\);

-- Location: LCCOMB_X3_Y48_N28
\phone|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector16~1_combout\ = (\phone|Selector16~0_combout\) # ((\phone|state.Print_String~q\ & (!\phone|CHAR_COUNT\(4) & \phone|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Selector16~0_combout\,
	datab => \phone|state.Print_String~q\,
	datac => \phone|CHAR_COUNT\(4),
	datad => \phone|Equal2~0_combout\,
	combout => \phone|Selector16~1_combout\);

-- Location: FF_X3_Y48_N29
\phone|next_command.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.LINE2~q\);

-- Location: LCCOMB_X3_Y48_N2
\phone|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~31_combout\ = (\phone|state.HOLD~q\ & \phone|next_command.LINE2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|state.HOLD~q\,
	datad => \phone|next_command.LINE2~q\,
	combout => \phone|state~31_combout\);

-- Location: FF_X3_Y48_N3
\phone|state.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.LINE2~q\);

-- Location: LCCOMB_X3_Y48_N12
\phone|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~30_combout\ = (\phone|next_command.MODE_SET~q\ & \phone|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|next_command.MODE_SET~q\,
	datac => \phone|state.HOLD~q\,
	combout => \phone|state~30_combout\);

-- Location: FF_X3_Y48_N13
\phone|state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.MODE_SET~q\);

-- Location: LCCOMB_X3_Y48_N20
\phone|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector15~0_combout\ = (\phone|state.LINE2~q\) # ((\phone|state.MODE_SET~q\) # ((\phone|next_command.Print_String~q\ & !\phone|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|next_command.Print_String~q\,
	datab => \phone|state.LINE2~q\,
	datac => \phone|LCD_RS~0_combout\,
	datad => \phone|state.MODE_SET~q\,
	combout => \phone|Selector15~0_combout\);

-- Location: LCCOMB_X3_Y48_N22
\phone|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector15~1_combout\ = (\phone|state.RETURN_HOME~q\) # ((\phone|Selector15~0_combout\) # ((\phone|state.Print_String~q\ & !\phone|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.RETURN_HOME~q\,
	datab => \phone|state.Print_String~q\,
	datac => \phone|Selector15~0_combout\,
	datad => \phone|Equal2~0_combout\,
	combout => \phone|Selector15~1_combout\);

-- Location: FF_X3_Y48_N23
\phone|next_command.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.Print_String~q\);

-- Location: LCCOMB_X3_Y48_N30
\phone|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~28_combout\ = (\phone|state.HOLD~q\ & \phone|next_command.Print_String~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|state.HOLD~q\,
	datad => \phone|next_command.Print_String~q\,
	combout => \phone|state~28_combout\);

-- Location: FF_X3_Y48_N31
\phone|state.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.Print_String~q\);

-- Location: FF_X6_Y48_N7
\phone|CHAR_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|CHAR_COUNT[1]~7_combout\,
	asdata => \phone|Selector25~0_combout\,
	sload => \phone|ALT_INV_state.Print_String~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CHAR_COUNT\(1));

-- Location: LCCOMB_X6_Y48_N8
\phone|CHAR_COUNT[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|CHAR_COUNT[2]~9_combout\ = (\phone|CHAR_COUNT\(2) & (\phone|CHAR_COUNT[1]~8\ $ (GND))) # (!\phone|CHAR_COUNT\(2) & (!\phone|CHAR_COUNT[1]~8\ & VCC))
-- \phone|CHAR_COUNT[2]~10\ = CARRY((\phone|CHAR_COUNT\(2) & !\phone|CHAR_COUNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(2),
	datad => VCC,
	cin => \phone|CHAR_COUNT[1]~8\,
	combout => \phone|CHAR_COUNT[2]~9_combout\,
	cout => \phone|CHAR_COUNT[2]~10\);

-- Location: LCCOMB_X7_Y48_N14
\phone|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector23~0_combout\ = (\phone|state.RESET1~q\ & \phone|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|state.RESET1~q\,
	datad => \phone|CHAR_COUNT\(3),
	combout => \phone|Selector23~0_combout\);

-- Location: FF_X6_Y48_N11
\phone|CHAR_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|CHAR_COUNT[3]~11_combout\,
	asdata => \phone|Selector23~0_combout\,
	sload => \phone|ALT_INV_state.Print_String~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CHAR_COUNT\(3));

-- Location: LCCOMB_X7_Y48_N12
\phone|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector24~0_combout\ = (\phone|state.RESET1~q\ & \phone|CHAR_COUNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|state.RESET1~q\,
	datad => \phone|CHAR_COUNT\(2),
	combout => \phone|Selector24~0_combout\);

-- Location: FF_X6_Y48_N9
\phone|CHAR_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|CHAR_COUNT[2]~9_combout\,
	asdata => \phone|Selector24~0_combout\,
	sload => \phone|ALT_INV_state.Print_String~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|CHAR_COUNT\(2));

-- Location: LCCOMB_X6_Y48_N2
\phone|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux6~1_combout\ = (\phone|CHAR_COUNT\(4) & ((\phone|CHAR_COUNT\(1) $ (!\phone|CHAR_COUNT\(2))))) # (!\phone|CHAR_COUNT\(4) & ((\phone|CHAR_COUNT\(2) & (\phone|CHAR_COUNT\(0))) # (!\phone|CHAR_COUNT\(2) & ((\phone|CHAR_COUNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(4),
	datab => \phone|CHAR_COUNT\(0),
	datac => \phone|CHAR_COUNT\(1),
	datad => \phone|CHAR_COUNT\(2),
	combout => \phone|Mux6~1_combout\);

-- Location: LCCOMB_X5_Y48_N30
\phone|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector9~2_combout\ = (\phone|state.Print_String~q\ & ((\phone|CHAR_COUNT\(3) & (!\phone|Mux6~0_combout\)) # (!\phone|CHAR_COUNT\(3) & ((!\phone|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Mux6~0_combout\,
	datab => \phone|CHAR_COUNT\(3),
	datac => \phone|state.Print_String~q\,
	datad => \phone|Mux6~1_combout\,
	combout => \phone|Selector9~2_combout\);

-- Location: LCCOMB_X6_Y48_N22
\phone|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux3~1_combout\ = (\phone|CHAR_COUNT\(4) & ((\phone|CHAR_COUNT\(3) $ (!\phone|CHAR_COUNT\(2))) # (!\phone|CHAR_COUNT\(0)))) # (!\phone|CHAR_COUNT\(4) & ((\phone|CHAR_COUNT\(3)) # ((\phone|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(4),
	datab => \phone|CHAR_COUNT\(3),
	datac => \phone|CHAR_COUNT\(2),
	datad => \phone|CHAR_COUNT\(0),
	combout => \phone|Mux3~1_combout\);

-- Location: LCCOMB_X6_Y48_N28
\phone|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux3~0_combout\ = (\phone|CHAR_COUNT\(2) & (\phone|CHAR_COUNT\(4) $ ((!\phone|CHAR_COUNT\(3))))) # (!\phone|CHAR_COUNT\(2) & ((\phone|CHAR_COUNT\(0) & (\phone|CHAR_COUNT\(4))) # (!\phone|CHAR_COUNT\(0) & ((\phone|CHAR_COUNT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(4),
	datab => \phone|CHAR_COUNT\(3),
	datac => \phone|CHAR_COUNT\(2),
	datad => \phone|CHAR_COUNT\(0),
	combout => \phone|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y48_N16
\phone|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux3~2_combout\ = (\phone|CHAR_COUNT\(1) & (!\phone|Mux3~1_combout\)) # (!\phone|CHAR_COUNT\(1) & ((\phone|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phone|CHAR_COUNT\(1),
	datac => \phone|Mux3~1_combout\,
	datad => \phone|Mux3~0_combout\,
	combout => \phone|Mux3~2_combout\);

-- Location: LCCOMB_X6_Y48_N26
\phone|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux4~1_combout\ = (!\phone|CHAR_COUNT\(3) & (\phone|CHAR_COUNT\(1) $ (((\phone|CHAR_COUNT\(0) & \phone|CHAR_COUNT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(1),
	datab => \phone|CHAR_COUNT\(0),
	datac => \phone|CHAR_COUNT\(2),
	datad => \phone|CHAR_COUNT\(3),
	combout => \phone|Mux4~1_combout\);

-- Location: LCCOMB_X6_Y48_N20
\phone|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux4~0_combout\ = (\phone|CHAR_COUNT\(1) & (!\phone|CHAR_COUNT\(2) & ((\phone|CHAR_COUNT\(3)) # (!\phone|CHAR_COUNT\(0))))) # (!\phone|CHAR_COUNT\(1) & ((\phone|CHAR_COUNT\(0)) # ((\phone|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(1),
	datab => \phone|CHAR_COUNT\(0),
	datac => \phone|CHAR_COUNT\(2),
	datad => \phone|CHAR_COUNT\(3),
	combout => \phone|Mux4~0_combout\);

-- Location: LCCOMB_X6_Y48_N16
\phone|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux4~2_combout\ = (\phone|CHAR_COUNT\(4) & ((\phone|Mux4~0_combout\))) # (!\phone|CHAR_COUNT\(4) & (\phone|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(4),
	datac => \phone|Mux4~1_combout\,
	datad => \phone|Mux4~0_combout\,
	combout => \phone|Mux4~2_combout\);

-- Location: LCCOMB_X6_Y48_N14
\phone|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux5~0_combout\ = (\phone|CHAR_COUNT\(3) & (!\phone|CHAR_COUNT\(2) & (\phone|CHAR_COUNT\(0) & \phone|CHAR_COUNT\(4)))) # (!\phone|CHAR_COUNT\(3) & (\phone|CHAR_COUNT\(2) & (!\phone|CHAR_COUNT\(0) & !\phone|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(3),
	datab => \phone|CHAR_COUNT\(2),
	datac => \phone|CHAR_COUNT\(0),
	datad => \phone|CHAR_COUNT\(4),
	combout => \phone|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y48_N24
\phone|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux5~1_combout\ = (\phone|CHAR_COUNT\(0) & ((\phone|CHAR_COUNT\(3) $ (\phone|CHAR_COUNT\(4))) # (!\phone|CHAR_COUNT\(2)))) # (!\phone|CHAR_COUNT\(0) & (\phone|CHAR_COUNT\(4) $ (((\phone|CHAR_COUNT\(3)) # (\phone|CHAR_COUNT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(3),
	datab => \phone|CHAR_COUNT\(0),
	datac => \phone|CHAR_COUNT\(2),
	datad => \phone|CHAR_COUNT\(4),
	combout => \phone|Mux5~1_combout\);

-- Location: LCCOMB_X6_Y48_N18
\phone|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux5~2_combout\ = (\phone|CHAR_COUNT\(1) & (\phone|Mux5~0_combout\)) # (!\phone|CHAR_COUNT\(1) & ((!\phone|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(1),
	datac => \phone|Mux5~0_combout\,
	datad => \phone|Mux5~1_combout\,
	combout => \phone|Mux5~2_combout\);

-- Location: LCCOMB_X4_Y48_N14
\phone|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|LessThan1~0_combout\ = (\phone|Mux3~2_combout\ & ((\phone|Mux4~2_combout\) # (\phone|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phone|Mux3~2_combout\,
	datac => \phone|Mux4~2_combout\,
	datad => \phone|Mux5~2_combout\,
	combout => \phone|LessThan1~0_combout\);

-- Location: LCCOMB_X6_Y48_N0
\phone|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux2~0_combout\ = (\phone|CHAR_COUNT\(1) & ((\phone|CHAR_COUNT\(0)) # (!\phone|CHAR_COUNT\(3)))) # (!\phone|CHAR_COUNT\(1) & (\phone|CHAR_COUNT\(0) & !\phone|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(1),
	datac => \phone|CHAR_COUNT\(0),
	datad => \phone|CHAR_COUNT\(3),
	combout => \phone|Mux2~0_combout\);

-- Location: LCCOMB_X6_Y48_N30
\phone|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux2~1_combout\ = (!\phone|Mux2~0_combout\ & ((\phone|CHAR_COUNT\(4) & ((!\phone|CHAR_COUNT\(3)))) # (!\phone|CHAR_COUNT\(4) & (!\phone|CHAR_COUNT\(2) & \phone|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(4),
	datab => \phone|CHAR_COUNT\(2),
	datac => \phone|CHAR_COUNT\(3),
	datad => \phone|Mux2~0_combout\,
	combout => \phone|Mux2~1_combout\);

-- Location: LCCOMB_X5_Y48_N0
\phone|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux0~0_combout\ = (\phone|CHAR_COUNT\(4) & ((\phone|CHAR_COUNT\(1) & (!\phone|CHAR_COUNT\(0))) # (!\phone|CHAR_COUNT\(1) & ((\phone|CHAR_COUNT\(3)))))) # (!\phone|CHAR_COUNT\(4) & (\phone|CHAR_COUNT\(0) & (!\phone|CHAR_COUNT\(3) & 
-- \phone|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(0),
	datab => \phone|CHAR_COUNT\(4),
	datac => \phone|CHAR_COUNT\(3),
	datad => \phone|CHAR_COUNT\(1),
	combout => \phone|Mux0~0_combout\);

-- Location: LCCOMB_X5_Y48_N18
\phone|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux0~1_combout\ = (\phone|Mux0~0_combout\ & (!\phone|CHAR_COUNT\(2))) # (!\phone|Mux0~0_combout\ & ((!\phone|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phone|CHAR_COUNT\(2),
	datac => \phone|CHAR_COUNT\(3),
	datad => \phone|Mux0~0_combout\,
	combout => \phone|Mux0~1_combout\);

-- Location: LCCOMB_X5_Y48_N4
\phone|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Equal0~0_combout\ = (!\phone|Mux1~0_combout\ & (!\phone|CHAR_COUNT\(3) & (!\phone|Mux2~1_combout\ & !\phone|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Mux1~0_combout\,
	datab => \phone|CHAR_COUNT\(3),
	datac => \phone|Mux2~1_combout\,
	datad => \phone|Mux0~1_combout\,
	combout => \phone|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y48_N24
\phone|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector9~0_combout\ = (\phone|state.Print_String~q\ & (\phone|Equal0~0_combout\ & (\phone|Mux6~2_combout\ $ (!\phone|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Mux6~2_combout\,
	datab => \phone|state.Print_String~q\,
	datac => \phone|LessThan1~0_combout\,
	datad => \phone|Equal0~0_combout\,
	combout => \phone|Selector9~0_combout\);

-- Location: LCCOMB_X4_Y48_N0
\phone|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector9~3_combout\ = (\phone|Selector9~1_combout\) # ((\phone|Selector9~0_combout\) # ((!\phone|Equal0~0_combout\ & \phone|Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Equal0~0_combout\,
	datab => \phone|Selector9~1_combout\,
	datac => \phone|Selector9~2_combout\,
	datad => \phone|Selector9~0_combout\,
	combout => \phone|Selector9~3_combout\);

-- Location: FF_X4_Y48_N1
\phone|DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X5_Y48_N14
\phone|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Add1~5_combout\ = \phone|Mux5~2_combout\ $ (((\phone|CHAR_COUNT\(3) & (\phone|Mux6~0_combout\)) # (!\phone|CHAR_COUNT\(3) & ((\phone|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Mux6~0_combout\,
	datab => \phone|CHAR_COUNT\(3),
	datac => \phone|Mux6~1_combout\,
	datad => \phone|Mux5~2_combout\,
	combout => \phone|Add1~5_combout\);

-- Location: LCCOMB_X4_Y48_N26
\phone|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector8~1_combout\ = (\phone|state.Print_String~q\ & (\phone|Mux5~2_combout\ & ((!\phone|Equal0~0_combout\) # (!\phone|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.Print_String~q\,
	datab => \phone|Mux5~2_combout\,
	datac => \phone|LessThan1~0_combout\,
	datad => \phone|Equal0~0_combout\,
	combout => \phone|Selector8~1_combout\);

-- Location: LCCOMB_X4_Y48_N20
\phone|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector8~2_combout\ = (\phone|state.Print_String~q\ & (\phone|LessThan1~0_combout\ & \phone|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.Print_String~q\,
	datac => \phone|LessThan1~0_combout\,
	datad => \phone|Equal0~0_combout\,
	combout => \phone|Selector8~2_combout\);

-- Location: LCCOMB_X4_Y48_N10
\phone|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector8~3_combout\ = (\phone|Selector8~0_combout\) # ((\phone|Selector8~1_combout\) # ((\phone|Add1~5_combout\ & \phone|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Selector8~0_combout\,
	datab => \phone|Add1~5_combout\,
	datac => \phone|Selector8~1_combout\,
	datad => \phone|Selector8~2_combout\,
	combout => \phone|Selector8~3_combout\);

-- Location: FF_X4_Y48_N11
\phone|DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X4_Y48_N28
\phone|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector7~1_combout\ = (\phone|state.Print_String~q\ & (\phone|Mux4~2_combout\ & ((!\phone|Equal0~0_combout\) # (!\phone|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.Print_String~q\,
	datab => \phone|Mux4~2_combout\,
	datac => \phone|LessThan1~0_combout\,
	datad => \phone|Equal0~0_combout\,
	combout => \phone|Selector7~1_combout\);

-- Location: LCCOMB_X5_Y48_N26
\phone|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux6~0_combout\ = (\phone|CHAR_COUNT\(2)) # ((\phone|CHAR_COUNT\(0) & ((\phone|CHAR_COUNT\(4)) # (\phone|CHAR_COUNT\(1)))) # (!\phone|CHAR_COUNT\(0) & (\phone|CHAR_COUNT\(4) & \phone|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(0),
	datab => \phone|CHAR_COUNT\(2),
	datac => \phone|CHAR_COUNT\(4),
	datad => \phone|CHAR_COUNT\(1),
	combout => \phone|Mux6~0_combout\);

-- Location: LCCOMB_X5_Y48_N20
\phone|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Mux6~2_combout\ = (\phone|CHAR_COUNT\(3) & (\phone|Mux6~0_combout\)) # (!\phone|CHAR_COUNT\(3) & ((\phone|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phone|CHAR_COUNT\(3),
	datac => \phone|Mux6~0_combout\,
	datad => \phone|Mux6~1_combout\,
	combout => \phone|Mux6~2_combout\);

-- Location: LCCOMB_X5_Y48_N8
\phone|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Add1~4_combout\ = \phone|Mux4~2_combout\ $ (((\phone|Mux5~2_combout\) # (!\phone|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \phone|Mux5~2_combout\,
	datac => \phone|Mux4~2_combout\,
	datad => \phone|Mux6~2_combout\,
	combout => \phone|Add1~4_combout\);

-- Location: LCCOMB_X4_Y48_N12
\phone|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector7~2_combout\ = (\phone|Selector7~0_combout\) # ((\phone|Selector7~1_combout\) # ((!\phone|Add1~4_combout\ & \phone|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Selector7~0_combout\,
	datab => \phone|Selector7~1_combout\,
	datac => \phone|Add1~4_combout\,
	datad => \phone|Selector8~2_combout\,
	combout => \phone|Selector7~2_combout\);

-- Location: FF_X4_Y48_N13
\phone|DATA_BUS_VALUE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X5_Y48_N28
\phone|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector6~1_combout\ = ((\phone|DATA_BUS_VALUE\(3) & ((\phone|state.DROP_LCD_E~q\) # (\phone|state.HOLD~q\)))) # (!\phone|state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.DROP_LCD_E~q\,
	datab => \phone|DATA_BUS_VALUE\(3),
	datac => \phone|state.HOLD~q\,
	datad => \phone|state.RESET1~q\,
	combout => \phone|Selector6~1_combout\);

-- Location: LCCOMB_X7_Y48_N8
\phone|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector18~0_combout\ = (\phone|state.RESET1~q\ & ((\phone|next_command.RESET2~q\) # ((!\phone|state.DROP_LCD_E~q\ & !\phone|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.RESET1~q\,
	datab => \phone|state.DROP_LCD_E~q\,
	datac => \phone|next_command.RESET2~q\,
	datad => \phone|state.HOLD~q\,
	combout => \phone|Selector18~0_combout\);

-- Location: FF_X7_Y48_N9
\phone|next_command.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.RESET2~q\);

-- Location: LCCOMB_X7_Y48_N28
\phone|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~37_combout\ = (!\phone|next_command.RESET2~q\ & \phone|state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|next_command.RESET2~q\,
	datad => \phone|state.HOLD~q\,
	combout => \phone|state~37_combout\);

-- Location: FF_X7_Y48_N29
\phone|state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.RESET2~q\);

-- Location: LCCOMB_X3_Y48_N0
\phone|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector13~0_combout\ = (\phone|state.DISPLAY_CLEAR~q\) # ((\phone|next_command.DISPLAY_ON~q\ & ((\phone|state.HOLD~q\) # (\phone|state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.DISPLAY_CLEAR~q\,
	datab => \phone|state.HOLD~q\,
	datac => \phone|next_command.DISPLAY_ON~q\,
	datad => \phone|state.DROP_LCD_E~q\,
	combout => \phone|Selector13~0_combout\);

-- Location: FF_X3_Y48_N1
\phone|next_command.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.DISPLAY_ON~q\);

-- Location: LCCOMB_X3_Y48_N26
\phone|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~33_combout\ = (\phone|state.HOLD~q\ & \phone|next_command.DISPLAY_ON~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|state.HOLD~q\,
	datad => \phone|next_command.DISPLAY_ON~q\,
	combout => \phone|state~33_combout\);

-- Location: FF_X3_Y48_N27
\phone|state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.DISPLAY_ON~q\);

-- Location: LCCOMB_X7_Y48_N2
\phone|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector6~2_combout\ = (\phone|state.FUNC_SET~q\) # ((\phone|state.RESET2~q\) # ((\phone|state.DISPLAY_OFF~q\) # (\phone|state.DISPLAY_ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.FUNC_SET~q\,
	datab => \phone|state.RESET2~q\,
	datac => \phone|state.DISPLAY_OFF~q\,
	datad => \phone|state.DISPLAY_ON~q\,
	combout => \phone|Selector6~2_combout\);

-- Location: LCCOMB_X5_Y48_N10
\phone|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector6~0_combout\ = (\phone|state.Print_String~q\ & (\phone|Mux3~2_combout\ & ((!\phone|LessThan1~0_combout\) # (!\phone|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.Print_String~q\,
	datab => \phone|Equal0~0_combout\,
	datac => \phone|Mux3~2_combout\,
	datad => \phone|LessThan1~0_combout\,
	combout => \phone|Selector6~0_combout\);

-- Location: LCCOMB_X5_Y48_N24
\phone|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector6~3_combout\ = (\phone|state.RESET3~q\) # ((\phone|Selector6~1_combout\) # ((\phone|Selector6~2_combout\) # (\phone|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.RESET3~q\,
	datab => \phone|Selector6~1_combout\,
	datac => \phone|Selector6~2_combout\,
	datad => \phone|Selector6~0_combout\,
	combout => \phone|Selector6~3_combout\);

-- Location: FF_X5_Y48_N25
\phone|DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X7_Y48_N18
\phone|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector17~0_combout\ = (\phone|next_command.RETURN_HOME~q\ & ((\phone|state.HOLD~q\) # (\phone|state.DROP_LCD_E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.HOLD~q\,
	datac => \phone|state.DROP_LCD_E~q\,
	datad => \phone|next_command.RETURN_HOME~q\,
	combout => \phone|Selector17~0_combout\);

-- Location: LCCOMB_X7_Y48_N24
\phone|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector17~1_combout\ = (\phone|Selector17~0_combout\) # ((\phone|CHAR_COUNT\(4) & (\phone|state.Print_String~q\ & \phone|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|CHAR_COUNT\(4),
	datab => \phone|state.Print_String~q\,
	datac => \phone|Equal2~0_combout\,
	datad => \phone|Selector17~0_combout\,
	combout => \phone|Selector17~1_combout\);

-- Location: FF_X7_Y48_N25
\phone|next_command.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|next_command.RETURN_HOME~q\);

-- Location: LCCOMB_X3_Y48_N8
\phone|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|state~29_combout\ = (\phone|state.HOLD~q\ & \phone|next_command.RETURN_HOME~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \phone|state.HOLD~q\,
	datad => \phone|next_command.RETURN_HOME~q\,
	combout => \phone|state~29_combout\);

-- Location: FF_X3_Y48_N9
\phone|state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|state.RETURN_HOME~q\);

-- Location: LCCOMB_X3_Y48_N6
\phone|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector5~0_combout\ = (!\phone|state.Print_String~q\ & (!\phone|state.LINE2~q\ & (!\phone|state.RETURN_HOME~q\ & !\phone|state.MODE_SET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.Print_String~q\,
	datab => \phone|state.LINE2~q\,
	datac => \phone|state.RETURN_HOME~q\,
	datad => \phone|state.MODE_SET~q\,
	combout => \phone|Selector5~0_combout\);

-- Location: LCCOMB_X4_Y48_N6
\phone|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector5~1_combout\ = (!\phone|state.DISPLAY_OFF~q\ & (\phone|Selector5~0_combout\ & (!\phone|state.DISPLAY_CLEAR~q\ & !\phone|state.DISPLAY_ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.DISPLAY_OFF~q\,
	datab => \phone|Selector5~0_combout\,
	datac => \phone|state.DISPLAY_CLEAR~q\,
	datad => \phone|state.DISPLAY_ON~q\,
	combout => \phone|Selector5~1_combout\);

-- Location: LCCOMB_X5_Y48_N2
\phone|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector5~2_combout\ = (!\phone|Selector5~1_combout\ & (((\phone|LessThan1~0_combout\) # (!\phone|Equal0~0_combout\)) # (!\phone|state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.Print_String~q\,
	datab => \phone|Selector5~1_combout\,
	datac => \phone|Equal0~0_combout\,
	datad => \phone|LessThan1~0_combout\,
	combout => \phone|Selector5~2_combout\);

-- Location: LCCOMB_X5_Y48_N6
\phone|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector5~3_combout\ = ((\phone|Mux2~1_combout\ & \phone|state.Print_String~q\)) # (!\phone|Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Mux2~1_combout\,
	datac => \phone|state.Print_String~q\,
	datad => \phone|Selector5~2_combout\,
	combout => \phone|Selector5~3_combout\);

-- Location: FF_X5_Y48_N7
\phone|DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector5~3_combout\,
	ena => \phone|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X5_Y48_N12
\phone|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector4~0_combout\ = ((\phone|state.Print_String~q\ & ((\phone|Mux1~0_combout\) # (\phone|CHAR_COUNT\(3))))) # (!\phone|Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|Mux1~0_combout\,
	datab => \phone|CHAR_COUNT\(3),
	datac => \phone|state.Print_String~q\,
	datad => \phone|Selector5~2_combout\,
	combout => \phone|Selector4~0_combout\);

-- Location: FF_X5_Y48_N13
\phone|DATA_BUS_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector4~0_combout\,
	ena => \phone|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X4_Y48_N4
\phone|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector3~0_combout\ = (\phone|state.LINE2~q\) # ((\phone|DATA_BUS_VALUE\(6) & ((\phone|state.DROP_LCD_E~q\) # (\phone|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.LINE2~q\,
	datab => \phone|state.DROP_LCD_E~q\,
	datac => \phone|DATA_BUS_VALUE\(6),
	datad => \phone|state.HOLD~q\,
	combout => \phone|Selector3~0_combout\);

-- Location: LCCOMB_X4_Y48_N30
\phone|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector3~1_combout\ = (\phone|Selector3~0_combout\) # ((\phone|Selector8~2_combout\) # ((\phone|state.Print_String~q\ & \phone|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.Print_String~q\,
	datab => \phone|Mux0~1_combout\,
	datac => \phone|Selector3~0_combout\,
	datad => \phone|Selector8~2_combout\,
	combout => \phone|Selector3~1_combout\);

-- Location: FF_X4_Y48_N31
\phone|DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X2_Y48_N12
\phone|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector2~0_combout\ = (\phone|state.LINE2~q\) # ((\phone|state.RETURN_HOME~q\) # ((!\phone|LCD_RS~0_combout\ & \phone|DATA_BUS_VALUE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.LINE2~q\,
	datab => \phone|LCD_RS~0_combout\,
	datac => \phone|DATA_BUS_VALUE\(7),
	datad => \phone|state.RETURN_HOME~q\,
	combout => \phone|Selector2~0_combout\);

-- Location: FF_X2_Y48_N13
\phone|DATA_BUS_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|DATA_BUS_VALUE\(7));

-- Location: FF_X2_Y28_N25
\slowclk|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(25));

-- Location: LCCOMB_X2_Y29_N8
\slowclk|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~2_combout\ = (\slowclk|cnt\(1) & (!\slowclk|Add0~1\)) # (!\slowclk|cnt\(1) & ((\slowclk|Add0~1\) # (GND)))
-- \slowclk|Add0~3\ = CARRY((!\slowclk|Add0~1\) # (!\slowclk|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(1),
	datad => VCC,
	cin => \slowclk|Add0~1\,
	combout => \slowclk|Add0~2_combout\,
	cout => \slowclk|Add0~3\);

-- Location: FF_X2_Y29_N9
\slowclk|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(1));

-- Location: LCCOMB_X2_Y29_N10
\slowclk|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~4_combout\ = (\slowclk|cnt\(2) & (\slowclk|Add0~3\ $ (GND))) # (!\slowclk|cnt\(2) & (!\slowclk|Add0~3\ & VCC))
-- \slowclk|Add0~5\ = CARRY((\slowclk|cnt\(2) & !\slowclk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(2),
	datad => VCC,
	cin => \slowclk|Add0~3\,
	combout => \slowclk|Add0~4_combout\,
	cout => \slowclk|Add0~5\);

-- Location: LCCOMB_X2_Y29_N12
\slowclk|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~6_combout\ = (\slowclk|cnt\(3) & (!\slowclk|Add0~5\)) # (!\slowclk|cnt\(3) & ((\slowclk|Add0~5\) # (GND)))
-- \slowclk|Add0~7\ = CARRY((!\slowclk|Add0~5\) # (!\slowclk|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(3),
	datad => VCC,
	cin => \slowclk|Add0~5\,
	combout => \slowclk|Add0~6_combout\,
	cout => \slowclk|Add0~7\);

-- Location: LCCOMB_X2_Y29_N16
\slowclk|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~10_combout\ = (\slowclk|cnt\(5) & (!\slowclk|Add0~9\)) # (!\slowclk|cnt\(5) & ((\slowclk|Add0~9\) # (GND)))
-- \slowclk|Add0~11\ = CARRY((!\slowclk|Add0~9\) # (!\slowclk|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(5),
	datad => VCC,
	cin => \slowclk|Add0~9\,
	combout => \slowclk|Add0~10_combout\,
	cout => \slowclk|Add0~11\);

-- Location: FF_X2_Y29_N17
\slowclk|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(5));

-- Location: LCCOMB_X2_Y29_N22
\slowclk|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~16_combout\ = (\slowclk|cnt\(8) & (\slowclk|Add0~15\ $ (GND))) # (!\slowclk|cnt\(8) & (!\slowclk|Add0~15\ & VCC))
-- \slowclk|Add0~17\ = CARRY((\slowclk|cnt\(8) & !\slowclk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(8),
	datad => VCC,
	cin => \slowclk|Add0~15\,
	combout => \slowclk|Add0~16_combout\,
	cout => \slowclk|Add0~17\);

-- Location: FF_X2_Y29_N23
\slowclk|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(8));

-- Location: LCCOMB_X2_Y29_N24
\slowclk|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~18_combout\ = (\slowclk|cnt\(9) & (!\slowclk|Add0~17\)) # (!\slowclk|cnt\(9) & ((\slowclk|Add0~17\) # (GND)))
-- \slowclk|Add0~19\ = CARRY((!\slowclk|Add0~17\) # (!\slowclk|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(9),
	datad => VCC,
	cin => \slowclk|Add0~17\,
	combout => \slowclk|Add0~18_combout\,
	cout => \slowclk|Add0~19\);

-- Location: LCCOMB_X2_Y29_N26
\slowclk|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~20_combout\ = (\slowclk|cnt\(10) & (\slowclk|Add0~19\ $ (GND))) # (!\slowclk|cnt\(10) & (!\slowclk|Add0~19\ & VCC))
-- \slowclk|Add0~21\ = CARRY((\slowclk|cnt\(10) & !\slowclk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(10),
	datad => VCC,
	cin => \slowclk|Add0~19\,
	combout => \slowclk|Add0~20_combout\,
	cout => \slowclk|Add0~21\);

-- Location: FF_X2_Y29_N27
\slowclk|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(10));

-- Location: LCCOMB_X2_Y29_N28
\slowclk|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~22_combout\ = (\slowclk|cnt\(11) & (!\slowclk|Add0~21\)) # (!\slowclk|cnt\(11) & ((\slowclk|Add0~21\) # (GND)))
-- \slowclk|Add0~23\ = CARRY((!\slowclk|Add0~21\) # (!\slowclk|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(11),
	datad => VCC,
	cin => \slowclk|Add0~21\,
	combout => \slowclk|Add0~22_combout\,
	cout => \slowclk|Add0~23\);

-- Location: LCCOMB_X2_Y29_N30
\slowclk|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~24_combout\ = (\slowclk|cnt\(12) & (\slowclk|Add0~23\ $ (GND))) # (!\slowclk|cnt\(12) & (!\slowclk|Add0~23\ & VCC))
-- \slowclk|Add0~25\ = CARRY((\slowclk|cnt\(12) & !\slowclk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(12),
	datad => VCC,
	cin => \slowclk|Add0~23\,
	combout => \slowclk|Add0~24_combout\,
	cout => \slowclk|Add0~25\);

-- Location: LCCOMB_X2_Y28_N0
\slowclk|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~26_combout\ = (\slowclk|cnt\(13) & (!\slowclk|Add0~25\)) # (!\slowclk|cnt\(13) & ((\slowclk|Add0~25\) # (GND)))
-- \slowclk|Add0~27\ = CARRY((!\slowclk|Add0~25\) # (!\slowclk|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(13),
	datad => VCC,
	cin => \slowclk|Add0~25\,
	combout => \slowclk|Add0~26_combout\,
	cout => \slowclk|Add0~27\);

-- Location: FF_X2_Y28_N1
\slowclk|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(13));

-- Location: LCCOMB_X2_Y28_N2
\slowclk|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~28_combout\ = (\slowclk|cnt\(14) & (\slowclk|Add0~27\ $ (GND))) # (!\slowclk|cnt\(14) & (!\slowclk|Add0~27\ & VCC))
-- \slowclk|Add0~29\ = CARRY((\slowclk|cnt\(14) & !\slowclk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(14),
	datad => VCC,
	cin => \slowclk|Add0~27\,
	combout => \slowclk|Add0~28_combout\,
	cout => \slowclk|Add0~29\);

-- Location: FF_X2_Y28_N3
\slowclk|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(14));

-- Location: LCCOMB_X2_Y28_N4
\slowclk|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~30_combout\ = (\slowclk|cnt\(15) & (!\slowclk|Add0~29\)) # (!\slowclk|cnt\(15) & ((\slowclk|Add0~29\) # (GND)))
-- \slowclk|Add0~31\ = CARRY((!\slowclk|Add0~29\) # (!\slowclk|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(15),
	datad => VCC,
	cin => \slowclk|Add0~29\,
	combout => \slowclk|Add0~30_combout\,
	cout => \slowclk|Add0~31\);

-- Location: FF_X2_Y28_N5
\slowclk|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(15));

-- Location: LCCOMB_X2_Y28_N8
\slowclk|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~34_combout\ = (\slowclk|cnt\(17) & (!\slowclk|Add0~33\)) # (!\slowclk|cnt\(17) & ((\slowclk|Add0~33\) # (GND)))
-- \slowclk|Add0~35\ = CARRY((!\slowclk|Add0~33\) # (!\slowclk|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(17),
	datad => VCC,
	cin => \slowclk|Add0~33\,
	combout => \slowclk|Add0~34_combout\,
	cout => \slowclk|Add0~35\);

-- Location: FF_X2_Y28_N9
\slowclk|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(17));

-- Location: LCCOMB_X2_Y28_N10
\slowclk|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~36_combout\ = (\slowclk|cnt\(18) & (\slowclk|Add0~35\ $ (GND))) # (!\slowclk|cnt\(18) & (!\slowclk|Add0~35\ & VCC))
-- \slowclk|Add0~37\ = CARRY((\slowclk|cnt\(18) & !\slowclk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(18),
	datad => VCC,
	cin => \slowclk|Add0~35\,
	combout => \slowclk|Add0~36_combout\,
	cout => \slowclk|Add0~37\);

-- Location: LCCOMB_X2_Y28_N12
\slowclk|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~38_combout\ = (\slowclk|cnt\(19) & (!\slowclk|Add0~37\)) # (!\slowclk|cnt\(19) & ((\slowclk|Add0~37\) # (GND)))
-- \slowclk|Add0~39\ = CARRY((!\slowclk|Add0~37\) # (!\slowclk|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(19),
	datad => VCC,
	cin => \slowclk|Add0~37\,
	combout => \slowclk|Add0~38_combout\,
	cout => \slowclk|Add0~39\);

-- Location: FF_X2_Y28_N13
\slowclk|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(19));

-- Location: LCCOMB_X2_Y28_N14
\slowclk|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~40_combout\ = (\slowclk|cnt\(20) & (\slowclk|Add0~39\ $ (GND))) # (!\slowclk|cnt\(20) & (!\slowclk|Add0~39\ & VCC))
-- \slowclk|Add0~41\ = CARRY((\slowclk|cnt\(20) & !\slowclk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(20),
	datad => VCC,
	cin => \slowclk|Add0~39\,
	combout => \slowclk|Add0~40_combout\,
	cout => \slowclk|Add0~41\);

-- Location: FF_X2_Y28_N15
\slowclk|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(20));

-- Location: LCCOMB_X2_Y28_N16
\slowclk|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~42_combout\ = (\slowclk|cnt\(21) & (!\slowclk|Add0~41\)) # (!\slowclk|cnt\(21) & ((\slowclk|Add0~41\) # (GND)))
-- \slowclk|Add0~43\ = CARRY((!\slowclk|Add0~41\) # (!\slowclk|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(21),
	datad => VCC,
	cin => \slowclk|Add0~41\,
	combout => \slowclk|Add0~42_combout\,
	cout => \slowclk|Add0~43\);

-- Location: LCCOMB_X2_Y28_N18
\slowclk|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~44_combout\ = (\slowclk|cnt\(22) & (\slowclk|Add0~43\ $ (GND))) # (!\slowclk|cnt\(22) & (!\slowclk|Add0~43\ & VCC))
-- \slowclk|Add0~45\ = CARRY((\slowclk|cnt\(22) & !\slowclk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|cnt\(22),
	datad => VCC,
	cin => \slowclk|Add0~43\,
	combout => \slowclk|Add0~44_combout\,
	cout => \slowclk|Add0~45\);

-- Location: LCCOMB_X2_Y28_N20
\slowclk|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~46_combout\ = (\slowclk|cnt\(23) & (!\slowclk|Add0~45\)) # (!\slowclk|cnt\(23) & ((\slowclk|Add0~45\) # (GND)))
-- \slowclk|Add0~47\ = CARRY((!\slowclk|Add0~45\) # (!\slowclk|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slowclk|cnt\(23),
	datad => VCC,
	cin => \slowclk|Add0~45\,
	combout => \slowclk|Add0~46_combout\,
	cout => \slowclk|Add0~47\);

-- Location: FF_X2_Y28_N21
\slowclk|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|cnt\(23));

-- Location: LCCOMB_X2_Y28_N24
\slowclk|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Add0~50_combout\ = \slowclk|Add0~49\ $ (\slowclk|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \slowclk|cnt\(25),
	cin => \slowclk|Add0~49\,
	combout => \slowclk|Add0~50_combout\);

-- Location: LCCOMB_X2_Y28_N30
\slowclk|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~0_combout\ = (\slowclk|Add0~38_combout\ & (\slowclk|Add0~42_combout\ & (\slowclk|Add0~40_combout\ & \slowclk|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|Add0~38_combout\,
	datab => \slowclk|Add0~42_combout\,
	datac => \slowclk|Add0~40_combout\,
	datad => \slowclk|Add0~44_combout\,
	combout => \slowclk|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y29_N4
\slowclk|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~1_combout\ = (!\slowclk|Add0~0_combout\ & (!\slowclk|Add0~4_combout\ & (!\slowclk|Add0~6_combout\ & !\slowclk|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|Add0~0_combout\,
	datab => \slowclk|Add0~4_combout\,
	datac => \slowclk|Add0~6_combout\,
	datad => \slowclk|Add0~2_combout\,
	combout => \slowclk|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y28_N4
\slowclk|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~4_combout\ = (\slowclk|Add0~30_combout\ & (\slowclk|Add0~26_combout\ & (\slowclk|Add0~24_combout\ & \slowclk|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|Add0~30_combout\,
	datab => \slowclk|Add0~26_combout\,
	datac => \slowclk|Add0~24_combout\,
	datad => \slowclk|Add0~28_combout\,
	combout => \slowclk|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y29_N0
\slowclk|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~3_combout\ = (!\slowclk|Add0~16_combout\ & (!\slowclk|Add0~18_combout\ & (!\slowclk|Add0~20_combout\ & !\slowclk|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|Add0~16_combout\,
	datab => \slowclk|Add0~18_combout\,
	datac => \slowclk|Add0~20_combout\,
	datad => \slowclk|Add0~22_combout\,
	combout => \slowclk|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y28_N18
\slowclk|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~5_combout\ = (\slowclk|Equal0~2_combout\ & (\slowclk|Equal0~1_combout\ & (\slowclk|Equal0~4_combout\ & \slowclk|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|Equal0~2_combout\,
	datab => \slowclk|Equal0~1_combout\,
	datac => \slowclk|Equal0~4_combout\,
	datad => \slowclk|Equal0~3_combout\,
	combout => \slowclk|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y28_N12
\slowclk|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~6_combout\ = (!\slowclk|Add0~32_combout\ & (\slowclk|Add0~34_combout\ & (!\slowclk|Add0~36_combout\ & \slowclk|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|Add0~32_combout\,
	datab => \slowclk|Add0~34_combout\,
	datac => \slowclk|Add0~36_combout\,
	datad => \slowclk|Equal0~5_combout\,
	combout => \slowclk|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y28_N10
\slowclk|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~7_combout\ = (\slowclk|Add0~46_combout\ & \slowclk|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slowclk|Add0~46_combout\,
	datad => \slowclk|Equal0~6_combout\,
	combout => \slowclk|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y28_N26
\slowclk|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \slowclk|Equal0~8_combout\ = (!\slowclk|Add0~48_combout\ & (\slowclk|Add0~50_combout\ & (\slowclk|Equal0~0_combout\ & \slowclk|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slowclk|Add0~48_combout\,
	datab => \slowclk|Add0~50_combout\,
	datac => \slowclk|Equal0~0_combout\,
	datad => \slowclk|Equal0~7_combout\,
	combout => \slowclk|Equal0~8_combout\);

-- Location: FF_X1_Y28_N27
\slowclk|Out_Clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slowclk|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowclk|Out_Clk~q\);

-- Location: CLKCTRL_G2
\slowclk|Out_Clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slowclk|Out_Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slowclk|Out_Clk~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y5_N15
\insidePad[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_insidePad(2),
	o => \insidePad[2]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\insidePad[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_insidePad(0),
	o => \insidePad[0]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\insidePad[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_insidePad(3),
	o => \insidePad[3]~input_o\);

-- Location: LCCOMB_X87_Y20_N16
\innerLock|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|Equal1~0_combout\ = (!\insidePad[1]~input_o\ & (!\insidePad[2]~input_o\ & (\insidePad[0]~input_o\ & !\insidePad[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[2]~input_o\,
	datac => \insidePad[0]~input_o\,
	datad => \insidePad[3]~input_o\,
	combout => \innerLock|Equal1~0_combout\);

-- Location: LCCOMB_X87_Y20_N4
\innerLock|FS.S4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|FS.S4~0_combout\ = (\insidePad[1]~input_o\ & (\insidePad[2]~input_o\ & (\insidePad[0]~input_o\ & !\insidePad[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[2]~input_o\,
	datac => \insidePad[0]~input_o\,
	datad => \insidePad[3]~input_o\,
	combout => \innerLock|FS.S4~0_combout\);

-- Location: LCCOMB_X87_Y20_N0
\innerLock|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|Selector0~0_combout\ = (\innerLock|FS.S2~0_combout\) # ((\innerLock|FS.S1~0_combout\) # ((\innerLock|PS.S3~q\ & \innerLock|FS.S4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \innerLock|PS.S3~q\,
	datab => \innerLock|FS.S4~0_combout\,
	datac => \innerLock|FS.S2~0_combout\,
	datad => \innerLock|FS.S1~0_combout\,
	combout => \innerLock|Selector0~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: FF_X87_Y20_N1
\innerLock|PS.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	d => \innerLock|Selector0~0_combout\,
	clrn => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \innerLock|PS.S0~q\);

-- Location: LCCOMB_X87_Y20_N10
\innerLock|FS.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|FS.S1~0_combout\ = (!\insidePad[1]~input_o\ & (\insidePad[0]~input_o\ & (!\insidePad[2]~input_o\ & !\innerLock|PS.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[0]~input_o\,
	datac => \insidePad[2]~input_o\,
	datad => \innerLock|PS.S0~q\,
	combout => \innerLock|FS.S1~0_combout\);

-- Location: LCCOMB_X87_Y20_N28
\innerLock|FS.S1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|FS.S1~1_combout\ = (\insidePad[3]~input_o\ & \innerLock|FS.S1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \insidePad[3]~input_o\,
	datad => \innerLock|FS.S1~0_combout\,
	combout => \innerLock|FS.S1~1_combout\);

-- Location: FF_X87_Y20_N29
\innerLock|PS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	d => \innerLock|FS.S1~1_combout\,
	clrn => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \innerLock|PS.S1~q\);

-- Location: LCCOMB_X87_Y20_N14
\innerLock|FS.S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|FS.S2~0_combout\ = (\innerLock|Equal1~0_combout\ & \innerLock|PS.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \innerLock|Equal1~0_combout\,
	datad => \innerLock|PS.S1~q\,
	combout => \innerLock|FS.S2~0_combout\);

-- Location: FF_X87_Y20_N27
\innerLock|PS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	asdata => \innerLock|FS.S2~0_combout\,
	clrn => \ALT_INV_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \innerLock|PS.S2~q\);

-- Location: LCCOMB_X87_Y20_N26
\innerLock|z[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|z[1]~0_combout\ = (\innerLock|PS.S2~q\ & \innerLock|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \innerLock|PS.S2~q\,
	datad => \innerLock|Equal1~0_combout\,
	combout => \innerLock|z[1]~0_combout\);

-- Location: LCCOMB_X87_Y20_N22
\innerLock|FS.S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|FS.S3~0_combout\ = (\innerLock|Equal1~0_combout\ & !\innerLock|PS.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \innerLock|Equal1~0_combout\,
	datad => \innerLock|PS.S0~q\,
	combout => \innerLock|FS.S3~0_combout\);

-- Location: FF_X87_Y20_N23
\innerLock|PS.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	d => \innerLock|FS.S3~0_combout\,
	clrn => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \innerLock|PS.S3~q\);

-- Location: LCCOMB_X87_Y20_N20
\innerLock|FS.S4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \innerLock|FS.S4~1_combout\ = (\innerLock|PS.S3~q\ & \innerLock|FS.S4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \innerLock|PS.S3~q\,
	datad => \innerLock|FS.S4~0_combout\,
	combout => \innerLock|FS.S4~1_combout\);

-- Location: FF_X87_Y20_N21
\innerLock|PS.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	d => \innerLock|FS.S4~1_combout\,
	clrn => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \innerLock|PS.S4~q\);

-- Location: LCCOMB_X87_Y20_N18
\childLock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \childLock|Equal0~0_combout\ = (\innerLock|Equal1~0_combout\ & ((\innerLock|PS.S2~q\) # (\innerLock|PS.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \innerLock|Equal1~0_combout\,
	datac => \innerLock|PS.S2~q\,
	datad => \innerLock|PS.S4~q\,
	combout => \childLock|Equal0~0_combout\);

-- Location: LCCOMB_X87_Y20_N8
\childLock|int_lock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \childLock|int_lock~0_combout\ = \childLock|int_lock~q\ $ (((\outerLock|z[1]~0_combout\) # ((!\innerLock|z[1]~0_combout\ & \childLock|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outerLock|z[1]~0_combout\,
	datab => \innerLock|z[1]~0_combout\,
	datac => \childLock|int_lock~q\,
	datad => \childLock|Equal0~0_combout\,
	combout => \childLock|int_lock~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\parent~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parent,
	o => \parent~input_o\);

-- Location: FF_X87_Y20_N9
\childLock|int_lock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	d => \childLock|int_lock~0_combout\,
	clrn => \parent~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \childLock|int_lock~q\);

-- Location: FF_X87_Y20_N15
\childLock|emergencyGPS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	asdata => \innerLock|z[1]~0_combout\,
	clrn => \parent~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \childLock|emergencyGPS~q\);

-- Location: IOIBUF_X115_Y4_N15
\insidePad[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_insidePad(1),
	o => \insidePad[1]~input_o\);

-- Location: LCCOMB_X87_Y4_N8
\insideDisplay|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \insideDisplay|Mux6~0_combout\ = (\insidePad[1]~input_o\ & (!\insidePad[3]~input_o\ & ((!\insidePad[0]~input_o\) # (!\insidePad[2]~input_o\)))) # (!\insidePad[1]~input_o\ & (\insidePad[3]~input_o\ $ ((\insidePad[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[3]~input_o\,
	datac => \insidePad[2]~input_o\,
	datad => \insidePad[0]~input_o\,
	combout => \insideDisplay|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y4_N26
\insideDisplay|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \insideDisplay|Mux5~0_combout\ = (\insidePad[2]~input_o\ & ((\insidePad[3]~input_o\) # ((\insidePad[1]~input_o\ & \insidePad[0]~input_o\)))) # (!\insidePad[2]~input_o\ & ((\insidePad[1]~input_o\) # ((!\insidePad[3]~input_o\ & \insidePad[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[3]~input_o\,
	datac => \insidePad[2]~input_o\,
	datad => \insidePad[0]~input_o\,
	combout => \insideDisplay|Mux5~0_combout\);

-- Location: LCCOMB_X87_Y4_N28
\insideDisplay|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \insideDisplay|Mux4~0_combout\ = (\insidePad[0]~input_o\) # ((\insidePad[1]~input_o\ & (\insidePad[3]~input_o\)) # (!\insidePad[1]~input_o\ & ((\insidePad[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[3]~input_o\,
	datac => \insidePad[2]~input_o\,
	datad => \insidePad[0]~input_o\,
	combout => \insideDisplay|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y4_N2
\insideDisplay|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \insideDisplay|Mux3~0_combout\ = (\insidePad[2]~input_o\ & ((\insidePad[3]~input_o\) # (\insidePad[1]~input_o\ $ (!\insidePad[0]~input_o\)))) # (!\insidePad[2]~input_o\ & ((\insidePad[1]~input_o\ & (\insidePad[3]~input_o\)) # (!\insidePad[1]~input_o\ & 
-- ((\insidePad[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[3]~input_o\,
	datac => \insidePad[2]~input_o\,
	datad => \insidePad[0]~input_o\,
	combout => \insideDisplay|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y4_N12
\insideDisplay|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \insideDisplay|Mux2~0_combout\ = (\insidePad[2]~input_o\ & (((\insidePad[3]~input_o\)))) # (!\insidePad[2]~input_o\ & (\insidePad[1]~input_o\ & ((\insidePad[3]~input_o\) # (!\insidePad[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[3]~input_o\,
	datac => \insidePad[2]~input_o\,
	datad => \insidePad[0]~input_o\,
	combout => \insideDisplay|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y4_N14
\insideDisplay|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \insideDisplay|Mux1~0_combout\ = (\insidePad[3]~input_o\ & ((\insidePad[1]~input_o\) # ((\insidePad[2]~input_o\)))) # (!\insidePad[3]~input_o\ & (\insidePad[2]~input_o\ & (\insidePad[1]~input_o\ $ (\insidePad[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[3]~input_o\,
	datac => \insidePad[2]~input_o\,
	datad => \insidePad[0]~input_o\,
	combout => \insideDisplay|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y4_N24
\insideDisplay|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \insideDisplay|Mux0~0_combout\ = (\insidePad[1]~input_o\ & (\insidePad[3]~input_o\)) # (!\insidePad[1]~input_o\ & (\insidePad[2]~input_o\ $ (((!\insidePad[3]~input_o\ & \insidePad[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insidePad[1]~input_o\,
	datab => \insidePad[3]~input_o\,
	datac => \insidePad[2]~input_o\,
	datad => \insidePad[0]~input_o\,
	combout => \insideDisplay|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\outsidePad[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_outsidePad(0),
	o => \outsidePad[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\outsidePad[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_outsidePad(2),
	o => \outsidePad[2]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\outsidePad[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_outsidePad(1),
	o => \outsidePad[1]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\outsidePad[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_outsidePad(3),
	o => \outsidePad[3]~input_o\);

-- Location: LCCOMB_X86_Y4_N20
\outsideDisplay|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outsideDisplay|Mux6~0_combout\ = (\outsidePad[2]~input_o\ & (!\outsidePad[3]~input_o\ & ((!\outsidePad[1]~input_o\) # (!\outsidePad[0]~input_o\)))) # (!\outsidePad[2]~input_o\ & ((\outsidePad[1]~input_o\ $ (\outsidePad[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[0]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outsidePad[1]~input_o\,
	datad => \outsidePad[3]~input_o\,
	combout => \outsideDisplay|Mux6~0_combout\);

-- Location: LCCOMB_X86_Y4_N26
\outsideDisplay|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outsideDisplay|Mux5~0_combout\ = (\outsidePad[0]~input_o\ & ((\outsidePad[1]~input_o\) # (\outsidePad[2]~input_o\ $ (!\outsidePad[3]~input_o\)))) # (!\outsidePad[0]~input_o\ & ((\outsidePad[2]~input_o\ & ((\outsidePad[3]~input_o\))) # 
-- (!\outsidePad[2]~input_o\ & (\outsidePad[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[0]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outsidePad[1]~input_o\,
	datad => \outsidePad[3]~input_o\,
	combout => \outsideDisplay|Mux5~0_combout\);

-- Location: LCCOMB_X86_Y4_N12
\outsideDisplay|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outsideDisplay|Mux4~0_combout\ = (\outsidePad[0]~input_o\) # ((\outsidePad[1]~input_o\ & ((\outsidePad[3]~input_o\))) # (!\outsidePad[1]~input_o\ & (\outsidePad[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[0]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outsidePad[1]~input_o\,
	datad => \outsidePad[3]~input_o\,
	combout => \outsideDisplay|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y4_N2
\outsideDisplay|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outsideDisplay|Mux3~0_combout\ = (\outsidePad[0]~input_o\ & ((\outsidePad[3]~input_o\) # (\outsidePad[2]~input_o\ $ (!\outsidePad[1]~input_o\)))) # (!\outsidePad[0]~input_o\ & ((\outsidePad[1]~input_o\ & ((\outsidePad[3]~input_o\))) # 
-- (!\outsidePad[1]~input_o\ & (\outsidePad[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[0]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outsidePad[1]~input_o\,
	datad => \outsidePad[3]~input_o\,
	combout => \outsideDisplay|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y4_N24
\outsideDisplay|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outsideDisplay|Mux2~0_combout\ = (\outsidePad[2]~input_o\ & (((\outsidePad[3]~input_o\)))) # (!\outsidePad[2]~input_o\ & (\outsidePad[1]~input_o\ & ((\outsidePad[3]~input_o\) # (!\outsidePad[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[0]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outsidePad[1]~input_o\,
	datad => \outsidePad[3]~input_o\,
	combout => \outsideDisplay|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y4_N22
\outsideDisplay|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outsideDisplay|Mux1~0_combout\ = (\outsidePad[2]~input_o\ & ((\outsidePad[3]~input_o\) # (\outsidePad[0]~input_o\ $ (\outsidePad[1]~input_o\)))) # (!\outsidePad[2]~input_o\ & (((\outsidePad[1]~input_o\ & \outsidePad[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[0]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outsidePad[1]~input_o\,
	datad => \outsidePad[3]~input_o\,
	combout => \outsideDisplay|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y4_N4
\outsideDisplay|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outsideDisplay|Mux0~0_combout\ = (\outsidePad[1]~input_o\ & (((\outsidePad[3]~input_o\)))) # (!\outsidePad[1]~input_o\ & (\outsidePad[2]~input_o\ $ (((\outsidePad[0]~input_o\ & !\outsidePad[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[0]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outsidePad[1]~input_o\,
	datad => \outsidePad[3]~input_o\,
	combout => \outsideDisplay|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y12_N4
\outerLock|FS.S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outerLock|FS.S2~0_combout\ = (\outsidePad[0]~input_o\ & !\outsidePad[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[0]~input_o\,
	datac => \outsidePad[3]~input_o\,
	combout => \outerLock|FS.S2~0_combout\);

-- Location: LCCOMB_X87_Y20_N12
\outerLock|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outerLock|Selector0~0_combout\ = (\outerLock|FS.S2~1_combout\) # (\outerLock|FS.S1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \outerLock|FS.S2~1_combout\,
	datad => \outerLock|FS.S1~0_combout\,
	combout => \outerLock|Selector0~0_combout\);

-- Location: FF_X87_Y20_N13
\outerLock|PS.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	d => \outerLock|Selector0~0_combout\,
	clrn => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outerLock|PS.S0~q\);

-- Location: LCCOMB_X87_Y20_N30
\outerLock|FS.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outerLock|FS.S1~0_combout\ = (!\outsidePad[1]~input_o\ & (!\outsidePad[2]~input_o\ & (\outerLock|FS.S2~0_combout\ & !\outerLock|PS.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[1]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outerLock|FS.S2~0_combout\,
	datad => \outerLock|PS.S0~q\,
	combout => \outerLock|FS.S1~0_combout\);

-- Location: LCCOMB_X87_Y20_N2
\outerLock|PS.S1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \outerLock|PS.S1~feeder_combout\ = \outerLock|FS.S1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \outerLock|FS.S1~0_combout\,
	combout => \outerLock|PS.S1~feeder_combout\);

-- Location: FF_X87_Y20_N3
\outerLock|PS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	d => \outerLock|PS.S1~feeder_combout\,
	clrn => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outerLock|PS.S1~q\);

-- Location: LCCOMB_X87_Y20_N24
\outerLock|FS.S2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outerLock|FS.S2~1_combout\ = (\outsidePad[1]~input_o\ & (\outsidePad[2]~input_o\ & (\outerLock|FS.S2~0_combout\ & \outerLock|PS.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[1]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outerLock|FS.S2~0_combout\,
	datad => \outerLock|PS.S1~q\,
	combout => \outerLock|FS.S2~1_combout\);

-- Location: FF_X87_Y20_N25
\outerLock|PS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowclk|Out_Clk~clkctrl_outclk\,
	d => \outerLock|FS.S2~1_combout\,
	clrn => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outerLock|PS.S2~q\);

-- Location: LCCOMB_X87_Y20_N6
\outerLock|z[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outerLock|z[1]~0_combout\ = (!\outsidePad[1]~input_o\ & (!\outsidePad[2]~input_o\ & (\outerLock|FS.S2~0_combout\ & \outerLock|PS.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outsidePad[1]~input_o\,
	datab => \outsidePad[2]~input_o\,
	datac => \outerLock|FS.S2~0_combout\,
	datad => \outerLock|PS.S2~q\,
	combout => \outerLock|z[1]~0_combout\);

-- Location: LCCOMB_X3_Y48_N24
\phone|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|Selector1~0_combout\ = (\phone|state.Print_String~q\) # ((\phone|LCD_RS~q\ & ((\phone|state.DROP_LCD_E~q\) # (\phone|state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.DROP_LCD_E~q\,
	datab => \phone|state.HOLD~q\,
	datac => \phone|LCD_RS~q\,
	datad => \phone|state.Print_String~q\,
	combout => \phone|Selector1~0_combout\);

-- Location: FF_X3_Y48_N25
\phone|LCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|LCD_RS~q\);

-- Location: LCCOMB_X3_Y48_N10
\phone|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \phone|LCD_E~0_combout\ = (\phone|state.HOLD~q\ & (\phone|LCD_E~q\)) # (!\phone|state.HOLD~q\ & ((!\phone|state.DROP_LCD_E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phone|state.HOLD~q\,
	datac => \phone|LCD_E~q\,
	datad => \phone|state.DROP_LCD_E~q\,
	combout => \phone|LCD_E~0_combout\);

-- Location: FF_X3_Y48_N11
\phone|LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \phone|CLK_400HZ~clkctrl_outclk\,
	d => \phone|LCD_E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \phone|LCD_E~q\);

-- Location: IOIBUF_X0_Y52_N15
\DATA_BUS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(0),
	o => \DATA_BUS[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\DATA_BUS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(1),
	o => \DATA_BUS[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\DATA_BUS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(2),
	o => \DATA_BUS[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\DATA_BUS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(3),
	o => \DATA_BUS[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\DATA_BUS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(4),
	o => \DATA_BUS[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\DATA_BUS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(5),
	o => \DATA_BUS[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\DATA_BUS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(6),
	o => \DATA_BUS[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\DATA_BUS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(7),
	o => \DATA_BUS[7]~input_o\);

ww_lock <= \lock~output_o\;

ww_gps <= \gps~output_o\;

ww_innerDisplay(0) <= \innerDisplay[0]~output_o\;

ww_innerDisplay(1) <= \innerDisplay[1]~output_o\;

ww_innerDisplay(2) <= \innerDisplay[2]~output_o\;

ww_innerDisplay(3) <= \innerDisplay[3]~output_o\;

ww_innerDisplay(4) <= \innerDisplay[4]~output_o\;

ww_innerDisplay(5) <= \innerDisplay[5]~output_o\;

ww_innerDisplay(6) <= \innerDisplay[6]~output_o\;

ww_outerDisplay(0) <= \outerDisplay[0]~output_o\;

ww_outerDisplay(1) <= \outerDisplay[1]~output_o\;

ww_outerDisplay(2) <= \outerDisplay[2]~output_o\;

ww_outerDisplay(3) <= \outerDisplay[3]~output_o\;

ww_outerDisplay(4) <= \outerDisplay[4]~output_o\;

ww_outerDisplay(5) <= \outerDisplay[5]~output_o\;

ww_outerDisplay(6) <= \outerDisplay[6]~output_o\;

ww_pattern1(0) <= \pattern1[0]~output_o\;

ww_pattern1(1) <= \pattern1[1]~output_o\;

ww_pattern2(0) <= \pattern2[0]~output_o\;

ww_pattern2(1) <= \pattern2[1]~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_E <= \LCD_E~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

DATA_BUS(0) <= \DATA_BUS[0]~output_o\;

DATA_BUS(1) <= \DATA_BUS[1]~output_o\;

DATA_BUS(2) <= \DATA_BUS[2]~output_o\;

DATA_BUS(3) <= \DATA_BUS[3]~output_o\;

DATA_BUS(4) <= \DATA_BUS[4]~output_o\;

DATA_BUS(5) <= \DATA_BUS[5]~output_o\;

DATA_BUS(6) <= \DATA_BUS[6]~output_o\;

DATA_BUS(7) <= \DATA_BUS[7]~output_o\;
END structure;


