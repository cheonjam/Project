-- Copyright (C) 1991-2009 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 235 06/17/2009 Service Pack 2 SJ Web Edition"

-- DATE "12/15/2016 21:43:07"

-- 
-- Device: Altera EP1K100QC208-3 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, flex10ke;
USE IEEE.std_logic_1164.all;
USE flex10ke.flex10ke_components.all;

ENTITY 	taximeter IS
    PORT (
	clk : IN std_logic;
	\ renamed_port_9\ : OUT std_logic;
	\ renamed_port_8\ : OUT std_logic;
	\ renamed_port_7\ : OUT std_logic;
	\ renamed_port_6\ : OUT std_logic;
	\ renamed_port_5\ : OUT std_logic;
	\ renamed_port_4\ : OUT std_logic;
	\ renamed_port_3\ : OUT std_logic;
	\ renamed_port_2\ : OUT std_logic;
	\ renamed_port_18\ : OUT std_logic;
	\ renamed_port_17\ : OUT std_logic;
	\ renamed_port_16\ : OUT std_logic;
	\ renamed_port_15\ : OUT std_logic;
	\ renamed_port_14\ : OUT std_logic;
	\ renamed_port_13\ : OUT std_logic;
	\ renamed_port_12\ : OUT std_logic;
	\ renamed_port_11\ : OUT std_logic;
	reset : IN std_logic;
	normal : IN std_logic;
	premium : IN std_logic;
	\bus\ : IN std_logic;
	segout : OUT std_logic_vector(7 DOWNTO 0);
	common : OUT std_logic_vector(7 DOWNTO 0);
	dot_d : OUT std_logic_vector(13 DOWNTO 0);
	dot_scan : OUT std_logic_vector(9 DOWNTO 0);
	lcd_e : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END taximeter;

ARCHITECTURE structure OF taximeter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \ww_ renamed_port_9\ : std_logic;
SIGNAL \ww_ renamed_port_8\ : std_logic;
SIGNAL \ww_ renamed_port_7\ : std_logic;
SIGNAL \ww_ renamed_port_6\ : std_logic;
SIGNAL \ww_ renamed_port_5\ : std_logic;
SIGNAL \ww_ renamed_port_4\ : std_logic;
SIGNAL \ww_ renamed_port_3\ : std_logic;
SIGNAL \ww_ renamed_port_2\ : std_logic;
SIGNAL \ww_ renamed_port_18\ : std_logic;
SIGNAL \ww_ renamed_port_17\ : std_logic;
SIGNAL \ww_ renamed_port_16\ : std_logic;
SIGNAL \ww_ renamed_port_15\ : std_logic;
SIGNAL \ww_ renamed_port_14\ : std_logic;
SIGNAL \ww_ renamed_port_13\ : std_logic;
SIGNAL \ww_ renamed_port_12\ : std_logic;
SIGNAL \ww_ renamed_port_11\ : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_normal : std_logic;
SIGNAL ww_premium : std_logic;
SIGNAL \ww_bus\ : std_logic;
SIGNAL ww_segout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_common : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dot_d : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_dot_scan : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_7|WideOr34~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr62~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr40~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr33~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr61~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr39~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr32~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr60~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr38~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr31~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr59~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr37~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr30~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr58~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr36~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr29~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr57~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~55_combout\ : std_logic;
SIGNAL \comb_5|Add1~0_combout\ : std_logic;
SIGNAL \comb_5|Selector12~0_combout\ : std_logic;
SIGNAL \comb_5|Selector12~1_combout\ : std_logic;
SIGNAL \comb_5|Add3~0_combout\ : std_logic;
SIGNAL \comb_5|Add3~1_combout\ : std_logic;
SIGNAL \comb_5|Selector8~2_combout\ : std_logic;
SIGNAL \comb_5|Selector16~0_combout\ : std_logic;
SIGNAL \comb_8|Equal0~0_combout\ : std_logic;
SIGNAL \comb_8|Add0|adder|result_node|cs_buffer[0]~COUT\ : std_logic;
SIGNAL \comb_8|Equal0~1_combout\ : std_logic;
SIGNAL \comb_6|Selector9~2_combout\ : std_logic;
SIGNAL \comb_7|segout~147_combout\ : std_logic;
SIGNAL \comb_7|segout~150_combout\ : std_logic;
SIGNAL \comb_7|segout~152_combout\ : std_logic;
SIGNAL \comb_7|segout~154_combout\ : std_logic;
SIGNAL \comb_7|segout~156_combout\ : std_logic;
SIGNAL \comb_7|segout~158_combout\ : std_logic;
SIGNAL \comb_7|segout~161_combout\ : std_logic;
SIGNAL \comb_7|WideOr35~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr49~0_combout\ : std_logic;
SIGNAL \comb_7|segout~162_combout\ : std_logic;
SIGNAL \comb_7|segout~163_combout\ : std_logic;
SIGNAL \comb_7|WideOr14~0_combout\ : std_logic;
SIGNAL \comb_7|segout~165_combout\ : std_logic;
SIGNAL \comb_7|segout~166_combout\ : std_logic;
SIGNAL \comb_7|common~72_combout\ : std_logic;
SIGNAL \comb_8|Add0|adder|result_node|cs_buffer[5]~COUT\ : std_logic;
SIGNAL \comb_8|Add0|adder|result_node|cs_buffer[4]~COUT\ : std_logic;
SIGNAL \comb_8|Add0|adder|result_node|cs_buffer[3]~COUT\ : std_logic;
SIGNAL \comb_8|Add0|adder|result_node|cs_buffer[2]~COUT\ : std_logic;
SIGNAL \comb_8|Add0|adder|result_node|cs_buffer[1]~COUT\ : std_logic;
SIGNAL \comb_10|lcd_data~91_combout\ : std_logic;
SIGNAL \comb_10|WideNor1~4_combout\ : std_logic;
SIGNAL \comb_6|Equal4~1_combout\ : std_logic;
SIGNAL \comb_5|Add1~1_combout\ : std_logic;
SIGNAL \comb_5|Selector14~5_combout\ : std_logic;
SIGNAL \comb_5|Selector14~6_combout\ : std_logic;
SIGNAL \comb_5|Selector14~8_combout\ : std_logic;
SIGNAL \comb_5|Selector13~5_combout\ : std_logic;
SIGNAL \comb_5|Selector23~9_combout\ : std_logic;
SIGNAL \comb_5|Selector22~4_combout\ : std_logic;
SIGNAL \comb_5|Selector18~5_combout\ : std_logic;
SIGNAL \comb_5|Selector17~4_combout\ : std_logic;
SIGNAL \comb_10|Equal3~4_combout\ : std_logic;
SIGNAL \comb_10|Equal4~4_combout\ : std_logic;
SIGNAL \comb_10|Selector9~10\ : std_logic;
SIGNAL \comb_10|Selector9~5_combout\ : std_logic;
SIGNAL \comb_10|Selector9~7_combout\ : std_logic;
SIGNAL \comb_10|Selector10~10\ : std_logic;
SIGNAL \comb_10|Selector10~5_combout\ : std_logic;
SIGNAL \comb_10|Selector10~7_combout\ : std_logic;
SIGNAL \comb_10|Selector13~10\ : std_logic;
SIGNAL \comb_10|Selector13~5_combout\ : std_logic;
SIGNAL \comb_10|Selector13~7_combout\ : std_logic;
SIGNAL \comb_10|Selector11~10\ : std_logic;
SIGNAL \comb_10|Selector11~5_combout\ : std_logic;
SIGNAL \comb_10|Selector11~7_combout\ : std_logic;
SIGNAL \comb_10|Selector12~10\ : std_logic;
SIGNAL \comb_10|Selector12~5_combout\ : std_logic;
SIGNAL \comb_10|Selector12~7_combout\ : std_logic;
SIGNAL \comb_7|segout~171_combout\ : std_logic;
SIGNAL \comb_7|WideOr28~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~105_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~118_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~108_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~119_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~111_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~120_combout\ : std_logic;
SIGNAL \comb_10|cnt~62_combout\ : std_logic;
SIGNAL \comb_10|Selector19~14_combout\ : std_logic;
SIGNAL \comb_10|Selector19~9_combout\ : std_logic;
SIGNAL \comb_10|Selector19~10_combout\ : std_logic;
SIGNAL \comb_10|Selector19~22\ : std_logic;
SIGNAL \comb_10|Selector19~11_combout\ : std_logic;
SIGNAL \comb_10|Selector19~12_combout\ : std_logic;
SIGNAL \comb_10|Selector19~25\ : std_logic;
SIGNAL \comb_10|Selector19~15_combout\ : std_logic;
SIGNAL \comb_6|ten_meter[3]~27_combout\ : std_logic;
SIGNAL \bus~dataout\ : std_logic;
SIGNAL \comb_7|common~60_combout\ : std_logic;
SIGNAL \clk~dataout\ : std_logic;
SIGNAL \comb_7|common~59_combout\ : std_logic;
SIGNAL \comb_7|Equal3~1_combout\ : std_logic;
SIGNAL \premium~dataout\ : std_logic;
SIGNAL \reset~dataout\ : std_logic;
SIGNAL \comb_4|Add0|adder|result_node|cs_buffer[0]~COUT\ : std_logic;
SIGNAL \comb_4|Add0|adder|result_node|cs_buffer[1]~COUT\ : std_logic;
SIGNAL \comb_4|Add0|adder|result_node|cs_buffer[2]~COUT\ : std_logic;
SIGNAL \comb_4|Add0|adder|result_node|cs_buffer[3]~COUT\ : std_logic;
SIGNAL \comb_4|Add0|adder|result_node|cs_buffer[4]~COUT\ : std_logic;
SIGNAL \comb_4|Add0|adder|result_node|cs_buffer[5]~COUT\ : std_logic;
SIGNAL \comb_4|Equal1~0_combout\ : std_logic;
SIGNAL \comb_4|Equal1~1_combout\ : std_logic;
SIGNAL \comb_4|clk_out~2_combout\ : std_logic;
SIGNAL \comb_4|clk_out~3_combout\ : std_logic;
SIGNAL \comb_4|clk_out~regout\ : std_logic;
SIGNAL \comb_6|status.00~regout\ : std_logic;
SIGNAL \comb_6|always2~1_combout\ : std_logic;
SIGNAL \comb_6|Selector9~1_combout\ : std_logic;
SIGNAL \comb_6|Add0|adder|result_node|cs_buffer[0]~COUT\ : std_logic;
SIGNAL \comb_6|Equal1~1_combout\ : std_logic;
SIGNAL \comb_6|Add0|adder|result_node|cs_buffer[1]~COUT\ : std_logic;
SIGNAL \comb_6|Add0|adder|result_node|cs_buffer[2]~COUT\ : std_logic;
SIGNAL \comb_6|Add0|adder|result_node|cs_buffer[3]~COUT\ : std_logic;
SIGNAL \comb_6|Add0|adder|result_node|cs_buffer[4]~COUT\ : std_logic;
SIGNAL \comb_6|Add0|adder|result_node|cs_buffer[5]~COUT\ : std_logic;
SIGNAL \comb_6|Add0|adder|result_node|cs_buffer[6]~COUT\ : std_logic;
SIGNAL \comb_6|Equal1~0_combout\ : std_logic;
SIGNAL \comb_6|Equal1~2_combout\ : std_logic;
SIGNAL \comb_6|clk_out~2_combout\ : std_logic;
SIGNAL \comb_6|clk_out~regout\ : std_logic;
SIGNAL \comb_6|Add3~0_combout\ : std_logic;
SIGNAL \comb_6|always2~4_combout\ : std_logic;
SIGNAL \comb_6|ten_meter~25_combout\ : std_logic;
SIGNAL \comb_6|Selector8~0_combout\ : std_logic;
SIGNAL \comb_6|status.10~regout\ : std_logic;
SIGNAL \normal~dataout\ : std_logic;
SIGNAL \comb_6|status.01~regout\ : std_logic;
SIGNAL \comb_6|Selector7~0_combout\ : std_logic;
SIGNAL \comb_6|Selector7~1_combout\ : std_logic;
SIGNAL \comb_6|Add2~0_combout\ : std_logic;
SIGNAL \comb_6|Selector6~0_combout\ : std_logic;
SIGNAL \comb_6|Selector6~1_combout\ : std_logic;
SIGNAL \comb_6|Selector5~2_combout\ : std_logic;
SIGNAL \comb_6|Equal3~0_combout\ : std_logic;
SIGNAL \comb_6|Selector4~0_combout\ : std_logic;
SIGNAL \comb_6|Equal4~0_combout\ : std_logic;
SIGNAL \comb_6|Selector5~1_combout\ : std_logic;
SIGNAL \comb_7|WideOr48~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr55~0_combout\ : std_logic;
SIGNAL \comb_7|segout~234\ : std_logic;
SIGNAL \comb_7|segout~174_combout\ : std_logic;
SIGNAL \comb_7|segout~82_combout\ : std_logic;
SIGNAL \comb_6|meter~regout\ : std_logic;
SIGNAL \comb_5|flag~regout\ : std_logic;
SIGNAL \comb_5|Selector10~0_combout\ : std_logic;
SIGNAL \comb_5|Selector8~0_combout\ : std_logic;
SIGNAL \comb_5|Selector8~1_combout\ : std_logic;
SIGNAL \comb_5|Equal0~0_combout\ : std_logic;
SIGNAL \comb_5|Selector10~2_combout\ : std_logic;
SIGNAL \comb_5|Selector10~1_combout\ : std_logic;
SIGNAL \comb_5|Add0~0_combout\ : std_logic;
SIGNAL \comb_5|Selector14~1_combout\ : std_logic;
SIGNAL \comb_5|Add4~0_combout\ : std_logic;
SIGNAL \comb_5|Selector9~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr20~0_combout\ : std_logic;
SIGNAL \comb_7|segout~79_combout\ : std_logic;
SIGNAL \comb_5|Selector15~0_combout\ : std_logic;
SIGNAL \comb_5|Selector15~1_combout\ : std_logic;
SIGNAL \comb_5|Selector13~1_combout\ : std_logic;
SIGNAL \comb_5|Selector14~7_combout\ : std_logic;
SIGNAL \comb_5|cheon~24_combout\ : std_logic;
SIGNAL \comb_5|Selector14~15\ : std_logic;
SIGNAL \comb_5|Selector14~10_combout\ : std_logic;
SIGNAL \comb_5|Add1~2_combout\ : std_logic;
SIGNAL \comb_5|Selector13~11\ : std_logic;
SIGNAL \comb_5|Selector13~7_combout\ : std_logic;
SIGNAL \comb_5|Equal1~0_combout\ : std_logic;
SIGNAL \comb_5|sibman~29_combout\ : std_logic;
SIGNAL \comb_5|Selector20~2_combout\ : std_logic;
SIGNAL \comb_5|Selector20~3_combout\ : std_logic;
SIGNAL \comb_5|sibman~28_combout\ : std_logic;
SIGNAL \comb_5|Selector20~0_combout\ : std_logic;
SIGNAL \comb_5|Selector20~1_combout\ : std_logic;
SIGNAL \comb_5|Selector19~0_combout\ : std_logic;
SIGNAL \comb_5|Selector19~1_combout\ : std_logic;
SIGNAL \comb_5|Selector18~4_combout\ : std_logic;
SIGNAL \comb_5|Selector18~11\ : std_logic;
SIGNAL \comb_5|Selector18~7_combout\ : std_logic;
SIGNAL \comb_5|Selector23~5_combout\ : std_logic;
SIGNAL \comb_5|Add2~1_combout\ : std_logic;
SIGNAL \comb_5|Selector17~9\ : std_logic;
SIGNAL \comb_5|Selector17~6_combout\ : std_logic;
SIGNAL \comb_5|Add2~0_combout\ : std_logic;
SIGNAL \comb_5|Selector23~4_combout\ : std_logic;
SIGNAL \comb_5|Selector16~1_combout\ : std_logic;
SIGNAL \comb_5|Equal2~0_combout\ : std_logic;
SIGNAL \comb_5|Selector23~16\ : std_logic;
SIGNAL \comb_5|Selector23~11_combout\ : std_logic;
SIGNAL \comb_5|Add3~2_combout\ : std_logic;
SIGNAL \comb_5|Selector22~9\ : std_logic;
SIGNAL \comb_5|Selector22~6_combout\ : std_logic;
SIGNAL \comb_7|WideOr41~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr27~0_combout\ : std_logic;
SIGNAL \comb_7|segout~77_combout\ : std_logic;
SIGNAL \comb_7|segout~78_combout\ : std_logic;
SIGNAL \comb_7|segout~80_combout\ : std_logic;
SIGNAL \comb_7|segout~81_combout\ : std_logic;
SIGNAL \comb_7|WideOr47~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr54~0_combout\ : std_logic;
SIGNAL \comb_7|segout~238\ : std_logic;
SIGNAL \comb_7|segout~175_combout\ : std_logic;
SIGNAL \comb_7|segout~90_combout\ : std_logic;
SIGNAL \comb_7|WideOr19~0_combout\ : std_logic;
SIGNAL \comb_7|segout~87_combout\ : std_logic;
SIGNAL \comb_7|WideOr26~0_combout\ : std_logic;
SIGNAL \comb_7|segout~85_combout\ : std_logic;
SIGNAL \comb_7|segout~86_combout\ : std_logic;
SIGNAL \comb_7|segout~88_combout\ : std_logic;
SIGNAL \comb_7|segout~89_combout\ : std_logic;
SIGNAL \comb_7|WideOr46~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr53~0_combout\ : std_logic;
SIGNAL \comb_7|segout~241\ : std_logic;
SIGNAL \comb_7|segout~176_combout\ : std_logic;
SIGNAL \comb_7|segout~98_combout\ : std_logic;
SIGNAL \comb_7|WideOr18~0_combout\ : std_logic;
SIGNAL \comb_7|segout~95_combout\ : std_logic;
SIGNAL \comb_7|WideOr25~0_combout\ : std_logic;
SIGNAL \comb_7|segout~93_combout\ : std_logic;
SIGNAL \comb_7|segout~94_combout\ : std_logic;
SIGNAL \comb_7|segout~96_combout\ : std_logic;
SIGNAL \comb_7|segout~97_combout\ : std_logic;
SIGNAL \comb_7|WideOr45~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr52~0_combout\ : std_logic;
SIGNAL \comb_7|segout~244\ : std_logic;
SIGNAL \comb_7|segout~177_combout\ : std_logic;
SIGNAL \comb_7|segout~106_combout\ : std_logic;
SIGNAL \comb_7|WideOr17~0_combout\ : std_logic;
SIGNAL \comb_7|segout~103_combout\ : std_logic;
SIGNAL \comb_7|WideOr24~0_combout\ : std_logic;
SIGNAL \comb_7|segout~101_combout\ : std_logic;
SIGNAL \comb_7|segout~102_combout\ : std_logic;
SIGNAL \comb_7|segout~104_combout\ : std_logic;
SIGNAL \comb_7|segout~105_combout\ : std_logic;
SIGNAL \comb_7|WideOr44~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr51~0_combout\ : std_logic;
SIGNAL \comb_7|segout~247\ : std_logic;
SIGNAL \comb_7|segout~178_combout\ : std_logic;
SIGNAL \comb_7|segout~114_combout\ : std_logic;
SIGNAL \comb_7|WideOr16~0_combout\ : std_logic;
SIGNAL \comb_7|segout~111_combout\ : std_logic;
SIGNAL \comb_7|WideOr23~0_combout\ : std_logic;
SIGNAL \comb_7|segout~109_combout\ : std_logic;
SIGNAL \comb_7|segout~110_combout\ : std_logic;
SIGNAL \comb_7|segout~112_combout\ : std_logic;
SIGNAL \comb_7|segout~113_combout\ : std_logic;
SIGNAL \comb_7|WideOr43~0_combout\ : std_logic;
SIGNAL \comb_7|WideOr50~0_combout\ : std_logic;
SIGNAL \comb_7|segout~250\ : std_logic;
SIGNAL \comb_7|segout~179_combout\ : std_logic;
SIGNAL \comb_7|segout~122_combout\ : std_logic;
SIGNAL \comb_7|WideOr15~0_combout\ : std_logic;
SIGNAL \comb_7|segout~119_combout\ : std_logic;
SIGNAL \comb_7|WideOr22~0_combout\ : std_logic;
SIGNAL \comb_7|segout~117_combout\ : std_logic;
SIGNAL \comb_7|segout~118_combout\ : std_logic;
SIGNAL \comb_7|segout~120_combout\ : std_logic;
SIGNAL \comb_7|segout~121_combout\ : std_logic;
SIGNAL \comb_7|common~74_combout\ : std_logic;
SIGNAL \comb_7|WideOr21~0_combout\ : std_logic;
SIGNAL \comb_7|Equal3~0_combout\ : std_logic;
SIGNAL \comb_7|segout~261\ : std_logic;
SIGNAL \comb_7|segout~181_combout\ : std_logic;
SIGNAL \comb_7|WideOr56~0_combout\ : std_logic;
SIGNAL \comb_7|segout~148_combout\ : std_logic;
SIGNAL \comb_7|WideOr42~0_combout\ : std_logic;
SIGNAL \comb_7|segout~160_combout\ : std_logic;
SIGNAL \comb_7|segout~256\ : std_logic;
SIGNAL \comb_7|segout~180_combout\ : std_logic;
SIGNAL \comb_7|common~56_combout\ : std_logic;
SIGNAL \comb_7|common~61_combout\ : std_logic;
SIGNAL \comb_7|common~58_combout\ : std_logic;
SIGNAL \comb_7|common~63_combout\ : std_logic;
SIGNAL \comb_7|common~92\ : std_logic;
SIGNAL \comb_7|common~76_combout\ : std_logic;
SIGNAL \comb_7|common~66_combout\ : std_logic;
SIGNAL \comb_7|Equal3~2_combout\ : std_logic;
SIGNAL \comb_7|segout[0]~263_regout\ : std_logic;
SIGNAL \comb_7|segout[1]~264_regout\ : std_logic;
SIGNAL \comb_7|segout[2]~265_regout\ : std_logic;
SIGNAL \comb_7|segout[3]~266_regout\ : std_logic;
SIGNAL \comb_7|segout[4]~267_regout\ : std_logic;
SIGNAL \comb_7|segout[5]~268_regout\ : std_logic;
SIGNAL \comb_7|segout[6]~269_regout\ : std_logic;
SIGNAL \comb_7|common[2]~95_regout\ : std_logic;
SIGNAL \comb_7|common[3]~96_regout\ : std_logic;
SIGNAL \comb_7|common[4]~97_regout\ : std_logic;
SIGNAL \comb_7|common[5]~98_regout\ : std_logic;
SIGNAL \comb_7|common[6]~99_regout\ : std_logic;
SIGNAL \comb_7|common[7]~100_regout\ : std_logic;
SIGNAL \comb_9|Add0|adder|result_node|cs_buffer[0]~COUT\ : std_logic;
SIGNAL \comb_9|Add0|adder|result_node|cs_buffer[1]~COUT\ : std_logic;
SIGNAL \comb_9|Add0|adder|result_node|cs_buffer[2]~COUT\ : std_logic;
SIGNAL \comb_9|Add0|adder|result_node|cs_buffer[3]~COUT\ : std_logic;
SIGNAL \comb_9|Decoder0~0_combout\ : std_logic;
SIGNAL \comb_9|Mux13~0_combout\ : std_logic;
SIGNAL \comb_9|dot_d[0]~14_combout\ : std_logic;
SIGNAL \comb_9|Mux12~0_combout\ : std_logic;
SIGNAL \comb_9|dot_d[1]~15_combout\ : std_logic;
SIGNAL \comb_9|Mux11~0_combout\ : std_logic;
SIGNAL \comb_9|Mux11~1_combout\ : std_logic;
SIGNAL \comb_8|clk_6h~regout\ : std_logic;
SIGNAL \comb_8|Mux4~3_combout\ : std_logic;
SIGNAL \comb_9|Mux10~0_combout\ : std_logic;
SIGNAL \comb_9|Mux10~1_combout\ : std_logic;
SIGNAL \comb_9|Mux9~10_combout\ : std_logic;
SIGNAL \comb_9|Mux9~8_combout\ : std_logic;
SIGNAL \comb_9|Mux7~0_combout\ : std_logic;
SIGNAL \comb_9|Mux9~9_combout\ : std_logic;
SIGNAL \comb_9|Mux8~1_combout\ : std_logic;
SIGNAL \comb_9|Mux8~0_combout\ : std_logic;
SIGNAL \comb_9|Mux8~2_combout\ : std_logic;
SIGNAL \comb_9|Mux7~2_combout\ : std_logic;
SIGNAL \comb_9|Mux7~1_combout\ : std_logic;
SIGNAL \comb_9|Mux7~3_combout\ : std_logic;
SIGNAL \comb_9|Mux10~4_combout\ : std_logic;
SIGNAL \comb_9|Mux5~0_combout\ : std_logic;
SIGNAL \comb_9|Mux5~1_combout\ : std_logic;
SIGNAL \comb_9|Mux5~2_combout\ : std_logic;
SIGNAL \comb_9|Mux5~3_combout\ : std_logic;
SIGNAL \comb_9|Mux4~1_combout\ : std_logic;
SIGNAL \comb_9|Mux4~0_combout\ : std_logic;
SIGNAL \comb_9|Mux4~2_combout\ : std_logic;
SIGNAL \comb_9|Mux4~3_combout\ : std_logic;
SIGNAL \comb_9|Mux3~1_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[1]~10_combout\ : std_logic;
SIGNAL \comb_9|Mux3~0_combout\ : std_logic;
SIGNAL \comb_9|Mux3~2_combout\ : std_logic;
SIGNAL \comb_9|Mux3~3_combout\ : std_logic;
SIGNAL \comb_9|Mux2~0_combout\ : std_logic;
SIGNAL \comb_9|Mux2~1_combout\ : std_logic;
SIGNAL \comb_9|dot_d[12]~16_combout\ : std_logic;
SIGNAL \dot_d[13]~0_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[0]~11_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[1]~12_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[2]~13_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[3]~14_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[4]~15_combout\ : std_logic;
SIGNAL \comb_9|dot_d[0]~20_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[6]~16_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[7]~17_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[8]~18_combout\ : std_logic;
SIGNAL \comb_9|dot_scan[9]~19_combout\ : std_logic;
SIGNAL \comb_10|lcd_e~1_combout\ : std_logic;
SIGNAL \comb_10|Equal5~3_combout\ : std_logic;
SIGNAL \comb_10|lcd_state.delay_t~regout\ : std_logic;
SIGNAL \comb_10|lcd_state.function_set~regout\ : std_logic;
SIGNAL \comb_10|lcd_state.disp_onoff~regout\ : std_logic;
SIGNAL \comb_10|lcd_state.entry_mode~regout\ : std_logic;
SIGNAL \comb_10|Selector16~0_combout\ : std_logic;
SIGNAL \comb_10|Selector15~1_combout\ : std_logic;
SIGNAL \comb_10|Selector15~0_combout\ : std_logic;
SIGNAL \comb_10|Selector15~2_combout\ : std_logic;
SIGNAL \comb_10|lcd_state.delay~regout\ : std_logic;
SIGNAL \comb_10|Selector0~0_combout\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[0]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[1]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[2]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[3]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[4]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[5]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[6]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[7]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[8]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[9]~COUT\ : std_logic;
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer[10]~COUT\ : std_logic;
SIGNAL \comb_10|Equal3~11\ : std_logic;
SIGNAL \comb_10|Equal3~7_combout\ : std_logic;
SIGNAL \comb_10|Selector6~0_combout\ : std_logic;
SIGNAL \comb_10|Equal3~5_combout\ : std_logic;
SIGNAL \comb_10|Equal4~9\ : std_logic;
SIGNAL \comb_10|Equal4~5_combout\ : std_logic;
SIGNAL \comb_10|lcd_state.clear_disp~regout\ : std_logic;
SIGNAL \comb_10|Selector7~0_combout\ : std_logic;
SIGNAL \comb_10|Equal0~2_combout\ : std_logic;
SIGNAL \comb_10|Equal0~0_combout\ : std_logic;
SIGNAL \comb_10|Equal0~1_combout\ : std_logic;
SIGNAL \comb_10|Equal0~3_combout\ : std_logic;
SIGNAL \comb_10|Equal1~0_combout\ : std_logic;
SIGNAL \comb_10|Equal1~2_combout\ : std_logic;
SIGNAL \comb_10|Equal1~3_combout\ : std_logic;
SIGNAL \comb_10|Selector4~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_state.line1~regout\ : std_logic;
SIGNAL \comb_10|Selector16~1_combout\ : std_logic;
SIGNAL \comb_10|Selector16~2_combout\ : std_logic;
SIGNAL \comb_10|Equal2~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_state.line2~regout\ : std_logic;
SIGNAL \comb_10|Equal5~0_combout\ : std_logic;
SIGNAL \comb_10|Equal5~1_combout\ : std_logic;
SIGNAL \comb_10|lcd_rs~regout\ : std_logic;
SIGNAL \comb_10|Equal9~0_combout\ : std_logic;
SIGNAL \comb_10|Equal11~0_combout\ : std_logic;
SIGNAL \comb_10|Equal5~2_combout\ : std_logic;
SIGNAL \comb_10|Equal1~1_combout\ : std_logic;
SIGNAL \comb_10|Equal16~1_combout\ : std_logic;
SIGNAL \comb_10|Equal13~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~35_combout\ : std_logic;
SIGNAL \comb_10|Equal16~0_combout\ : std_logic;
SIGNAL \comb_10|Equal14~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~36_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~38_combout\ : std_logic;
SIGNAL \comb_10|Equal17~0_combout\ : std_logic;
SIGNAL \comb_10|Equal17~1_combout\ : std_logic;
SIGNAL \comb_10|Equal7~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~33_combout\ : std_logic;
SIGNAL \comb_10|Equal20~0_combout\ : std_logic;
SIGNAL \comb_10|Equal18~0_combout\ : std_logic;
SIGNAL \comb_6|status~20_combout\ : std_logic;
SIGNAL \comb_10|status~combout\ : std_logic;
SIGNAL \comb_10|lcd_data~30_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~32_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~34_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~46_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~58_combout\ : std_logic;
SIGNAL \comb_10|Equal12~0_combout\ : std_logic;
SIGNAL \comb_10|Equal10~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~106_combout\ : std_logic;
SIGNAL \comb_10|Equal21~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~178\ : std_logic;
SIGNAL \comb_10|lcd_data~181\ : std_logic;
SIGNAL \comb_10|lcd_data~114_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~92_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~173\ : std_logic;
SIGNAL \comb_10|lcd_data~116_combout\ : std_logic;
SIGNAL \comb_10|Equal15~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~53_combout\ : std_logic;
SIGNAL \comb_10|WideNor1~0_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~31_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~183\ : std_logic;
SIGNAL \comb_10|lcd_data~185\ : std_logic;
SIGNAL \comb_10|lcd_data~115_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~37_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~42_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~41_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~110_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~188\ : std_logic;
SIGNAL \comb_10|lcd_data~190\ : std_logic;
SIGNAL \comb_10|lcd_data~117_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~47_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~56_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~54_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~50_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~51_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~52_combout\ : std_logic;
SIGNAL \comb_10|WideOr2~combout\ : std_logic;
SIGNAL \comb_10|lcd_data~61_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~62_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~59_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~60_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~70_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~68_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~69_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~64_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~65_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~66_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~67_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~73_combout\ : std_logic;
SIGNAL \comb_10|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_10|WideNor1~10\ : std_logic;
SIGNAL \comb_10|WideNor1~6_combout\ : std_logic;
SIGNAL \comb_10|lcd_data~72_combout\ : std_logic;
SIGNAL \comb_9|cnt_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_8|cnt_clk\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_8|cnt_data\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_7|cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_7|common\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_7|segout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_6|baek_meter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_6|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_6|one_meter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_6|ten_meter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_5|baek\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_5|cheon\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_5|man\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_5|sibman\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_4|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_6|Add0|adder|result_node|cs_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_6|Add0|adder|unreg_res_node\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_4|Add0|adder|result_node|cs_buffer\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_4|Add0|adder|unreg_res_node\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_10|Add0|adder|result_node|cs_buffer\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_10|Add0|adder|unreg_res_node\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_9|Add0|adder|result_node|cs_buffer\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_9|Add0|adder|unreg_res_node\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_8|Add0|adder|result_node|cs_buffer\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_8|Add0|adder|unreg_res_node\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_10|cnt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_10|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_9|ALT_INV_dot_d[0]~20_combout\ : std_logic;

BEGIN

ww_clk <= clk;
\ renamed_port_9\ <= \ww_ renamed_port_9\;
\ renamed_port_8\ <= \ww_ renamed_port_8\;
\ renamed_port_7\ <= \ww_ renamed_port_7\;
\ renamed_port_6\ <= \ww_ renamed_port_6\;
\ renamed_port_5\ <= \ww_ renamed_port_5\;
\ renamed_port_4\ <= \ww_ renamed_port_4\;
\ renamed_port_3\ <= \ww_ renamed_port_3\;
\ renamed_port_2\ <= \ww_ renamed_port_2\;
\ renamed_port_18\ <= \ww_ renamed_port_18\;
\ renamed_port_17\ <= \ww_ renamed_port_17\;
\ renamed_port_16\ <= \ww_ renamed_port_16\;
\ renamed_port_15\ <= \ww_ renamed_port_15\;
\ renamed_port_14\ <= \ww_ renamed_port_14\;
\ renamed_port_13\ <= \ww_ renamed_port_13\;
\ renamed_port_12\ <= \ww_ renamed_port_12\;
\ renamed_port_11\ <= \ww_ renamed_port_11\;
ww_reset <= reset;
ww_normal <= normal;
ww_premium <= premium;
\ww_bus\ <= \bus\;
segout <= ww_segout;
common <= ww_common;
dot_d <= ww_dot_d;
dot_scan <= ww_dot_scan;
lcd_e <= ww_lcd_e;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\comb_9|ALT_INV_dot_d[0]~20_combout\ <= NOT \comb_9|dot_d[0]~20_combout\;

\comb_5|cheon[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|cheon\(3) = DFFEA(\comb_5|Selector12~1_combout\ # \comb_5|Add1~0_combout\ & \comb_5|Equal1~0_combout\ & \comb_5|Selector13~1_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Add1~0_combout\,
	datab => \comb_5|Equal1~0_combout\,
	datac => \comb_5|Selector13~1_combout\,
	datad => \comb_5|Selector12~1_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|cheon\(3));

\comb_5|sibman[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|sibman\(3) = DFFEA(\comb_5|sibman\(3) & (\comb_5|Selector20~1_combout\ # !\comb_5|Add3~1_combout\ & \comb_5|Selector20~3_combout\) # !\comb_5|sibman\(3) & \comb_5|Add3~1_combout\ & \comb_5|Selector20~3_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ec60",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Add3~1_combout\,
	datab => \comb_5|sibman\(3),
	datac => \comb_5|Selector20~3_combout\,
	datad => \comb_5|Selector20~1_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|sibman\(3));

\comb_7|WideOr34~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr34~0_combout\ = \comb_5|man\(1) & \comb_5|man\(3) # !\comb_5|man\(1) & (\comb_5|man\(2) $ (!\comb_5|man\(3) & \comb_5|man\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a9ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(3),
	datab => \comb_5|man\(2),
	datac => \comb_5|man\(1),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr34~0_combout\);

\comb_7|WideOr62~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr62~0_combout\ = \comb_6|baek_meter\(1) & \comb_6|baek_meter\(3) # !\comb_6|baek_meter\(1) & (\comb_6|baek_meter\(2) $ (!\comb_6|baek_meter\(3) & \comb_6|baek_meter\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a9ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|baek_meter\(3),
	datab => \comb_6|baek_meter\(2),
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr62~0_combout\);

\comb_7|WideOr40~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr40~0_combout\ = \comb_5|sibman\(3) & (\comb_5|sibman\(2) # \comb_5|sibman\(1)) # !\comb_5|sibman\(3) & \comb_5|sibman\(2) & (\comb_5|sibman\(1) $ \comb_5|sibman\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ace8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman\(3),
	datab => \comb_5|sibman\(2),
	datac => \comb_5|sibman\(1),
	datad => \comb_5|sibman\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr40~0_combout\);

\comb_7|WideOr33~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr33~0_combout\ = \comb_5|man\(3) & (\comb_5|man\(2) # \comb_5|man\(1)) # !\comb_5|man\(3) & \comb_5|man\(2) & (\comb_5|man\(1) $ \comb_5|man\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ace8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(3),
	datab => \comb_5|man\(2),
	datac => \comb_5|man\(1),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr33~0_combout\);

\comb_7|WideOr61~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr61~0_combout\ = \comb_6|baek_meter\(3) & (\comb_6|baek_meter\(2) # \comb_6|baek_meter\(1)) # !\comb_6|baek_meter\(3) & \comb_6|baek_meter\(2) & (\comb_6|baek_meter\(1) $ \comb_6|baek_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ace8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|baek_meter\(3),
	datab => \comb_6|baek_meter\(2),
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr61~0_combout\);

\comb_7|WideOr39~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr39~0_combout\ = \comb_5|sibman\(2) & \comb_5|sibman\(3) # !\comb_5|sibman\(2) & \comb_5|sibman\(1) & (\comb_5|sibman\(3) # !\comb_5|sibman\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman\(3),
	datab => \comb_5|sibman\(2),
	datac => \comb_5|sibman\(1),
	datad => \comb_5|sibman\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr39~0_combout\);

\comb_7|WideOr32~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr32~0_combout\ = \comb_5|man\(2) & \comb_5|man\(3) # !\comb_5|man\(2) & \comb_5|man\(1) & (\comb_5|man\(3) # !\comb_5|man\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(3),
	datab => \comb_5|man\(2),
	datac => \comb_5|man\(1),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr32~0_combout\);

\comb_7|WideOr60~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr60~0_combout\ = \comb_6|baek_meter\(2) & \comb_6|baek_meter\(3) # !\comb_6|baek_meter\(2) & \comb_6|baek_meter\(1) & (\comb_6|baek_meter\(3) # !\comb_6|baek_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|baek_meter\(3),
	datab => \comb_6|baek_meter\(2),
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr60~0_combout\);

\comb_7|WideOr38~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr38~0_combout\ = \comb_5|sibman\(2) & (\comb_5|sibman\(3) # \comb_5|sibman\(1) $ !\comb_5|sibman\(0)) # !\comb_5|sibman\(2) & (\comb_5|sibman\(1) & \comb_5|sibman\(3) # !\comb_5|sibman\(1) & (\comb_5|sibman\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ebac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman\(3),
	datab => \comb_5|sibman\(2),
	datac => \comb_5|sibman\(1),
	datad => \comb_5|sibman\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr38~0_combout\);

\comb_7|WideOr31~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr31~0_combout\ = \comb_5|man\(2) & (\comb_5|man\(3) # \comb_5|man\(1) $ !\comb_5|man\(0)) # !\comb_5|man\(2) & (\comb_5|man\(1) & \comb_5|man\(3) # !\comb_5|man\(1) & (\comb_5|man\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ebac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(3),
	datab => \comb_5|man\(2),
	datac => \comb_5|man\(1),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr31~0_combout\);

\comb_7|WideOr59~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr59~0_combout\ = \comb_6|baek_meter\(2) & (\comb_6|baek_meter\(3) # \comb_6|baek_meter\(1) $ !\comb_6|baek_meter\(0)) # !\comb_6|baek_meter\(2) & (\comb_6|baek_meter\(1) & \comb_6|baek_meter\(3) # !\comb_6|baek_meter\(1) & 
-- (\comb_6|baek_meter\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ebac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|baek_meter\(3),
	datab => \comb_6|baek_meter\(2),
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr59~0_combout\);

\comb_7|WideOr37~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr37~0_combout\ = \comb_5|sibman\(0) # \comb_5|sibman\(1) & \comb_5|sibman\(3) # !\comb_5|sibman\(1) & (\comb_5|sibman\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman\(3),
	datab => \comb_5|sibman\(2),
	datac => \comb_5|sibman\(1),
	datad => \comb_5|sibman\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr37~0_combout\);

\comb_7|WideOr30~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr30~0_combout\ = \comb_5|man\(0) # \comb_5|man\(1) & \comb_5|man\(3) # !\comb_5|man\(1) & (\comb_5|man\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(3),
	datab => \comb_5|man\(2),
	datac => \comb_5|man\(1),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr30~0_combout\);

\comb_7|WideOr58~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr58~0_combout\ = \comb_6|baek_meter\(0) # \comb_6|baek_meter\(1) & \comb_6|baek_meter\(3) # !\comb_6|baek_meter\(1) & (\comb_6|baek_meter\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|baek_meter\(3),
	datab => \comb_6|baek_meter\(2),
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr58~0_combout\);

\comb_7|WideOr36~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr36~0_combout\ = \comb_5|sibman\(2) & \comb_5|sibman\(3) # !\comb_5|sibman\(2) & (\comb_5|sibman\(1) # !\comb_5|sibman\(3) & \comb_5|sibman\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "b9b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman\(3),
	datab => \comb_5|sibman\(2),
	datac => \comb_5|sibman\(1),
	datad => \comb_5|sibman\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr36~0_combout\);

\comb_7|WideOr29~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr29~0_combout\ = \comb_5|man\(2) & \comb_5|man\(3) # !\comb_5|man\(2) & (\comb_5|man\(1) # !\comb_5|man\(3) & \comb_5|man\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "b9b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(3),
	datab => \comb_5|man\(2),
	datac => \comb_5|man\(1),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr29~0_combout\);

\comb_7|WideOr57~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr57~0_combout\ = \comb_6|baek_meter\(2) & \comb_6|baek_meter\(3) # !\comb_6|baek_meter\(2) & (\comb_6|baek_meter\(1) # !\comb_6|baek_meter\(3) & \comb_6|baek_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "b9b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|baek_meter\(3),
	datab => \comb_6|baek_meter\(2),
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr57~0_combout\);

\comb_10|lcd_data~55\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~55_combout\ = !\comb_10|Equal15~0_combout\ & (\comb_10|cnt\(0) # \comb_10|cnt\(1) # !\comb_10|Equal17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal15~0_combout\,
	datab => \comb_10|Equal17~0_combout\,
	datac => \comb_10|cnt\(0),
	datad => \comb_10|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~55_combout\);

\comb_5|Add1~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add1~0_combout\ = \comb_5|cheon\(3) $ (\comb_5|cheon\(1) & \comb_5|cheon\(0) & \comb_5|cheon\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(1),
	datab => \comb_5|cheon\(0),
	datac => \comb_5|cheon\(2),
	datad => \comb_5|cheon\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add1~0_combout\);

\comb_5|Selector12~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector12~0_combout\ = \comb_5|Equal0~0_combout\ & (\comb_5|Add1~0_combout\ & \comb_5|Equal1~0_combout\) # !\comb_5|Equal0~0_combout\ & \comb_5|cheon\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Equal0~0_combout\,
	datab => \comb_5|cheon\(3),
	datac => \comb_5|Add1~0_combout\,
	datad => \comb_5|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector12~0_combout\);

\comb_5|Selector12~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector12~1_combout\ = \comb_5|Selector8~0_combout\ & (\comb_5|cheon\(3) # \comb_5|Selector12~0_combout\ & \comb_5|Selector19~0_combout\) # !\comb_5|Selector8~0_combout\ & \comb_5|Selector12~0_combout\ & \comb_5|Selector19~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector8~0_combout\,
	datab => \comb_5|Selector12~0_combout\,
	datac => \comb_5|Selector19~0_combout\,
	datad => \comb_5|cheon\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector12~1_combout\);

\comb_5|Add3~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add3~0_combout\ = \comb_5|Equal2~0_combout\ & \comb_5|sibman\(0) & \comb_5|sibman\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|Equal2~0_combout\,
	datac => \comb_5|sibman\(0),
	datad => \comb_5|sibman\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add3~0_combout\);

\comb_5|Add3~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add3~1_combout\ = \comb_5|Equal2~0_combout\ & \comb_5|sibman\(0) & \comb_5|sibman\(1) & \comb_5|sibman\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Equal2~0_combout\,
	datab => \comb_5|sibman\(0),
	datac => \comb_5|sibman\(1),
	datad => \comb_5|sibman\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add3~1_combout\);

\comb_5|Selector8~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector8~2_combout\ = \comb_5|baek\(0) & (\comb_5|baek\(2) & (\comb_5|baek\(1) $ \comb_5|baek\(3)) # !\comb_5|baek\(2) & \comb_5|baek\(1) & \comb_5|baek\(3)) # !\comb_5|baek\(0) & (\comb_5|baek\(3))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7d80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(0),
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector8~2_combout\);

\comb_5|Selector16~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector16~0_combout\ = \comb_5|sibman~28_combout\ & (\comb_5|man\(3)) # !\comb_5|sibman~28_combout\ & !\comb_5|Equal2~0_combout\ & \comb_5|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Equal2~0_combout\,
	datab => \comb_5|Add2~0_combout\,
	datac => \comb_5|sibman~28_combout\,
	datad => \comb_5|man\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector16~0_combout\);

\comb_8|cnt_clk[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_clk\(6) = DFFEA(\comb_8|Add0|adder|unreg_res_node\(6), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_8|Add0|adder|unreg_res_node\(6),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_clk\(6));

\comb_8|cnt_clk[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_clk\(5) = DFFEA(\comb_8|Add0|adder|result_node|cs_buffer\(5), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_8|Add0|adder|result_node|cs_buffer\(5),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_clk\(5));

\comb_8|cnt_clk[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_clk\(4) = DFFEA(\comb_8|Add0|adder|result_node|cs_buffer\(4), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_8|Add0|adder|result_node|cs_buffer\(4),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_clk\(4));

\comb_8|cnt_clk[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_clk\(3) = DFFEA(\comb_8|Add0|adder|result_node|cs_buffer\(3), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_8|Add0|adder|result_node|cs_buffer\(3),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_clk\(3));

\comb_8|Equal0~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Equal0~0_combout\ = !\comb_8|cnt_clk\(3) & !\comb_8|cnt_clk\(4) & !\comb_8|cnt_clk\(5) & !\comb_8|cnt_clk\(6)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|cnt_clk\(3),
	datab => \comb_8|cnt_clk\(4),
	datac => \comb_8|cnt_clk\(5),
	datad => \comb_8|cnt_clk\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Equal0~0_combout\);

\comb_8|cnt_clk[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_clk\(2) = DFFEA(!\comb_8|Equal0~1_combout\ & \comb_8|Add0|adder|result_node|cs_buffer\(2), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_8|Equal0~1_combout\,
	datad => \comb_8|Add0|adder|result_node|cs_buffer\(2),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_clk\(2));

\comb_8|cnt_clk[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_clk\(1) = DFFEA(!\comb_8|Equal0~1_combout\ & \comb_8|Add0|adder|result_node|cs_buffer\(1), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_8|Equal0~1_combout\,
	datad => \comb_8|Add0|adder|result_node|cs_buffer\(1),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_clk\(1));

\comb_8|cnt_clk[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_clk\(0) = DFFEA(!\comb_8|Equal0~1_combout\ & !\comb_8|cnt_clk\(0), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )
-- \comb_8|Add0|adder|result_node|cs_buffer[0]~COUT\ = CARRY(\comb_8|cnt_clk\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "11cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|Equal0~1_combout\,
	datab => \comb_8|cnt_clk\(0),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_clk\(0),
	cout => \comb_8|Add0|adder|result_node|cs_buffer[0]~COUT\);

\comb_8|Equal0~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Equal0~1_combout\ = !\comb_8|cnt_clk\(0) & \comb_8|cnt_clk\(1) & \comb_8|cnt_clk\(2) & \comb_8|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|cnt_clk\(0),
	datab => \comb_8|cnt_clk\(1),
	datac => \comb_8|cnt_clk\(2),
	datad => \comb_8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Equal0~1_combout\);

\comb_6|Selector9~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector9~2_combout\ = \comb_6|Equal3~0_combout\ & \comb_6|Equal4~0_combout\ # !\comb_6|status.00~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f333",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|status.00~regout\,
	datac => \comb_6|Equal3~0_combout\,
	datad => \comb_6|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector9~2_combout\);

\comb_7|segout~161\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~161_combout\ = !\comb_7|cnt\(1) & !\comb_7|cnt\(2) & !\bus~dataout\ & \comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(1),
	datab => \comb_7|cnt\(2),
	datac => \bus~dataout\,
	datad => \comb_7|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~161_combout\);

\comb_7|WideOr35~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr35~0_combout\ = \comb_5|sibman\(2) & !\comb_5|sibman\(3) & (!\comb_5|sibman\(0) # !\comb_5|sibman\(1)) # !\comb_5|sibman\(2) & (\comb_5|sibman\(3) $ \comb_5|sibman\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman\(3),
	datab => \comb_5|sibman\(2),
	datac => \comb_5|sibman\(1),
	datad => \comb_5|sibman\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr35~0_combout\);

\comb_7|WideOr49~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr49~0_combout\ = \comb_6|ten_meter\(2) & !\comb_6|ten_meter\(3) & (!\comb_6|ten_meter\(0) # !\comb_6|ten_meter\(1)) # !\comb_6|ten_meter\(2) & (\comb_6|ten_meter\(3) $ \comb_6|ten_meter\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(3),
	datab => \comb_6|ten_meter\(2),
	datac => \comb_6|ten_meter\(1),
	datad => \comb_6|ten_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr49~0_combout\);

\comb_7|segout~162\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~162_combout\ = \comb_7|WideOr49~0_combout\ & (\comb_7|segout~161_combout\ # \comb_7|common~59_combout\ & \comb_7|WideOr35~0_combout\) # !\comb_7|WideOr49~0_combout\ & \comb_7|common~59_combout\ & \comb_7|WideOr35~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr49~0_combout\,
	datab => \comb_7|common~59_combout\,
	datac => \comb_7|WideOr35~0_combout\,
	datad => \comb_7|segout~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~162_combout\);

\comb_7|WideOr14~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr14~0_combout\ = \comb_5|baek\(2) & !\comb_5|baek\(3) & (!\comb_5|baek\(0) # !\comb_5|baek\(1)) # !\comb_5|baek\(2) & (\comb_5|baek\(3) $ \comb_5|baek\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(3),
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr14~0_combout\);

\comb_7|segout~165\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~165_combout\ = \comb_7|cnt\(2) & (\comb_7|segout\(6)) # !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & \comb_7|WideOr14~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|WideOr14~0_combout\,
	datac => \comb_7|cnt\(2),
	datad => \comb_7|segout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~165_combout\);

\comb_7|segout~166\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~166_combout\ = \bus~dataout\ & \comb_7|cnt\(1) & \comb_7|segout~165_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \bus~dataout\,
	datac => \comb_7|cnt\(1),
	datad => \comb_7|segout~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~166_combout\);

\comb_8|Add0|adder|result_node|cs_buffer[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Add0|adder|result_node|cs_buffer\(5) = \comb_8|cnt_clk\(5) $ \comb_8|Add0|adder|result_node|cs_buffer[4]~COUT\
-- \comb_8|Add0|adder|result_node|cs_buffer[5]~COUT\ = CARRY(\comb_8|cnt_clk\(5) & \comb_8|Add0|adder|result_node|cs_buffer[4]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_8|cnt_clk\(5),
	cin => \comb_8|Add0|adder|result_node|cs_buffer[4]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Add0|adder|result_node|cs_buffer\(5),
	cout => \comb_8|Add0|adder|result_node|cs_buffer[5]~COUT\);

\comb_8|Add0|adder|result_node|cs_buffer[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Add0|adder|result_node|cs_buffer\(4) = \comb_8|cnt_clk\(4) $ \comb_8|Add0|adder|result_node|cs_buffer[3]~COUT\
-- \comb_8|Add0|adder|result_node|cs_buffer[4]~COUT\ = CARRY(\comb_8|cnt_clk\(4) & \comb_8|Add0|adder|result_node|cs_buffer[3]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_8|cnt_clk\(4),
	cin => \comb_8|Add0|adder|result_node|cs_buffer[3]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Add0|adder|result_node|cs_buffer\(4),
	cout => \comb_8|Add0|adder|result_node|cs_buffer[4]~COUT\);

\comb_8|Add0|adder|result_node|cs_buffer[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Add0|adder|result_node|cs_buffer\(3) = \comb_8|cnt_clk\(3) $ \comb_8|Add0|adder|result_node|cs_buffer[2]~COUT\
-- \comb_8|Add0|adder|result_node|cs_buffer[3]~COUT\ = CARRY(\comb_8|cnt_clk\(3) & \comb_8|Add0|adder|result_node|cs_buffer[2]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_8|cnt_clk\(3),
	cin => \comb_8|Add0|adder|result_node|cs_buffer[2]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Add0|adder|result_node|cs_buffer\(3),
	cout => \comb_8|Add0|adder|result_node|cs_buffer[3]~COUT\);

\comb_8|Add0|adder|result_node|cs_buffer[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Add0|adder|result_node|cs_buffer\(2) = \comb_8|cnt_clk\(2) $ \comb_8|Add0|adder|result_node|cs_buffer[1]~COUT\
-- \comb_8|Add0|adder|result_node|cs_buffer[2]~COUT\ = CARRY(\comb_8|cnt_clk\(2) & \comb_8|Add0|adder|result_node|cs_buffer[1]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_8|cnt_clk\(2),
	cin => \comb_8|Add0|adder|result_node|cs_buffer[1]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Add0|adder|result_node|cs_buffer\(2),
	cout => \comb_8|Add0|adder|result_node|cs_buffer[2]~COUT\);

\comb_8|Add0|adder|result_node|cs_buffer[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Add0|adder|result_node|cs_buffer\(1) = \comb_8|cnt_clk\(1) $ \comb_8|Add0|adder|result_node|cs_buffer[0]~COUT\
-- \comb_8|Add0|adder|result_node|cs_buffer[1]~COUT\ = CARRY(\comb_8|cnt_clk\(1) & \comb_8|Add0|adder|result_node|cs_buffer[0]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_8|cnt_clk\(1),
	cin => \comb_8|Add0|adder|result_node|cs_buffer[0]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Add0|adder|result_node|cs_buffer\(1),
	cout => \comb_8|Add0|adder|result_node|cs_buffer[1]~COUT\);

\comb_6|Equal4~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Equal4~1_combout\ = !\comb_6|one_meter\(1) & !\comb_6|one_meter\(0) & !\comb_6|one_meter\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|one_meter\(1),
	datac => \comb_6|one_meter\(0),
	datad => \comb_6|one_meter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Equal4~1_combout\);

\comb_5|Add1~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add1~1_combout\ = \comb_5|cheon\(1) $ \comb_5|cheon\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add1~1_combout\);

\comb_5|Selector14~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector14~5_combout\ = \comb_5|Add1~1_combout\ & \comb_6|status.10~regout\ & \comb_5|cheon~24_combout\ & \comb_5|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Add1~1_combout\,
	datab => \comb_6|status.10~regout\,
	datac => \comb_5|cheon~24_combout\,
	datad => \comb_5|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector14~5_combout\);

\comb_5|Selector14~8\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector14~8_combout\ = \comb_5|Add1~1_combout\ & \comb_6|status.01~regout\ & \comb_5|Equal0~0_combout\ & \comb_5|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Add1~1_combout\,
	datab => \comb_6|status.01~regout\,
	datac => \comb_5|Equal0~0_combout\,
	datad => \comb_5|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector14~8_combout\);

\comb_8|Add0|adder|unreg_res_node[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Add0|adder|unreg_res_node\(6) = \comb_8|Add0|adder|result_node|cs_buffer[5]~COUT\ $ \comb_8|cnt_clk\(6)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_8|cnt_clk\(6),
	cin => \comb_8|Add0|adder|result_node|cs_buffer[5]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Add0|adder|unreg_res_node\(6));

\comb_10|Selector9~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector9~10\ = !\comb_10|lcd_state.entry_mode~regout\ & !\comb_10|lcd_state.line2~regout\ & \comb_10|lcd_state.delay~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(10)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5755",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(10),
	datab => \comb_10|lcd_state.entry_mode~regout\,
	datac => \comb_10|lcd_state.line2~regout\,
	datad => \comb_10|lcd_state.delay~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector9~5_combout\,
	cascout => \comb_10|Selector9~10\);

\comb_10|Selector9~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector9~7_combout\ = (!\comb_10|lcd_state.function_set~regout\ & !\comb_10|lcd_state.line1~regout\ & !\comb_10|lcd_state.disp_onoff~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(10)) & CASCADE(\comb_10|Selector9~10\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(10),
	datab => \comb_10|lcd_state.function_set~regout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|lcd_state.disp_onoff~regout\,
	cascin => \comb_10|Selector9~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector9~7_combout\);

\comb_10|Selector10~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector10~10\ = !\comb_10|lcd_state.entry_mode~regout\ & !\comb_10|lcd_state.line2~regout\ & \comb_10|lcd_state.delay~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(9)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5755",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(9),
	datab => \comb_10|lcd_state.entry_mode~regout\,
	datac => \comb_10|lcd_state.line2~regout\,
	datad => \comb_10|lcd_state.delay~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector10~5_combout\,
	cascout => \comb_10|Selector10~10\);

\comb_10|Selector10~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector10~7_combout\ = (!\comb_10|lcd_state.function_set~regout\ & !\comb_10|lcd_state.line1~regout\ & !\comb_10|lcd_state.disp_onoff~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(9)) & CASCADE(\comb_10|Selector10~10\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(9),
	datab => \comb_10|lcd_state.function_set~regout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|lcd_state.disp_onoff~regout\,
	cascin => \comb_10|Selector10~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector10~7_combout\);

\comb_10|Selector13~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector13~10\ = !\comb_10|lcd_state.line1~regout\ & !\comb_10|lcd_state.delay_t~regout\ & !\comb_10|lcd_state.line2~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(6),
	datab => \comb_10|lcd_state.line1~regout\,
	datac => \comb_10|lcd_state.delay_t~regout\,
	datad => \comb_10|lcd_state.line2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector13~5_combout\,
	cascout => \comb_10|Selector13~10\);

\comb_10|Selector13~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector13~7_combout\ = (!\comb_10|lcd_state.function_set~regout\ & !\comb_10|lcd_state.entry_mode~regout\ & !\comb_10|lcd_state.disp_onoff~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(6)) & CASCADE(\comb_10|Selector13~10\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(6),
	datab => \comb_10|lcd_state.function_set~regout\,
	datac => \comb_10|lcd_state.entry_mode~regout\,
	datad => \comb_10|lcd_state.disp_onoff~regout\,
	cascin => \comb_10|Selector13~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector13~7_combout\);

\comb_10|Selector11~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector11~10\ = !\comb_10|lcd_state.entry_mode~regout\ & !\comb_10|lcd_state.line2~regout\ & \comb_10|lcd_state.delay~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5755",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(8),
	datab => \comb_10|lcd_state.entry_mode~regout\,
	datac => \comb_10|lcd_state.line2~regout\,
	datad => \comb_10|lcd_state.delay~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector11~5_combout\,
	cascout => \comb_10|Selector11~10\);

\comb_10|Selector11~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector11~7_combout\ = (!\comb_10|lcd_state.function_set~regout\ & !\comb_10|lcd_state.line1~regout\ & !\comb_10|lcd_state.disp_onoff~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(8)) & CASCADE(\comb_10|Selector11~10\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(8),
	datab => \comb_10|lcd_state.function_set~regout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|lcd_state.disp_onoff~regout\,
	cascin => \comb_10|Selector11~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector11~7_combout\);

\comb_10|Selector12~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector12~10\ = !\comb_10|lcd_state.entry_mode~regout\ & !\comb_10|lcd_state.line2~regout\ & \comb_10|lcd_state.delay~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5755",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(7),
	datab => \comb_10|lcd_state.entry_mode~regout\,
	datac => \comb_10|lcd_state.line2~regout\,
	datad => \comb_10|lcd_state.delay~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector12~5_combout\,
	cascout => \comb_10|Selector12~10\);

\comb_10|Selector12~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector12~7_combout\ = (!\comb_10|lcd_state.function_set~regout\ & !\comb_10|lcd_state.line1~regout\ & !\comb_10|lcd_state.disp_onoff~regout\ # !\comb_10|Add0|adder|result_node|cs_buffer\(7)) & CASCADE(\comb_10|Selector12~10\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Add0|adder|result_node|cs_buffer\(7),
	datab => \comb_10|lcd_state.function_set~regout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|lcd_state.disp_onoff~regout\,
	cascin => \comb_10|Selector12~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector12~7_combout\);

\comb_7|WideOr28~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr28~0_combout\ = \comb_5|man\(2) & !\comb_5|man\(3) & (!\comb_5|man\(0) # !\comb_5|man\(1)) # !\comb_5|man\(2) & (\comb_5|man\(3) $ \comb_5|man\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(3),
	datab => \comb_5|man\(2),
	datac => \comb_5|man\(1),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr28~0_combout\);

\comb_10|cnt~62\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt~62_combout\ = !\comb_10|cnt\(0) & (!\comb_10|Equal1~2_combout\ # !\comb_10|cnt\(1) # !\comb_10|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(0),
	datab => \comb_10|cnt\(3),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|cnt~62_combout\);

\comb_10|Selector19~14\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector19~14_combout\ = (!\comb_10|lcd_state.function_set~regout\ & !\comb_10|lcd_state.disp_onoff~regout\ & !\comb_10|lcd_state.entry_mode~regout\ # !\comb_10|cnt~62_combout\) & CASCADE(\comb_10|Selector19~25\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt~62_combout\,
	datab => \comb_10|lcd_state.function_set~regout\,
	datac => \comb_10|lcd_state.disp_onoff~regout\,
	datad => \comb_10|lcd_state.entry_mode~regout\,
	cascin => \comb_10|Selector19~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector19~14_combout\);

\comb_10|Selector19~9\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector19~9_combout\ = !\comb_10|Equal0~3_combout\ & !\comb_10|cnt\(0) & !\comb_10|lcd_state.delay~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal0~3_combout\,
	datac => \comb_10|cnt\(0),
	datad => \comb_10|lcd_state.delay~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector19~9_combout\);

\comb_10|Selector19~10\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector19~10_combout\ = \comb_10|Selector19~9_combout\ # !\comb_10|Equal2~0_combout\ & !\comb_10|cnt\(0) & \comb_10|lcd_state.line1~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal2~0_combout\,
	datab => \comb_10|cnt\(0),
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|Selector19~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector19~10_combout\);

\comb_10|Selector19~11\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector19~22\ = !\comb_10|Selector19~10_combout\ & (\comb_10|Equal2~0_combout\ # \comb_10|cnt\(0) # !\comb_10|lcd_state.line2~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector19~10_combout\,
	datab => \comb_10|lcd_state.line2~regout\,
	datac => \comb_10|Equal2~0_combout\,
	datad => \comb_10|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector19~11_combout\,
	cascout => \comb_10|Selector19~22\);

\comb_10|Selector19~12\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector19~12_combout\ = !\comb_10|Equal3~7_combout\ & !\comb_10|cnt\(0) & \comb_10|lcd_state.delay_t~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal3~7_combout\,
	datac => \comb_10|cnt\(0),
	datad => \comb_10|lcd_state.delay_t~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector19~12_combout\);

\comb_10|Selector19~15\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector19~25\ = (!\comb_10|Selector19~12_combout\ & (\comb_10|Equal4~5_combout\ # \comb_10|cnt\(0) # !\comb_10|lcd_state.clear_disp~regout\)) & CASCADE(\comb_10|Selector19~22\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector19~12_combout\,
	datab => \comb_10|lcd_state.clear_disp~regout\,
	datac => \comb_10|Equal4~5_combout\,
	datad => \comb_10|cnt\(0),
	cascin => \comb_10|Selector19~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector19~15_combout\,
	cascout => \comb_10|Selector19~25\);

\comb_6|ten_meter[3]~27\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|ten_meter[3]~27_combout\ = !\comb_6|Selector5~1_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_6|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|ten_meter[3]~27_combout\);

\bus~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => \ww_bus\,
	dataout => \bus~dataout\);

\comb_7|common~60\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~60_combout\ = !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & !\bus~dataout\ & \comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(0),
	datac => \bus~dataout\,
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~60_combout\);

\clk~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_clk,
	dataout => \clk~dataout\);

\comb_7|cnt[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|cnt\(0) = DFFEA(!\comb_7|common~60_combout\ & !\comb_7|common~59_combout\ & !\comb_7|cnt\(0), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|common~60_combout\,
	datac => \comb_7|common~59_combout\,
	datad => \comb_7|cnt\(0),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|cnt\(0));

\comb_7|common~59\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~59_combout\ = !\comb_7|cnt\(1) & \comb_7|cnt\(0) & \comb_7|cnt\(2) & \bus~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(1),
	datab => \comb_7|cnt\(0),
	datac => \comb_7|cnt\(2),
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~59_combout\);

\comb_7|cnt[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|cnt\(1) = DFFEA(!\comb_7|common~60_combout\ & !\comb_7|common~59_combout\ & (\comb_7|cnt\(1) $ \comb_7|cnt\(0)), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0110",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|common~60_combout\,
	datab => \comb_7|common~59_combout\,
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(0),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|cnt\(1));

\comb_7|cnt[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|cnt\(2) = DFFEA(\comb_7|cnt\(0) & (\comb_7|cnt\(2) & !\bus~dataout\ & !\comb_7|cnt\(1) # !\comb_7|cnt\(2) & (\comb_7|cnt\(1))) # !\comb_7|cnt\(0) & \comb_7|cnt\(2), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "664c",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|cnt\(2),
	datac => \bus~dataout\,
	datad => \comb_7|cnt\(1),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|cnt\(2));

\comb_7|Equal3~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|Equal3~1_combout\ = !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & !\comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|Equal3~1_combout\);

\premium~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_premium,
	dataout => \premium~dataout\);

\reset~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_reset,
	dataout => \reset~dataout\);

\comb_4|count[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|count\(0) = DFFEA(!\comb_4|Equal1~1_combout\ & !\comb_4|count\(0), GLOBAL(\clk~dataout\), , , , , )
-- \comb_4|Add0|adder|result_node|cs_buffer[0]~COUT\ = CARRY(\comb_4|count\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "11cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|Equal1~1_combout\,
	datab => \comb_4|count\(0),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(0),
	cout => \comb_4|Add0|adder|result_node|cs_buffer[0]~COUT\);

\comb_4|Add0|adder|result_node|cs_buffer[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|Add0|adder|result_node|cs_buffer\(1) = \comb_4|count\(1) $ \comb_4|Add0|adder|result_node|cs_buffer[0]~COUT\
-- \comb_4|Add0|adder|result_node|cs_buffer[1]~COUT\ = CARRY(\comb_4|count\(1) & \comb_4|Add0|adder|result_node|cs_buffer[0]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|count\(1),
	cin => \comb_4|Add0|adder|result_node|cs_buffer[0]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|Add0|adder|result_node|cs_buffer\(1),
	cout => \comb_4|Add0|adder|result_node|cs_buffer[1]~COUT\);

\comb_4|count[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|count\(1) = DFFEA(\comb_4|Add0|adder|result_node|cs_buffer\(1), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|Add0|adder|result_node|cs_buffer\(1),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(1));

\comb_4|Add0|adder|result_node|cs_buffer[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|Add0|adder|result_node|cs_buffer\(2) = \comb_4|count\(2) $ \comb_4|Add0|adder|result_node|cs_buffer[1]~COUT\
-- \comb_4|Add0|adder|result_node|cs_buffer[2]~COUT\ = CARRY(\comb_4|count\(2) & \comb_4|Add0|adder|result_node|cs_buffer[1]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|count\(2),
	cin => \comb_4|Add0|adder|result_node|cs_buffer[1]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|Add0|adder|result_node|cs_buffer\(2),
	cout => \comb_4|Add0|adder|result_node|cs_buffer[2]~COUT\);

\comb_4|count[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|count\(2) = DFFEA(!\comb_4|Equal1~1_combout\ & \comb_4|Add0|adder|result_node|cs_buffer\(2), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|Equal1~1_combout\,
	datad => \comb_4|Add0|adder|result_node|cs_buffer\(2),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(2));

\comb_4|Add0|adder|result_node|cs_buffer[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|Add0|adder|result_node|cs_buffer\(3) = \comb_4|count\(3) $ \comb_4|Add0|adder|result_node|cs_buffer[2]~COUT\
-- \comb_4|Add0|adder|result_node|cs_buffer[3]~COUT\ = CARRY(\comb_4|count\(3) & \comb_4|Add0|adder|result_node|cs_buffer[2]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|count\(3),
	cin => \comb_4|Add0|adder|result_node|cs_buffer[2]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|Add0|adder|result_node|cs_buffer\(3),
	cout => \comb_4|Add0|adder|result_node|cs_buffer[3]~COUT\);

\comb_4|count[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|count\(3) = DFFEA(\comb_4|Add0|adder|result_node|cs_buffer\(3), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|Add0|adder|result_node|cs_buffer\(3),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(3));

\comb_4|Add0|adder|result_node|cs_buffer[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|Add0|adder|result_node|cs_buffer\(4) = \comb_4|count\(4) $ \comb_4|Add0|adder|result_node|cs_buffer[3]~COUT\
-- \comb_4|Add0|adder|result_node|cs_buffer[4]~COUT\ = CARRY(\comb_4|count\(4) & \comb_4|Add0|adder|result_node|cs_buffer[3]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|count\(4),
	cin => \comb_4|Add0|adder|result_node|cs_buffer[3]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|Add0|adder|result_node|cs_buffer\(4),
	cout => \comb_4|Add0|adder|result_node|cs_buffer[4]~COUT\);

\comb_4|count[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|count\(4) = DFFEA(\comb_4|Add0|adder|result_node|cs_buffer\(4), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|Add0|adder|result_node|cs_buffer\(4),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(4));

\comb_4|Add0|adder|result_node|cs_buffer[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|Add0|adder|result_node|cs_buffer\(5) = \comb_4|count\(5) $ \comb_4|Add0|adder|result_node|cs_buffer[4]~COUT\
-- \comb_4|Add0|adder|result_node|cs_buffer[5]~COUT\ = CARRY(\comb_4|count\(5) & \comb_4|Add0|adder|result_node|cs_buffer[4]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|count\(5),
	cin => \comb_4|Add0|adder|result_node|cs_buffer[4]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|Add0|adder|result_node|cs_buffer\(5),
	cout => \comb_4|Add0|adder|result_node|cs_buffer[5]~COUT\);

\comb_4|count[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|count\(5) = DFFEA(!\comb_4|Equal1~1_combout\ & \comb_4|Add0|adder|result_node|cs_buffer\(5), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|Equal1~1_combout\,
	datad => \comb_4|Add0|adder|result_node|cs_buffer\(5),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(5));

\comb_4|Add0|adder|unreg_res_node[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|Add0|adder|unreg_res_node\(6) = \comb_4|Add0|adder|result_node|cs_buffer[5]~COUT\ $ \comb_4|count\(6)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_4|count\(6),
	cin => \comb_4|Add0|adder|result_node|cs_buffer[5]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|Add0|adder|unreg_res_node\(6));

\comb_4|count[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|count\(6) = DFFEA(!\comb_4|Equal1~1_combout\ & \comb_4|Add0|adder|unreg_res_node\(6), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|Equal1~1_combout\,
	datad => \comb_4|Add0|adder|unreg_res_node\(6),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(6));

\comb_4|Equal1~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|Equal1~0_combout\ = !\comb_4|count\(3) & !\comb_4|count\(0) & !\comb_4|count\(1) & \comb_4|count\(5)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|count\(3),
	datab => \comb_4|count\(0),
	datac => \comb_4|count\(1),
	datad => \comb_4|count\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|Equal1~0_combout\);

\comb_4|Equal1~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|Equal1~1_combout\ = !\comb_4|count\(4) & \comb_4|count\(6) & \comb_4|count\(2) & \comb_4|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|count\(4),
	datab => \comb_4|count\(6),
	datac => \comb_4|count\(2),
	datad => \comb_4|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|Equal1~1_combout\);

\comb_4|clk_out~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|clk_out~2_combout\ = !\comb_4|count\(3) & !\comb_4|count\(0) & \comb_4|count\(5) & \comb_4|count\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|count\(3),
	datab => \comb_4|count\(0),
	datac => \comb_4|count\(5),
	datad => \comb_4|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|clk_out~2_combout\);

\comb_4|clk_out~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|clk_out~3_combout\ = !\comb_4|count\(6) & !\comb_4|count\(2) & \comb_4|count\(4) & \comb_4|clk_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_4|count\(6),
	datab => \comb_4|count\(2),
	datac => \comb_4|count\(4),
	datad => \comb_4|clk_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_4|clk_out~3_combout\);

\comb_4|clk_out\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|clk_out~regout\ = DFFEA(!\comb_4|Equal1~1_combout\ & (\comb_4|clk_out~3_combout\ # \comb_4|clk_out~regout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|Equal1~1_combout\,
	datac => \comb_4|clk_out~3_combout\,
	datad => \comb_4|clk_out~regout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|clk_out~regout\);

\comb_6|status.00\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|status.00~regout\ = DFFEA(!\reset~dataout\ & (\normal~dataout\ # \premium~dataout\ # \comb_6|status.00~regout\), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \normal~dataout\,
	datab => \premium~dataout\,
	datac => \comb_6|status.00~regout\,
	datad => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|status.00~regout\);

\comb_6|always2~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|always2~1_combout\ = \comb_6|baek_meter\(3) # !\comb_6|Equal4~0_combout\ # !\comb_6|Equal3~0_combout\ # !\comb_6|always2~4_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|always2~4_combout\,
	datab => \comb_6|Equal3~0_combout\,
	datac => \comb_6|Equal4~0_combout\,
	datad => \comb_6|baek_meter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|always2~1_combout\);

\comb_6|Selector9~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector9~1_combout\ = \comb_6|always2~1_combout\ & \comb_6|status.00~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_6|always2~1_combout\,
	datad => \comb_6|status.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector9~1_combout\);

\comb_6|count[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|count\(0) = DFFEA(!\comb_6|Equal1~2_combout\ & !\comb_6|count\(0), GLOBAL(\comb_4|clk_out~regout\), , , , , )
-- \comb_6|Add0|adder|result_node|cs_buffer[0]~COUT\ = CARRY(\comb_6|count\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "11cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Equal1~2_combout\,
	datab => \comb_6|count\(0),
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|count\(0),
	cout => \comb_6|Add0|adder|result_node|cs_buffer[0]~COUT\);

\comb_6|Add0|adder|result_node|cs_buffer[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add0|adder|result_node|cs_buffer\(1) = \comb_6|count\(1) $ \comb_6|Add0|adder|result_node|cs_buffer[0]~COUT\
-- \comb_6|Add0|adder|result_node|cs_buffer[1]~COUT\ = CARRY(\comb_6|count\(1) & \comb_6|Add0|adder|result_node|cs_buffer[0]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|count\(1),
	cin => \comb_6|Add0|adder|result_node|cs_buffer[0]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add0|adder|result_node|cs_buffer\(1),
	cout => \comb_6|Add0|adder|result_node|cs_buffer[1]~COUT\);

\comb_6|count[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|count\(1) = DFFEA(!\comb_6|Equal1~2_combout\ & \comb_6|Add0|adder|result_node|cs_buffer\(1), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_6|Equal1~2_combout\,
	datad => \comb_6|Add0|adder|result_node|cs_buffer\(1),
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|count\(1));

\comb_6|Equal1~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Equal1~1_combout\ = !\comb_6|count\(0) & \comb_6|count\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_6|count\(0),
	datad => \comb_6|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Equal1~1_combout\);

\comb_6|Add0|adder|result_node|cs_buffer[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add0|adder|result_node|cs_buffer\(2) = \comb_6|count\(2) $ \comb_6|Add0|adder|result_node|cs_buffer[1]~COUT\
-- \comb_6|Add0|adder|result_node|cs_buffer[2]~COUT\ = CARRY(\comb_6|count\(2) & \comb_6|Add0|adder|result_node|cs_buffer[1]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|count\(2),
	cin => \comb_6|Add0|adder|result_node|cs_buffer[1]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add0|adder|result_node|cs_buffer\(2),
	cout => \comb_6|Add0|adder|result_node|cs_buffer[2]~COUT\);

\comb_6|count[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|count\(2) = DFFEA(\comb_6|Add0|adder|result_node|cs_buffer\(2), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_6|Add0|adder|result_node|cs_buffer\(2),
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|count\(2));

\comb_6|Add0|adder|result_node|cs_buffer[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add0|adder|result_node|cs_buffer\(3) = \comb_6|count\(3) $ \comb_6|Add0|adder|result_node|cs_buffer[2]~COUT\
-- \comb_6|Add0|adder|result_node|cs_buffer[3]~COUT\ = CARRY(\comb_6|count\(3) & \comb_6|Add0|adder|result_node|cs_buffer[2]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|count\(3),
	cin => \comb_6|Add0|adder|result_node|cs_buffer[2]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add0|adder|result_node|cs_buffer\(3),
	cout => \comb_6|Add0|adder|result_node|cs_buffer[3]~COUT\);

\comb_6|Add0|adder|result_node|cs_buffer[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add0|adder|result_node|cs_buffer\(4) = \comb_6|count\(4) $ \comb_6|Add0|adder|result_node|cs_buffer[3]~COUT\
-- \comb_6|Add0|adder|result_node|cs_buffer[4]~COUT\ = CARRY(\comb_6|count\(4) & \comb_6|Add0|adder|result_node|cs_buffer[3]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|count\(4),
	cin => \comb_6|Add0|adder|result_node|cs_buffer[3]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add0|adder|result_node|cs_buffer\(4),
	cout => \comb_6|Add0|adder|result_node|cs_buffer[4]~COUT\);

\comb_6|count[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|count\(4) = DFFEA(\comb_6|Add0|adder|result_node|cs_buffer\(4), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_6|Add0|adder|result_node|cs_buffer\(4),
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|count\(4));

\comb_6|Add0|adder|result_node|cs_buffer[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add0|adder|result_node|cs_buffer\(5) = \comb_6|count\(5) $ \comb_6|Add0|adder|result_node|cs_buffer[4]~COUT\
-- \comb_6|Add0|adder|result_node|cs_buffer[5]~COUT\ = CARRY(\comb_6|count\(5) & \comb_6|Add0|adder|result_node|cs_buffer[4]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|count\(5),
	cin => \comb_6|Add0|adder|result_node|cs_buffer[4]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add0|adder|result_node|cs_buffer\(5),
	cout => \comb_6|Add0|adder|result_node|cs_buffer[5]~COUT\);

\comb_6|count[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|count\(5) = DFFEA(\comb_6|Add0|adder|result_node|cs_buffer\(5), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_6|Add0|adder|result_node|cs_buffer\(5),
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|count\(5));

\comb_6|Add0|adder|result_node|cs_buffer[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add0|adder|result_node|cs_buffer\(6) = \comb_6|count\(6) $ \comb_6|Add0|adder|result_node|cs_buffer[5]~COUT\
-- \comb_6|Add0|adder|result_node|cs_buffer[6]~COUT\ = CARRY(\comb_6|count\(6) & \comb_6|Add0|adder|result_node|cs_buffer[5]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|count\(6),
	cin => \comb_6|Add0|adder|result_node|cs_buffer[5]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add0|adder|result_node|cs_buffer\(6),
	cout => \comb_6|Add0|adder|result_node|cs_buffer[6]~COUT\);

\comb_6|count[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|count\(6) = DFFEA(\comb_6|Add0|adder|result_node|cs_buffer\(6), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_6|Add0|adder|result_node|cs_buffer\(6),
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|count\(6));

\comb_6|Add0|adder|unreg_res_node[7]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add0|adder|unreg_res_node\(7) = \comb_6|Add0|adder|result_node|cs_buffer[6]~COUT\ $ \comb_6|count\(7)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_6|count\(7),
	cin => \comb_6|Add0|adder|result_node|cs_buffer[6]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add0|adder|unreg_res_node\(7));

\comb_6|count[7]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|count\(7) = DFFEA(\comb_6|Add0|adder|unreg_res_node\(7), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_6|Add0|adder|unreg_res_node\(7),
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|count\(7));

\comb_6|Equal1~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Equal1~0_combout\ = !\comb_6|count\(4) & !\comb_6|count\(5) & !\comb_6|count\(6) & !\comb_6|count\(7)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|count\(4),
	datab => \comb_6|count\(5),
	datac => \comb_6|count\(6),
	datad => \comb_6|count\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Equal1~0_combout\);

\comb_6|Equal1~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Equal1~2_combout\ = !\comb_6|count\(2) & \comb_6|Equal1~1_combout\ & \comb_6|count\(3) & \comb_6|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|count\(2),
	datab => \comb_6|Equal1~1_combout\,
	datac => \comb_6|count\(3),
	datad => \comb_6|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Equal1~2_combout\);

\comb_6|count[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|count\(3) = DFFEA(!\comb_6|Equal1~2_combout\ & \comb_6|Add0|adder|result_node|cs_buffer\(3), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_6|Equal1~2_combout\,
	datad => \comb_6|Add0|adder|result_node|cs_buffer\(3),
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|count\(3));

\comb_6|clk_out~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|clk_out~2_combout\ = !\comb_6|count\(1) & !\comb_6|count\(3) & \comb_6|count\(0) & \comb_6|count\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|count\(1),
	datab => \comb_6|count\(3),
	datac => \comb_6|count\(0),
	datad => \comb_6|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|clk_out~2_combout\);

\comb_6|clk_out\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|clk_out~regout\ = DFFEA(!\comb_6|Equal1~2_combout\ & (\comb_6|clk_out~regout\ # \comb_6|clk_out~2_combout\ & \comb_6|Equal1~0_combout\), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Equal1~2_combout\,
	datab => \comb_6|clk_out~2_combout\,
	datac => \comb_6|Equal1~0_combout\,
	datad => \comb_6|clk_out~regout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|clk_out~regout\);

\comb_6|baek_meter[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|baek_meter\(0) = DFFEA(\comb_6|status.00~regout\ & !\comb_6|baek_meter\(0), \comb_6|clk_out~regout\, , , \comb_6|Selector9~2_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Selector9~2_combout\,
	datac => \comb_6|status.00~regout\,
	datad => \comb_6|baek_meter\(0),
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|baek_meter\(0));

\comb_6|baek_meter[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|baek_meter\(1) = DFFEA(\comb_6|Selector9~1_combout\ & (\comb_6|baek_meter\(1) $ !\comb_6|baek_meter\(0)), \comb_6|clk_out~regout\, , , \comb_6|Selector9~2_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "c00c",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Selector9~2_combout\,
	datab => \comb_6|Selector9~1_combout\,
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|baek_meter\(1));

\comb_6|Add3~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add3~0_combout\ = !\comb_6|baek_meter\(1) & !\comb_6|baek_meter\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add3~0_combout\);

\comb_6|baek_meter[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|baek_meter\(2) = DFFEA(\comb_6|Selector9~1_combout\ & (\comb_6|Add3~0_combout\ $ \comb_6|baek_meter\(2)), \comb_6|clk_out~regout\, , , \comb_6|Selector9~2_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Selector9~2_combout\,
	datab => \comb_6|Add3~0_combout\,
	datac => \comb_6|baek_meter\(2),
	datad => \comb_6|Selector9~1_combout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|baek_meter\(2));

\comb_6|always2~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|always2~4_combout\ = !\comb_6|baek_meter\(1) & !\comb_6|baek_meter\(0) & !\comb_6|baek_meter\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|baek_meter\(1),
	datac => \comb_6|baek_meter\(0),
	datad => \comb_6|baek_meter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|always2~4_combout\);

\comb_6|baek_meter[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|baek_meter\(3) = DFFEA(\comb_6|Selector9~1_combout\ & (\comb_6|always2~4_combout\ $ \comb_6|baek_meter\(3)), \comb_6|clk_out~regout\, , , \comb_6|Selector9~2_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Selector9~2_combout\,
	datab => \comb_6|always2~4_combout\,
	datac => \comb_6|baek_meter\(3),
	datad => \comb_6|Selector9~1_combout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|baek_meter\(3));

\comb_6|ten_meter~25\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|ten_meter~25_combout\ = \comb_6|Equal3~0_combout\ & (\comb_6|baek_meter\(3) # !\comb_6|Equal4~0_combout\ # !\comb_6|always2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|always2~4_combout\,
	datab => \comb_6|Equal4~0_combout\,
	datac => \comb_6|baek_meter\(3),
	datad => \comb_6|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|ten_meter~25_combout\);

\comb_6|Selector8~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector8~0_combout\ = \comb_6|ten_meter~25_combout\ # !\comb_6|Equal3~0_combout\ & !\comb_6|ten_meter\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|Equal3~0_combout\,
	datac => \comb_6|ten_meter\(0),
	datad => \comb_6|ten_meter~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector8~0_combout\);

\comb_6|ten_meter[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|ten_meter\(0) = DFFEA(\comb_6|status.00~regout\ & \comb_6|Selector8~0_combout\, \comb_6|clk_out~regout\, , , \comb_6|ten_meter[3]~27_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter[3]~27_combout\,
	datac => \comb_6|status.00~regout\,
	datad => \comb_6|Selector8~0_combout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|ten_meter\(0));

\comb_6|status.10\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|status.10~regout\ = DFFEA(!\normal~dataout\ & !\reset~dataout\ & (\premium~dataout\ # \comb_6|status.10~regout\), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \normal~dataout\,
	datab => \reset~dataout\,
	datac => \premium~dataout\,
	datad => \comb_6|status.10~regout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|status.10~regout\);

\normal~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_normal,
	dataout => \normal~dataout\);

\comb_6|status.01\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|status.01~regout\ = DFFEA(!\reset~dataout\ & (\normal~dataout\ # !\premium~dataout\ & \comb_6|status.01~regout\), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \reset~dataout\,
	datab => \premium~dataout\,
	datac => \comb_6|status.01~regout\,
	datad => \normal~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|status.01~regout\);

\comb_6|Selector7~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector7~0_combout\ = !\comb_6|Equal3~0_combout\ & \comb_6|status.01~regout\ & (\comb_6|ten_meter\(1) $ !\comb_6|ten_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Equal3~0_combout\,
	datab => \comb_6|ten_meter\(1),
	datac => \comb_6|ten_meter\(0),
	datad => \comb_6|status.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector7~0_combout\);

\comb_6|Selector7~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector7~1_combout\ = !\comb_6|ten_meter~25_combout\ & (\comb_6|Equal3~0_combout\ # \comb_6|ten_meter\(1) $ !\comb_6|ten_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5541",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter~25_combout\,
	datab => \comb_6|ten_meter\(1),
	datac => \comb_6|ten_meter\(0),
	datad => \comb_6|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector7~1_combout\);

\comb_6|ten_meter[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|ten_meter\(1) = DFFEA(\comb_6|Selector7~0_combout\ # \comb_6|Selector7~1_combout\ & \comb_6|status.10~regout\, \comb_6|clk_out~regout\, , , \comb_6|ten_meter[3]~27_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter[3]~27_combout\,
	datab => \comb_6|Selector7~0_combout\,
	datac => \comb_6|Selector7~1_combout\,
	datad => \comb_6|status.10~regout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|ten_meter\(1));

\comb_6|Add2~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Add2~0_combout\ = \comb_6|ten_meter\(2) $ (\comb_6|ten_meter\(1) # \comb_6|ten_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "333c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|ten_meter\(2),
	datac => \comb_6|ten_meter\(1),
	datad => \comb_6|ten_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Add2~0_combout\);

\comb_6|Selector6~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector6~0_combout\ = !\comb_6|ten_meter~25_combout\ & \comb_6|status.01~regout\ & (\comb_6|Equal3~0_combout\ # !\comb_6|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter~25_combout\,
	datab => \comb_6|Add2~0_combout\,
	datac => \comb_6|Equal3~0_combout\,
	datad => \comb_6|status.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector6~0_combout\);

\comb_6|Selector6~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector6~1_combout\ = \comb_6|Selector6~0_combout\ # !\comb_6|Add2~0_combout\ & !\comb_6|Equal3~0_combout\ & \comb_6|status.10~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Add2~0_combout\,
	datab => \comb_6|Equal3~0_combout\,
	datac => \comb_6|status.10~regout\,
	datad => \comb_6|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector6~1_combout\);

\comb_6|ten_meter[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|ten_meter\(2) = DFFEA(\comb_6|Selector6~1_combout\, \comb_6|clk_out~regout\, , , \comb_6|ten_meter[3]~27_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter[3]~27_combout\,
	datad => \comb_6|Selector6~1_combout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|ten_meter\(2));

\comb_6|Selector5~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector5~2_combout\ = \comb_6|ten_meter\(3) & (\comb_6|ten_meter\(1) # \comb_6|ten_meter\(0) # \comb_6|ten_meter\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(1),
	datab => \comb_6|ten_meter\(0),
	datac => \comb_6|ten_meter\(2),
	datad => \comb_6|ten_meter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector5~2_combout\);

\comb_6|ten_meter[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|ten_meter\(3) = DFFEA(\comb_6|status.00~regout\ & (\comb_6|Selector5~2_combout\ # \comb_6|ten_meter~25_combout\), \comb_6|clk_out~regout\, , , \comb_6|ten_meter[3]~27_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter[3]~27_combout\,
	datab => \comb_6|status.00~regout\,
	datac => \comb_6|Selector5~2_combout\,
	datad => \comb_6|ten_meter~25_combout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|ten_meter\(3));

\comb_6|Equal3~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Equal3~0_combout\ = !\comb_6|ten_meter\(1) & !\comb_6|ten_meter\(0) & !\comb_6|ten_meter\(2) & !\comb_6|ten_meter\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(1),
	datab => \comb_6|ten_meter\(0),
	datac => \comb_6|ten_meter\(2),
	datad => \comb_6|ten_meter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Equal3~0_combout\);

\comb_6|Selector4~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector4~0_combout\ = \comb_6|Equal4~0_combout\ & (\comb_6|baek_meter\(3) # !\comb_6|Equal3~0_combout\ # !\comb_6|always2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|always2~4_combout\,
	datab => \comb_6|Equal3~0_combout\,
	datac => \comb_6|baek_meter\(3),
	datad => \comb_6|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector4~0_combout\);

\comb_6|one_meter[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|one_meter\(0) = DFFEA(\comb_6|status.00~regout\ & (\comb_6|Selector4~0_combout\ # !\comb_6|Equal4~0_combout\ & !\comb_6|one_meter\(0)), \comb_6|clk_out~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f100",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Equal4~0_combout\,
	datab => \comb_6|one_meter\(0),
	datac => \comb_6|Selector4~0_combout\,
	datad => \comb_6|status.00~regout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|one_meter\(0));

\comb_6|one_meter[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|one_meter\(3) = DFFEA(\comb_6|status.00~regout\ & (\comb_6|Selector4~0_combout\ # !\comb_6|Equal4~1_combout\ & \comb_6|one_meter\(3)), \comb_6|clk_out~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f400",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Equal4~1_combout\,
	datab => \comb_6|one_meter\(3),
	datac => \comb_6|Selector4~0_combout\,
	datad => \comb_6|status.00~regout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|one_meter\(3));

\comb_6|Equal4~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Equal4~0_combout\ = !\comb_6|one_meter\(1) & !\comb_6|one_meter\(0) & !\comb_6|one_meter\(2) & !\comb_6|one_meter\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|one_meter\(1),
	datab => \comb_6|one_meter\(0),
	datac => \comb_6|one_meter\(2),
	datad => \comb_6|one_meter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Equal4~0_combout\);

\comb_6|Selector5~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|Selector5~1_combout\ = !\comb_6|Equal4~0_combout\ & \comb_6|status.00~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_6|Equal4~0_combout\,
	datad => \comb_6|status.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|Selector5~1_combout\);

\comb_6|one_meter[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|one_meter\(1) = DFFEA(\comb_6|Selector5~1_combout\ & (\comb_6|one_meter\(1) $ !\comb_6|one_meter\(0)), \comb_6|clk_out~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c00c",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|Selector5~1_combout\,
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|one_meter\(1));

\comb_6|one_meter[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|one_meter\(2) = DFFEA(\comb_6|Selector5~1_combout\ & (\comb_6|one_meter\(2) $ (!\comb_6|one_meter\(1) & !\comb_6|one_meter\(0))), \comb_6|clk_out~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8882",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|Selector5~1_combout\,
	datab => \comb_6|one_meter\(2),
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|one_meter\(2));

\comb_7|WideOr48~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr48~0_combout\ = \comb_6|one_meter\(1) & \comb_6|one_meter\(3) # !\comb_6|one_meter\(1) & (\comb_6|one_meter\(2) $ (!\comb_6|one_meter\(3) & \comb_6|one_meter\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a9ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|one_meter\(3),
	datab => \comb_6|one_meter\(2),
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr48~0_combout\);

\comb_7|WideOr55~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr55~0_combout\ = \comb_6|ten_meter\(1) & \comb_6|ten_meter\(3) # !\comb_6|ten_meter\(1) & (\comb_6|ten_meter\(2) $ (!\comb_6|ten_meter\(3) & \comb_6|ten_meter\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a9ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(3),
	datab => \comb_6|ten_meter\(2),
	datac => \comb_6|ten_meter\(1),
	datad => \comb_6|ten_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr55~0_combout\);

\comb_7|segout~147\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~234\ = \comb_7|cnt\(1) # \comb_7|cnt\(2) # \comb_7|WideOr55~0_combout\ # !\comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(2),
	datad => \comb_7|WideOr55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~147_combout\,
	cascout => \comb_7|segout~234\);

\comb_7|segout~174\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~174_combout\ = (\comb_7|Equal3~1_combout\ & (\comb_7|WideOr48~0_combout\) # !\comb_7|Equal3~1_combout\ & !\comb_7|segout\(0) # !\comb_7|segout~148_combout\) & CASCADE(\comb_7|segout~234\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f757",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|segout~148_combout\,
	datab => \comb_7|segout\(0),
	datac => \comb_7|Equal3~1_combout\,
	datad => \comb_7|WideOr48~0_combout\,
	cascin => \comb_7|segout~234\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~174_combout\);

\comb_7|segout~82\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~82_combout\ = !\comb_7|WideOr62~0_combout\ & !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & \comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr62~0_combout\,
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~82_combout\);

\comb_6|meter\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|meter~regout\ = DFFEA(!\comb_6|status.00~regout\ # !\comb_6|always2~1_combout\, \comb_6|clk_out~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_6|always2~1_combout\,
	datad => \comb_6|status.00~regout\,
	clk => \comb_6|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|meter~regout\);

\comb_5|baek[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|baek\(0) = DFFEA(!\comb_5|flag~regout\ & !\comb_5|baek\(0) & (\comb_6|status.01~regout\ # \comb_6|status.10~regout\), \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|flag~regout\,
	datab => \comb_5|baek\(0),
	datac => \comb_6|status.01~regout\,
	datad => \comb_6|status.10~regout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|baek\(0));

\comb_5|flag\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|flag~regout\ = DFFEA(!\reset~dataout\ & (\normal~dataout\ # \premium~dataout\), GLOBAL(\comb_4|clk_out~regout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \reset~dataout\,
	datac => \normal~dataout\,
	datad => \premium~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|flag~regout\);

\comb_5|Selector10~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector10~0_combout\ = \comb_5|baek\(2) & (\comb_5|baek\(3) # !\comb_5|baek\(0) # !\comb_5|baek\(1)) # !\comb_5|baek\(2) & (\comb_5|baek\(1) # \comb_5|baek\(0) # !\comb_5|baek\(3))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fe7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(2),
	datab => \comb_5|baek\(1),
	datac => \comb_5|baek\(0),
	datad => \comb_5|baek\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector10~0_combout\);

\comb_5|Selector8~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector8~0_combout\ = !\comb_5|Equal0~0_combout\ & !\comb_5|flag~regout\ & \comb_5|Selector10~0_combout\ & \comb_6|status.10~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Equal0~0_combout\,
	datab => \comb_5|flag~regout\,
	datac => \comb_5|Selector10~0_combout\,
	datad => \comb_6|status.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector8~0_combout\);

\comb_5|Selector8~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector8~1_combout\ = \comb_5|Selector8~0_combout\ & (\comb_5|baek\(3) $ (\comb_5|Add4~0_combout\ & \comb_5|baek\(2)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7800",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Add4~0_combout\,
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(3),
	datad => \comb_5|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector8~1_combout\);

\comb_5|baek[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|baek\(3) = DFFEA(\comb_5|Selector8~1_combout\ # \comb_6|status.01~regout\ & (\comb_5|Selector8~2_combout\ # \comb_5|flag~regout\), \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector8~2_combout\,
	datab => \comb_5|flag~regout\,
	datac => \comb_6|status.01~regout\,
	datad => \comb_5|Selector8~1_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|baek\(3));

\comb_5|Equal0~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Equal0~0_combout\ = !\comb_5|baek\(2) & !\comb_5|baek\(1) & \comb_5|baek\(3) & \comb_5|baek\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(2),
	datab => \comb_5|baek\(1),
	datac => \comb_5|baek\(3),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Equal0~0_combout\);

\comb_5|Selector10~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector10~2_combout\ = \comb_5|Selector10~0_combout\ & (\comb_5|Equal0~0_combout\ # \comb_5|baek\(1) $ !\comb_5|baek\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f900",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(1),
	datab => \comb_5|baek\(0),
	datac => \comb_5|Equal0~0_combout\,
	datad => \comb_5|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector10~2_combout\);

\comb_5|Selector10~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector10~1_combout\ = !\comb_5|Equal0~0_combout\ & \comb_6|status.01~regout\ & (\comb_5|baek\(1) $ \comb_5|baek\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Equal0~0_combout\,
	datab => \comb_5|baek\(1),
	datac => \comb_5|baek\(0),
	datad => \comb_6|status.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector10~1_combout\);

\comb_5|baek[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|baek\(1) = DFFEA(!\comb_5|flag~regout\ & (\comb_5|Selector10~1_combout\ # \comb_5|Selector10~2_combout\ & \comb_6|status.10~regout\), \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|flag~regout\,
	datab => \comb_5|Selector10~2_combout\,
	datac => \comb_6|status.10~regout\,
	datad => \comb_5|Selector10~1_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|baek\(1));

\comb_5|Add0~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add0~0_combout\ = \comb_5|baek\(2) $ (\comb_5|baek\(1) & \comb_5|baek\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|baek\(1),
	datac => \comb_5|baek\(0),
	datad => \comb_5|baek\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add0~0_combout\);

\comb_5|Selector14~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector14~1_combout\ = !\comb_5|Equal0~0_combout\ & \comb_6|status.01~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|Equal0~0_combout\,
	datad => \comb_6|status.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector14~1_combout\);

\comb_5|Add4~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add4~0_combout\ = \comb_5|baek\(1) # \comb_5|baek\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add4~0_combout\);

\comb_5|Selector9~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector9~0_combout\ = !\comb_5|cheon~24_combout\ & \comb_6|status.10~regout\ & (\comb_5|Add4~0_combout\ $ \comb_5|baek\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon~24_combout\,
	datab => \comb_5|Add4~0_combout\,
	datac => \comb_5|baek\(2),
	datad => \comb_6|status.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector9~0_combout\);

\comb_5|baek[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|baek\(2) = DFFEA(!\comb_5|flag~regout\ & (\comb_5|Selector9~0_combout\ # \comb_5|Add0~0_combout\ & \comb_5|Selector14~1_combout\), \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|flag~regout\,
	datab => \comb_5|Add0~0_combout\,
	datac => \comb_5|Selector14~1_combout\,
	datad => \comb_5|Selector9~0_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|baek\(2));

\comb_7|WideOr20~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr20~0_combout\ = \comb_5|baek\(1) & \comb_5|baek\(3) # !\comb_5|baek\(1) & (\comb_5|baek\(2) $ (!\comb_5|baek\(3) & \comb_5|baek\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a9ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(3),
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr20~0_combout\);

\comb_7|segout~79\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~79_combout\ = \comb_7|WideOr34~0_combout\ & !\comb_7|WideOr20~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|WideOr34~0_combout\ & (!\comb_7|WideOr20~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0357",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr34~0_combout\,
	datab => \comb_7|WideOr20~0_combout\,
	datac => \comb_7|cnt\(2),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~79_combout\);

\comb_5|Selector15~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector15~0_combout\ = !\comb_5|flag~regout\ & \comb_6|status.01~regout\ & (\comb_5|Equal0~0_combout\ $ \comb_5|cheon\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|flag~regout\,
	datab => \comb_5|Equal0~0_combout\,
	datac => \comb_5|cheon\(0),
	datad => \comb_6|status.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector15~0_combout\);

\comb_5|Selector15~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector15~1_combout\ = \comb_5|Selector15~0_combout\ # \comb_5|flag~regout\ & \comb_6|status.10~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|flag~regout\,
	datac => \comb_6|status.10~regout\,
	datad => \comb_5|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector15~1_combout\);

\comb_5|cheon[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|cheon\(0) = DFFEA(\comb_5|Selector15~1_combout\ # \comb_6|status.10~regout\ & (\comb_5|cheon~24_combout\ $ \comb_5|cheon\(0)), \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon~24_combout\,
	datab => \comb_5|cheon\(0),
	datac => \comb_6|status.10~regout\,
	datad => \comb_5|Selector15~1_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|cheon\(0));

\comb_5|Selector13~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector13~1_combout\ = !\comb_5|flag~regout\ & \comb_6|status.10~regout\ & (\comb_5|Equal0~0_combout\ # !\comb_5|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|flag~regout\,
	datab => \comb_5|Selector10~0_combout\,
	datac => \comb_5|Equal0~0_combout\,
	datad => \comb_6|status.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector13~1_combout\);

\comb_5|Selector14~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector14~7_combout\ = \comb_5|flag~regout\ & (\comb_6|status.01~regout\ # \comb_6|status.10~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_6|status.01~regout\,
	datac => \comb_6|status.10~regout\,
	datad => \comb_5|flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector14~7_combout\);

\comb_5|cheon~24\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|cheon~24_combout\ = \comb_5|Equal0~0_combout\ # !\comb_5|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|Selector10~0_combout\,
	datad => \comb_5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|cheon~24_combout\);

\comb_5|Selector14~6\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector14~15\ = !\comb_5|Selector14~5_combout\ & (\comb_5|cheon~24_combout\ # !\comb_5|cheon\(1) # !\comb_6|status.10~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5515",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector14~5_combout\,
	datab => \comb_6|status.10~regout\,
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector14~6_combout\,
	cascout => \comb_5|Selector14~15\);

\comb_5|Selector14~10\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector14~10_combout\ = (!\comb_5|Selector14~8_combout\ & !\comb_5|Selector14~7_combout\ & (!\comb_5|cheon\(1) # !\comb_5|Selector14~1_combout\)) & CASCADE(\comb_5|Selector14~15\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector14~8_combout\,
	datab => \comb_5|Selector14~7_combout\,
	datac => \comb_5|Selector14~1_combout\,
	datad => \comb_5|cheon\(1),
	cascin => \comb_5|Selector14~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector14~10_combout\);

\comb_5|cheon[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|cheon\(1) = DFFEA(!\comb_5|Selector14~10_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_5|Selector14~10_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|cheon\(1));

\comb_5|Add1~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add1~2_combout\ = \comb_5|cheon\(1) & \comb_5|cheon\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add1~2_combout\);

\comb_5|Selector13~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector13~11\ = \comb_5|cheon\(2) $ (!\comb_5|Add1~2_combout\ # !\comb_5|Equal0~0_combout\) # !\comb_5|Selector19~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "d777",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector19~0_combout\,
	datab => \comb_5|cheon\(2),
	datac => \comb_5|Equal0~0_combout\,
	datad => \comb_5|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector13~5_combout\,
	cascout => \comb_5|Selector13~11\);

\comb_5|Selector13~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector13~7_combout\ = (\comb_5|cheon\(2) & !\comb_5|Selector8~0_combout\ & (\comb_5|Add1~2_combout\ # !\comb_5|Selector13~1_combout\) # !\comb_5|cheon\(2) & (!\comb_5|Add1~2_combout\ # !\comb_5|Selector13~1_combout\)) & 
-- CASCADE(\comb_5|Selector13~11\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4737",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector8~0_combout\,
	datab => \comb_5|cheon\(2),
	datac => \comb_5|Selector13~1_combout\,
	datad => \comb_5|Add1~2_combout\,
	cascin => \comb_5|Selector13~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector13~7_combout\);

\comb_5|cheon[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|cheon\(2) = DFFEA(!\comb_5|Selector13~7_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_5|Selector13~7_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|cheon\(2));

\comb_5|Equal1~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Equal1~0_combout\ = \comb_5|cheon\(2) # \comb_5|cheon\(1) # !\comb_5|cheon\(0) # !\comb_5|cheon\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(3),
	datab => \comb_5|cheon\(0),
	datac => \comb_5|cheon\(2),
	datad => \comb_5|cheon\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Equal1~0_combout\);

\comb_5|sibman~29\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|sibman~29_combout\ = \comb_5|Equal1~0_combout\ # !\comb_5|Equal0~0_combout\ & \comb_5|Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|Equal0~0_combout\,
	datac => \comb_5|Selector10~0_combout\,
	datad => \comb_5|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|sibman~29_combout\);

\comb_5|Selector20~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector20~2_combout\ = \comb_5|sibman~28_combout\ & !\comb_5|sibman~29_combout\ & (\comb_6|status.10~regout\) # !\comb_5|sibman~28_combout\ & (\comb_6|status.01~regout\ # !\comb_5|sibman~29_combout\ & \comb_6|status.10~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman~28_combout\,
	datab => \comb_5|sibman~29_combout\,
	datac => \comb_6|status.01~regout\,
	datad => \comb_6|status.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector20~2_combout\);

\comb_5|Selector20~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector20~3_combout\ = !\comb_5|flag~regout\ & \comb_5|Selector20~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|flag~regout\,
	datad => \comb_5|Selector20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector20~3_combout\);

\comb_5|sibman~28\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|sibman~28_combout\ = \comb_5|Equal1~0_combout\ # !\comb_5|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|Equal0~0_combout\,
	datad => \comb_5|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|sibman~28_combout\);

\comb_5|Selector20~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector20~0_combout\ = \comb_5|sibman~29_combout\ & (\comb_6|status.10~regout\ # \comb_5|sibman~28_combout\ & \comb_6|status.01~regout\) # !\comb_5|sibman~29_combout\ & \comb_5|sibman~28_combout\ & \comb_6|status.01~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman~29_combout\,
	datab => \comb_5|sibman~28_combout\,
	datac => \comb_6|status.01~regout\,
	datad => \comb_6|status.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector20~0_combout\);

\comb_5|Selector20~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector20~1_combout\ = !\comb_5|flag~regout\ & \comb_5|Selector20~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|flag~regout\,
	datad => \comb_5|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector20~1_combout\);

\comb_5|sibman[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|sibman\(2) = DFFEA(\comb_5|sibman\(2) & (\comb_5|Selector20~1_combout\ # !\comb_5|Add3~0_combout\ & \comb_5|Selector20~3_combout\) # !\comb_5|sibman\(2) & \comb_5|Add3~0_combout\ & \comb_5|Selector20~3_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ec60",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Add3~0_combout\,
	datab => \comb_5|sibman\(2),
	datac => \comb_5|Selector20~3_combout\,
	datad => \comb_5|Selector20~1_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|sibman\(2));

\comb_5|Selector19~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector19~0_combout\ = !\comb_5|flag~regout\ & \comb_6|status.01~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|flag~regout\,
	datad => \comb_6|status.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector19~0_combout\);

\comb_5|Selector19~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector19~1_combout\ = !\comb_5|flag~regout\ & \comb_6|status.10~regout\ & (\comb_5|sibman~29_combout\ $ !\comb_5|man\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|flag~regout\,
	datab => \comb_5|sibman~29_combout\,
	datac => \comb_5|man\(0),
	datad => \comb_6|status.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector19~1_combout\);

\comb_5|man[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|man\(0) = DFFEA(\comb_5|Selector19~1_combout\ # \comb_5|Selector19~0_combout\ & (\comb_5|sibman~28_combout\ $ !\comb_5|man\(0)), \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff90",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman~28_combout\,
	datab => \comb_5|man\(0),
	datac => \comb_5|Selector19~0_combout\,
	datad => \comb_5|Selector19~1_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|man\(0));

\comb_5|Selector18~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector18~4_combout\ = \comb_5|sibman~28_combout\ & (\comb_5|man\(1)) # !\comb_5|sibman~28_combout\ & !\comb_5|Equal2~0_combout\ & (\comb_5|man\(0) $ \comb_5|man\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f104",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Equal2~0_combout\,
	datab => \comb_5|man\(0),
	datac => \comb_5|sibman~28_combout\,
	datad => \comb_5|man\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector18~4_combout\);

\comb_5|Selector18~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector18~11\ = \comb_5|Selector23~4_combout\ & !\comb_5|man\(1) & (!\comb_5|Selector19~0_combout\ # !\comb_5|Selector18~4_combout\) # !\comb_5|Selector23~4_combout\ & (!\comb_5|Selector19~0_combout\ # !\comb_5|Selector18~4_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0777",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector23~4_combout\,
	datab => \comb_5|man\(1),
	datac => \comb_5|Selector18~4_combout\,
	datad => \comb_5|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector18~5_combout\,
	cascout => \comb_5|Selector18~11\);

\comb_5|Selector18~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector18~7_combout\ = (\comb_5|Equal2~0_combout\ # \comb_5|man\(1) $ !\comb_5|man\(0) # !\comb_5|Selector23~5_combout\) & CASCADE(\comb_5|Selector18~11\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffd7",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector23~5_combout\,
	datab => \comb_5|man\(1),
	datac => \comb_5|man\(0),
	datad => \comb_5|Equal2~0_combout\,
	cascin => \comb_5|Selector18~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector18~7_combout\);

\comb_5|man[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|man\(1) = DFFEA(!\comb_5|Selector18~7_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_5|Selector18~7_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|man\(1));

\comb_5|Selector23~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector23~5_combout\ = !\comb_5|sibman~29_combout\ & !\comb_5|flag~regout\ & \comb_6|status.10~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|sibman~29_combout\,
	datac => \comb_5|flag~regout\,
	datad => \comb_6|status.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector23~5_combout\);

\comb_5|Add2~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add2~1_combout\ = \comb_5|man\(1) & \comb_5|man\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|man\(1),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add2~1_combout\);

\comb_5|Selector17~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector17~9\ = \comb_5|man\(2) $ (\comb_5|sibman~28_combout\ # !\comb_5|Add2~1_combout\) # !\comb_5|Selector19~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7d77",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector19~0_combout\,
	datab => \comb_5|man\(2),
	datac => \comb_5|sibman~28_combout\,
	datad => \comb_5|Add2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector17~4_combout\,
	cascout => \comb_5|Selector17~9\);

\comb_5|Selector17~6\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector17~6_combout\ = (\comb_5|man\(2) & !\comb_5|Selector23~4_combout\ & (\comb_5|Add2~1_combout\ # !\comb_5|Selector23~5_combout\) # !\comb_5|man\(2) & (!\comb_5|Add2~1_combout\ # !\comb_5|Selector23~5_combout\)) & 
-- CASCADE(\comb_5|Selector17~9\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4737",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector23~4_combout\,
	datab => \comb_5|man\(2),
	datac => \comb_5|Selector23~5_combout\,
	datad => \comb_5|Add2~1_combout\,
	cascin => \comb_5|Selector17~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector17~6_combout\);

\comb_5|man[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|man\(2) = DFFEA(!\comb_5|Selector17~6_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_5|Selector17~6_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|man\(2));

\comb_5|Add2~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add2~0_combout\ = \comb_5|man\(3) $ (\comb_5|man\(1) & \comb_5|man\(0) & \comb_5|man\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(1),
	datab => \comb_5|man\(0),
	datac => \comb_5|man\(2),
	datad => \comb_5|man\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add2~0_combout\);

\comb_5|Selector23~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector23~4_combout\ = !\comb_5|flag~regout\ & \comb_5|sibman~29_combout\ & \comb_6|status.10~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|flag~regout\,
	datac => \comb_5|sibman~29_combout\,
	datad => \comb_6|status.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector23~4_combout\);

\comb_5|Selector16~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector16~1_combout\ = \comb_5|Selector16~0_combout\ & (\comb_5|Selector19~0_combout\ # \comb_5|Selector23~4_combout\ & \comb_5|man\(3)) # !\comb_5|Selector16~0_combout\ & \comb_5|Selector23~4_combout\ & \comb_5|man\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector16~0_combout\,
	datab => \comb_5|Selector23~4_combout\,
	datac => \comb_5|man\(3),
	datad => \comb_5|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector16~1_combout\);

\comb_5|man[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|man\(3) = DFFEA(\comb_5|Selector16~1_combout\ # !\comb_5|Equal2~0_combout\ & \comb_5|Add2~0_combout\ & \comb_5|Selector23~5_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Equal2~0_combout\,
	datab => \comb_5|Add2~0_combout\,
	datac => \comb_5|Selector23~5_combout\,
	datad => \comb_5|Selector16~1_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|man\(3));

\comb_5|Equal2~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Equal2~0_combout\ = !\comb_5|man\(2) & !\comb_5|man\(1) & \comb_5|man\(3) & \comb_5|man\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|man\(2),
	datab => \comb_5|man\(1),
	datac => \comb_5|man\(3),
	datad => \comb_5|man\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Equal2~0_combout\);

\comb_5|Selector23~9\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector23~16\ = \comb_5|sibman\(0) $ (\comb_5|sibman~28_combout\ # !\comb_5|Equal2~0_combout\) # !\comb_5|Selector19~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7d77",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector19~0_combout\,
	datab => \comb_5|sibman\(0),
	datac => \comb_5|sibman~28_combout\,
	datad => \comb_5|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector23~9_combout\,
	cascout => \comb_5|Selector23~16\);

\comb_5|Selector23~11\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector23~11_combout\ = (\comb_5|sibman\(0) & !\comb_5|Selector23~4_combout\ & (\comb_5|Equal2~0_combout\ # !\comb_5|Selector23~5_combout\) # !\comb_5|sibman\(0) & (!\comb_5|Equal2~0_combout\ # !\comb_5|Selector23~5_combout\)) & 
-- CASCADE(\comb_5|Selector23~16\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4737",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector23~4_combout\,
	datab => \comb_5|sibman\(0),
	datac => \comb_5|Selector23~5_combout\,
	datad => \comb_5|Equal2~0_combout\,
	cascin => \comb_5|Selector23~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector23~11_combout\);

\comb_5|sibman[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|sibman\(0) = DFFEA(!\comb_5|Selector23~11_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_5|Selector23~11_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|sibman\(0));

\comb_5|Add3~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Add3~2_combout\ = \comb_5|Equal2~0_combout\ & \comb_5|sibman\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_5|Equal2~0_combout\,
	datad => \comb_5|sibman\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Add3~2_combout\);

\comb_5|Selector22~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector22~9\ = \comb_5|sibman\(1) & !\comb_5|Selector23~4_combout\ & (\comb_5|Add3~2_combout\ # !\comb_5|Selector23~5_combout\) # !\comb_5|sibman\(1) & (!\comb_5|Add3~2_combout\ # !\comb_5|Selector23~5_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4737",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector23~4_combout\,
	datab => \comb_5|sibman\(1),
	datac => \comb_5|Selector23~5_combout\,
	datad => \comb_5|Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector22~4_combout\,
	cascout => \comb_5|Selector22~9\);

\comb_5|Selector22~6\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|Selector22~6_combout\ = (\comb_5|sibman\(1) $ (\comb_5|sibman~28_combout\ # !\comb_5|Add3~2_combout\) # !\comb_5|Selector19~0_combout\) & CASCADE(\comb_5|Selector22~9\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7d77",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|Selector19~0_combout\,
	datab => \comb_5|sibman\(1),
	datac => \comb_5|sibman~28_combout\,
	datad => \comb_5|Add3~2_combout\,
	cascin => \comb_5|Selector22~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|Selector22~6_combout\);

\comb_5|sibman[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_5|sibman\(1) = DFFEA(!\comb_5|Selector22~6_combout\, \comb_6|meter~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_5|Selector22~6_combout\,
	clk => \comb_6|meter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|sibman\(1));

\comb_7|WideOr41~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr41~0_combout\ = \comb_5|sibman\(1) & \comb_5|sibman\(3) # !\comb_5|sibman\(1) & (\comb_5|sibman\(2) $ (!\comb_5|sibman\(3) & \comb_5|sibman\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a9ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|sibman\(3),
	datab => \comb_5|sibman\(2),
	datac => \comb_5|sibman\(1),
	datad => \comb_5|sibman\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr41~0_combout\);

\comb_7|WideOr27~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr27~0_combout\ = \comb_5|cheon\(1) & \comb_5|cheon\(3) # !\comb_5|cheon\(1) & (\comb_5|cheon\(2) $ (!\comb_5|cheon\(3) & \comb_5|cheon\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a9ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(3),
	datab => \comb_5|cheon\(2),
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr27~0_combout\);

\comb_7|segout~77\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~77_combout\ = !\comb_7|cnt\(2) & (!\comb_7|WideOr27~0_combout\ & \comb_7|cnt\(0) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1511",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|WideOr27~0_combout\,
	datad => \comb_7|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~77_combout\);

\comb_7|segout~78\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~78_combout\ = \comb_7|segout~77_combout\ # !\comb_7|cnt\(1) & !\comb_7|WideOr41~0_combout\ & \comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(1),
	datab => \comb_7|WideOr41~0_combout\,
	datac => \comb_7|cnt\(0),
	datad => \comb_7|segout~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~78_combout\);

\comb_7|segout~80\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~80_combout\ = \comb_7|segout~78_combout\ # !\comb_7|cnt\(0) & \comb_7|segout~79_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(0),
	datac => \comb_7|segout~79_combout\,
	datad => \comb_7|segout~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~80_combout\);

\comb_7|segout~81\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~81_combout\ = \comb_7|segout~80_combout\ # \comb_7|cnt\(2) & \comb_7|cnt\(1) & \comb_7|segout\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|segout\(0),
	datad => \comb_7|segout~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~81_combout\);

\comb_7|segout[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout\(0) = DFFEA(\bus~dataout\ & (\comb_7|segout~81_combout\) # !\bus~dataout\ & (\comb_7|segout~82_combout\ # !\comb_7|segout~174_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~174_combout\,
	datac => \comb_7|segout~82_combout\,
	datad => \comb_7|segout~81_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout\(0));

\comb_7|WideOr47~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr47~0_combout\ = \comb_6|one_meter\(3) & (\comb_6|one_meter\(2) # \comb_6|one_meter\(1)) # !\comb_6|one_meter\(3) & \comb_6|one_meter\(2) & (\comb_6|one_meter\(1) $ \comb_6|one_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ace8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|one_meter\(3),
	datab => \comb_6|one_meter\(2),
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr47~0_combout\);

\comb_7|WideOr54~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr54~0_combout\ = \comb_6|ten_meter\(3) & (\comb_6|ten_meter\(2) # \comb_6|ten_meter\(1)) # !\comb_6|ten_meter\(3) & \comb_6|ten_meter\(2) & (\comb_6|ten_meter\(1) $ \comb_6|ten_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ace8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(3),
	datab => \comb_6|ten_meter\(2),
	datac => \comb_6|ten_meter\(1),
	datad => \comb_6|ten_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr54~0_combout\);

\comb_7|segout~150\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~238\ = \comb_7|WideOr54~0_combout\ # \comb_7|cnt\(1) # \comb_7|cnt\(2) # !\comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|WideOr54~0_combout\,
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~150_combout\,
	cascout => \comb_7|segout~238\);

\comb_7|segout~175\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~175_combout\ = (\comb_7|Equal3~1_combout\ & (\comb_7|WideOr47~0_combout\) # !\comb_7|Equal3~1_combout\ & !\comb_7|segout\(1) # !\comb_7|segout~148_combout\) & CASCADE(\comb_7|segout~238\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f757",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|segout~148_combout\,
	datab => \comb_7|segout\(1),
	datac => \comb_7|Equal3~1_combout\,
	datad => \comb_7|WideOr47~0_combout\,
	cascin => \comb_7|segout~238\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~175_combout\);

\comb_7|segout~90\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~90_combout\ = !\comb_7|WideOr61~0_combout\ & !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & \comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr61~0_combout\,
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~90_combout\);

\comb_7|WideOr19~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr19~0_combout\ = \comb_5|baek\(3) & (\comb_5|baek\(2) # \comb_5|baek\(1)) # !\comb_5|baek\(3) & \comb_5|baek\(2) & (\comb_5|baek\(1) $ \comb_5|baek\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ace8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(3),
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr19~0_combout\);

\comb_7|segout~87\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~87_combout\ = \comb_7|WideOr33~0_combout\ & !\comb_7|WideOr19~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|WideOr33~0_combout\ & (!\comb_7|WideOr19~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0357",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr33~0_combout\,
	datab => \comb_7|WideOr19~0_combout\,
	datac => \comb_7|cnt\(2),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~87_combout\);

\comb_7|WideOr26~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr26~0_combout\ = \comb_5|cheon\(3) & (\comb_5|cheon\(2) # \comb_5|cheon\(1)) # !\comb_5|cheon\(3) & \comb_5|cheon\(2) & (\comb_5|cheon\(1) $ \comb_5|cheon\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ace8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(3),
	datab => \comb_5|cheon\(2),
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr26~0_combout\);

\comb_7|segout~85\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~85_combout\ = !\comb_7|cnt\(2) & (!\comb_7|WideOr26~0_combout\ & \comb_7|cnt\(0) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1511",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|WideOr26~0_combout\,
	datad => \comb_7|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~85_combout\);

\comb_7|segout~86\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~86_combout\ = \comb_7|segout~85_combout\ # !\comb_7|WideOr40~0_combout\ & !\comb_7|cnt\(1) & \comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr40~0_combout\,
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|segout~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~86_combout\);

\comb_7|segout~88\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~88_combout\ = \comb_7|segout~86_combout\ # !\comb_7|cnt\(0) & \comb_7|segout~87_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(0),
	datac => \comb_7|segout~87_combout\,
	datad => \comb_7|segout~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~88_combout\);

\comb_7|segout~89\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~89_combout\ = \comb_7|segout~88_combout\ # \comb_7|cnt\(2) & \comb_7|cnt\(1) & \comb_7|segout\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|segout\(1),
	datad => \comb_7|segout~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~89_combout\);

\comb_7|segout[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout\(1) = DFFEA(\bus~dataout\ & (\comb_7|segout~89_combout\) # !\bus~dataout\ & (\comb_7|segout~90_combout\ # !\comb_7|segout~175_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~175_combout\,
	datac => \comb_7|segout~90_combout\,
	datad => \comb_7|segout~89_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout\(1));

\comb_7|WideOr46~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr46~0_combout\ = \comb_6|one_meter\(2) & \comb_6|one_meter\(3) # !\comb_6|one_meter\(2) & \comb_6|one_meter\(1) & (\comb_6|one_meter\(3) # !\comb_6|one_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|one_meter\(3),
	datab => \comb_6|one_meter\(2),
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr46~0_combout\);

\comb_7|WideOr53~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr53~0_combout\ = \comb_6|ten_meter\(2) & \comb_6|ten_meter\(3) # !\comb_6|ten_meter\(2) & \comb_6|ten_meter\(1) & (\comb_6|ten_meter\(3) # !\comb_6|ten_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(3),
	datab => \comb_6|ten_meter\(2),
	datac => \comb_6|ten_meter\(1),
	datad => \comb_6|ten_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr53~0_combout\);

\comb_7|segout~152\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~241\ = \comb_7|WideOr53~0_combout\ # \comb_7|cnt\(1) # \comb_7|cnt\(2) # !\comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|WideOr53~0_combout\,
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~152_combout\,
	cascout => \comb_7|segout~241\);

\comb_7|segout~176\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~176_combout\ = (\comb_7|Equal3~1_combout\ & (\comb_7|WideOr46~0_combout\) # !\comb_7|Equal3~1_combout\ & !\comb_7|segout\(2) # !\comb_7|segout~148_combout\) & CASCADE(\comb_7|segout~241\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f757",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|segout~148_combout\,
	datab => \comb_7|segout\(2),
	datac => \comb_7|Equal3~1_combout\,
	datad => \comb_7|WideOr46~0_combout\,
	cascin => \comb_7|segout~241\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~176_combout\);

\comb_7|segout~98\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~98_combout\ = !\comb_7|WideOr60~0_combout\ & !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & \comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr60~0_combout\,
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~98_combout\);

\comb_7|WideOr18~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr18~0_combout\ = \comb_5|baek\(2) & \comb_5|baek\(3) # !\comb_5|baek\(2) & \comb_5|baek\(1) & (\comb_5|baek\(3) # !\comb_5|baek\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(3),
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr18~0_combout\);

\comb_7|segout~95\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~95_combout\ = \comb_7|WideOr32~0_combout\ & !\comb_7|WideOr18~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|WideOr32~0_combout\ & (!\comb_7|WideOr18~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0357",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr32~0_combout\,
	datab => \comb_7|WideOr18~0_combout\,
	datac => \comb_7|cnt\(2),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~95_combout\);

\comb_7|WideOr25~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr25~0_combout\ = \comb_5|cheon\(2) & \comb_5|cheon\(3) # !\comb_5|cheon\(2) & \comb_5|cheon\(1) & (\comb_5|cheon\(3) # !\comb_5|cheon\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "a8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(3),
	datab => \comb_5|cheon\(2),
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr25~0_combout\);

\comb_7|segout~93\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~93_combout\ = !\comb_7|cnt\(2) & (!\comb_7|WideOr25~0_combout\ & \comb_7|cnt\(0) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1511",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|WideOr25~0_combout\,
	datad => \comb_7|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~93_combout\);

\comb_7|segout~94\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~94_combout\ = \comb_7|segout~93_combout\ # !\comb_7|WideOr39~0_combout\ & !\comb_7|cnt\(1) & \comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr39~0_combout\,
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|segout~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~94_combout\);

\comb_7|segout~96\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~96_combout\ = \comb_7|segout~94_combout\ # !\comb_7|cnt\(0) & \comb_7|segout~95_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(0),
	datac => \comb_7|segout~95_combout\,
	datad => \comb_7|segout~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~96_combout\);

\comb_7|segout~97\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~97_combout\ = \comb_7|segout~96_combout\ # \comb_7|cnt\(2) & \comb_7|cnt\(1) & \comb_7|segout\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|segout\(2),
	datad => \comb_7|segout~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~97_combout\);

\comb_7|segout[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout\(2) = DFFEA(\bus~dataout\ & (\comb_7|segout~97_combout\) # !\bus~dataout\ & (\comb_7|segout~98_combout\ # !\comb_7|segout~176_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~176_combout\,
	datac => \comb_7|segout~98_combout\,
	datad => \comb_7|segout~97_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout\(2));

\comb_7|WideOr45~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr45~0_combout\ = \comb_6|one_meter\(2) & (\comb_6|one_meter\(3) # \comb_6|one_meter\(1) $ !\comb_6|one_meter\(0)) # !\comb_6|one_meter\(2) & (\comb_6|one_meter\(1) & \comb_6|one_meter\(3) # !\comb_6|one_meter\(1) & (\comb_6|one_meter\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ebac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|one_meter\(3),
	datab => \comb_6|one_meter\(2),
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr45~0_combout\);

\comb_7|WideOr52~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr52~0_combout\ = \comb_6|ten_meter\(2) & (\comb_6|ten_meter\(3) # \comb_6|ten_meter\(1) $ !\comb_6|ten_meter\(0)) # !\comb_6|ten_meter\(2) & (\comb_6|ten_meter\(1) & \comb_6|ten_meter\(3) # !\comb_6|ten_meter\(1) & (\comb_6|ten_meter\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ebac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(3),
	datab => \comb_6|ten_meter\(2),
	datac => \comb_6|ten_meter\(1),
	datad => \comb_6|ten_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr52~0_combout\);

\comb_7|segout~154\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~244\ = \comb_7|WideOr52~0_combout\ # \comb_7|cnt\(1) # \comb_7|cnt\(2) # !\comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|WideOr52~0_combout\,
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~154_combout\,
	cascout => \comb_7|segout~244\);

\comb_7|segout~177\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~177_combout\ = (\comb_7|Equal3~1_combout\ & (\comb_7|WideOr45~0_combout\) # !\comb_7|Equal3~1_combout\ & !\comb_7|segout\(3) # !\comb_7|segout~148_combout\) & CASCADE(\comb_7|segout~244\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f757",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|segout~148_combout\,
	datab => \comb_7|segout\(3),
	datac => \comb_7|Equal3~1_combout\,
	datad => \comb_7|WideOr45~0_combout\,
	cascin => \comb_7|segout~244\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~177_combout\);

\comb_7|segout~106\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~106_combout\ = !\comb_7|WideOr59~0_combout\ & !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & \comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr59~0_combout\,
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~106_combout\);

\comb_7|WideOr17~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr17~0_combout\ = \comb_5|baek\(2) & (\comb_5|baek\(3) # \comb_5|baek\(1) $ !\comb_5|baek\(0)) # !\comb_5|baek\(2) & (\comb_5|baek\(1) & \comb_5|baek\(3) # !\comb_5|baek\(1) & (\comb_5|baek\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ebac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(3),
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr17~0_combout\);

\comb_7|segout~103\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~103_combout\ = \comb_7|WideOr31~0_combout\ & !\comb_7|WideOr17~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|WideOr31~0_combout\ & (!\comb_7|WideOr17~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0357",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr31~0_combout\,
	datab => \comb_7|WideOr17~0_combout\,
	datac => \comb_7|cnt\(2),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~103_combout\);

\comb_7|WideOr24~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr24~0_combout\ = \comb_5|cheon\(2) & (\comb_5|cheon\(3) # \comb_5|cheon\(1) $ !\comb_5|cheon\(0)) # !\comb_5|cheon\(2) & (\comb_5|cheon\(1) & \comb_5|cheon\(3) # !\comb_5|cheon\(1) & (\comb_5|cheon\(0)))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ebac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(3),
	datab => \comb_5|cheon\(2),
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr24~0_combout\);

\comb_7|segout~101\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~101_combout\ = !\comb_7|cnt\(2) & (!\comb_7|WideOr24~0_combout\ & \comb_7|cnt\(0) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1511",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|WideOr24~0_combout\,
	datad => \comb_7|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~101_combout\);

\comb_7|segout~102\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~102_combout\ = \comb_7|segout~101_combout\ # !\comb_7|WideOr38~0_combout\ & !\comb_7|cnt\(1) & \comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr38~0_combout\,
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|segout~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~102_combout\);

\comb_7|segout~104\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~104_combout\ = \comb_7|segout~102_combout\ # !\comb_7|cnt\(0) & \comb_7|segout~103_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(0),
	datac => \comb_7|segout~103_combout\,
	datad => \comb_7|segout~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~104_combout\);

\comb_7|segout~105\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~105_combout\ = \comb_7|segout~104_combout\ # \comb_7|cnt\(2) & \comb_7|cnt\(1) & \comb_7|segout\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|segout\(3),
	datad => \comb_7|segout~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~105_combout\);

\comb_7|segout[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout\(3) = DFFEA(\bus~dataout\ & (\comb_7|segout~105_combout\) # !\bus~dataout\ & (\comb_7|segout~106_combout\ # !\comb_7|segout~177_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~177_combout\,
	datac => \comb_7|segout~106_combout\,
	datad => \comb_7|segout~105_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout\(3));

\comb_7|WideOr44~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr44~0_combout\ = \comb_6|one_meter\(0) # \comb_6|one_meter\(1) & \comb_6|one_meter\(3) # !\comb_6|one_meter\(1) & (\comb_6|one_meter\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|one_meter\(3),
	datab => \comb_6|one_meter\(2),
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr44~0_combout\);

\comb_7|WideOr51~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr51~0_combout\ = \comb_6|ten_meter\(0) # \comb_6|ten_meter\(1) & \comb_6|ten_meter\(3) # !\comb_6|ten_meter\(1) & (\comb_6|ten_meter\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(3),
	datab => \comb_6|ten_meter\(2),
	datac => \comb_6|ten_meter\(1),
	datad => \comb_6|ten_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr51~0_combout\);

\comb_7|segout~156\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~247\ = \comb_7|WideOr51~0_combout\ # \comb_7|cnt\(1) # \comb_7|cnt\(2) # !\comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|WideOr51~0_combout\,
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~156_combout\,
	cascout => \comb_7|segout~247\);

\comb_7|segout~178\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~178_combout\ = (\comb_7|Equal3~1_combout\ & (\comb_7|WideOr44~0_combout\) # !\comb_7|Equal3~1_combout\ & !\comb_7|segout\(4) # !\comb_7|segout~148_combout\) & CASCADE(\comb_7|segout~247\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f757",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|segout~148_combout\,
	datab => \comb_7|segout\(4),
	datac => \comb_7|Equal3~1_combout\,
	datad => \comb_7|WideOr44~0_combout\,
	cascin => \comb_7|segout~247\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~178_combout\);

\comb_7|segout~114\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~114_combout\ = !\comb_7|WideOr58~0_combout\ & !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & \comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr58~0_combout\,
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~114_combout\);

\comb_7|WideOr16~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr16~0_combout\ = \comb_5|baek\(0) # \comb_5|baek\(1) & \comb_5|baek\(3) # !\comb_5|baek\(1) & (\comb_5|baek\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(3),
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr16~0_combout\);

\comb_7|segout~111\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~111_combout\ = \comb_7|WideOr30~0_combout\ & !\comb_7|WideOr16~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|WideOr30~0_combout\ & (!\comb_7|WideOr16~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0357",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr30~0_combout\,
	datab => \comb_7|WideOr16~0_combout\,
	datac => \comb_7|cnt\(2),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~111_combout\);

\comb_7|WideOr23~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr23~0_combout\ = \comb_5|cheon\(0) # \comb_5|cheon\(1) & \comb_5|cheon\(3) # !\comb_5|cheon\(1) & (\comb_5|cheon\(2))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffac",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(3),
	datab => \comb_5|cheon\(2),
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr23~0_combout\);

\comb_7|segout~109\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~109_combout\ = !\comb_7|cnt\(2) & (!\comb_7|WideOr23~0_combout\ & \comb_7|cnt\(0) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1511",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|WideOr23~0_combout\,
	datad => \comb_7|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~109_combout\);

\comb_7|segout~110\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~110_combout\ = \comb_7|segout~109_combout\ # !\comb_7|WideOr37~0_combout\ & !\comb_7|cnt\(1) & \comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr37~0_combout\,
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|segout~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~110_combout\);

\comb_7|segout~112\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~112_combout\ = \comb_7|segout~110_combout\ # !\comb_7|cnt\(0) & \comb_7|segout~111_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(0),
	datac => \comb_7|segout~111_combout\,
	datad => \comb_7|segout~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~112_combout\);

\comb_7|segout~113\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~113_combout\ = \comb_7|segout~112_combout\ # \comb_7|cnt\(2) & \comb_7|cnt\(1) & \comb_7|segout\(4)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|segout\(4),
	datad => \comb_7|segout~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~113_combout\);

\comb_7|segout[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout\(4) = DFFEA(\bus~dataout\ & (\comb_7|segout~113_combout\) # !\bus~dataout\ & (\comb_7|segout~114_combout\ # !\comb_7|segout~178_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~178_combout\,
	datac => \comb_7|segout~114_combout\,
	datad => \comb_7|segout~113_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout\(4));

\comb_7|WideOr43~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr43~0_combout\ = \comb_6|one_meter\(2) & \comb_6|one_meter\(3) # !\comb_6|one_meter\(2) & (\comb_6|one_meter\(1) # !\comb_6|one_meter\(3) & \comb_6|one_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "b9b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|one_meter\(3),
	datab => \comb_6|one_meter\(2),
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr43~0_combout\);

\comb_7|WideOr50~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr50~0_combout\ = \comb_6|ten_meter\(2) & \comb_6|ten_meter\(3) # !\comb_6|ten_meter\(2) & (\comb_6|ten_meter\(1) # !\comb_6|ten_meter\(3) & \comb_6|ten_meter\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "b9b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|ten_meter\(3),
	datab => \comb_6|ten_meter\(2),
	datac => \comb_6|ten_meter\(1),
	datad => \comb_6|ten_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr50~0_combout\);

\comb_7|segout~158\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~250\ = \comb_7|WideOr50~0_combout\ # \comb_7|cnt\(1) # \comb_7|cnt\(2) # !\comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|WideOr50~0_combout\,
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~158_combout\,
	cascout => \comb_7|segout~250\);

\comb_7|segout~179\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~179_combout\ = (\comb_7|Equal3~1_combout\ & (\comb_7|WideOr43~0_combout\) # !\comb_7|Equal3~1_combout\ & !\comb_7|segout\(5) # !\comb_7|segout~148_combout\) & CASCADE(\comb_7|segout~250\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f757",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|segout~148_combout\,
	datab => \comb_7|segout\(5),
	datac => \comb_7|Equal3~1_combout\,
	datad => \comb_7|WideOr43~0_combout\,
	cascin => \comb_7|segout~250\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~179_combout\);

\comb_7|segout~122\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~122_combout\ = !\comb_7|WideOr57~0_combout\ & !\comb_7|cnt\(2) & !\comb_7|cnt\(0) & \comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr57~0_combout\,
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~122_combout\);

\comb_7|WideOr15~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr15~0_combout\ = \comb_5|baek\(2) & \comb_5|baek\(3) # !\comb_5|baek\(2) & (\comb_5|baek\(1) # !\comb_5|baek\(3) & \comb_5|baek\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "b9b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|baek\(3),
	datab => \comb_5|baek\(2),
	datac => \comb_5|baek\(1),
	datad => \comb_5|baek\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr15~0_combout\);

\comb_7|segout~119\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~119_combout\ = \comb_7|WideOr29~0_combout\ & !\comb_7|WideOr15~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|WideOr29~0_combout\ & (!\comb_7|WideOr15~0_combout\ & !\comb_7|cnt\(2) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0357",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr29~0_combout\,
	datab => \comb_7|WideOr15~0_combout\,
	datac => \comb_7|cnt\(2),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~119_combout\);

\comb_7|WideOr22~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr22~0_combout\ = \comb_5|cheon\(2) & \comb_5|cheon\(3) # !\comb_5|cheon\(2) & (\comb_5|cheon\(1) # !\comb_5|cheon\(3) & \comb_5|cheon\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "b9b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(3),
	datab => \comb_5|cheon\(2),
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr22~0_combout\);

\comb_7|segout~117\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~117_combout\ = !\comb_7|cnt\(2) & (!\comb_7|WideOr22~0_combout\ & \comb_7|cnt\(0) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1511",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|WideOr22~0_combout\,
	datad => \comb_7|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~117_combout\);

\comb_7|segout~118\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~118_combout\ = \comb_7|segout~117_combout\ # !\comb_7|WideOr36~0_combout\ & !\comb_7|cnt\(1) & \comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr36~0_combout\,
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|segout~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~118_combout\);

\comb_7|segout~120\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~120_combout\ = \comb_7|segout~118_combout\ # !\comb_7|cnt\(0) & \comb_7|segout~119_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(0),
	datac => \comb_7|segout~119_combout\,
	datad => \comb_7|segout~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~120_combout\);

\comb_7|segout~121\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~121_combout\ = \comb_7|segout~120_combout\ # \comb_7|cnt\(2) & \comb_7|cnt\(1) & \comb_7|segout\(5)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|segout\(5),
	datad => \comb_7|segout~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~121_combout\);

\comb_7|segout[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout\(5) = DFFEA(\bus~dataout\ & (\comb_7|segout~121_combout\) # !\bus~dataout\ & (\comb_7|segout~122_combout\ # !\comb_7|segout~179_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~179_combout\,
	datac => \comb_7|segout~122_combout\,
	datad => \comb_7|segout~121_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout\(5));

\comb_7|common~74\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~74_combout\ = !\comb_7|cnt\(2) & \comb_7|cnt\(0) & \comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~74_combout\);

\comb_7|WideOr21~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr21~0_combout\ = \comb_5|cheon\(2) & !\comb_5|cheon\(3) & (!\comb_5|cheon\(0) # !\comb_5|cheon\(1)) # !\comb_5|cheon\(2) & (\comb_5|cheon\(3) $ \comb_5|cheon\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|cheon\(3),
	datab => \comb_5|cheon\(2),
	datac => \comb_5|cheon\(1),
	datad => \comb_5|cheon\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr21~0_combout\);

\comb_7|Equal3~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|Equal3~0_combout\ = !\comb_7|cnt\(1) & !\comb_7|cnt\(0) & \comb_7|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|Equal3~0_combout\);

\comb_7|segout~171\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~261\ = \bus~dataout\ & (\comb_7|cnt\(1) # !\comb_7|cnt\(2) # !\comb_7|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(0),
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(1),
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~171_combout\,
	cascout => \comb_7|segout~261\);

\comb_7|segout~181\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~181_combout\ = (\comb_7|WideOr28~0_combout\ & (\comb_7|Equal3~0_combout\ # \comb_7|common~74_combout\ & \comb_7|WideOr21~0_combout\) # !\comb_7|WideOr28~0_combout\ & \comb_7|common~74_combout\ & \comb_7|WideOr21~0_combout\) & 
-- CASCADE(\comb_7|segout~261\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|WideOr28~0_combout\,
	datab => \comb_7|common~74_combout\,
	datac => \comb_7|WideOr21~0_combout\,
	datad => \comb_7|Equal3~0_combout\,
	cascin => \comb_7|segout~261\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~181_combout\);

\comb_7|WideOr56~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr56~0_combout\ = \comb_6|baek_meter\(2) & !\comb_6|baek_meter\(3) & (!\comb_6|baek_meter\(0) # !\comb_6|baek_meter\(1)) # !\comb_6|baek_meter\(2) & (\comb_6|baek_meter\(3) $ \comb_6|baek_meter\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|baek_meter\(3),
	datab => \comb_6|baek_meter\(2),
	datac => \comb_6|baek_meter\(1),
	datad => \comb_6|baek_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr56~0_combout\);

\comb_7|segout~148\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~148_combout\ = \comb_7|cnt\(2) # \comb_7|cnt\(0) $ !\comb_7|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(0),
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~148_combout\);

\comb_7|WideOr42~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|WideOr42~0_combout\ = \comb_6|one_meter\(2) & !\comb_6|one_meter\(3) & (!\comb_6|one_meter\(0) # !\comb_6|one_meter\(1)) # !\comb_6|one_meter\(2) & (\comb_6|one_meter\(3) $ \comb_6|one_meter\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_6|one_meter\(3),
	datab => \comb_6|one_meter\(2),
	datac => \comb_6|one_meter\(1),
	datad => \comb_6|one_meter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|WideOr42~0_combout\);

\comb_7|segout~160\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~160_combout\ = \comb_7|Equal3~1_combout\ & (\comb_7|WideOr42~0_combout\) # !\comb_7|Equal3~1_combout\ & \comb_7|segout\(6)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|Equal3~1_combout\,
	datac => \comb_7|segout\(6),
	datad => \comb_7|WideOr42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~160_combout\);

\comb_7|segout~163\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~256\ = !\comb_7|segout~162_combout\ & (\bus~dataout\ # !\comb_7|segout~160_combout\ # !\comb_7|segout~148_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5515",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|segout~162_combout\,
	datab => \comb_7|segout~148_combout\,
	datac => \comb_7|segout~160_combout\,
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~163_combout\,
	cascout => \comb_7|segout~256\);

\comb_7|segout~180\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout~180_combout\ = (!\comb_7|segout~166_combout\ & !\comb_7|segout~181_combout\ & (!\comb_7|WideOr56~0_combout\ # !\comb_7|common~60_combout\)) & CASCADE(\comb_7|segout~256\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|segout~166_combout\,
	datab => \comb_7|segout~181_combout\,
	datac => \comb_7|common~60_combout\,
	datad => \comb_7|WideOr56~0_combout\,
	cascin => \comb_7|segout~256\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|segout~180_combout\);

\comb_7|segout[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout\(6) = DFFEA(!\comb_7|segout~180_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_7|segout~180_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout\(6));

\comb_7|common~56\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~56_combout\ = \comb_7|cnt\(2) & !\comb_7|cnt\(1) & !\comb_7|cnt\(0) & \bus~dataout\ # !\comb_7|cnt\(2) & (\bus~dataout\ # !\comb_7|cnt\(0) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5715",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~56_combout\);

\comb_7|common[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common\(2) = DFFEA(\comb_7|common~56_combout\ # \comb_7|common\(2) & (\comb_7|cnt\(1) # !\bus~dataout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffd0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|cnt\(1),
	datac => \comb_7|common\(2),
	datad => \comb_7|common~56_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common\(2));

\comb_7|common~61\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~61_combout\ = !\bus~dataout\ & (\comb_7|common\(3) # !\comb_7|cnt\(2) & !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5501",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(1),
	datad => \comb_7|common\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~61_combout\);

\comb_7|common~58\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~58_combout\ = !\comb_7|Equal3~0_combout\ & (\comb_7|common\(3) # !\comb_7|cnt\(2) & \bus~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|Equal3~0_combout\,
	datab => \comb_7|cnt\(2),
	datac => \bus~dataout\,
	datad => \comb_7|common\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~58_combout\);

\comb_7|common[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common\(3) = DFFEA(\comb_7|common~61_combout\ # \comb_7|common~60_combout\ # \comb_7|common~59_combout\ # \comb_7|common~58_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|common~61_combout\,
	datab => \comb_7|common~60_combout\,
	datac => \comb_7|common~59_combout\,
	datad => \comb_7|common~58_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common\(3));

\comb_7|common~63\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~63_combout\ = \bus~dataout\ & (\comb_7|cnt\(2) & \comb_7|common\(4) # !\comb_7|cnt\(1)) # !\bus~dataout\ & (\comb_7|common\(4))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f744",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(1),
	datab => \bus~dataout\,
	datac => \comb_7|cnt\(2),
	datad => \comb_7|common\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~63_combout\);

\comb_7|common[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common\(4) = DFFEA(\comb_7|common~63_combout\ # !\comb_7|cnt\(2) & (!\comb_7|cnt\(0) # !\comb_7|cnt\(1)), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff15",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|common~63_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common\(4));

\comb_7|common~72\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~92\ = \comb_7|cnt\(2) & !\comb_7|common\(5) # !\comb_7|cnt\(2) & \comb_7|cnt\(1) & (!\comb_7|cnt\(0) # !\comb_7|common\(5))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5750",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|common\(5),
	datab => \comb_7|cnt\(0),
	datac => \comb_7|cnt\(2),
	datad => \comb_7|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~72_combout\,
	cascout => \comb_7|common~92\);

\comb_7|common~76\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~76_combout\ = (\comb_7|cnt\(2) & (\comb_7|cnt\(1)) # !\comb_7|cnt\(2) & (!\comb_7|cnt\(1) # !\comb_7|cnt\(0)) # !\bus~dataout\) & CASCADE(\comb_7|common~92\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f75f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|cnt\(0),
	datac => \comb_7|cnt\(2),
	datad => \comb_7|cnt\(1),
	cascin => \comb_7|common~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~76_combout\);

\comb_7|common[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common\(5) = DFFEA(!\comb_7|common~76_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_7|common~76_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common\(5));

\comb_7|common~66\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common~66_combout\ = \bus~dataout\ & (\comb_7|cnt\(1) $ !\comb_7|cnt\(2)) # !\bus~dataout\ & (\comb_7|cnt\(0) # \comb_7|cnt\(2) # !\comb_7|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f54f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|cnt\(0),
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|common~66_combout\);

\comb_7|Equal3~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|Equal3~2_combout\ = !\comb_7|cnt\(2) & !\comb_7|cnt\(1) & \comb_7|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_7|cnt\(2),
	datac => \comb_7|cnt\(1),
	datad => \comb_7|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_7|Equal3~2_combout\);

\comb_7|common[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common\(6) = DFFEA(!\comb_7|Equal3~2_combout\ & (\comb_7|Equal3~1_combout\ # \comb_7|common\(6)) # !\comb_7|common~66_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7775",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|common~66_combout\,
	datab => \comb_7|Equal3~2_combout\,
	datac => \comb_7|Equal3~1_combout\,
	datad => \comb_7|common\(6),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common\(6));

\comb_7|common[7]\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common\(7) = DFFEA(\comb_7|Equal3~2_combout\ # !\comb_7|Equal3~1_combout\ & \comb_7|common\(7) # !\comb_7|common~66_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff75",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|common~66_combout\,
	datab => \comb_7|Equal3~1_combout\,
	datac => \comb_7|common\(7),
	datad => \comb_7|Equal3~2_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common\(7));

\comb_7|segout[0]~263\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout[0]~263_regout\ = DFFEA(\bus~dataout\ & (\comb_7|segout~81_combout\) # !\bus~dataout\ & (\comb_7|segout~82_combout\ # !\comb_7|segout~174_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~174_combout\,
	datac => \comb_7|segout~82_combout\,
	datad => \comb_7|segout~81_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout[0]~263_regout\);

\comb_7|segout[1]~264\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout[1]~264_regout\ = DFFEA(\bus~dataout\ & (\comb_7|segout~89_combout\) # !\bus~dataout\ & (\comb_7|segout~90_combout\ # !\comb_7|segout~175_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~175_combout\,
	datac => \comb_7|segout~90_combout\,
	datad => \comb_7|segout~89_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout[1]~264_regout\);

\comb_7|segout[2]~265\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout[2]~265_regout\ = DFFEA(\bus~dataout\ & (\comb_7|segout~97_combout\) # !\bus~dataout\ & (\comb_7|segout~98_combout\ # !\comb_7|segout~176_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~176_combout\,
	datac => \comb_7|segout~98_combout\,
	datad => \comb_7|segout~97_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout[2]~265_regout\);

\comb_7|segout[3]~266\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout[3]~266_regout\ = DFFEA(\bus~dataout\ & (\comb_7|segout~105_combout\) # !\bus~dataout\ & (\comb_7|segout~106_combout\ # !\comb_7|segout~177_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~177_combout\,
	datac => \comb_7|segout~106_combout\,
	datad => \comb_7|segout~105_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout[3]~266_regout\);

\comb_7|segout[4]~267\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout[4]~267_regout\ = DFFEA(\bus~dataout\ & (\comb_7|segout~113_combout\) # !\bus~dataout\ & (\comb_7|segout~114_combout\ # !\comb_7|segout~178_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~178_combout\,
	datac => \comb_7|segout~114_combout\,
	datad => \comb_7|segout~113_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout[4]~267_regout\);

\comb_7|segout[5]~268\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout[5]~268_regout\ = DFFEA(\bus~dataout\ & (\comb_7|segout~121_combout\) # !\bus~dataout\ & (\comb_7|segout~122_combout\ # !\comb_7|segout~179_combout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb51",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|segout~179_combout\,
	datac => \comb_7|segout~122_combout\,
	datad => \comb_7|segout~121_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout[5]~268_regout\);

\comb_7|segout[6]~269\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|segout[6]~269_regout\ = DFFEA(!\comb_7|segout~180_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_7|segout~180_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|segout[6]~269_regout\);

\comb_7|common[2]~95\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common[2]~95_regout\ = DFFEA(\comb_7|common~56_combout\ # \comb_7|common\(2) & (\comb_7|cnt\(1) # !\bus~dataout\), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffd0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_7|cnt\(1),
	datac => \comb_7|common\(2),
	datad => \comb_7|common~56_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common[2]~95_regout\);

\comb_7|common[3]~96\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common[3]~96_regout\ = DFFEA(\comb_7|common~61_combout\ # \comb_7|common~60_combout\ # \comb_7|common~59_combout\ # \comb_7|common~58_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|common~61_combout\,
	datab => \comb_7|common~60_combout\,
	datac => \comb_7|common~59_combout\,
	datad => \comb_7|common~58_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common[3]~96_regout\);

\comb_7|common[4]~97\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common[4]~97_regout\ = DFFEA(\comb_7|common~63_combout\ # !\comb_7|cnt\(2) & (!\comb_7|cnt\(0) # !\comb_7|cnt\(1)), GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff15",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|cnt\(2),
	datab => \comb_7|cnt\(1),
	datac => \comb_7|cnt\(0),
	datad => \comb_7|common~63_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common[4]~97_regout\);

\comb_7|common[5]~98\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common[5]~98_regout\ = DFFEA(!\comb_7|common~76_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_7|common~76_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common[5]~98_regout\);

\comb_7|common[6]~99\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common[6]~99_regout\ = DFFEA(!\comb_7|Equal3~2_combout\ & (\comb_7|Equal3~1_combout\ # \comb_7|common\(6)) # !\comb_7|common~66_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7775",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|common~66_combout\,
	datab => \comb_7|Equal3~2_combout\,
	datac => \comb_7|Equal3~1_combout\,
	datad => \comb_7|common\(6),
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common[6]~99_regout\);

\comb_7|common[7]~100\ : flex10ke_lcell
-- Equation(s):
-- \comb_7|common[7]~100_regout\ = DFFEA(\comb_7|Equal3~2_combout\ # !\comb_7|Equal3~1_combout\ & \comb_7|common\(7) # !\comb_7|common~66_combout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff75",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_7|common~66_combout\,
	datab => \comb_7|Equal3~1_combout\,
	datac => \comb_7|common\(7),
	datad => \comb_7|Equal3~2_combout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_7|common[7]~100_regout\);

\comb_9|cnt_clk[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|cnt_clk\(0) = DFFEA(!\comb_9|cnt_clk\(0), GLOBAL(\clk~dataout\), !\reset~dataout\, , , , )
-- \comb_9|Add0|adder|result_node|cs_buffer[0]~COUT\ = CARRY(\comb_9|cnt_clk\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(0),
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_9|cnt_clk\(0),
	cout => \comb_9|Add0|adder|result_node|cs_buffer[0]~COUT\);

\comb_9|Add0|adder|result_node|cs_buffer[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Add0|adder|result_node|cs_buffer\(1) = \comb_9|cnt_clk\(1) $ \comb_9|Add0|adder|result_node|cs_buffer[0]~COUT\
-- \comb_9|Add0|adder|result_node|cs_buffer[1]~COUT\ = CARRY(\comb_9|cnt_clk\(1) & \comb_9|Add0|adder|result_node|cs_buffer[0]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(1),
	cin => \comb_9|Add0|adder|result_node|cs_buffer[0]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Add0|adder|result_node|cs_buffer\(1),
	cout => \comb_9|Add0|adder|result_node|cs_buffer[1]~COUT\);

\comb_9|Add0|adder|result_node|cs_buffer[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Add0|adder|result_node|cs_buffer\(2) = \comb_9|cnt_clk\(2) $ \comb_9|Add0|adder|result_node|cs_buffer[1]~COUT\
-- \comb_9|Add0|adder|result_node|cs_buffer[2]~COUT\ = CARRY(\comb_9|cnt_clk\(2) & \comb_9|Add0|adder|result_node|cs_buffer[1]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(2),
	cin => \comb_9|Add0|adder|result_node|cs_buffer[1]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Add0|adder|result_node|cs_buffer\(2),
	cout => \comb_9|Add0|adder|result_node|cs_buffer[2]~COUT\);

\comb_9|cnt_clk[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|cnt_clk\(2) = DFFEA(\comb_9|Add0|adder|result_node|cs_buffer\(2), GLOBAL(\clk~dataout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_9|Add0|adder|result_node|cs_buffer\(2),
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_9|cnt_clk\(2));

\comb_9|Add0|adder|result_node|cs_buffer[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Add0|adder|result_node|cs_buffer\(3) = \comb_9|cnt_clk\(3) $ \comb_9|Add0|adder|result_node|cs_buffer[2]~COUT\
-- \comb_9|Add0|adder|result_node|cs_buffer[3]~COUT\ = CARRY(\comb_9|cnt_clk\(3) & \comb_9|Add0|adder|result_node|cs_buffer[2]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(3),
	cin => \comb_9|Add0|adder|result_node|cs_buffer[2]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Add0|adder|result_node|cs_buffer\(3),
	cout => \comb_9|Add0|adder|result_node|cs_buffer[3]~COUT\);

\comb_9|cnt_clk[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|cnt_clk\(3) = DFFEA(\comb_9|Add0|adder|result_node|cs_buffer\(3) & (!\comb_9|cnt_clk\(0) # !\comb_9|Decoder0~0_combout\), GLOBAL(\clk~dataout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|Decoder0~0_combout\,
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|Add0|adder|result_node|cs_buffer\(3),
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_9|cnt_clk\(3));

\comb_9|Add0|adder|unreg_res_node[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Add0|adder|unreg_res_node\(4) = \comb_9|Add0|adder|result_node|cs_buffer[3]~COUT\ $ \comb_9|cnt_clk\(4)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_9|cnt_clk\(4),
	cin => \comb_9|Add0|adder|result_node|cs_buffer[3]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Add0|adder|unreg_res_node\(4));

\comb_9|cnt_clk[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|cnt_clk\(4) = DFFEA(\comb_9|Add0|adder|unreg_res_node\(4), GLOBAL(\clk~dataout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_9|Add0|adder|unreg_res_node\(4),
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_9|cnt_clk\(4));

\comb_9|Decoder0~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Decoder0~0_combout\ = !\comb_9|cnt_clk\(2) & !\comb_9|cnt_clk\(1) & !\comb_9|cnt_clk\(4) & \comb_9|cnt_clk\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(2),
	datab => \comb_9|cnt_clk\(1),
	datac => \comb_9|cnt_clk\(4),
	datad => \comb_9|cnt_clk\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Decoder0~0_combout\);

\comb_9|cnt_clk[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|cnt_clk\(1) = DFFEA(\comb_9|Add0|adder|result_node|cs_buffer\(1) & (!\comb_9|cnt_clk\(0) # !\comb_9|Decoder0~0_combout\), GLOBAL(\clk~dataout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|Decoder0~0_combout\,
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|Add0|adder|result_node|cs_buffer\(1),
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_9|cnt_clk\(1));

\comb_9|Mux13~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux13~0_combout\ = !\comb_9|cnt_clk\(3) & !\comb_9|cnt_clk\(4) & \comb_9|cnt_clk\(0) & \comb_9|cnt_clk\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(3),
	datab => \comb_9|cnt_clk\(4),
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux13~0_combout\);

\comb_9|dot_d[0]~14\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_d[0]~14_combout\ = \reset~dataout\ # !\comb_9|cnt_clk\(1) & \comb_9|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(1),
	datac => \comb_9|Mux13~0_combout\,
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_d[0]~14_combout\);

\comb_9|Mux12~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux12~0_combout\ = !\comb_9|cnt_clk\(3) & !\comb_9|cnt_clk\(4) & \comb_9|cnt_clk\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(3),
	datac => \comb_9|cnt_clk\(4),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux12~0_combout\);

\comb_9|dot_d[1]~15\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_d[1]~15_combout\ = \reset~dataout\ # !\comb_9|cnt_clk\(0) & \comb_9|Mux12~0_combout\ & \comb_9|cnt_clk\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(0),
	datab => \comb_9|Mux12~0_combout\,
	datac => \comb_9|cnt_clk\(2),
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_d[1]~15_combout\);

\comb_9|Mux11~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux11~0_combout\ = !\comb_9|cnt_clk\(3) & !\comb_9|cnt_clk\(4) & (\comb_9|cnt_clk\(0) # \comb_9|cnt_clk\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(3),
	datab => \comb_9|cnt_clk\(4),
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux11~0_combout\);

\comb_9|Mux11~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux11~1_combout\ = \reset~dataout\ # \comb_9|Mux11~0_combout\ & \comb_9|cnt_clk\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|Mux11~0_combout\,
	datac => \comb_9|cnt_clk\(2),
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux11~1_combout\);

\comb_8|clk_6h\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|clk_6h~regout\ = DFFEA(!\comb_8|clk_6h~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , \comb_8|Equal0~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|Equal0~1_combout\,
	datad => \comb_8|clk_6h~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|clk_6h~regout\);

\comb_8|cnt_data[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_data\(0) = DFFEA(!\comb_8|cnt_data\(0), \comb_8|clk_6h~regout\, !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_8|cnt_data\(0),
	aclr => \reset~dataout\,
	clk => \comb_8|clk_6h~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_data\(0));

\comb_8|cnt_data[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|cnt_data\(1) = DFFEA(\comb_8|cnt_data\(1) $ \comb_8|cnt_data\(0), \comb_8|clk_6h~regout\, !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_8|cnt_data\(1),
	datad => \comb_8|cnt_data\(0),
	aclr => \reset~dataout\,
	clk => \comb_8|clk_6h~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|cnt_data\(1));

\comb_8|Mux4~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_8|Mux4~3_combout\ = \comb_8|cnt_data\(1) & \comb_8|cnt_data\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_8|cnt_data\(1),
	datad => \comb_8|cnt_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_8|Mux4~3_combout\);

\comb_9|Mux10~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux10~0_combout\ = \comb_9|cnt_clk\(0) & (\comb_9|cnt_clk\(2)) # !\comb_9|cnt_clk\(0) & !\comb_9|cnt_clk\(1) & \comb_8|Mux4~3_combout\ & !\comb_9|cnt_clk\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f004",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(1),
	datab => \comb_8|Mux4~3_combout\,
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux10~0_combout\);

\comb_9|Mux10~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux10~1_combout\ = !\comb_9|cnt_clk\(4) & !\reset~dataout\ & !\comb_9|cnt_clk\(3) & \comb_9|Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(4),
	datab => \reset~dataout\,
	datac => \comb_9|cnt_clk\(3),
	datad => \comb_9|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux10~1_combout\);

\comb_9|Mux9~10\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux9~10_combout\ = \comb_9|cnt_clk\(2) # \comb_8|cnt_data\(1) & (\comb_9|cnt_clk\(0) $ !\comb_8|cnt_data\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "eaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(2),
	datab => \comb_8|cnt_data\(1),
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_8|cnt_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux9~10_combout\);

\comb_9|Mux9~8\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux9~8_combout\ = \comb_9|cnt_clk\(0) & (\comb_9|cnt_clk\(2)) # !\comb_9|cnt_clk\(0) & \comb_8|Mux4~3_combout\ & \comb_9|cnt_clk\(1) & !\comb_9|cnt_clk\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f008",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|Mux4~3_combout\,
	datab => \comb_9|cnt_clk\(1),
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux9~8_combout\);

\comb_9|Mux7~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux7~0_combout\ = !\comb_9|cnt_clk\(4) & !\reset~dataout\ & !\comb_9|cnt_clk\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(4),
	datac => \reset~dataout\,
	datad => \comb_9|cnt_clk\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux7~0_combout\);

\comb_9|Mux9~9\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux9~9_combout\ = \comb_9|Mux7~0_combout\ & (\comb_9|Mux9~8_combout\ # !\comb_9|cnt_clk\(1) & \comb_9|Mux9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(1),
	datab => \comb_9|Mux9~10_combout\,
	datac => \comb_9|Mux9~8_combout\,
	datad => \comb_9|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux9~9_combout\);

\comb_9|Mux8~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux8~1_combout\ = \comb_8|cnt_data\(0) & !\comb_9|cnt_clk\(0) & !\comb_8|cnt_data\(1) & !\comb_9|cnt_clk\(1) # !\comb_8|cnt_data\(0) & (\comb_8|cnt_data\(1) & \comb_9|cnt_clk\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5002",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|cnt_data\(0),
	datab => \comb_9|cnt_clk\(0),
	datac => \comb_8|cnt_data\(1),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux8~1_combout\);

\comb_9|Mux8~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux8~0_combout\ = \comb_9|cnt_clk\(0) & (!\comb_8|cnt_data\(0) & \comb_8|cnt_data\(1) # !\comb_9|dot_scan[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7500",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|dot_scan[1]~10_combout\,
	datab => \comb_8|cnt_data\(0),
	datac => \comb_8|cnt_data\(1),
	datad => \comb_9|cnt_clk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux8~0_combout\);

\comb_9|Mux8~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux8~2_combout\ = \comb_9|Mux7~0_combout\ & (\comb_9|Mux8~0_combout\ # !\comb_9|cnt_clk\(2) & \comb_9|Mux8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(2),
	datab => \comb_9|Mux8~1_combout\,
	datac => \comb_9|Mux8~0_combout\,
	datad => \comb_9|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux8~2_combout\);

\comb_9|Mux7~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux7~2_combout\ = !\comb_9|cnt_clk\(0) & !\comb_9|cnt_clk\(2) & (\comb_9|cnt_clk\(1) # !\comb_8|cnt_data\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1101",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(0),
	datab => \comb_9|cnt_clk\(2),
	datac => \comb_8|cnt_data\(0),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux7~2_combout\);

\comb_9|Mux7~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux7~1_combout\ = \comb_9|cnt_clk\(0) & (\comb_9|cnt_clk\(2) # !\comb_8|cnt_data\(1) & !\comb_9|cnt_clk\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|cnt_data\(1),
	datab => \comb_9|cnt_clk\(1),
	datac => \comb_9|cnt_clk\(2),
	datad => \comb_9|cnt_clk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux7~1_combout\);

\comb_9|Mux7~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux7~3_combout\ = \comb_9|Mux7~0_combout\ & (\comb_9|Mux7~1_combout\ # !\comb_8|cnt_data\(1) & \comb_9|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|cnt_data\(1),
	datab => \comb_9|Mux7~2_combout\,
	datac => \comb_9|Mux7~1_combout\,
	datad => \comb_9|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux7~3_combout\);

\comb_9|Mux10~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux10~4_combout\ = !\comb_9|cnt_clk\(4) & !\reset~dataout\ & !\comb_9|cnt_clk\(3) & \comb_9|Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(4),
	datab => \reset~dataout\,
	datac => \comb_9|cnt_clk\(3),
	datad => \comb_9|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux10~4_combout\);

\comb_9|Mux5~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux5~0_combout\ = !\comb_9|cnt_clk\(0) & !\comb_9|cnt_clk\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux5~0_combout\);

\comb_9|Mux5~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux5~1_combout\ = \comb_9|Mux5~0_combout\ & (\comb_9|cnt_clk\(1) & !\comb_9|cnt_clk\(3) & \comb_8|Mux4~3_combout\ # !\comb_9|cnt_clk\(1) & \comb_9|cnt_clk\(3))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(1),
	datab => \comb_9|cnt_clk\(3),
	datac => \comb_8|Mux4~3_combout\,
	datad => \comb_9|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux5~1_combout\);

\comb_9|Mux5~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux5~2_combout\ = \comb_9|Mux5~1_combout\ # !\comb_9|cnt_clk\(1) & !\comb_9|cnt_clk\(3) & \comb_9|Mux9~10_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(1),
	datab => \comb_9|cnt_clk\(3),
	datac => \comb_9|Mux9~10_combout\,
	datad => \comb_9|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux5~2_combout\);

\comb_9|Mux5~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux5~3_combout\ = !\comb_9|cnt_clk\(4) & !\reset~dataout\ & \comb_9|Mux5~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(4),
	datac => \reset~dataout\,
	datad => \comb_9|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux5~3_combout\);

\comb_9|Mux4~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux4~1_combout\ = \comb_9|cnt_clk\(0) & (\comb_9|cnt_clk\(1) # !\comb_8|cnt_data\(0) & \comb_8|cnt_data\(1)) # !\comb_9|cnt_clk\(0) & (\comb_8|cnt_data\(0) & !\comb_8|cnt_data\(1) & !\comb_9|cnt_clk\(1) # !\comb_8|cnt_data\(0) & 
-- \comb_8|cnt_data\(1) & \comb_9|cnt_clk\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f442",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|cnt_data\(0),
	datab => \comb_8|cnt_data\(1),
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux4~1_combout\);

\comb_9|Mux4~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux4~0_combout\ = !\comb_9|cnt_clk\(1) & \comb_9|cnt_clk\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_9|cnt_clk\(1),
	datad => \comb_9|cnt_clk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux4~0_combout\);

\comb_9|Mux4~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux4~2_combout\ = \comb_9|cnt_clk\(2) & !\comb_9|cnt_clk\(3) & (\comb_9|Mux4~0_combout\) # !\comb_9|cnt_clk\(2) & (\comb_9|cnt_clk\(3) & (\comb_9|Mux4~0_combout\) # !\comb_9|cnt_clk\(3) & \comb_9|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7610",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(2),
	datab => \comb_9|cnt_clk\(3),
	datac => \comb_9|Mux4~1_combout\,
	datad => \comb_9|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux4~2_combout\);

\comb_9|Mux4~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux4~3_combout\ = !\comb_9|cnt_clk\(4) & !\reset~dataout\ & \comb_9|Mux4~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(4),
	datac => \reset~dataout\,
	datad => \comb_9|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux4~3_combout\);

\comb_9|Mux3~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux3~1_combout\ = \comb_9|cnt_clk\(2) & (\comb_9|cnt_clk\(1)) # !\comb_9|cnt_clk\(2) & !\comb_8|cnt_data\(1) & (\comb_9|cnt_clk\(1) # !\comb_8|cnt_data\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f501",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|cnt_data\(1),
	datab => \comb_8|cnt_data\(0),
	datac => \comb_9|cnt_clk\(2),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux3~1_combout\);

\comb_9|dot_scan[1]~10\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[1]~10_combout\ = !\comb_9|cnt_clk\(2) & !\comb_9|cnt_clk\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_9|cnt_clk\(2),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[1]~10_combout\);

\comb_9|Mux3~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux3~0_combout\ = \comb_9|dot_scan[1]~10_combout\ & \comb_9|cnt_clk\(0) & (\comb_9|cnt_clk\(3) # !\comb_8|cnt_data\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_8|cnt_data\(1),
	datab => \comb_9|cnt_clk\(3),
	datac => \comb_9|dot_scan[1]~10_combout\,
	datad => \comb_9|cnt_clk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux3~0_combout\);

\comb_9|Mux3~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux3~2_combout\ = \comb_9|Mux3~0_combout\ # !\comb_9|cnt_clk\(0) & !\comb_9|cnt_clk\(3) & \comb_9|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(0),
	datab => \comb_9|cnt_clk\(3),
	datac => \comb_9|Mux3~1_combout\,
	datad => \comb_9|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux3~2_combout\);

\comb_9|Mux3~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux3~3_combout\ = !\comb_9|cnt_clk\(4) & !\reset~dataout\ & \comb_9|Mux3~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(4),
	datac => \reset~dataout\,
	datad => \comb_9|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux3~3_combout\);

\comb_9|Mux2~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux2~0_combout\ = !\comb_9|cnt_clk\(0) & (\comb_9|cnt_clk\(3) & !\comb_9|cnt_clk\(2) & !\comb_9|cnt_clk\(1) # !\comb_9|cnt_clk\(3) & \comb_9|cnt_clk\(2) & \comb_9|cnt_clk\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0042",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(3),
	datab => \comb_9|cnt_clk\(2),
	datac => \comb_9|cnt_clk\(1),
	datad => \comb_9|cnt_clk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux2~0_combout\);

\comb_9|Mux2~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|Mux2~1_combout\ = \reset~dataout\ # !\comb_9|cnt_clk\(4) & \comb_9|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(4),
	datac => \comb_9|Mux2~0_combout\,
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|Mux2~1_combout\);

\comb_9|dot_d[12]~16\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_d[12]~16_combout\ = \reset~dataout\ # \comb_9|Mux12~0_combout\ & \comb_9|cnt_clk\(0) & \comb_9|cnt_clk\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|Mux12~0_combout\,
	datab => \comb_9|cnt_clk\(0),
	datac => \comb_9|cnt_clk\(2),
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_d[12]~16_combout\);

\dot_d[13]~0\ : flex10ke_lcell
-- Equation(s):
-- \dot_d[13]~0_combout\ = \reset~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dot_d[13]~0_combout\);

\comb_9|dot_scan[0]~11\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[0]~11_combout\ = \comb_9|cnt_clk\(2) # \comb_9|cnt_clk\(1) # \comb_9|cnt_clk\(0) # !\comb_9|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|Mux7~0_combout\,
	datab => \comb_9|cnt_clk\(2),
	datac => \comb_9|cnt_clk\(1),
	datad => \comb_9|cnt_clk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[0]~11_combout\);

\comb_9|dot_scan[1]~12\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[1]~12_combout\ = \comb_9|cnt_clk\(2) # \comb_9|cnt_clk\(1) # !\comb_9|Mux7~0_combout\ # !\comb_9|cnt_clk\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(0),
	datab => \comb_9|Mux7~0_combout\,
	datac => \comb_9|cnt_clk\(2),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[1]~12_combout\);

\comb_9|dot_scan[2]~13\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[2]~13_combout\ = \comb_9|cnt_clk\(0) # \comb_9|cnt_clk\(2) # !\comb_9|cnt_clk\(1) # !\comb_9|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|Mux7~0_combout\,
	datab => \comb_9|cnt_clk\(1),
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[2]~13_combout\);

\comb_9|dot_scan[3]~14\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[3]~14_combout\ = \comb_9|cnt_clk\(2) # !\comb_9|cnt_clk\(1) # !\comb_9|Mux7~0_combout\ # !\comb_9|cnt_clk\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|cnt_clk\(0),
	datab => \comb_9|Mux7~0_combout\,
	datac => \comb_9|cnt_clk\(1),
	datad => \comb_9|cnt_clk\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[3]~14_combout\);

\comb_9|dot_scan[4]~15\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[4]~15_combout\ = \comb_9|cnt_clk\(0) # \comb_9|cnt_clk\(1) # !\comb_9|cnt_clk\(2) # !\comb_9|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|Mux7~0_combout\,
	datab => \comb_9|cnt_clk\(2),
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[4]~15_combout\);

\comb_9|dot_d[0]~20\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_d[0]~20_combout\ = \reset~dataout\ # !\comb_9|cnt_clk\(1) & \comb_9|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|cnt_clk\(1),
	datac => \comb_9|Mux13~0_combout\,
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_d[0]~20_combout\);

\comb_9|dot_scan[6]~16\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[6]~16_combout\ = \comb_9|cnt_clk\(0) # !\comb_9|cnt_clk\(1) # !\comb_9|cnt_clk\(2) # !\comb_9|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|Mux7~0_combout\,
	datab => \comb_9|cnt_clk\(2),
	datac => \comb_9|cnt_clk\(1),
	datad => \comb_9|cnt_clk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[6]~16_combout\);

\comb_9|dot_scan[7]~17\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[7]~17_combout\ = !\comb_9|cnt_clk\(2) # !\comb_9|cnt_clk\(0) # !\comb_9|cnt_clk\(1) # !\comb_9|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_9|Mux7~0_combout\,
	datab => \comb_9|cnt_clk\(1),
	datac => \comb_9|cnt_clk\(0),
	datad => \comb_9|cnt_clk\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[7]~17_combout\);

\comb_9|dot_scan[8]~18\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[8]~18_combout\ = \comb_9|cnt_clk\(0) # \reset~dataout\ # !\comb_9|Decoder0~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|Decoder0~0_combout\,
	datac => \comb_9|cnt_clk\(0),
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[8]~18_combout\);

\comb_9|dot_scan[9]~19\ : flex10ke_lcell
-- Equation(s):
-- \comb_9|dot_scan[9]~19_combout\ = \reset~dataout\ # !\comb_9|cnt_clk\(0) # !\comb_9|Decoder0~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_9|Decoder0~0_combout\,
	datac => \comb_9|cnt_clk\(0),
	datad => \reset~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_9|dot_scan[9]~19_combout\);

\comb_10|lcd_e~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_e~1_combout\ = !\reset~dataout\ & \comb_4|clk_out~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \reset~dataout\,
	datad => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_e~1_combout\);

\comb_10|cnt[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(0) = DFFEA(!\comb_10|Selector19~14_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )
-- \comb_10|Add0|adder|result_node|cs_buffer[0]~COUT\ = CARRY(\comb_10|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "55cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector19~14_combout\,
	datab => \comb_10|cnt\(0),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(0),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[0]~COUT\);

\comb_10|Equal5~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal5~3_combout\ = !\comb_10|cnt\(0) & !\comb_10|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|cnt\(0),
	datad => \comb_10|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal5~3_combout\);

\comb_10|lcd_state.delay_t\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_state.delay_t~regout\ = DFFEA(\comb_10|Equal3~7_combout\ & (\comb_10|Equal2~0_combout\ & \comb_10|lcd_state.line2~regout\) # !\comb_10|Equal3~7_combout\ & (\comb_10|lcd_state.delay_t~regout\ # \comb_10|Equal2~0_combout\ & 
-- \comb_10|lcd_state.line2~regout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal3~7_combout\,
	datab => \comb_10|lcd_state.delay_t~regout\,
	datac => \comb_10|Equal2~0_combout\,
	datad => \comb_10|lcd_state.line2~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_state.delay_t~regout\);

\comb_10|lcd_state.function_set\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_state.function_set~regout\ = DFFEA(\comb_10|lcd_state.delay~regout\ & !\comb_10|Equal1~3_combout\ & (\comb_10|lcd_state.function_set~regout\) # !\comb_10|lcd_state.delay~regout\ & (\comb_10|Equal0~3_combout\ # !\comb_10|Equal1~3_combout\ & 
-- \comb_10|lcd_state.function_set~regout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_state.delay~regout\,
	datab => \comb_10|Equal1~3_combout\,
	datac => \comb_10|Equal0~3_combout\,
	datad => \comb_10|lcd_state.function_set~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_state.function_set~regout\);

\comb_10|lcd_state.disp_onoff\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_state.disp_onoff~regout\ = DFFEA(\comb_10|Equal1~3_combout\ & (\comb_10|lcd_state.function_set~regout\) # !\comb_10|Equal1~3_combout\ & \comb_10|lcd_state.disp_onoff~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal1~3_combout\,
	datac => \comb_10|lcd_state.disp_onoff~regout\,
	datad => \comb_10|lcd_state.function_set~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_state.disp_onoff~regout\);

\comb_10|lcd_state.entry_mode\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_state.entry_mode~regout\ = DFFEA(\comb_10|Equal1~3_combout\ & (\comb_10|lcd_state.disp_onoff~regout\) # !\comb_10|Equal1~3_combout\ & \comb_10|lcd_state.entry_mode~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal1~3_combout\,
	datac => \comb_10|lcd_state.entry_mode~regout\,
	datad => \comb_10|lcd_state.disp_onoff~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_state.entry_mode~regout\);

\comb_10|Selector16~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector16~0_combout\ = !\comb_10|lcd_state.disp_onoff~regout\ & !\comb_10|lcd_state.function_set~regout\ & !\comb_10|lcd_state.entry_mode~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|lcd_state.disp_onoff~regout\,
	datac => \comb_10|lcd_state.function_set~regout\,
	datad => \comb_10|lcd_state.entry_mode~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector16~0_combout\);

\comb_10|Selector15~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector15~1_combout\ = !\comb_10|lcd_state.delay_t~regout\ & (\comb_10|Equal1~3_combout\ # \comb_10|Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|lcd_state.delay_t~regout\,
	datac => \comb_10|Equal1~3_combout\,
	datad => \comb_10|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector15~1_combout\);

\comb_10|Selector15~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector15~0_combout\ = !\comb_10|Equal2~0_combout\ & (\comb_10|lcd_state.line2~regout\ # \comb_10|lcd_state.line1~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal2~0_combout\,
	datac => \comb_10|lcd_state.line2~regout\,
	datad => \comb_10|lcd_state.line1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector15~0_combout\);

\comb_10|Selector15~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector15~2_combout\ = \comb_10|Selector7~0_combout\ # \comb_10|Selector15~0_combout\ # !\comb_10|Selector15~1_combout\ # !\comb_10|lcd_state.delay~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_state.delay~regout\,
	datab => \comb_10|Selector15~1_combout\,
	datac => \comb_10|Selector7~0_combout\,
	datad => \comb_10|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector15~2_combout\);

\comb_10|lcd_state.delay\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_state.delay~regout\ = DFFEA(\comb_10|Equal0~3_combout\ # \comb_10|lcd_state.delay~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Equal0~3_combout\,
	datad => \comb_10|lcd_state.delay~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_state.delay~regout\);

\comb_10|Selector0~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector0~0_combout\ = !\comb_10|Equal0~3_combout\ & !\comb_10|lcd_state.delay~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Equal0~3_combout\,
	datad => \comb_10|lcd_state.delay~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector0~0_combout\);

\comb_10|Add0|adder|result_node|cs_buffer[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(1) = \comb_10|cnt\(1) $ \comb_10|Add0|adder|result_node|cs_buffer[0]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[1]~COUT\ = CARRY(\comb_10|cnt\(1) & \comb_10|Add0|adder|result_node|cs_buffer[0]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(1),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[0]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(1),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[1]~COUT\);

\comb_10|Add0|adder|result_node|cs_buffer[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(2) = \comb_10|cnt\(2) $ \comb_10|Add0|adder|result_node|cs_buffer[1]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[2]~COUT\ = CARRY(\comb_10|cnt\(2) & \comb_10|Add0|adder|result_node|cs_buffer[1]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(2),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[1]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(2),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[2]~COUT\);

\comb_10|cnt[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(2) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(2) & (\comb_10|Selector15~0_combout\ # \comb_10|Selector0~0_combout\ # !\comb_10|Selector16~1_combout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector16~1_combout\,
	datab => \comb_10|Selector15~0_combout\,
	datac => \comb_10|Selector0~0_combout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(2),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(2));

\comb_10|Add0|adder|result_node|cs_buffer[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(3) = \comb_10|cnt\(3) $ \comb_10|Add0|adder|result_node|cs_buffer[2]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[3]~COUT\ = CARRY(\comb_10|cnt\(3) & \comb_10|Add0|adder|result_node|cs_buffer[2]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(3),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[2]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(3),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[3]~COUT\);

\comb_10|Add0|adder|result_node|cs_buffer[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(4) = \comb_10|cnt\(4) $ \comb_10|Add0|adder|result_node|cs_buffer[3]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[4]~COUT\ = CARRY(\comb_10|cnt\(4) & \comb_10|Add0|adder|result_node|cs_buffer[3]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(4),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[3]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(4),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[4]~COUT\);

\comb_10|cnt[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(4) = DFFEA(\comb_10|Selector15~2_combout\ & \comb_10|Add0|adder|result_node|cs_buffer\(4), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Selector15~2_combout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(4),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(4));

\comb_10|Add0|adder|result_node|cs_buffer[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(5) = \comb_10|cnt\(5) $ \comb_10|Add0|adder|result_node|cs_buffer[4]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[5]~COUT\ = CARRY(\comb_10|cnt\(5) & \comb_10|Add0|adder|result_node|cs_buffer[4]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(5),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[4]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(5),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[5]~COUT\);

\comb_10|cnt[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(5) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(5) & (!\comb_10|lcd_state.delay_t~regout\ # !\comb_10|Equal3~7_combout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal3~7_combout\,
	datac => \comb_10|lcd_state.delay_t~regout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(5),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(5));

\comb_10|Add0|adder|result_node|cs_buffer[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(6) = \comb_10|cnt\(6) $ \comb_10|Add0|adder|result_node|cs_buffer[5]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[6]~COUT\ = CARRY(\comb_10|cnt\(6) & \comb_10|Add0|adder|result_node|cs_buffer[5]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(6),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[5]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(6),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[6]~COUT\);

\comb_10|Add0|adder|result_node|cs_buffer[7]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(7) = \comb_10|cnt\(7) $ \comb_10|Add0|adder|result_node|cs_buffer[6]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[7]~COUT\ = CARRY(\comb_10|cnt\(7) & \comb_10|Add0|adder|result_node|cs_buffer[6]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(7),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[6]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(7),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[7]~COUT\);

\comb_10|cnt[7]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(7) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(7) & (\comb_10|Selector6~0_combout\ # \comb_10|Selector7~0_combout\) # !\comb_10|Selector12~7_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd55",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector12~7_combout\,
	datab => \comb_10|Selector6~0_combout\,
	datac => \comb_10|Selector7~0_combout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(7),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(7));

\comb_10|Add0|adder|result_node|cs_buffer[8]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(8) = \comb_10|cnt\(8) $ \comb_10|Add0|adder|result_node|cs_buffer[7]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[8]~COUT\ = CARRY(\comb_10|cnt\(8) & \comb_10|Add0|adder|result_node|cs_buffer[7]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(8),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[7]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(8),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[8]~COUT\);

\comb_10|Add0|adder|result_node|cs_buffer[9]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(9) = \comb_10|cnt\(9) $ \comb_10|Add0|adder|result_node|cs_buffer[8]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[9]~COUT\ = CARRY(\comb_10|cnt\(9) & \comb_10|Add0|adder|result_node|cs_buffer[8]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(9),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[8]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(9),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[9]~COUT\);

\comb_10|cnt[9]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(9) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(9) & (\comb_10|Selector6~0_combout\ # \comb_10|Selector7~0_combout\) # !\comb_10|Selector10~7_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd55",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector10~7_combout\,
	datab => \comb_10|Selector6~0_combout\,
	datac => \comb_10|Selector7~0_combout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(9),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(9));

\comb_10|Add0|adder|result_node|cs_buffer[10]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|result_node|cs_buffer\(10) = \comb_10|cnt\(10) $ \comb_10|Add0|adder|result_node|cs_buffer[9]~COUT\
-- \comb_10|Add0|adder|result_node|cs_buffer[10]~COUT\ = CARRY(\comb_10|cnt\(10) & \comb_10|Add0|adder|result_node|cs_buffer[9]~COUT\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "3cc0",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(10),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[9]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|result_node|cs_buffer\(10),
	cout => \comb_10|Add0|adder|result_node|cs_buffer[10]~COUT\);

\comb_10|cnt[10]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(10) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(10) & (\comb_10|Selector6~0_combout\ # \comb_10|Selector7~0_combout\) # !\comb_10|Selector9~7_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd55",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector9~7_combout\,
	datab => \comb_10|Selector6~0_combout\,
	datac => \comb_10|Selector7~0_combout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(10),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(10));

\comb_10|Add0|adder|unreg_res_node[11]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Add0|adder|unreg_res_node\(11) = \comb_10|Add0|adder|result_node|cs_buffer[10]~COUT\ $ \comb_10|cnt\(11)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_10|cnt\(11),
	cin => \comb_10|Add0|adder|result_node|cs_buffer[10]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Add0|adder|unreg_res_node\(11));

\comb_10|cnt[11]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(11) = DFFEA(\comb_10|Add0|adder|unreg_res_node\(11) & (!\comb_10|lcd_state.delay_t~regout\ # !\comb_10|Equal3~7_combout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal3~7_combout\,
	datac => \comb_10|lcd_state.delay_t~regout\,
	datad => \comb_10|Add0|adder|unreg_res_node\(11),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(11));

\comb_10|Equal3~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal3~11\ = !\comb_10|cnt\(6) & !\comb_10|cnt\(4) & \comb_10|cnt\(5) & \comb_10|cnt\(11)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(6),
	datab => \comb_10|cnt\(4),
	datac => \comb_10|cnt\(5),
	datad => \comb_10|cnt\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal3~4_combout\,
	cascout => \comb_10|Equal3~11\);

\comb_10|Equal3~7\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal3~7_combout\ = (!\comb_10|cnt\(2) & !\comb_10|cnt\(3) & \comb_10|Equal3~5_combout\ & \comb_10|Equal5~3_combout\) & CASCADE(\comb_10|Equal3~11\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(2),
	datab => \comb_10|cnt\(3),
	datac => \comb_10|Equal3~5_combout\,
	datad => \comb_10|Equal5~3_combout\,
	cascin => \comb_10|Equal3~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal3~7_combout\);

\comb_10|Selector6~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector6~0_combout\ = !\comb_10|Equal3~7_combout\ & \comb_10|lcd_state.delay_t~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Equal3~7_combout\,
	datad => \comb_10|lcd_state.delay_t~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector6~0_combout\);

\comb_10|cnt[8]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(8) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(8) & (\comb_10|Selector6~0_combout\ # \comb_10|Selector7~0_combout\) # !\comb_10|Selector11~7_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd55",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector11~7_combout\,
	datab => \comb_10|Selector6~0_combout\,
	datac => \comb_10|Selector7~0_combout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(8),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(8));

\comb_10|Equal3~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal3~5_combout\ = \comb_10|cnt\(7) & \comb_10|cnt\(8) & \comb_10|cnt\(9) & \comb_10|cnt\(10)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(7),
	datab => \comb_10|cnt\(8),
	datac => \comb_10|cnt\(9),
	datad => \comb_10|cnt\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal3~5_combout\);

\comb_10|Equal4~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal4~9\ = !\comb_10|cnt\(5) & !\comb_10|cnt\(11) & \comb_10|cnt\(6) & \comb_10|cnt\(4)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(5),
	datab => \comb_10|cnt\(11),
	datac => \comb_10|cnt\(6),
	datad => \comb_10|cnt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal4~4_combout\,
	cascout => \comb_10|Equal4~9\);

\comb_10|Equal4~5\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal4~5_combout\ = (!\comb_10|cnt\(2) & !\comb_10|cnt\(3) & \comb_10|Equal3~5_combout\ & \comb_10|Equal5~3_combout\) & CASCADE(\comb_10|Equal4~9\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(2),
	datab => \comb_10|cnt\(3),
	datac => \comb_10|Equal3~5_combout\,
	datad => \comb_10|Equal5~3_combout\,
	cascin => \comb_10|Equal4~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal4~5_combout\);

\comb_10|lcd_state.clear_disp\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_state.clear_disp~regout\ = DFFEA(\comb_10|Equal4~5_combout\ & (\comb_10|Equal3~7_combout\ & \comb_10|lcd_state.delay_t~regout\) # !\comb_10|Equal4~5_combout\ & (\comb_10|lcd_state.clear_disp~regout\ # \comb_10|Equal3~7_combout\ & 
-- \comb_10|lcd_state.delay_t~regout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal4~5_combout\,
	datab => \comb_10|lcd_state.clear_disp~regout\,
	datac => \comb_10|Equal3~7_combout\,
	datad => \comb_10|lcd_state.delay_t~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_state.clear_disp~regout\);

\comb_10|Selector7~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector7~0_combout\ = !\comb_10|Equal4~5_combout\ & \comb_10|lcd_state.clear_disp~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Equal4~5_combout\,
	datad => \comb_10|lcd_state.clear_disp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector7~0_combout\);

\comb_10|cnt[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(6) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(6) & (\comb_10|Selector7~0_combout\ # \comb_10|Selector0~0_combout\) # !\comb_10|Selector13~7_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd55",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector13~7_combout\,
	datab => \comb_10|Selector7~0_combout\,
	datac => \comb_10|Selector0~0_combout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(6),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(6));

\comb_10|Equal0~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal0~2_combout\ = !\comb_10|cnt\(0) & !\comb_10|cnt\(3) & \comb_10|cnt\(1) & \comb_10|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(0),
	datab => \comb_10|cnt\(3),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal0~2_combout\);

\comb_10|Equal0~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal0~0_combout\ = !\comb_10|cnt\(9) & !\comb_10|cnt\(10) & !\comb_10|cnt\(5) & !\comb_10|cnt\(11)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(9),
	datab => \comb_10|cnt\(10),
	datac => \comb_10|cnt\(5),
	datad => \comb_10|cnt\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal0~0_combout\);

\comb_10|Equal0~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal0~1_combout\ = !\comb_10|cnt\(7) & !\comb_10|cnt\(8) & \comb_10|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(7),
	datac => \comb_10|cnt\(8),
	datad => \comb_10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal0~1_combout\);

\comb_10|Equal0~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal0~3_combout\ = !\comb_10|cnt\(4) & \comb_10|cnt\(6) & \comb_10|Equal0~2_combout\ & \comb_10|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(4),
	datab => \comb_10|cnt\(6),
	datac => \comb_10|Equal0~2_combout\,
	datad => \comb_10|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal0~3_combout\);

\comb_10|cnt[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(1) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(1) & (!\comb_10|Equal0~3_combout\ & !\comb_10|lcd_state.delay~regout\ # !\comb_10|Selector16~2_combout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5700",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Selector16~2_combout\,
	datab => \comb_10|Equal0~3_combout\,
	datac => \comb_10|lcd_state.delay~regout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(1),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(1));

\comb_10|Equal1~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal1~0_combout\ = !\comb_10|cnt\(7) & !\comb_10|cnt\(8) & !\comb_10|cnt\(6) & \comb_10|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(7),
	datab => \comb_10|cnt\(8),
	datac => \comb_10|cnt\(6),
	datad => \comb_10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal1~0_combout\);

\comb_10|Equal1~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal1~2_combout\ = !\comb_10|cnt\(0) & \comb_10|cnt\(2) & \comb_10|Equal1~0_combout\ & \comb_10|cnt\(4)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(0),
	datab => \comb_10|cnt\(2),
	datac => \comb_10|Equal1~0_combout\,
	datad => \comb_10|cnt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal1~2_combout\);

\comb_10|Equal1~3\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal1~3_combout\ = \comb_10|cnt\(3) & \comb_10|cnt\(1) & \comb_10|Equal1~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(3),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal1~3_combout\);

\comb_10|Selector4~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector4~0_combout\ = \comb_10|Equal2~0_combout\ & (\comb_10|Equal4~5_combout\ & \comb_10|lcd_state.clear_disp~regout\) # !\comb_10|Equal2~0_combout\ & (\comb_10|lcd_state.line1~regout\ # \comb_10|Equal4~5_combout\ & 
-- \comb_10|lcd_state.clear_disp~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal2~0_combout\,
	datab => \comb_10|lcd_state.line1~regout\,
	datac => \comb_10|Equal4~5_combout\,
	datad => \comb_10|lcd_state.clear_disp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector4~0_combout\);

\comb_10|lcd_state.line1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_state.line1~regout\ = DFFEA(\comb_10|Selector4~0_combout\ # \comb_10|Equal1~3_combout\ & \comb_10|lcd_state.entry_mode~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal1~3_combout\,
	datac => \comb_10|lcd_state.entry_mode~regout\,
	datad => \comb_10|Selector4~0_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_state.line1~regout\);

\comb_10|Selector16~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector16~1_combout\ = !\comb_10|lcd_state.delay_t~regout\ & !\comb_10|lcd_state.clear_disp~regout\ & (\comb_10|Equal1~3_combout\ # \comb_10|Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_state.delay_t~regout\,
	datab => \comb_10|lcd_state.clear_disp~regout\,
	datac => \comb_10|Equal1~3_combout\,
	datad => \comb_10|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector16~1_combout\);

\comb_10|Selector16~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Selector16~2_combout\ = !\comb_10|lcd_state.line2~regout\ & !\comb_10|lcd_state.line1~regout\ & \comb_10|Selector16~1_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|lcd_state.line2~regout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Selector16~2_combout\);

\comb_10|cnt[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|cnt\(3) = DFFEA(\comb_10|Add0|adder|result_node|cs_buffer\(3) & (!\comb_10|lcd_state.delay~regout\ # !\comb_10|Selector16~2_combout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Selector16~2_combout\,
	datac => \comb_10|lcd_state.delay~regout\,
	datad => \comb_10|Add0|adder|result_node|cs_buffer\(3),
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|cnt\(3));

\comb_10|Equal2~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal2~0_combout\ = !\comb_10|cnt\(3) & !\comb_10|cnt\(1) & \comb_10|Equal1~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(3),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal2~0_combout\);

\comb_10|lcd_state.line2\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_state.line2~regout\ = DFFEA(\comb_10|Equal2~0_combout\ & (\comb_10|lcd_state.line1~regout\) # !\comb_10|Equal2~0_combout\ & \comb_10|lcd_state.line2~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal2~0_combout\,
	datac => \comb_10|lcd_state.line2~regout\,
	datad => \comb_10|lcd_state.line1~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_state.line2~regout\);

\comb_10|Equal5~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal5~0_combout\ = !\comb_10|cnt\(4) & !\comb_10|cnt\(3) & !\comb_10|cnt\(2) & \comb_10|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(4),
	datab => \comb_10|cnt\(3),
	datac => \comb_10|cnt\(2),
	datad => \comb_10|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal5~0_combout\);

\comb_10|Equal5~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal5~1_combout\ = !\comb_10|cnt\(0) & !\comb_10|cnt\(1) & \comb_10|Equal5~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(0),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal5~1_combout\);

\comb_10|lcd_rs\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_rs~regout\ = DFFEA(!\comb_10|Equal5~1_combout\ & (\comb_10|lcd_state.line2~regout\ # \comb_10|lcd_state.line1~regout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|lcd_state.line2~regout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|Equal5~1_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_rs~regout\);

\comb_10|Equal9~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal9~0_combout\ = !\comb_10|cnt\(4) & !\comb_10|cnt\(3) & \comb_10|Equal1~0_combout\ & \comb_10|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(4),
	datab => \comb_10|cnt\(3),
	datac => \comb_10|Equal1~0_combout\,
	datad => \comb_10|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal9~0_combout\);

\comb_10|Equal11~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal11~0_combout\ = !\comb_10|cnt\(0) & \comb_10|cnt\(1) & \comb_10|Equal9~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(0),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal11~0_combout\);

\comb_10|Equal5~2\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal5~2_combout\ = !\comb_10|cnt\(4) & \comb_10|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|cnt\(4),
	datad => \comb_10|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal5~2_combout\);

\comb_10|Equal1~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal1~1_combout\ = \comb_10|cnt\(3) & \comb_10|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|cnt\(3),
	datad => \comb_10|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal1~1_combout\);

\comb_10|Equal16~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal16~1_combout\ = !\comb_10|cnt\(2) & \comb_10|cnt\(0) & \comb_10|Equal5~2_combout\ & \comb_10|Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(2),
	datab => \comb_10|cnt\(0),
	datac => \comb_10|Equal5~2_combout\,
	datad => \comb_10|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal16~1_combout\);

\comb_10|Equal13~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal13~0_combout\ = !\comb_10|cnt\(2) & \comb_10|Equal5~3_combout\ & \comb_10|Equal5~2_combout\ & \comb_10|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(2),
	datab => \comb_10|Equal5~3_combout\,
	datac => \comb_10|Equal5~2_combout\,
	datad => \comb_10|cnt\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal13~0_combout\);

\comb_10|lcd_data~35\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~35_combout\ = !\comb_10|Equal16~1_combout\ & !\comb_10|Equal13~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Equal16~1_combout\,
	datad => \comb_10|Equal13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~35_combout\);

\comb_10|Equal16~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal16~0_combout\ = !\comb_10|cnt\(4) & !\comb_10|cnt\(2) & \comb_10|Equal1~0_combout\ & \comb_10|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(4),
	datab => \comb_10|cnt\(2),
	datac => \comb_10|Equal1~0_combout\,
	datad => \comb_10|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal16~0_combout\);

\comb_10|Equal14~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal14~0_combout\ = !\comb_10|cnt\(1) & \comb_10|cnt\(3) & \comb_10|Equal16~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(1),
	datac => \comb_10|cnt\(3),
	datad => \comb_10|Equal16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal14~0_combout\);

\comb_10|lcd_data~36\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~36_combout\ = \comb_10|lcd_state.line2~regout\ & (\comb_10|Equal14~0_combout\ # !\bus~dataout\ & !\comb_10|lcd_data~35_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_10|lcd_data~35_combout\,
	datac => \comb_10|Equal14~0_combout\,
	datad => \comb_10|lcd_state.line2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~36_combout\);

\comb_10|lcd_data~38\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~38_combout\ = \comb_10|lcd_data~36_combout\ # !\comb_10|lcd_data~37_combout\ & \comb_10|lcd_state.line2~regout\ & \bus~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~37_combout\,
	datab => \comb_10|lcd_state.line2~regout\,
	datac => \bus~dataout\,
	datad => \comb_10|lcd_data~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~38_combout\);

\comb_10|Equal17~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal17~0_combout\ = !\comb_10|cnt\(4) & \comb_10|Equal1~0_combout\ & \comb_10|cnt\(2) & \comb_10|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(4),
	datab => \comb_10|Equal1~0_combout\,
	datac => \comb_10|cnt\(2),
	datad => \comb_10|cnt\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal17~0_combout\);

\comb_10|Equal17~1\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal17~1_combout\ = !\comb_10|cnt\(0) & !\comb_10|cnt\(1) & \comb_10|Equal17~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(0),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal17~1_combout\);

\comb_10|Equal7~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal7~0_combout\ = !\comb_10|cnt\(0) & \comb_10|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|cnt\(0),
	datad => \comb_10|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal7~0_combout\);

\comb_10|lcd_data~33\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~33_combout\ = !\comb_10|Equal10~0_combout\ & !\comb_10|Equal17~1_combout\ & (!\comb_10|Equal7~0_combout\ # !\comb_10|Equal17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal10~0_combout\,
	datab => \comb_10|Equal17~1_combout\,
	datac => \comb_10|Equal17~0_combout\,
	datad => \comb_10|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~33_combout\);

\comb_10|Equal20~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal20~0_combout\ = \comb_10|Equal1~1_combout\ & \comb_10|cnt\(0) & \comb_10|Equal5~2_combout\ & \comb_10|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal1~1_combout\,
	datab => \comb_10|cnt\(0),
	datac => \comb_10|Equal5~2_combout\,
	datad => \comb_10|cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal20~0_combout\);

\comb_10|Equal18~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal18~0_combout\ = !\comb_10|cnt\(1) & \comb_10|cnt\(0) & \comb_10|Equal17~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(1),
	datac => \comb_10|cnt\(0),
	datad => \comb_10|Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal18~0_combout\);

\comb_6|status~20\ : flex10ke_lcell
-- Equation(s):
-- \comb_6|status~20_combout\ = \normal~dataout\ # \premium~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \normal~dataout\,
	datad => \premium~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_6|status~20_combout\);

\comb_10|status\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|status~combout\ = !\reset~dataout\ & (\comb_6|status~20_combout\ # \comb_10|status~combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \reset~dataout\,
	datac => \comb_6|status~20_combout\,
	datad => \comb_10|status~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|status~combout\);

\comb_10|lcd_data~30\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~30_combout\ = \comb_10|status~combout\ & \comb_10|lcd_state.line1~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|status~combout\,
	datad => \comb_10|lcd_state.line1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~30_combout\);

\comb_10|lcd_data~32\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~32_combout\ = \comb_10|lcd_data~30_combout\ & (\comb_10|Equal20~0_combout\ # \comb_10|Equal18~0_combout\ # !\comb_10|lcd_data~31_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~31_combout\,
	datab => \comb_10|Equal20~0_combout\,
	datac => \comb_10|Equal18~0_combout\,
	datad => \comb_10|lcd_data~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~32_combout\);

\comb_10|lcd_data~34\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~34_combout\ = \comb_10|lcd_data~32_combout\ # !\comb_10|status~combout\ & !\comb_10|lcd_data~33_combout\ & \comb_10|lcd_state.line1~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|status~combout\,
	datab => \comb_10|lcd_data~33_combout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|lcd_data~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~34_combout\);

\comb_10|lcd_data[0]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data\(0) = DFFEA(\comb_10|lcd_data~38_combout\ # \comb_10|lcd_data~34_combout\ # \comb_10|Equal11~0_combout\ & \comb_10|lcd_state.line1~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal11~0_combout\,
	datab => \comb_10|lcd_state.line1~regout\,
	datac => \comb_10|lcd_data~38_combout\,
	datad => \comb_10|lcd_data~34_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_data\(0));

\comb_10|lcd_data~46\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~46_combout\ = !\comb_10|status~combout\ & \comb_10|lcd_state.line1~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|status~combout\,
	datad => \comb_10|lcd_state.line1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~46_combout\);

\comb_10|lcd_data~58\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~58_combout\ = !\comb_10|Equal15~0_combout\ & (\comb_10|cnt\(1) # !\comb_10|Equal16~0_combout\ # !\comb_10|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5515",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal15~0_combout\,
	datab => \comb_10|cnt\(3),
	datac => \comb_10|Equal16~0_combout\,
	datad => \comb_10|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~58_combout\);

\comb_10|Equal12~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal12~0_combout\ = \comb_10|cnt\(0) & \comb_10|cnt\(1) & \comb_10|Equal9~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(0),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal12~0_combout\);

\comb_10|Equal10~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal10~0_combout\ = !\comb_10|cnt\(1) & \comb_10|Equal9~0_combout\ & \comb_10|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|cnt\(1),
	datac => \comb_10|Equal9~0_combout\,
	datad => \comb_10|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal10~0_combout\);

\comb_10|lcd_data~106\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~106_combout\ = \comb_10|Equal12~0_combout\ # \comb_10|Equal10~0_combout\ # !\comb_10|lcd_data~58_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|lcd_data~58_combout\,
	datac => \comb_10|Equal12~0_combout\,
	datad => \comb_10|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~106_combout\);

\comb_10|Equal21~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal21~0_combout\ = !\comb_10|cnt\(3) & !\comb_10|cnt\(2) & \comb_10|Equal1~0_combout\ & \comb_10|cnt\(4)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(3),
	datab => \comb_10|cnt\(2),
	datac => \comb_10|Equal1~0_combout\,
	datad => \comb_10|cnt\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal21~0_combout\);

\comb_10|lcd_data~105\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~178\ = !\comb_10|Equal17~1_combout\ & (!\bus~dataout\ # !\comb_10|Equal12~0_combout\) # !\comb_10|lcd_state.line2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5777",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_state.line2~regout\,
	datab => \comb_10|Equal17~1_combout\,
	datac => \comb_10|Equal12~0_combout\,
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~105_combout\,
	cascout => \comb_10|lcd_data~178\);

\comb_10|lcd_data~118\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~181\ = (!\comb_10|lcd_data~106_combout\ & (!\comb_10|Equal5~3_combout\ # !\comb_10|Equal21~0_combout\) # !\comb_10|lcd_data~30_combout\) & CASCADE(\comb_10|lcd_data~178\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5777",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~30_combout\,
	datab => \comb_10|lcd_data~106_combout\,
	datac => \comb_10|Equal21~0_combout\,
	datad => \comb_10|Equal5~3_combout\,
	cascin => \comb_10|lcd_data~178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~118_combout\,
	cascout => \comb_10|lcd_data~181\);

\comb_10|lcd_data~114\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~114_combout\ = (!\comb_10|lcd_state.delay_t~regout\ & !\comb_10|lcd_state.entry_mode~regout\ & (!\comb_10|Equal20~0_combout\ # !\comb_10|lcd_data~46_combout\)) & CASCADE(\comb_10|lcd_data~181\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_state.delay_t~regout\,
	datab => \comb_10|lcd_state.entry_mode~regout\,
	datac => \comb_10|lcd_data~46_combout\,
	datad => \comb_10|Equal20~0_combout\,
	cascin => \comb_10|lcd_data~181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~114_combout\);

\comb_10|lcd_data[1]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data\(1) = DFFEA(!\comb_10|lcd_data~114_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \comb_10|lcd_data~114_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_data\(1));

\comb_10|lcd_data~92\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~92_combout\ = !\comb_10|Equal20~0_combout\ & (\comb_10|cnt\(0) # !\comb_10|Equal9~0_combout\ # !\comb_10|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5515",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal20~0_combout\,
	datab => \comb_10|cnt\(1),
	datac => \comb_10|Equal9~0_combout\,
	datad => \comb_10|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~92_combout\);

\comb_10|lcd_data~91\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~173\ = \comb_10|Selector16~0_combout\ & (!\comb_10|lcd_state.line1~regout\ # !\comb_10|Equal5~3_combout\ # !\comb_10|Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal9~0_combout\,
	datab => \comb_10|Equal5~3_combout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~91_combout\,
	cascout => \comb_10|lcd_data~173\);

\comb_10|lcd_data~116\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~116_combout\ = (!\comb_10|Equal10~0_combout\ & \comb_10|lcd_data~92_combout\ & \comb_10|lcd_data~35_combout\ # !\comb_10|lcd_data~46_combout\) & CASCADE(\comb_10|lcd_data~173\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7555",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~46_combout\,
	datab => \comb_10|Equal10~0_combout\,
	datac => \comb_10|lcd_data~92_combout\,
	datad => \comb_10|lcd_data~35_combout\,
	cascin => \comb_10|lcd_data~173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~116_combout\);

\comb_10|Equal15~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|Equal15~0_combout\ = !\comb_10|cnt\(2) & \comb_10|Equal7~0_combout\ & \comb_10|Equal5~2_combout\ & \comb_10|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(2),
	datab => \comb_10|Equal7~0_combout\,
	datac => \comb_10|Equal5~2_combout\,
	datad => \comb_10|cnt\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|Equal15~0_combout\);

\comb_10|lcd_data~53\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~53_combout\ = \comb_10|cnt\(0) & (!\comb_10|cnt\(1) # !\comb_10|Equal5~0_combout\) # !\comb_10|cnt\(0) & (\comb_10|cnt\(1) # !\comb_10|Equal21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7c7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal5~0_combout\,
	datab => \comb_10|cnt\(0),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~53_combout\);

\comb_10|WideNor1~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|WideNor1~0_combout\ = !\comb_10|Equal15~0_combout\ & \comb_10|lcd_data~53_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Equal15~0_combout\,
	datad => \comb_10|lcd_data~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|WideNor1~0_combout\);

\comb_10|lcd_data~31\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~31_combout\ = !\comb_10|Equal15~0_combout\ & !\comb_10|Equal13~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Equal15~0_combout\,
	datad => \comb_10|Equal13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~31_combout\);

\comb_10|lcd_data~108\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~183\ = !\comb_10|lcd_state.line1~regout\ & (\bus~dataout\ # !\comb_10|lcd_state.line2~regout\) # !\comb_10|Equal14~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7757",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal14~0_combout\,
	datab => \comb_10|lcd_state.line1~regout\,
	datac => \comb_10|lcd_state.line2~regout\,
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~108_combout\,
	cascout => \comb_10|lcd_data~183\);

\comb_10|lcd_data~119\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~185\ = (\comb_10|lcd_data~31_combout\ & (\bus~dataout\ # !\comb_10|Equal16~1_combout\) # !\comb_10|lcd_state.line2~regout\) & CASCADE(\comb_10|lcd_data~183\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f755",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_state.line2~regout\,
	datab => \comb_10|Equal16~1_combout\,
	datac => \bus~dataout\,
	datad => \comb_10|lcd_data~31_combout\,
	cascin => \comb_10|lcd_data~183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~119_combout\,
	cascout => \comb_10|lcd_data~185\);

\comb_10|lcd_data~115\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~115_combout\ = (!\comb_10|Equal17~1_combout\ & !\comb_10|Equal12~0_combout\ & \comb_10|WideNor1~0_combout\ # !\comb_10|lcd_data~30_combout\) & CASCADE(\comb_10|lcd_data~185\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5755",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~30_combout\,
	datab => \comb_10|Equal17~1_combout\,
	datac => \comb_10|Equal12~0_combout\,
	datad => \comb_10|WideNor1~0_combout\,
	cascin => \comb_10|lcd_data~185\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~115_combout\);

\comb_10|lcd_data~37\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~37_combout\ = !\comb_10|Equal12~0_combout\ & !\comb_10|Equal18~0_combout\ & (!\comb_10|Equal7~0_combout\ # !\comb_10|Equal17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal12~0_combout\,
	datab => \comb_10|Equal18~0_combout\,
	datac => \comb_10|Equal17~0_combout\,
	datad => \comb_10|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~37_combout\);

\comb_10|lcd_data~42\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~42_combout\ = !\comb_10|Equal11~0_combout\ & !\comb_10|Equal17~1_combout\ & \comb_10|lcd_data~37_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal11~0_combout\,
	datac => \comb_10|Equal17~1_combout\,
	datad => \comb_10|lcd_data~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~42_combout\);

\comb_10|lcd_data~41\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~41_combout\ = \comb_10|lcd_state.line2~regout\ & \bus~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|lcd_state.line2~regout\,
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~41_combout\);

\comb_10|lcd_data[2]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data\(2) = DFFEA(!\comb_10|lcd_data~42_combout\ & \comb_10|lcd_data~41_combout\ # !\comb_10|lcd_data~115_combout\ # !\comb_10|lcd_data~116_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7f77",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~116_combout\,
	datab => \comb_10|lcd_data~115_combout\,
	datac => \comb_10|lcd_data~42_combout\,
	datad => \comb_10|lcd_data~41_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_data\(2));

\comb_10|lcd_data~110\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~110_combout\ = \comb_10|Equal15~0_combout\ # \comb_10|cnt\(0) & \comb_10|cnt\(1) & \comb_10|Equal9~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(0),
	datab => \comb_10|cnt\(1),
	datac => \comb_10|Equal9~0_combout\,
	datad => \comb_10|Equal15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~110_combout\);

\comb_10|lcd_data~111\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~188\ = \bus~dataout\ & !\comb_10|lcd_data~110_combout\ # !\bus~dataout\ & (!\comb_10|Equal13~0_combout\) # !\comb_10|lcd_state.line2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "775f",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_state.line2~regout\,
	datab => \comb_10|lcd_data~110_combout\,
	datac => \comb_10|Equal13~0_combout\,
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~111_combout\,
	cascout => \comb_10|lcd_data~188\);

\comb_10|lcd_data~120\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~190\ = (\comb_10|lcd_data~92_combout\ & (!\comb_10|Equal7~0_combout\ # !\comb_10|Equal17~0_combout\) # !\comb_10|lcd_state.line1~regout\) & CASCADE(\comb_10|lcd_data~188\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7f55",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_state.line1~regout\,
	datab => \comb_10|Equal17~0_combout\,
	datac => \comb_10|Equal7~0_combout\,
	datad => \comb_10|lcd_data~92_combout\,
	cascin => \comb_10|lcd_data~188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~120_combout\,
	cascout => \comb_10|lcd_data~190\);

\comb_10|lcd_data~117\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~117_combout\ = (!\comb_10|Equal14~0_combout\ & !\comb_10|Equal13~0_combout\ & \comb_10|lcd_data~53_combout\ # !\comb_10|lcd_data~30_combout\) & CASCADE(\comb_10|lcd_data~190\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5755",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~30_combout\,
	datab => \comb_10|Equal14~0_combout\,
	datac => \comb_10|Equal13~0_combout\,
	datad => \comb_10|lcd_data~53_combout\,
	cascin => \comb_10|lcd_data~190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~117_combout\);

\comb_10|lcd_data~47\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~47_combout\ = \comb_10|lcd_data~46_combout\ & (\comb_10|Equal18~0_combout\ # \comb_10|Equal9~0_combout\ & \comb_10|Equal5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal9~0_combout\,
	datab => \comb_10|Equal5~3_combout\,
	datac => \comb_10|Equal18~0_combout\,
	datad => \comb_10|lcd_data~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~47_combout\);

\comb_10|lcd_data[3]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data\(3) = DFFEA(\comb_10|lcd_data~47_combout\ # \comb_10|lcd_state.disp_onoff~regout\ # \comb_10|lcd_state.function_set~regout\ # !\comb_10|lcd_data~117_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~117_combout\,
	datab => \comb_10|lcd_data~47_combout\,
	datac => \comb_10|lcd_state.disp_onoff~regout\,
	datad => \comb_10|lcd_state.function_set~regout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_data\(3));

\comb_10|lcd_data~56\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~56_combout\ = \bus~dataout\ & (\comb_10|Equal11~0_combout\ # \comb_10|Equal13~0_combout\) # !\bus~dataout\ & !\comb_10|lcd_data~55_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc55",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~55_combout\,
	datab => \comb_10|Equal11~0_combout\,
	datac => \comb_10|Equal13~0_combout\,
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~56_combout\);

\comb_10|lcd_data~54\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~54_combout\ = \comb_10|status~combout\ & \comb_10|lcd_state.line1~regout\ & (!\comb_10|lcd_data~33_combout\ # !\comb_10|lcd_data~53_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~53_combout\,
	datab => \comb_10|lcd_data~33_combout\,
	datac => \comb_10|status~combout\,
	datad => \comb_10|lcd_state.line1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~54_combout\);

\comb_10|lcd_data~50\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~50_combout\ = \comb_10|Equal20~0_combout\ # \comb_10|Equal9~0_combout\ & \comb_10|Equal5~3_combout\ # !\comb_10|lcd_data~35_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~35_combout\,
	datab => \comb_10|Equal9~0_combout\,
	datac => \comb_10|Equal5~3_combout\,
	datad => \comb_10|Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~50_combout\);

\comb_10|lcd_data~51\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~51_combout\ = \comb_10|lcd_data~46_combout\ & (\comb_10|Equal14~0_combout\ # \comb_10|Equal18~0_combout\ # \comb_10|lcd_data~50_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal14~0_combout\,
	datab => \comb_10|Equal18~0_combout\,
	datac => \comb_10|lcd_data~50_combout\,
	datad => \comb_10|lcd_data~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~51_combout\);

\comb_10|lcd_data~52\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~52_combout\ = \comb_10|lcd_state.function_set~regout\ # \comb_10|lcd_data~51_combout\ # \comb_10|Equal12~0_combout\ & \comb_10|lcd_state.line1~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal12~0_combout\,
	datab => \comb_10|lcd_state.line1~regout\,
	datac => \comb_10|lcd_state.function_set~regout\,
	datad => \comb_10|lcd_data~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~52_combout\);

\comb_10|lcd_data[4]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data\(4) = DFFEA(\comb_10|lcd_data~54_combout\ # \comb_10|lcd_data~52_combout\ # \comb_10|lcd_data~56_combout\ & \comb_10|lcd_state.line2~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~56_combout\,
	datab => \comb_10|lcd_state.line2~regout\,
	datac => \comb_10|lcd_data~54_combout\,
	datad => \comb_10|lcd_data~52_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_data\(4));

\comb_10|WideOr2\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|WideOr2~combout\ = \comb_10|Equal14~0_combout\ # \comb_10|Equal13~0_combout\ # \comb_10|Equal15~0_combout\ # !\comb_10|lcd_data~42_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~42_combout\,
	datab => \comb_10|Equal14~0_combout\,
	datac => \comb_10|Equal13~0_combout\,
	datad => \comb_10|Equal15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|WideOr2~combout\);

\comb_10|lcd_data~61\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~61_combout\ = \comb_10|lcd_data~46_combout\ & (\comb_10|Equal20~0_combout\ # \comb_10|Equal9~0_combout\ & \comb_10|Equal5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal9~0_combout\,
	datab => \comb_10|Equal5~3_combout\,
	datac => \comb_10|Equal20~0_combout\,
	datad => \comb_10|lcd_data~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~61_combout\);

\comb_10|lcd_data~62\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~62_combout\ = \comb_10|lcd_data~61_combout\ # \comb_10|lcd_state.function_set~regout\ # !\comb_10|lcd_data~53_combout\ & \comb_10|lcd_data~30_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~53_combout\,
	datab => \comb_10|lcd_data~30_combout\,
	datac => \comb_10|lcd_data~61_combout\,
	datad => \comb_10|lcd_state.function_set~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~62_combout\);

\comb_10|lcd_data~59\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~59_combout\ = !\comb_10|Equal16~1_combout\ & !\comb_10|Equal13~0_combout\ & !\comb_10|Equal17~1_combout\ & \comb_10|lcd_data~58_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal16~1_combout\,
	datab => \comb_10|Equal13~0_combout\,
	datac => \comb_10|Equal17~1_combout\,
	datad => \comb_10|lcd_data~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~59_combout\);

\comb_10|lcd_data~60\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~60_combout\ = !\bus~dataout\ & \comb_10|lcd_state.line2~regout\ & (\comb_10|Equal5~1_combout\ # !\comb_10|lcd_data~59_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \bus~dataout\,
	datab => \comb_10|lcd_data~59_combout\,
	datac => \comb_10|Equal5~1_combout\,
	datad => \comb_10|lcd_state.line2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~60_combout\);

\comb_10|lcd_data[5]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data\(5) = DFFEA(\comb_10|lcd_data~62_combout\ # \comb_10|lcd_data~60_combout\ # \comb_10|WideOr2~combout\ & \comb_10|lcd_data~41_combout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|WideOr2~combout\,
	datab => \comb_10|lcd_data~41_combout\,
	datac => \comb_10|lcd_data~62_combout\,
	datad => \comb_10|lcd_data~60_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_data\(5));

\comb_10|lcd_data~70\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~70_combout\ = \bus~dataout\ & (\comb_10|Equal15~0_combout\ # \comb_10|Equal5~1_combout\) # !\bus~dataout\ & !\comb_10|lcd_data~59_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc55",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~59_combout\,
	datab => \comb_10|Equal15~0_combout\,
	datac => \comb_10|Equal5~1_combout\,
	datad => \bus~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~70_combout\);

\comb_10|lcd_data~68\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~68_combout\ = \comb_10|Equal16~1_combout\ # !\comb_10|cnt\(1) & \comb_10|Equal9~0_combout\ & \comb_10|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|cnt\(1),
	datab => \comb_10|Equal9~0_combout\,
	datac => \comb_10|cnt\(0),
	datad => \comb_10|Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~68_combout\);

\comb_10|lcd_data~69\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~69_combout\ = \comb_10|WideOr2~0_combout\ & (\comb_10|lcd_data~68_combout\ & \comb_10|lcd_data~46_combout\) # !\comb_10|WideOr2~0_combout\ & (\comb_10|lcd_data~41_combout\ # \comb_10|lcd_data~46_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f544",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|WideOr2~0_combout\,
	datab => \comb_10|lcd_data~41_combout\,
	datac => \comb_10|lcd_data~68_combout\,
	datad => \comb_10|lcd_data~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~69_combout\);

\comb_10|lcd_data~64\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~64_combout\ = \comb_10|Equal21~0_combout\ & !\comb_10|Equal5~0_combout\ & !\comb_10|cnt\(0) & !\comb_10|cnt\(1) # !\comb_10|Equal21~0_combout\ & (\comb_10|cnt\(0) & \comb_10|cnt\(1) # !\comb_10|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5113",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal21~0_combout\,
	datab => \comb_10|Equal5~0_combout\,
	datac => \comb_10|cnt\(0),
	datad => \comb_10|cnt\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~64_combout\);

\comb_10|lcd_data~65\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~65_combout\ = \comb_10|lcd_data~64_combout\ & (\comb_10|cnt\(3) # \comb_10|cnt\(1) # !\comb_10|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal1~2_combout\,
	datab => \comb_10|cnt\(3),
	datac => \comb_10|cnt\(1),
	datad => \comb_10|lcd_data~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~65_combout\);

\comb_10|lcd_data~66\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~66_combout\ = !\comb_10|Equal16~1_combout\ & \comb_10|lcd_data~65_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \comb_10|Equal16~1_combout\,
	datad => \comb_10|lcd_data~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~66_combout\);

\comb_10|lcd_data~67\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~67_combout\ = !\comb_10|WideNor1~6_combout\ & \comb_10|lcd_data~53_combout\ & \comb_10|lcd_data~30_combout\ & \comb_10|lcd_data~66_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|WideNor1~6_combout\,
	datab => \comb_10|lcd_data~53_combout\,
	datac => \comb_10|lcd_data~30_combout\,
	datad => \comb_10|lcd_data~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~67_combout\);

\comb_10|lcd_data[6]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data\(6) = DFFEA(\comb_10|lcd_data~69_combout\ # \comb_10|lcd_data~67_combout\ # \comb_10|lcd_data~70_combout\ & \comb_10|lcd_state.line2~regout\, GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~70_combout\,
	datab => \comb_10|lcd_state.line2~regout\,
	datac => \comb_10|lcd_data~69_combout\,
	datad => \comb_10|lcd_data~67_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_data\(6));

\comb_10|lcd_data~73\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~73_combout\ = \comb_10|status~combout\ & (\comb_10|Equal16~1_combout\) # !\comb_10|status~combout\ & !\comb_10|WideNor1~0_combout\ # !\comb_10|lcd_data~65_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f757",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~65_combout\,
	datab => \comb_10|WideNor1~0_combout\,
	datac => \comb_10|status~combout\,
	datad => \comb_10|Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~73_combout\);

\comb_10|WideOr2~0\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|WideOr2~0_combout\ = !\comb_10|Equal14~0_combout\ & !\comb_10|Equal13~0_combout\ & \comb_10|lcd_data~42_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \comb_10|Equal14~0_combout\,
	datac => \comb_10|Equal13~0_combout\,
	datad => \comb_10|lcd_data~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|WideOr2~0_combout\);

\comb_10|WideNor1~4\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|WideNor1~10\ = !\comb_10|Equal20~0_combout\ & \comb_10|WideOr2~0_combout\ & (!\comb_10|Equal5~3_combout\ # !\comb_10|Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1500",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal20~0_combout\,
	datab => \comb_10|Equal9~0_combout\,
	datac => \comb_10|Equal5~3_combout\,
	datad => \comb_10|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|WideNor1~4_combout\,
	cascout => \comb_10|WideNor1~10\);

\comb_10|WideNor1~6\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|WideNor1~6_combout\ = (!\comb_10|Equal10~0_combout\ & !\comb_10|Equal16~1_combout\ & \comb_10|WideNor1~0_combout\ & \comb_10|lcd_data~65_combout\) & CASCADE(\comb_10|WideNor1~10\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|Equal10~0_combout\,
	datab => \comb_10|Equal16~1_combout\,
	datac => \comb_10|WideNor1~0_combout\,
	datad => \comb_10|lcd_data~65_combout\,
	cascin => \comb_10|WideNor1~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|WideNor1~6_combout\);

\comb_10|lcd_data~72\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data~72_combout\ = \comb_10|lcd_state.line2~regout\ & (\bus~dataout\ & !\comb_10|WideOr2~combout\ # !\bus~dataout\ & (\comb_10|lcd_data~59_combout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|WideOr2~combout\,
	datab => \bus~dataout\,
	datac => \comb_10|lcd_data~59_combout\,
	datad => \comb_10|lcd_state.line2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_10|lcd_data~72_combout\);

\comb_10|lcd_data[7]\ : flex10ke_lcell
-- Equation(s):
-- \comb_10|lcd_data\(7) = DFFEA(\comb_10|lcd_data~72_combout\ # \comb_10|lcd_state.line1~regout\ & (\comb_10|lcd_data~73_combout\ # \comb_10|WideNor1~6_combout\), GLOBAL(\comb_4|clk_out~regout\), !\reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \comb_10|lcd_data~73_combout\,
	datab => \comb_10|WideNor1~6_combout\,
	datac => \comb_10|lcd_state.line1~regout\,
	datad => \comb_10|lcd_data~72_combout\,
	aclr => \reset~dataout\,
	clk => \comb_4|clk_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_10|lcd_data\(7));

\ renamed_port_9~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_9\);

\ renamed_port_8~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_8\);

\ renamed_port_7~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_7\);

\ renamed_port_6~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_6\);

\ renamed_port_5~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_5\);

\ renamed_port_4~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_4\);

\ renamed_port_3~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_3\);

\ renamed_port_2~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_2\);

\ renamed_port_18~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_18\);

\ renamed_port_17~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_17\);

\ renamed_port_16~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_16\);

\ renamed_port_15~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_15\);

\ renamed_port_14~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_14\);

\ renamed_port_13~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_13\);

\ renamed_port_12~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_12\);

\ renamed_port_11~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_ renamed_port_11\);

\segout[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout[0]~263_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_segout(0));

\segout[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout[1]~264_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_segout(1));

\segout[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout[2]~265_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_segout(2));

\segout[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout[3]~266_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_segout(3));

\segout[4]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout[4]~267_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_segout(4));

\segout[5]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout[5]~268_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_segout(5));

\segout[6]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|segout[6]~269_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_segout(6));

\segout[7]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_segout(7));

\common[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_common(0));

\common[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_common(1));

\common[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common[2]~95_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_common(2));

\common[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common[3]~96_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_common(3));

\common[4]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common[4]~97_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_common(4));

\common[5]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common[5]~98_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_common(5));

\common[6]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common[6]~99_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_common(6));

\common[7]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_7|common[7]~100_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_common(7));

\dot_d[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_d[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(0));

\dot_d[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_d[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(1));

\dot_d[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(2));

\dot_d[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(3));

\dot_d[4]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux9~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(4));

\dot_d[5]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(5));

\dot_d[6]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(6));

\dot_d[7]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(7));

\dot_d[8]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(8));

\dot_d[9]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(9));

\dot_d[10]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(10));

\dot_d[11]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(11));

\dot_d[12]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_d[12]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(12));

\dot_d[13]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \dot_d[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_d(13));

\dot_scan[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(0));

\dot_scan[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(1));

\dot_scan[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(2));

\dot_scan[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(3));

\dot_scan[4]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(4));

\dot_scan[5]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|ALT_INV_dot_d[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(5));

\dot_scan[6]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(6));

\dot_scan[7]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(7));

\dot_scan[8]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(8));

\dot_scan[9]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|dot_scan[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_dot_scan(9));

\lcd_e~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_e~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_e);

\lcd_rs~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_rs~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_rs);

\lcd_rw~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_rw);

\lcd_data[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_data(0));

\lcd_data[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_data(1));

\lcd_data[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_data(2));

\lcd_data[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_data(3));

\lcd_data[4]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_data(4));

\lcd_data[5]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_data(5));

\lcd_data[6]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_data(6));

\lcd_data[7]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_10|lcd_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_lcd_data(7));
END structure;


