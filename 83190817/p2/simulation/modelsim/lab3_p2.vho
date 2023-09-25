-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/25/2023 14:51:19"

-- 
-- Device: Altera EP4CGX15BF14A7 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_ns IS
    PORT (
	input1 : IN std_logic_vector(15 DOWNTO 0);
	input2 : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	output : OUT std_logic_vector(15 DOWNTO 0);
	overflow : OUT std_logic
	);
END alu_ns;

-- Design Ports Information
-- output[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[8]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[11]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[12]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[14]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[10]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[13]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[12]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input2[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_ns IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_input2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \input1[1]~input_o\ : std_logic;
SIGNAL \input1[8]~input_o\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \input1[0]~input_o\ : std_logic;
SIGNAL \input2[0]~input_o\ : std_logic;
SIGNAL \input2[1]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \input1[2]~input_o\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \Mux15~11_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \input1[9]~input_o\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Mux14~11_combout\ : std_logic;
SIGNAL \input2[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \input2[3]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux15~13_combout\ : std_logic;
SIGNAL \input1[3]~input_o\ : std_logic;
SIGNAL \Mux15~12_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \input1[10]~input_o\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \input1[4]~input_o\ : std_logic;
SIGNAL \Mux15~14_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \input1[11]~input_o\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \input2[4]~input_o\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ : std_logic;
SIGNAL \input2[5]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \input1[5]~input_o\ : std_logic;
SIGNAL \Mux15~15_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \input1[12]~input_o\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \input1[6]~input_o\ : std_logic;
SIGNAL \Mux15~16_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \input1[13]~input_o\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \input1[7]~input_o\ : std_logic;
SIGNAL \Mux15~17_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \input1[14]~input_o\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \input2[6]~input_o\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10_combout\ : std_logic;
SIGNAL \input2[7]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux15~18_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \input1[15]~input_o\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux15~19_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \input2[8]~input_o\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~4_combout\ : std_logic;
SIGNAL \input2[9]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux15~20_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \input2[10]~input_o\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\ : std_logic;
SIGNAL \input2[11]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux15~21_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux15~22_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \output~10_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \input2[12]~input_o\ : std_logic;
SIGNAL \output~11_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\ : std_logic;
SIGNAL \input2[13]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux15~23_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \output~12_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux15~24_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux15~25_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ : std_logic;
SIGNAL \input2[14]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~28_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \output~13_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \input2[15]~input_o\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Mux15~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~30_combout\ : std_logic;
SIGNAL \Mux15~27_combout\ : std_logic;
SIGNAL \Mux15~28_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~28_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~32_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\ : std_logic_vector(16 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input1 <= input1;
ww_input2 <= input2;
ww_sel <= sel;
output <= ww_output;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X29_Y0_N9
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~9_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~11_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~8_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~8_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~8_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~8_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~8_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~8_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\output[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~8_combout\,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\output[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~8_combout\,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\output[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~8_combout\,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\output[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~8_combout\,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\output[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~8_combout\,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\output[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~8_combout\,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\output[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~8_combout\,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\output[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~5_combout\,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\overflow~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOIBUF_X33_Y14_N1
\sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\input1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(1),
	o => \input1[1]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\input1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(8),
	o => \input1[8]~input_o\);

-- Location: LCCOMB_X27_Y18_N4
\Mux15~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\sel[1]~input_o\ & (((\input1[8]~input_o\)))) # (!\sel[1]~input_o\ & (\sel[0]~input_o\ & (\input1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input1[1]~input_o\,
	datad => \input1[8]~input_o\,
	combout => \Mux15~8_combout\);

-- Location: IOIBUF_X33_Y25_N1
\sel[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: LCCOMB_X24_Y16_N0
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\sel[2]~input_o\ & (\sel[0]~input_o\ & !\sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[3]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\input1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(0),
	o => \input1[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\input2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(0),
	o => \input2[0]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\input2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(1),
	o => \input2[1]~input_o\);

-- Location: LCCOMB_X24_Y18_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) = LCELL(\input2[1]~input_o\ $ (((\input1[0]~input_o\ & \input2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datac => \input2[0]~input_o\,
	datad => \input2[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0));

-- Location: LCCOMB_X24_Y18_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & (\input2[1]~input_o\ $ (VCC))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & (\input2[1]~input_o\ 
-- & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & \input2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0),
	datab => \input2[1]~input_o\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\);

-- Location: LCCOMB_X24_Y18_N0
\Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (!\sel[2]~input_o\ & ((\input2[0]~input_o\) # (\input1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \input1[0]~input_o\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X27_Y18_N16
\Mux15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux15~5_combout\) # ((\Mux15~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ & \sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	datac => \Mux15~5_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X26_Y17_N0
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\input2[0]~input_o\ & (\input1[0]~input_o\ $ (VCC))) # (!\input2[0]~input_o\ & ((\input1[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\input1[0]~input_o\) # (!\input2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input1[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X27_Y17_N16
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\input2[0]~input_o\ & (\input1[0]~input_o\ $ (VCC))) # (!\input2[0]~input_o\ & (\input1[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\input2[0]~input_o\ & \input1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input1[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X27_Y18_N24
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\sel[2]~input_o\ & (\Add1~0_combout\)) # (!\sel[2]~input_o\ & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datac => \Add0~0_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X27_Y18_N2
\Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\input1[0]~input_o\ & ((!\sel[2]~input_o\) # (!\input2[0]~input_o\))) # (!\input1[0]~input_o\ & ((\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datac => \input1[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X27_Y18_N20
\Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\Mux15~2_combout\) # ((\input2[0]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \Mux15~2_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X27_Y18_N14
\Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = ((\Mux15~1_combout\ & (\Add0~0_combout\ & \sel[0]~input_o\))) # (!\Mux15~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Add0~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X27_Y18_N10
\Mux15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux15~4_combout\ & ((\Mux15~6_combout\) # ((!\sel[1]~input_o\)))) # (!\Mux15~4_combout\ & (((\Mux15~0_combout\ & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~6_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mux15~4_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X27_Y18_N6
\Mux15~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\sel[3]~input_o\ & (!\sel[2]~input_o\ & (\Mux15~8_combout\))) # (!\sel[3]~input_o\ & (((\Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux15~8_combout\,
	datac => \Mux15~7_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X26_Y17_N2
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\input2[1]~input_o\ & ((\input1[1]~input_o\ & (!\Add1~1\)) # (!\input1[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\input2[1]~input_o\ & ((\input1[1]~input_o\ & (\Add1~1\ & VCC)) # (!\input1[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\input2[1]~input_o\ & ((!\Add1~1\) # (!\input1[1]~input_o\))) # (!\input2[1]~input_o\ & (!\input1[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]~input_o\,
	datab => \input1[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y18_N2
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\sel[2]~input_o\ & (\Add1~2_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X24_Y18_N12
\Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux14~1_combout\ & ((\input2[1]~input_o\) # ((\input1[1]~input_o\)))) # (!\Mux14~1_combout\ & (!\sel[2]~input_o\ & (\input2[1]~input_o\ $ (\input1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]~input_o\,
	datab => \input1[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X24_Y16_N2
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\ & !\sel[3]~input_o\)) # (!\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) = LCELL((\input2[0]~input_o\ & ((\input2[1]~input_o\ $ (\input1[1]~input_o\)))) # (!\input2[0]~input_o\ & (!\input1[0]~input_o\ & (\input2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input2[0]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input1[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1));

-- Location: LCCOMB_X24_Y18_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\);

-- Location: LCCOMB_X24_Y18_N14
\Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\) # ((\Mux14~1_combout\ & (!\Mux14~0_combout\)) # (!\Mux14~1_combout\ & (\Mux14~0_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X24_Y16_N12
\Mux14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\sel[0]~input_o\ & (((!\sel[1]~input_o\ & !\sel[3]~input_o\)) # (!\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X27_Y17_N18
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\input1[1]~input_o\ & ((\input2[1]~input_o\ & (\Add0~1\ & VCC)) # (!\input2[1]~input_o\ & (!\Add0~1\)))) # (!\input1[1]~input_o\ & ((\input2[1]~input_o\ & (!\Add0~1\)) # (!\input2[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\input1[1]~input_o\ & (!\input2[1]~input_o\ & !\Add0~1\)) # (!\input1[1]~input_o\ & ((!\Add0~1\) # (!\input2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datab => \input2[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y20_N8
\output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\input2[1]~input_o\) # (\input1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[1]~input_o\,
	datad => \input1[1]~input_o\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X27_Y20_N18
\Mux14~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\sel[2]~input_o\ & (\input1[1]~input_o\ & (!\sel[0]~input_o\ & \input2[1]~input_o\))) # (!\sel[2]~input_o\ & (((\sel[0]~input_o\)) # (!\input1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \input1[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input2[1]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X27_Y20_N20
\Mux14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux14~4_combout\ & ((\Mux14~5_combout\ & ((!\output~0_combout\))) # (!\Mux14~5_combout\ & (\Add0~2_combout\)))) # (!\Mux14~4_combout\ & (((\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Add0~2_combout\,
	datac => \output~0_combout\,
	datad => \Mux14~5_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X27_Y14_N24
\Mux14~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux14~3_combout\)) # (!\sel[1]~input_o\ & ((\Mux14~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Mux14~6_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X24_Y16_N6
\Mux14~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\sel[1]~input_o\ & (((!\sel[2]~input_o\ & \sel[3]~input_o\)) # (!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux14~9_combout\);

-- Location: IOIBUF_X33_Y24_N8
\input1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(2),
	o => \input1[2]~input_o\);

-- Location: LCCOMB_X26_Y15_N16
\Mux15~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (!\sel[2]~input_o\ & \input1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datad => \input1[2]~input_o\,
	combout => \Mux15~10_combout\);

-- Location: LCCOMB_X27_Y19_N8
\Mux15~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~11_combout\ = (!\sel[2]~input_o\ & \input1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \input1[0]~input_o\,
	combout => \Mux15~11_combout\);

-- Location: LCCOMB_X26_Y15_N26
\Mux14~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\sel[0]~input_o\ & (\Mux15~10_combout\ & ((!\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (((\Mux15~11_combout\) # (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux15~10_combout\,
	datac => \Mux15~11_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: IOIBUF_X33_Y15_N8
\input1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(9),
	o => \input1[9]~input_o\);

-- Location: LCCOMB_X26_Y15_N28
\Mux14~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (\Mux14~9_combout\ & (\input1[9]~input_o\ & ((!\Mux14~8_combout\) # (!\sel[2]~input_o\)))) # (!\Mux14~9_combout\ & (((\Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux14~9_combout\,
	datac => \Mux14~8_combout\,
	datad => \input1[9]~input_o\,
	combout => \Mux14~10_combout\);

-- Location: LCCOMB_X27_Y14_N10
\Mux14~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~11_combout\ = (\Mux14~7_combout\) # ((\Mux14~10_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~7_combout\,
	datac => \Mux14~10_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux14~11_combout\);

-- Location: IOIBUF_X33_Y22_N8
\input2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(2),
	o => \input2[2]~input_o\);

-- Location: LCCOMB_X26_Y17_N4
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\input1[2]~input_o\ $ (\input2[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\input1[2]~input_o\ & ((!\Add1~3\) # (!\input2[2]~input_o\))) # (!\input1[2]~input_o\ & (!\input2[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \input2[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y14_N20
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\sel[2]~input_o\ & (\Add1~4_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \Add1~4_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X27_Y14_N30
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\input2[2]~input_o\) # ((\input1[2]~input_o\)))) # (!\Mux13~0_combout\ & (!\sel[2]~input_o\ & (\input2[2]~input_o\ $ (\input1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[2]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \sel[2]~input_o\,
	datad => \input1[2]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: IOIBUF_X10_Y31_N1
\input2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(3),
	o => \input2[3]~input_o\);

-- Location: LCCOMB_X24_Y18_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = LCELL(\input2[3]~input_o\ $ (((\input1[0]~input_o\ & ((\input2[1]~input_o\) # (\input2[2]~input_o\))) # (!\input1[0]~input_o\ & (\input2[1]~input_o\ & \input2[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input2[1]~input_o\,
	datac => \input2[2]~input_o\,
	datad => \input2[3]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X27_Y17_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ = \input2[3]~input_o\ $ (((\input2[1]~input_o\ & \input2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[3]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input2[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\);

-- Location: LCCOMB_X24_Y20_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ ((\input1[2]~input_o\)))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & ((!\input1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input2[1]~input_o\,
	datac => \input1[2]~input_o\,
	datad => \input1[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2));

-- Location: LCCOMB_X24_Y20_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\);

-- Location: LCCOMB_X24_Y18_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\);

-- Location: LCCOMB_X27_Y14_N8
\Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ & !\Mux13~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X27_Y14_N26
\output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\input2[2]~input_o\) # (\input1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[2]~input_o\,
	datad => \input1[2]~input_o\,
	combout => \output~1_combout\);

-- Location: LCCOMB_X27_Y14_N28
\Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\sel[0]~input_o\ & (((!\sel[2]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[2]~input_o\ & (\input2[2]~input_o\ & \input1[2]~input_o\)) # (!\sel[2]~input_o\ & ((!\input1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[2]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \input1[2]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X27_Y17_N20
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\input1[2]~input_o\ $ (\input2[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\input1[2]~input_o\ & ((\input2[2]~input_o\) # (!\Add0~3\))) # (!\input1[2]~input_o\ & (\input2[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \input2[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y14_N14
\Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~3_combout\ & (((!\Mux14~4_combout\)) # (!\output~1_combout\))) # (!\Mux13~3_combout\ & (((\Add0~4_combout\ & \Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~1_combout\,
	datab => \Mux13~3_combout\,
	datac => \Add0~4_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X27_Y14_N0
\Mux13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux13~2_combout\)) # (!\sel[1]~input_o\ & ((\Mux13~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux13~2_combout\,
	datac => \Mux13~4_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X23_Y16_N2
\Mux15~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~13_combout\ = (\input1[1]~input_o\ & !\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[1]~input_o\,
	datac => \sel[2]~input_o\,
	combout => \Mux15~13_combout\);

-- Location: IOIBUF_X33_Y15_N1
\input1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(3),
	o => \input1[3]~input_o\);

-- Location: LCCOMB_X23_Y16_N8
\Mux15~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~12_combout\ = (!\sel[2]~input_o\ & \input1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[2]~input_o\,
	datad => \input1[3]~input_o\,
	combout => \Mux15~12_combout\);

-- Location: LCCOMB_X23_Y16_N12
\Mux13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux15~12_combout\))) # (!\sel[0]~input_o\ & (\Mux15~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux15~13_combout\,
	datac => \Mux15~12_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux13~6_combout\);

-- Location: IOIBUF_X33_Y27_N1
\input1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(10),
	o => \input1[10]~input_o\);

-- Location: LCCOMB_X23_Y16_N22
\Mux13~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux14~9_combout\ & (\input1[10]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux13~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \sel[2]~input_o\,
	datac => \input1[10]~input_o\,
	datad => \Mux14~9_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X23_Y16_N24
\Mux13~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux13~5_combout\) # ((\Mux13~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~5_combout\,
	datac => \Mux13~7_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux13~8_combout\);

-- Location: IOIBUF_X33_Y24_N1
\input1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(4),
	o => \input1[4]~input_o\);

-- Location: LCCOMB_X27_Y19_N2
\Mux15~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~14_combout\ = (!\sel[2]~input_o\ & \input1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datad => \input1[4]~input_o\,
	combout => \Mux15~14_combout\);

-- Location: LCCOMB_X26_Y15_N6
\Mux12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\Mux15~14_combout\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\) # ((\Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \Mux15~10_combout\,
	datad => \Mux15~14_combout\,
	combout => \Mux12~6_combout\);

-- Location: IOIBUF_X33_Y11_N8
\input1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(11),
	o => \input1[11]~input_o\);

-- Location: LCCOMB_X26_Y15_N8
\Mux12~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux14~9_combout\ & (\input1[11]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux12~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~6_combout\,
	datab => \Mux14~9_combout\,
	datac => \input1[11]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X27_Y15_N30
\output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\input2[3]~input_o\) # (\input1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[3]~input_o\,
	datac => \input1[3]~input_o\,
	combout => \output~2_combout\);

-- Location: LCCOMB_X27_Y15_N8
\Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\input1[3]~input_o\ & ((\sel[2]~input_o\ & (\input2[3]~input_o\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\))))) # (!\input1[3]~input_o\ & (!\sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \input2[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X27_Y17_N22
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\input1[3]~input_o\ & ((\input2[3]~input_o\ & (\Add0~5\ & VCC)) # (!\input2[3]~input_o\ & (!\Add0~5\)))) # (!\input1[3]~input_o\ & ((\input2[3]~input_o\ & (!\Add0~5\)) # (!\input2[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\input1[3]~input_o\ & (!\input2[3]~input_o\ & !\Add0~5\)) # (!\input1[3]~input_o\ & ((!\Add0~5\) # (!\input2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \input2[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X27_Y15_N18
\Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~3_combout\ & (((!\Mux14~4_combout\)) # (!\output~2_combout\))) # (!\Mux12~3_combout\ & (((\Mux14~4_combout\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~2_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X26_Y17_N6
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\input1[3]~input_o\ & ((\input2[3]~input_o\ & (!\Add1~5\)) # (!\input2[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\input1[3]~input_o\ & ((\input2[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\input2[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\input1[3]~input_o\ & (\input2[3]~input_o\ & !\Add1~5\)) # (!\input1[3]~input_o\ & ((\input2[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \input2[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X27_Y15_N24
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\sel[2]~input_o\ & (\Add1~6_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X27_Y15_N2
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\input1[3]~input_o\) # ((\input2[3]~input_o\)))) # (!\Mux12~0_combout\ & (!\sel[2]~input_o\ & (\input1[3]~input_o\ $ (\input2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \input2[3]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X24_Y18_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ = \input2[1]~input_o\ $ (\input2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[1]~input_o\,
	datac => \input2[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\);

-- Location: LCCOMB_X25_Y20_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\input1[1]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\input1[0]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \input1[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X27_Y17_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ (((\input1[3]~input_o\))))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & (!\input1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input2[1]~input_o\,
	datac => \input1[2]~input_o\,
	datad => \input1[3]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3));

-- Location: LCCOMB_X24_Y20_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\);

-- Location: LCCOMB_X24_Y18_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\);

-- Location: LCCOMB_X27_Y15_N28
\Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & !\Mux12~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X27_Y15_N20
\Mux12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & ((\Mux12~2_combout\))) # (!\sel[1]~input_o\ & (\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux12~4_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X27_Y15_N6
\Mux12~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\Mux12~5_combout\) # ((\Mux12~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~7_combout\,
	datab => \Mux12~5_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux12~8_combout\);

-- Location: IOIBUF_X24_Y0_N1
\input2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(4),
	o => \input2[4]~input_o\);

-- Location: LCCOMB_X26_Y17_N8
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\input1[4]~input_o\ $ (\input2[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\input1[4]~input_o\ & ((!\Add1~7\) # (!\input2[4]~input_o\))) # (!\input1[4]~input_o\ & (!\input2[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[4]~input_o\,
	datab => \input2[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X27_Y15_N0
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\sel[2]~input_o\ & (\Add1~8_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X27_Y15_N26
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\input2[4]~input_o\) # ((\input1[4]~input_o\)))) # (!\Mux11~0_combout\ & (!\sel[2]~input_o\ & (\input2[4]~input_o\ $ (\input1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \input1[4]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X27_Y17_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ = (\input2[3]~input_o\) # ((\input2[1]~input_o\ & \input2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[3]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input2[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\);

-- Location: IOIBUF_X33_Y12_N1
\input2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(5),
	o => \input2[5]~input_o\);

-- Location: LCCOMB_X27_Y17_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ = \input2[5]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ & \input2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	datab => \input2[4]~input_o\,
	datad => \input2[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\);

-- Location: LCCOMB_X25_Y18_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ ((\input1[4]~input_o\)))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & ((!\input1[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]~input_o\,
	datab => \input2[0]~input_o\,
	datac => \input1[4]~input_o\,
	datad => \input1[3]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4));

-- Location: LCCOMB_X25_Y18_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~1\);

-- Location: LCCOMB_X25_Y20_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\input1[2]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((!\input1[1]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \input1[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X27_Y17_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) = LCELL(\input2[5]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ & ((\input2[4]~input_o\) # (\input1[0]~input_o\))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ & (\input2[4]~input_o\ & \input1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	datab => \input2[4]~input_o\,
	datac => \input1[0]~input_o\,
	datad => \input2[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0));

-- Location: LCCOMB_X24_Y20_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\);

-- Location: LCCOMB_X24_Y18_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\);

-- Location: LCCOMB_X27_Y15_N4
\Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ & !\Mux11~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X27_Y17_N24
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\input1[4]~input_o\ $ (\input2[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\input1[4]~input_o\ & ((\input2[4]~input_o\) # (!\Add0~7\))) # (!\input1[4]~input_o\ & (\input2[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[4]~input_o\,
	datab => \input2[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X27_Y19_N22
\Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\sel[2]~input_o\ & (\input2[4]~input_o\ & (!\sel[0]~input_o\ & \input1[4]~input_o\))) # (!\sel[2]~input_o\ & (((\sel[0]~input_o\) # (!\input1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input1[4]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X27_Y19_N28
\output~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\input2[4]~input_o\) # (\input1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[4]~input_o\,
	datad => \input1[4]~input_o\,
	combout => \output~3_combout\);

-- Location: LCCOMB_X27_Y19_N24
\Mux11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux14~4_combout\ & ((\Mux11~3_combout\ & ((!\output~3_combout\))) # (!\Mux11~3_combout\ & (\Add0~8_combout\)))) # (!\Mux14~4_combout\ & (((\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Mux14~4_combout\,
	datac => \Mux11~3_combout\,
	datad => \output~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X23_Y16_N18
\Mux11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux11~2_combout\)) # (!\sel[1]~input_o\ & ((\Mux11~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux11~2_combout\,
	datac => \Mux11~4_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: IOIBUF_X24_Y31_N1
\input1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(5),
	o => \input1[5]~input_o\);

-- Location: LCCOMB_X23_Y16_N28
\Mux15~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~15_combout\ = (!\sel[2]~input_o\ & \input1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[2]~input_o\,
	datad => \input1[5]~input_o\,
	combout => \Mux15~15_combout\);

-- Location: LCCOMB_X23_Y16_N14
\Mux11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\Mux15~15_combout\)) # (!\sel[0]~input_o\ & ((\Mux15~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux15~15_combout\,
	datac => \Mux15~12_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux11~6_combout\);

-- Location: IOIBUF_X33_Y12_N8
\input1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(12),
	o => \input1[12]~input_o\);

-- Location: LCCOMB_X23_Y16_N16
\Mux11~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux14~9_combout\ & (\input1[12]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux11~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datab => \Mux11~6_combout\,
	datac => \sel[2]~input_o\,
	datad => \input1[12]~input_o\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Mux11~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\Mux11~5_combout\) # ((\sel[3]~input_o\ & \Mux11~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux11~5_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~8_combout\);

-- Location: IOIBUF_X22_Y31_N1
\input1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(6),
	o => \input1[6]~input_o\);

-- Location: LCCOMB_X25_Y16_N6
\Mux15~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~16_combout\ = (!\sel[2]~input_o\ & \input1[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \input1[6]~input_o\,
	combout => \Mux15~16_combout\);

-- Location: LCCOMB_X26_Y15_N10
\Mux10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux15~16_combout\))) # (!\sel[0]~input_o\ & (\Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~14_combout\,
	datab => \sel[1]~input_o\,
	datac => \Mux15~16_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux10~6_combout\);

-- Location: IOIBUF_X29_Y31_N1
\input1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(13),
	o => \input1[13]~input_o\);

-- Location: LCCOMB_X26_Y15_N4
\Mux10~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux14~9_combout\ & (\input1[13]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux10~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux14~9_combout\,
	datac => \input1[13]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X25_Y20_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (((\input1[3]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (!\input1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \input1[2]~input_o\,
	datad => \input1[3]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X27_Y17_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ = \input2[4]~input_o\ $ (((\input2[3]~input_o\) # ((\input2[1]~input_o\ & \input2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[3]~input_o\,
	datab => \input2[4]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input2[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\);

-- Location: LCCOMB_X25_Y20_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (\input1[1]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (!\input1[0]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datab => \input1[0]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \input1[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1));

-- Location: LCCOMB_X24_Y20_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\);

-- Location: LCCOMB_X27_Y21_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) = LCELL((\input2[0]~input_o\ & (\input1[5]~input_o\ $ ((\input2[1]~input_o\)))) # (!\input2[0]~input_o\ & (((\input2[1]~input_o\ & !\input1[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input1[5]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input1[4]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5));

-- Location: LCCOMB_X25_Y18_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~3\);

-- Location: LCCOMB_X24_Y18_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\);

-- Location: LCCOMB_X26_Y17_N10
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\input2[5]~input_o\ & ((\input1[5]~input_o\ & (!\Add1~9\)) # (!\input1[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\input2[5]~input_o\ & ((\input1[5]~input_o\ & (\Add1~9\ & VCC)) # (!\input1[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\input2[5]~input_o\ & ((!\Add1~9\) # (!\input1[5]~input_o\))) # (!\input2[5]~input_o\ & (!\input1[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[5]~input_o\,
	datab => \input1[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X25_Y16_N8
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\sel[2]~input_o\ & (\Add1~10_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X25_Y16_N2
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & (((\input1[5]~input_o\) # (\input2[5]~input_o\)))) # (!\Mux10~0_combout\ & (!\sel[2]~input_o\ & (\input1[5]~input_o\ $ (\input2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \input1[5]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \input2[5]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X25_Y16_N28
\Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux10~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ & !\Mux10~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X25_Y16_N30
\output~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\input2[5]~input_o\) # (\input1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[5]~input_o\,
	datad => \input1[5]~input_o\,
	combout => \output~4_combout\);

-- Location: LCCOMB_X25_Y16_N0
\Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\input1[5]~input_o\ & ((\sel[2]~input_o\ & (\input2[5]~input_o\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\))))) # (!\input1[5]~input_o\ & (((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[5]~input_o\,
	datab => \input1[5]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X27_Y17_N26
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\input2[5]~input_o\ & ((\input1[5]~input_o\ & (\Add0~9\ & VCC)) # (!\input1[5]~input_o\ & (!\Add0~9\)))) # (!\input2[5]~input_o\ & ((\input1[5]~input_o\ & (!\Add0~9\)) # (!\input1[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\input2[5]~input_o\ & (!\input1[5]~input_o\ & !\Add0~9\)) # (!\input2[5]~input_o\ & ((!\Add0~9\) # (!\input1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[5]~input_o\,
	datab => \input1[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X25_Y16_N26
\Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & (((!\Mux14~4_combout\)) # (!\output~4_combout\))) # (!\Mux10~3_combout\ & (((\Mux14~4_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~4_combout\,
	datab => \Mux10~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Add0~10_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X25_Y16_N20
\Mux10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux10~2_combout\)) # (!\sel[1]~input_o\ & ((\Mux10~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux10~2_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X25_Y16_N24
\Mux10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~5_combout\) # ((\Mux10~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~7_combout\,
	datab => \Mux10~5_combout\,
	datac => \sel[3]~input_o\,
	combout => \Mux10~8_combout\);

-- Location: IOIBUF_X24_Y31_N8
\input1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(7),
	o => \input1[7]~input_o\);

-- Location: LCCOMB_X23_Y16_N6
\Mux15~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~17_combout\ = (!\sel[2]~input_o\ & \input1[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \input1[7]~input_o\,
	combout => \Mux15~17_combout\);

-- Location: LCCOMB_X23_Y16_N0
\Mux9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\Mux15~17_combout\)) # (!\sel[0]~input_o\ & ((\Mux15~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~17_combout\,
	datab => \Mux15~15_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux9~6_combout\);

-- Location: IOIBUF_X33_Y16_N8
\input1[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(14),
	o => \input1[14]~input_o\);

-- Location: LCCOMB_X23_Y16_N10
\Mux9~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux14~9_combout\ & (\input1[14]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux9~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datab => \Mux9~6_combout\,
	datac => \sel[2]~input_o\,
	datad => \input1[14]~input_o\,
	combout => \Mux9~7_combout\);

-- Location: IOIBUF_X33_Y16_N15
\input2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(6),
	o => \input2[6]~input_o\);

-- Location: LCCOMB_X25_Y16_N10
\Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\sel[2]~input_o\ & (!\sel[0]~input_o\ & (\input1[6]~input_o\ & \input2[6]~input_o\))) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\) # ((!\input1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \input1[6]~input_o\,
	datad => \input2[6]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X27_Y17_N28
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\input2[6]~input_o\ $ (\input1[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\input2[6]~input_o\ & ((\input1[6]~input_o\) # (!\Add0~11\))) # (!\input2[6]~input_o\ & (\input1[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[6]~input_o\,
	datab => \input1[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X25_Y16_N16
\output~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (\input1[6]~input_o\) # (\input2[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[6]~input_o\,
	datad => \input2[6]~input_o\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X25_Y16_N4
\Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~3_combout\ & (((!\output~5_combout\)) # (!\Mux14~4_combout\))) # (!\Mux9~3_combout\ & (\Mux14~4_combout\ & (\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux14~4_combout\,
	datac => \Add0~12_combout\,
	datad => \output~5_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X26_Y17_N12
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\input1[6]~input_o\ $ (\input2[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\input1[6]~input_o\ & ((!\Add1~11\) # (!\input2[6]~input_o\))) # (!\input1[6]~input_o\ & (!\input2[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \input2[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X25_Y16_N18
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\sel[2]~input_o\ & (\Add1~12_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \Add1~12_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X25_Y16_N12
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\input1[6]~input_o\) # (\input2[6]~input_o\)))) # (!\Mux9~0_combout\ & (!\sel[2]~input_o\ & (\input1[6]~input_o\ $ (\input2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \input1[6]~input_o\,
	datad => \input2[6]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X27_Y17_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\ = (\input2[4]~input_o\ & ((\input2[3]~input_o\) # ((\input2[1]~input_o\ & \input2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[3]~input_o\,
	datab => \input2[4]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input2[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\);

-- Location: LCCOMB_X26_Y19_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\) # (\input2[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\,
	datad => \input2[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10_combout\);

-- Location: IOIBUF_X33_Y16_N22
\input2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(7),
	o => \input2[7]~input_o\);

-- Location: LCCOMB_X26_Y19_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) = LCELL(\input2[7]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10_combout\ & ((\input1[0]~input_o\) # (\input2[6]~input_o\))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10_combout\ & (\input1[0]~input_o\ & \input2[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10_combout\,
	datab => \input1[0]~input_o\,
	datac => \input2[6]~input_o\,
	datad => \input2[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0));

-- Location: LCCOMB_X27_Y21_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) = LCELL((\input2[0]~input_o\ & (\input1[6]~input_o\ $ ((\input2[1]~input_o\)))) # (!\input2[0]~input_o\ & (((\input2[1]~input_o\ & !\input1[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input1[6]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input1[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6));

-- Location: LCCOMB_X26_Y19_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ = \input2[7]~input_o\ $ (((\input2[6]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\) # (\input2[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\,
	datab => \input2[7]~input_o\,
	datac => \input2[6]~input_o\,
	datad => \input2[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\);

-- Location: LCCOMB_X23_Y20_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~1\);

-- Location: LCCOMB_X24_Y20_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\);

-- Location: LCCOMB_X25_Y20_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ ((\input1[2]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & ((!\input1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datac => \input1[2]~input_o\,
	datad => \input1[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2));

-- Location: LCCOMB_X25_Y20_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (\input1[4]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\input1[3]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \input1[4]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X25_Y18_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\);

-- Location: LCCOMB_X24_Y18_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~4_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~4_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~4_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\);

-- Location: LCCOMB_X25_Y16_N22
\Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux9~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\ & !\Mux9~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X23_Y16_N20
\Mux9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & ((\Mux9~2_combout\))) # (!\sel[1]~input_o\ & (\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datab => \Mux9~2_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X23_Y16_N4
\Mux9~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\Mux9~5_combout\) # ((\Mux9~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~7_combout\,
	datab => \Mux9~5_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X27_Y19_N26
\Mux15~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~18_combout\ = (!\sel[2]~input_o\ & \input1[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \input1[8]~input_o\,
	combout => \Mux15~18_combout\);

-- Location: LCCOMB_X26_Y15_N22
\Mux8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\sel[0]~input_o\ & (\Mux15~18_combout\ & ((!\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (((\Mux15~16_combout\) # (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux15~18_combout\,
	datac => \Mux15~16_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux8~6_combout\);

-- Location: IOIBUF_X33_Y16_N1
\input1[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(15),
	o => \input1[15]~input_o\);

-- Location: LCCOMB_X24_Y16_N14
\Mux8~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux14~9_combout\ & (\input1[15]~input_o\ & ((!\Mux8~6_combout\) # (!\sel[2]~input_o\)))) # (!\Mux14~9_combout\ & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux14~9_combout\,
	datac => \Mux8~6_combout\,
	datad => \input1[15]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X24_Y16_N30
\output~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (\input1[7]~input_o\) # (\input2[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[7]~input_o\,
	datac => \input2[7]~input_o\,
	combout => \output~6_combout\);

-- Location: LCCOMB_X24_Y16_N8
\Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\input1[7]~input_o\ & ((\sel[0]~input_o\ & ((!\sel[2]~input_o\))) # (!\sel[0]~input_o\ & (\input2[7]~input_o\ & \sel[2]~input_o\)))) # (!\input1[7]~input_o\ & (((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[7]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \input2[7]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X27_Y17_N30
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\input2[7]~input_o\ & ((\input1[7]~input_o\ & (\Add0~13\ & VCC)) # (!\input1[7]~input_o\ & (!\Add0~13\)))) # (!\input2[7]~input_o\ & ((\input1[7]~input_o\ & (!\Add0~13\)) # (!\input1[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\input2[7]~input_o\ & (!\input1[7]~input_o\ & !\Add0~13\)) # (!\input2[7]~input_o\ & ((!\Add0~13\) # (!\input1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[7]~input_o\,
	datab => \input1[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X24_Y16_N26
\Mux8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux8~3_combout\ & (((!\Mux14~4_combout\)) # (!\output~6_combout\))) # (!\Mux8~3_combout\ & (((\Add0~14_combout\ & \Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~6_combout\,
	datab => \Mux8~3_combout\,
	datac => \Add0~14_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X27_Y17_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ = \input2[6]~input_o\ $ (((\input2[5]~input_o\) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ & \input2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	datab => \input2[4]~input_o\,
	datac => \input2[5]~input_o\,
	datad => \input2[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\);

-- Location: LCCOMB_X23_Y20_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & ((\input1[1]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (!\input1[0]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datab => \input1[0]~input_o\,
	datac => \input1[1]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X27_Y21_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ ((\input1[7]~input_o\)))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & ((!\input1[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input2[1]~input_o\,
	datac => \input1[7]~input_o\,
	datad => \input1[6]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7));

-- Location: LCCOMB_X23_Y20_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~3\);

-- Location: LCCOMB_X24_Y20_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\);

-- Location: LCCOMB_X25_Y20_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\input1[5]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & !\input1[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[5]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \input1[4]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X25_Y20_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (((\input1[3]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (!\input1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datac => \input1[2]~input_o\,
	datad => \input1[3]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3));

-- Location: LCCOMB_X25_Y18_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~7\);

-- Location: LCCOMB_X24_Y18_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\);

-- Location: LCCOMB_X26_Y17_N14
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\input1[7]~input_o\ & ((\input2[7]~input_o\ & (!\Add1~13\)) # (!\input2[7]~input_o\ & (\Add1~13\ & VCC)))) # (!\input1[7]~input_o\ & ((\input2[7]~input_o\ & ((\Add1~13\) # (GND))) # (!\input2[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\input1[7]~input_o\ & (\input2[7]~input_o\ & !\Add1~13\)) # (!\input1[7]~input_o\ & ((\input2[7]~input_o\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[7]~input_o\,
	datab => \input2[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X24_Y16_N24
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\sel[2]~input_o\ & (\Add1~14_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \Add1~14_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X24_Y16_N18
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\input1[7]~input_o\) # ((\input2[7]~input_o\)))) # (!\Mux8~0_combout\ & (!\sel[2]~input_o\ & (\input1[7]~input_o\ $ (\input2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[7]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \input2[7]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X24_Y16_N28
\Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~1_combout\) # ((\Mux8~0_combout\ & ((!\Mux14~0_combout\))) # (!\Mux8~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ & \Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X24_Y16_N20
\Mux8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & ((\Mux8~2_combout\))) # (!\sel[1]~input_o\ & (\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux8~2_combout\,
	datac => \sel[3]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X24_Y16_N16
\Mux8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~5_combout\) # ((\Mux8~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~7_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux8~5_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X29_Y16_N8
\Mux15~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~19_combout\ = (\input1[9]~input_o\ & !\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[9]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~19_combout\);

-- Location: LCCOMB_X29_Y16_N2
\Mux7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\sel[0]~input_o\ & (((\Mux15~19_combout\ & !\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\Mux15~17_combout\) # ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~17_combout\,
	datab => \Mux15~19_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X29_Y16_N4
\Mux7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux14~9_combout\ & (\input1[0]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux7~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datab => \Mux7~6_combout\,
	datac => \input1[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: IOIBUF_X33_Y27_N8
\input2[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(8),
	o => \input2[8]~input_o\);

-- Location: LCCOMB_X26_Y16_N14
\output~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\input2[8]~input_o\) # (\input1[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[8]~input_o\,
	datac => \input1[8]~input_o\,
	combout => \output~7_combout\);

-- Location: LCCOMB_X27_Y16_N0
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\input2[8]~input_o\ $ (\input1[8]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\input2[8]~input_o\ & ((\input1[8]~input_o\) # (!\Add0~15\))) # (!\input2[8]~input_o\ & (\input1[8]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[8]~input_o\,
	datab => \input1[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X26_Y16_N8
\Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\input1[8]~input_o\ & ((\sel[0]~input_o\ & ((!\sel[2]~input_o\))) # (!\sel[0]~input_o\ & (\input2[8]~input_o\ & \sel[2]~input_o\)))) # (!\input1[8]~input_o\ & (((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[8]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \input2[8]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X26_Y16_N2
\Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux14~4_combout\ & ((\Mux7~3_combout\ & (!\output~7_combout\)) # (!\Mux7~3_combout\ & ((\Add0~16_combout\))))) # (!\Mux14~4_combout\ & (((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \output~7_combout\,
	datac => \Add0~16_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X26_Y17_N16
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\input1[8]~input_o\ $ (\input2[8]~input_o\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\input1[8]~input_o\ & ((!\Add1~15\) # (!\input2[8]~input_o\))) # (!\input1[8]~input_o\ & (!\input2[8]~input_o\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[8]~input_o\,
	datab => \input2[8]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X26_Y16_N16
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\sel[2]~input_o\ & (\Add1~16_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \Add1~16_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X26_Y16_N26
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\input1[8]~input_o\) # ((\input2[8]~input_o\)))) # (!\Mux7~0_combout\ & (!\sel[2]~input_o\ & (\input1[8]~input_o\ $ (\input2[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[8]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \input2[8]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X25_Y20_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (\input1[4]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (!\input1[3]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datad => \input1[4]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4));

-- Location: LCCOMB_X25_Y20_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\input1[6]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((!\input1[5]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \input1[6]~input_o\,
	datac => \input1[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6));

-- Location: LCCOMB_X23_Y20_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\);

-- Location: IOIBUF_X26_Y31_N1
\input2[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(9),
	o => \input2[9]~input_o\);

-- Location: LCCOMB_X26_Y19_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\ = (\input2[7]~input_o\) # ((\input2[6]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\) # (\input2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|_~0_combout\,
	datab => \input2[7]~input_o\,
	datac => \input2[6]~input_o\,
	datad => \input2[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\);

-- Location: LCCOMB_X26_Y19_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) = LCELL(\input2[9]~input_o\ $ (((\input1[0]~input_o\ & ((\input2[8]~input_o\) # (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\))) # (!\input1[0]~input_o\ & 
-- (\input2[8]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]~input_o\,
	datab => \input1[0]~input_o\,
	datac => \input2[8]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0));

-- Location: LCCOMB_X24_Y20_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\);

-- Location: LCCOMB_X26_Y19_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ = \input2[9]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\ & \input2[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\,
	datab => \input2[8]~input_o\,
	datac => \input2[9]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\);

-- Location: LCCOMB_X27_Y21_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8) = LCELL((\input2[0]~input_o\ & ((\input2[1]~input_o\ $ (\input1[8]~input_o\)))) # (!\input2[0]~input_o\ & (!\input1[7]~input_o\ & (\input2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input1[7]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input1[8]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8));

-- Location: LCCOMB_X26_Y20_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\);

-- Location: LCCOMB_X25_Y18_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ $ (\input1[2]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (!\input1[1]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datad => \input1[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2));

-- Location: LCCOMB_X25_Y18_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\);

-- Location: LCCOMB_X24_Y17_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~8_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~8_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~8_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\);

-- Location: LCCOMB_X26_Y16_N28
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\ & !\Mux7~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X26_Y16_N20
\Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & ((\Mux7~2_combout\))) # (!\sel[1]~input_o\ & (\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \Mux7~4_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X26_Y16_N22
\Mux7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~5_combout\) # ((\Mux7~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datab => \Mux7~5_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X27_Y19_N20
\Mux15~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~20_combout\ = (!\sel[2]~input_o\ & \input1[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \input1[10]~input_o\,
	combout => \Mux15~20_combout\);

-- Location: LCCOMB_X26_Y15_N24
\Mux6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\sel[0]~input_o\ & (((\Mux15~20_combout\ & !\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\Mux15~18_combout\) # ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux15~18_combout\,
	datac => \Mux15~20_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X26_Y15_N2
\Mux6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux14~9_combout\ & (\input1[1]~input_o\ & ((!\Mux6~6_combout\) # (!\sel[2]~input_o\)))) # (!\Mux14~9_combout\ & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux14~9_combout\,
	datac => \input1[1]~input_o\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X25_Y20_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\input1[7]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\input1[6]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \input1[6]~input_o\,
	datac => \input1[7]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7));

-- Location: LCCOMB_X25_Y20_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\input1[5]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & !\input1[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[5]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datad => \input1[4]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5));

-- Location: LCCOMB_X23_Y20_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~7\);

-- Location: LCCOMB_X26_Y19_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ = \input2[8]~input_o\ $ (((\input2[7]~input_o\) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10_combout\ & \input2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~10_combout\,
	datab => \input2[6]~input_o\,
	datac => \input2[8]~input_o\,
	datad => \input2[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\);

-- Location: LCCOMB_X26_Y19_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ $ (((\input1[1]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ & (!\input1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	datab => \input1[0]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\,
	datad => \input1[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1));

-- Location: LCCOMB_X24_Y20_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\);

-- Location: LCCOMB_X27_Y21_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) = LCELL((\input2[0]~input_o\ & (\input1[9]~input_o\ $ ((\input2[1]~input_o\)))) # (!\input2[0]~input_o\ & (((\input2[1]~input_o\ & !\input1[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input1[9]~input_o\,
	datac => \input2[1]~input_o\,
	datad => \input1[8]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9));

-- Location: LCCOMB_X26_Y20_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\);

-- Location: LCCOMB_X25_Y18_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\input1[3]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & !\input1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datad => \input1[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3));

-- Location: LCCOMB_X25_Y18_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~11\);

-- Location: LCCOMB_X24_Y17_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\);

-- Location: LCCOMB_X26_Y17_N18
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\input2[9]~input_o\ & ((\input1[9]~input_o\ & (!\Add1~17\)) # (!\input1[9]~input_o\ & ((\Add1~17\) # (GND))))) # (!\input2[9]~input_o\ & ((\input1[9]~input_o\ & (\Add1~17\ & VCC)) # (!\input1[9]~input_o\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\input2[9]~input_o\ & ((!\Add1~17\) # (!\input1[9]~input_o\))) # (!\input2[9]~input_o\ & (!\input1[9]~input_o\ & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[9]~input_o\,
	datab => \input1[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X26_Y16_N0
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\sel[2]~input_o\ & (\Add1~18_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X26_Y16_N18
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\input2[9]~input_o\) # (\input1[9]~input_o\)))) # (!\Mux6~0_combout\ & (!\sel[2]~input_o\ & (\input2[9]~input_o\ $ (\input1[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \input2[9]~input_o\,
	datad => \input1[9]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X26_Y16_N12
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\) # ((\Mux6~0_combout\ & ((!\Mux14~0_combout\))) # (!\Mux6~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ & \Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\,
	datab => \Mux6~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X26_Y16_N6
\output~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (\input2[9]~input_o\) # (\input1[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[9]~input_o\,
	datad => \input1[9]~input_o\,
	combout => \output~8_combout\);

-- Location: LCCOMB_X26_Y16_N24
\Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\input1[9]~input_o\ & ((\sel[2]~input_o\ & (\input2[9]~input_o\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\))))) # (!\input1[9]~input_o\ & (((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[9]~input_o\,
	datab => \input2[9]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X27_Y16_N2
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\input1[9]~input_o\ & ((\input2[9]~input_o\ & (\Add0~17\ & VCC)) # (!\input2[9]~input_o\ & (!\Add0~17\)))) # (!\input1[9]~input_o\ & ((\input2[9]~input_o\ & (!\Add0~17\)) # (!\input2[9]~input_o\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\input1[9]~input_o\ & (!\input2[9]~input_o\ & !\Add0~17\)) # (!\input1[9]~input_o\ & ((!\Add0~17\) # (!\input2[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[9]~input_o\,
	datab => \input2[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X26_Y16_N10
\Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux6~3_combout\ & (((!\Mux14~4_combout\)) # (!\output~8_combout\))) # (!\Mux6~3_combout\ & (((\Mux14~4_combout\ & \Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~8_combout\,
	datab => \Mux6~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Add0~18_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X26_Y16_N4
\Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux6~2_combout\)) # (!\sel[1]~input_o\ & ((\Mux6~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \sel[1]~input_o\,
	datac => \Mux6~4_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X26_Y16_N30
\Mux6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~5_combout\) # ((\Mux6~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~7_combout\,
	datac => \Mux6~5_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux6~8_combout\);

-- Location: IOIBUF_X33_Y28_N1
\input2[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(10),
	o => \input2[10]~input_o\);

-- Location: LCCOMB_X26_Y17_N20
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\input1[10]~input_o\ $ (\input2[10]~input_o\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\input1[10]~input_o\ & ((!\Add1~19\) # (!\input2[10]~input_o\))) # (!\input1[10]~input_o\ & (!\input2[10]~input_o\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \input2[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X27_Y19_N6
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\sel[0]~input_o\ & ((!\sel[2]~input_o\))) # (!\sel[0]~input_o\ & (\Add1~20_combout\ & \sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y20_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (\input1[8]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\input1[7]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[7]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \input1[8]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8));

-- Location: LCCOMB_X25_Y20_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\input1[6]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & !\input1[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datab => \input1[6]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \input1[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6));

-- Location: LCCOMB_X26_Y20_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\);

-- Location: LCCOMB_X26_Y19_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ $ (((\input1[2]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ & (!\input1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	datab => \input1[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\,
	datad => \input1[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2));

-- Location: LCCOMB_X27_Y21_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\input1[4]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (((!\input1[3]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[4]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datac => \input1[3]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4));

-- Location: LCCOMB_X23_Y20_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\);

-- Location: LCCOMB_X24_Y20_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~8_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~8_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~8_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\);

-- Location: LCCOMB_X26_Y19_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\ = (\input2[9]~input_o\) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\ & \input2[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\,
	datab => \input2[8]~input_o\,
	datac => \input2[9]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\);

-- Location: IOIBUF_X26_Y31_N8
\input2[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(11),
	o => \input2[11]~input_o\);

-- Location: LCCOMB_X26_Y21_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(0) = LCELL(\input2[11]~input_o\ $ (((\input2[10]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\) # (\input1[0]~input_o\))) # (!\input2[10]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\ & \input1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[10]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\,
	datac => \input2[11]~input_o\,
	datad => \input1[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(0));

-- Location: LCCOMB_X27_Y21_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(10) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ ((\input1[10]~input_o\)))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & ((!\input1[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input2[1]~input_o\,
	datac => \input1[10]~input_o\,
	datad => \input1[9]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(10));

-- Location: LCCOMB_X26_Y21_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\ = \input2[11]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\ & \input2[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input2[11]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\,
	datad => \input2[10]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\);

-- Location: LCCOMB_X26_Y21_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(10) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\ $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(10) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\ & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(10) & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(10),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~1\);

-- Location: LCCOMB_X25_Y18_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\);

-- Location: LCCOMB_X24_Y17_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~12_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~12_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~12_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~12_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\);

-- Location: LCCOMB_X27_Y19_N16
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\input1[10]~input_o\) # (\input2[10]~input_o\)))) # (!\Mux5~0_combout\ & (!\sel[2]~input_o\ & (\input1[10]~input_o\ $ (\input2[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \sel[2]~input_o\,
	datac => \input1[10]~input_o\,
	datad => \input2[10]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X27_Y19_N10
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\) # ((\Mux5~0_combout\ & ((!\Mux14~0_combout\))) # (!\Mux5~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\ & \Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X27_Y16_N4
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\input1[10]~input_o\ $ (\input2[10]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\input1[10]~input_o\ & ((\input2[10]~input_o\) # (!\Add0~19\))) # (!\input1[10]~input_o\ & (\input2[10]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \input2[10]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X27_Y19_N14
\Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\input1[10]~input_o\ & ((\sel[2]~input_o\ & (!\sel[0]~input_o\ & \input2[10]~input_o\)) # (!\sel[2]~input_o\ & (\sel[0]~input_o\)))) # (!\input1[10]~input_o\ & (!\sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input2[10]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X27_Y19_N4
\output~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (\input1[10]~input_o\) # (\input2[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[10]~input_o\,
	datad => \input2[10]~input_o\,
	combout => \output~9_combout\);

-- Location: LCCOMB_X26_Y19_N24
\Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux14~4_combout\ & ((\Mux5~3_combout\ & ((!\output~9_combout\))) # (!\Mux5~3_combout\ & (\Add0~20_combout\)))) # (!\Mux14~4_combout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Mux14~4_combout\,
	datac => \Mux5~3_combout\,
	datad => \output~9_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X26_Y19_N10
\Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux5~2_combout\)) # (!\sel[1]~input_o\ & ((\Mux5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux5~2_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X27_Y16_N18
\Mux15~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~21_combout\ = (\input1[11]~input_o\ & !\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[11]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~21_combout\);

-- Location: LCCOMB_X29_Y16_N22
\Mux5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\sel[0]~input_o\ & (\Mux15~21_combout\ & ((!\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (((\Mux15~19_combout\) # (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~21_combout\,
	datab => \Mux15~19_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X29_Y16_N16
\Mux5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux14~9_combout\ & (\input1[2]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux5~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \sel[2]~input_o\,
	datac => \input1[2]~input_o\,
	datad => \Mux14~9_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X26_Y19_N20
\Mux5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~5_combout\) # ((\Mux5~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Mux5~7_combout\,
	datac => \sel[3]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X24_Y17_N26
\Mux15~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~22_combout\ = (\input1[12]~input_o\ & !\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[12]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~22_combout\);

-- Location: LCCOMB_X26_Y15_N12
\Mux4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux15~22_combout\))) # (!\sel[0]~input_o\ & (\Mux15~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~20_combout\,
	datab => \sel[1]~input_o\,
	datac => \Mux15~22_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X26_Y15_N14
\Mux4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux14~9_combout\ & (\input1[3]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux4~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux14~9_combout\,
	datac => \input1[3]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X25_Y20_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\input1[9]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & !\input1[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[9]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \input1[8]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9));

-- Location: LCCOMB_X25_Y20_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (\input1[7]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (!\input1[6]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datab => \input1[6]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \input1[7]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7));

-- Location: LCCOMB_X26_Y20_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\);

-- Location: LCCOMB_X26_Y18_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(11) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ (((\input1[11]~input_o\))))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & (!\input1[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]~input_o\,
	datab => \input2[0]~input_o\,
	datac => \input1[10]~input_o\,
	datad => \input1[11]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(11));

-- Location: LCCOMB_X26_Y21_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(11) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(11) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(11),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~3\);

-- Location: LCCOMB_X25_Y18_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~15\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~15\);

-- Location: LCCOMB_X26_Y21_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ = \input2[10]~input_o\ $ (((\input2[9]~input_o\) # ((\input2[8]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[8]~input_o\,
	datab => \input2[9]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~4_combout\,
	datad => \input2[10]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\);

-- Location: LCCOMB_X26_Y21_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (\input1[1]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (((!\input1[0]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datab => \input1[0]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(1));

-- Location: LCCOMB_X26_Y19_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ $ ((\input1[3]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ & ((!\input1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\,
	datac => \input1[3]~input_o\,
	datad => \input1[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3));

-- Location: LCCOMB_X27_Y21_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ $ (\input1[5]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (!\input1[4]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[4]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datad => \input1[5]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5));

-- Location: LCCOMB_X23_Y20_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~11\);

-- Location: LCCOMB_X24_Y20_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(1) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(1),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\);

-- Location: LCCOMB_X24_Y17_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~14_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\);

-- Location: LCCOMB_X26_Y17_N22
\Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\input1[11]~input_o\ & ((\input2[11]~input_o\ & (!\Add1~21\)) # (!\input2[11]~input_o\ & (\Add1~21\ & VCC)))) # (!\input1[11]~input_o\ & ((\input2[11]~input_o\ & ((\Add1~21\) # (GND))) # (!\input2[11]~input_o\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\input1[11]~input_o\ & (\input2[11]~input_o\ & !\Add1~21\)) # (!\input1[11]~input_o\ & ((\input2[11]~input_o\) # (!\Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[11]~input_o\,
	datab => \input2[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X27_Y20_N22
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\sel[2]~input_o\ & (!\sel[0]~input_o\ & \Add1~22_combout\)) # (!\sel[2]~input_o\ & (\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \Add1~22_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y14_N18
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\input2[11]~input_o\) # (\input1[11]~input_o\)))) # (!\Mux4~0_combout\ & (!\sel[2]~input_o\ & (\input2[11]~input_o\ $ (\input1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \input2[11]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \input1[11]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X27_Y14_N12
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ & !\Mux4~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X27_Y14_N16
\Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\sel[2]~input_o\ & (\input1[11]~input_o\ & (\input2[11]~input_o\ & !\sel[0]~input_o\))) # (!\sel[2]~input_o\ & (((\sel[0]~input_o\)) # (!\input1[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \input1[11]~input_o\,
	datac => \input2[11]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X27_Y14_N22
\output~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~10_combout\ = (\input2[11]~input_o\) # (\input1[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[11]~input_o\,
	datad => \input1[11]~input_o\,
	combout => \output~10_combout\);

-- Location: LCCOMB_X27_Y16_N6
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\input2[11]~input_o\ & ((\input1[11]~input_o\ & (\Add0~21\ & VCC)) # (!\input1[11]~input_o\ & (!\Add0~21\)))) # (!\input2[11]~input_o\ & ((\input1[11]~input_o\ & (!\Add0~21\)) # (!\input1[11]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\input2[11]~input_o\ & (!\input1[11]~input_o\ & !\Add0~21\)) # (!\input2[11]~input_o\ & ((!\Add0~21\) # (!\input1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[11]~input_o\,
	datab => \input1[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X27_Y14_N2
\Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux14~4_combout\ & ((\Mux4~3_combout\ & (!\output~10_combout\)) # (!\Mux4~3_combout\ & ((\Add0~22_combout\))))) # (!\Mux14~4_combout\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mux4~3_combout\,
	datac => \output~10_combout\,
	datad => \Add0~22_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X27_Y14_N4
\Mux4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux4~2_combout\)) # (!\sel[1]~input_o\ & ((\Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \Mux4~4_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X27_Y14_N6
\Mux4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~5_combout\) # ((\Mux4~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~7_combout\,
	datac => \Mux4~5_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux4~8_combout\);

-- Location: IOIBUF_X31_Y31_N8
\input2[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(12),
	o => \input2[12]~input_o\);

-- Location: LCCOMB_X29_Y16_N18
\output~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~11_combout\ = (\input2[12]~input_o\) # (\input1[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input2[12]~input_o\,
	datad => \input1[12]~input_o\,
	combout => \output~11_combout\);

-- Location: LCCOMB_X27_Y16_N8
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\input1[12]~input_o\ $ (\input2[12]~input_o\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\input1[12]~input_o\ & ((\input2[12]~input_o\) # (!\Add0~23\))) # (!\input1[12]~input_o\ & (\input2[12]~input_o\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[12]~input_o\,
	datab => \input2[12]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X29_Y16_N12
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\input1[12]~input_o\ & ((\sel[0]~input_o\ & ((!\sel[2]~input_o\))) # (!\sel[0]~input_o\ & (\input2[12]~input_o\ & \sel[2]~input_o\)))) # (!\input1[12]~input_o\ & (((!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[12]~input_o\,
	datab => \input1[12]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X29_Y16_N14
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux14~4_combout\ & ((\Mux3~3_combout\ & (!\output~11_combout\)) # (!\Mux3~3_combout\ & ((\Add0~24_combout\))))) # (!\Mux14~4_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \output~11_combout\,
	datac => \Add0~24_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X26_Y20_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\input1[4]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (((!\input1[3]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[4]~input_o\,
	datab => \input1[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4));

-- Location: LCCOMB_X26_Y20_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\input1[6]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & !\input1[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \input1[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6));

-- Location: LCCOMB_X26_Y20_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\);

-- Location: LCCOMB_X26_Y21_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (\input1[2]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\ & !\input1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[2]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\,
	datad => \input1[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(2));

-- Location: LCCOMB_X27_Y20_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\ = (\input2[11]~input_o\) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\ & \input2[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\,
	datac => \input2[11]~input_o\,
	datad => \input2[10]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\);

-- Location: IOIBUF_X26_Y0_N8
\input2[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(13),
	o => \input2[13]~input_o\);

-- Location: LCCOMB_X27_Y20_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(0) = LCELL(\input2[13]~input_o\ $ (((\input1[0]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\) # (\input2[12]~input_o\))) # (!\input1[0]~input_o\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\ & \input2[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[0]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\,
	datac => \input2[13]~input_o\,
	datad => \input2[12]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(0));

-- Location: LCCOMB_X23_Y20_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(0) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(0)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(0) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\);

-- Location: LCCOMB_X24_Y20_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~12_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~12_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~12_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~12_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\);

-- Location: LCCOMB_X26_Y18_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(12) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ (((\input1[12]~input_o\))))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & (!\input1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]~input_o\,
	datab => \input1[11]~input_o\,
	datac => \input2[0]~input_o\,
	datad => \input1[12]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(12));

-- Location: LCCOMB_X27_Y20_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ = \input2[13]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\ & \input2[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\,
	datac => \input2[13]~input_o\,
	datad => \input2[12]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\);

-- Location: LCCOMB_X26_Y18_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(12) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(12) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(12) & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(12),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~1\);

-- Location: LCCOMB_X26_Y18_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(10) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\input1[10]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & !\input1[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \input1[10]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \input1[9]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(10));

-- Location: LCCOMB_X27_Y21_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (((\input1[8]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (!\input1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datac => \input1[7]~input_o\,
	datad => \input1[8]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8));

-- Location: LCCOMB_X26_Y21_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(10) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(10) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(10) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(10),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\);

-- Location: LCCOMB_X25_Y18_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~16_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~0_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~4_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~15\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~4_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~15\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~4_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~15\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~16_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\);

-- Location: LCCOMB_X24_Y17_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~16_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~16_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~16_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~16_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\);

-- Location: LCCOMB_X26_Y17_N24
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\input1[12]~input_o\ $ (\input2[12]~input_o\ $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\input1[12]~input_o\ & ((!\Add1~23\) # (!\input2[12]~input_o\))) # (!\input1[12]~input_o\ & (!\input2[12]~input_o\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[12]~input_o\,
	datab => \input2[12]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X24_Y17_N28
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sel[0]~input_o\ & ((!\sel[2]~input_o\))) # (!\sel[0]~input_o\ & (\Add1~24_combout\ & \sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Add1~24_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X24_Y17_N30
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\input1[12]~input_o\) # ((\input2[12]~input_o\)))) # (!\Mux3~0_combout\ & (!\sel[2]~input_o\ & (\input1[12]~input_o\ $ (\input2[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[12]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \input2[12]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X24_Y17_N24
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\ & !\Mux3~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X29_Y16_N0
\Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & ((\Mux3~2_combout\))) # (!\sel[1]~input_o\ & (\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux3~4_combout\,
	datac => \Mux3~2_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X29_Y16_N10
\Mux15~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~23_combout\ = (\input1[13]~input_o\ & !\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input1[13]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux15~23_combout\);

-- Location: LCCOMB_X29_Y16_N20
\Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\sel[0]~input_o\ & (\Mux15~23_combout\ & ((!\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (((\Mux15~21_combout\) # (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~23_combout\,
	datab => \Mux15~21_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X29_Y16_N30
\Mux3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux14~9_combout\ & (\input1[4]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux3~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datab => \Mux3~6_combout\,
	datac => \sel[2]~input_o\,
	datad => \input1[4]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X29_Y16_N24
\Mux3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~5_combout\) # ((\Mux3~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~5_combout\,
	datac => \Mux3~7_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X26_Y18_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(11) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (\input1[11]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\input1[10]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \input1[10]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \input1[11]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(11));

-- Location: LCCOMB_X27_Y21_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ ((\input1[9]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & ((!\input1[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \input1[9]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datad => \input1[8]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9));

-- Location: LCCOMB_X26_Y21_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(11) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(11) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(11) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(11) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(11),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~7\);

-- Location: LCCOMB_X26_Y18_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(13) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ ((\input1[13]~input_o\)))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & ((!\input1[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[1]~input_o\,
	datab => \input1[13]~input_o\,
	datac => \input2[0]~input_o\,
	datad => \input1[12]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(13));

-- Location: LCCOMB_X26_Y18_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(13) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(13) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(13),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~3\);

-- Location: LCCOMB_X25_Y18_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~19\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~17\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~19\);

-- Location: LCCOMB_X26_Y21_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (\input1[3]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (((!\input1[2]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\,
	datac => \input1[2]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(3));

-- Location: LCCOMB_X27_Y20_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ = \input2[12]~input_o\ $ (((\input2[11]~input_o\) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\ & \input2[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~6_combout\,
	datab => \input2[12]~input_o\,
	datac => \input2[11]~input_o\,
	datad => \input2[10]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\);

-- Location: LCCOMB_X27_Y20_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ $ ((\input1[1]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ & ((!\input1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\,
	datab => \input1[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\,
	datad => \input1[0]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1));

-- Location: LCCOMB_X23_Y20_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~15\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(3) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(3),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~15\);

-- Location: LCCOMB_X26_Y20_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ $ (\input1[7]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (!\input1[6]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \input1[7]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7));

-- Location: LCCOMB_X26_Y20_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\input1[5]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (((!\input1[4]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[5]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\,
	datac => \input1[4]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5));

-- Location: LCCOMB_X26_Y20_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\);

-- Location: LCCOMB_X24_Y20_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~23\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~14_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~23\);

-- Location: LCCOMB_X24_Y17_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~27\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~18_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~27\);

-- Location: LCCOMB_X26_Y17_N26
\Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\input1[13]~input_o\ & ((\input2[13]~input_o\ & (!\Add1~25\)) # (!\input2[13]~input_o\ & (\Add1~25\ & VCC)))) # (!\input1[13]~input_o\ & ((\input2[13]~input_o\ & ((\Add1~25\) # (GND))) # (!\input2[13]~input_o\ & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\input1[13]~input_o\ & (\input2[13]~input_o\ & !\Add1~25\)) # (!\input1[13]~input_o\ & ((\input2[13]~input_o\) # (!\Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[13]~input_o\,
	datab => \input2[13]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X27_Y15_N14
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sel[2]~input_o\ & (\Add1~26_combout\ & !\sel[0]~input_o\)) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~26_combout\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y15_N16
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\input1[13]~input_o\) # ((\input2[13]~input_o\)))) # (!\Mux2~0_combout\ & (!\sel[2]~input_o\ & (\input1[13]~input_o\ $ (\input2[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[13]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \sel[2]~input_o\,
	datad => \input2[13]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X27_Y15_N10
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\) # ((\Mux14~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\ & !\Mux2~0_combout\)) # (!\Mux14~0_combout\ & ((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X27_Y16_N28
\output~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~12_combout\ = (\input1[13]~input_o\) # (\input2[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[13]~input_o\,
	datac => \input2[13]~input_o\,
	combout => \output~12_combout\);

-- Location: LCCOMB_X27_Y16_N30
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\sel[0]~input_o\ & (((!\sel[2]~input_o\)))) # (!\sel[0]~input_o\ & ((\input1[13]~input_o\ & (\input2[13]~input_o\ & \sel[2]~input_o\)) # (!\input1[13]~input_o\ & ((!\sel[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \input1[13]~input_o\,
	datac => \input2[13]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X27_Y16_N10
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\input2[13]~input_o\ & ((\input1[13]~input_o\ & (\Add0~25\ & VCC)) # (!\input1[13]~input_o\ & (!\Add0~25\)))) # (!\input2[13]~input_o\ & ((\input1[13]~input_o\ & (!\Add0~25\)) # (!\input1[13]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\input2[13]~input_o\ & (!\input1[13]~input_o\ & !\Add0~25\)) # (!\input2[13]~input_o\ & ((!\Add0~25\) # (!\input1[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[13]~input_o\,
	datab => \input1[13]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X27_Y16_N24
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux14~4_combout\ & ((\Mux2~3_combout\ & (!\output~12_combout\)) # (!\Mux2~3_combout\ & ((\Add0~26_combout\))))) # (!\Mux14~4_combout\ & (((\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \output~12_combout\,
	datac => \Mux2~3_combout\,
	datad => \Add0~26_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X27_Y15_N12
\Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux2~2_combout\)) # (!\sel[1]~input_o\ & ((\Mux2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~4_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[3]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X23_Y16_N30
\Mux15~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~24_combout\ = (!\sel[2]~input_o\ & \input1[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[2]~input_o\,
	datad => \input1[14]~input_o\,
	combout => \Mux15~24_combout\);

-- Location: LCCOMB_X26_Y15_N0
\Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux15~24_combout\))) # (!\sel[0]~input_o\ & (\Mux15~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~22_combout\,
	datab => \sel[1]~input_o\,
	datac => \Mux15~24_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X26_Y15_N18
\Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux14~9_combout\ & (\input1[5]~input_o\ & ((!\Mux2~6_combout\) # (!\sel[2]~input_o\)))) # (!\Mux14~9_combout\ & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux14~9_combout\,
	datac => \input1[5]~input_o\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X27_Y15_N22
\Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~5_combout\) # ((\Mux2~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux2~7_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X29_Y16_N26
\Mux15~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~25_combout\ = (!\sel[2]~input_o\ & \input1[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \input1[15]~input_o\,
	combout => \Mux15~25_combout\);

-- Location: LCCOMB_X29_Y16_N28
\Mux1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\Mux15~25_combout\)) # (!\sel[0]~input_o\ & ((\Mux15~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~25_combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \Mux15~23_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X29_Y16_N6
\Mux1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux14~9_combout\ & (\input1[6]~input_o\ & ((!\sel[2]~input_o\) # (!\Mux1~6_combout\)))) # (!\Mux14~9_combout\ & (\Mux1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datab => \Mux1~6_combout\,
	datac => \input1[6]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X26_Y20_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\input1[6]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (((!\input1[5]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\,
	datac => \input1[5]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6));

-- Location: LCCOMB_X26_Y21_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & ((\input1[4]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (!\input1[3]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[3]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\,
	datac => \input1[4]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(4));

-- Location: LCCOMB_X26_Y20_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(4) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(4)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(4) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\);

-- Location: LCCOMB_X27_Y20_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ $ (((\input1[2]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ & (!\input1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\,
	datab => \input1[1]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\,
	datad => \input1[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(2));

-- Location: IOIBUF_X14_Y31_N8
\input2[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(14),
	o => \input2[14]~input_o\);

-- Location: LCCOMB_X27_Y20_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\ = (\input2[13]~input_o\) # ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\ & \input2[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~8_combout\,
	datac => \input2[13]~input_o\,
	datad => \input2[12]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\);

-- Location: LCCOMB_X27_Y20_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(0) = LCELL((\input1[0]~input_o\ & (\input2[14]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datab => \input1[0]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(0));

-- Location: LCCOMB_X23_Y20_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~16_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(0) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~15\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(0)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~15\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(0) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~15\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~16_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\);

-- Location: LCCOMB_X24_Y20_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~24_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~16_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~23\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~16_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~23\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~16_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~16_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~23\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~24_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\);

-- Location: LCCOMB_X26_Y18_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(14) = LCELL((\input2[0]~input_o\ & ((\input1[14]~input_o\ $ (\input2[1]~input_o\)))) # (!\input2[0]~input_o\ & (!\input1[13]~input_o\ & ((\input2[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[13]~input_o\,
	datab => \input2[0]~input_o\,
	datac => \input1[14]~input_o\,
	datad => \input2[1]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(14));

-- Location: LCCOMB_X26_Y18_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(12) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (\input1[12]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\input1[11]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \input1[11]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \input1[12]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(12));

-- Location: LCCOMB_X26_Y18_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(14) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(12) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(14) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(12)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(14) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(12) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(14),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(12),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\);

-- Location: LCCOMB_X27_Y21_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(10) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ ((\input1[10]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & ((!\input1[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datac => \input1[10]~input_o\,
	datad => \input1[9]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(10));

-- Location: LCCOMB_X27_Y21_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\input1[8]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (((!\input1[7]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[8]~input_o\,
	datab => \input1[7]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8));

-- Location: LCCOMB_X26_Y21_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(10) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(10) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(10) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(10),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\);

-- Location: LCCOMB_X25_Y18_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~20_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~8_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~19\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~8_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~19\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~8_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~19\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~20_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\);

-- Location: LCCOMB_X24_Y17_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~28_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~24_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~20_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~27\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~24_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~20_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~27\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~24_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~20_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~24_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~20_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~27\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~28_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\);

-- Location: LCCOMB_X26_Y17_N28
\Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\input2[14]~input_o\ $ (\input1[14]~input_o\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\input2[14]~input_o\ & (\input1[14]~input_o\ & !\Add1~27\)) # (!\input2[14]~input_o\ & ((\input1[14]~input_o\) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datab => \input1[14]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X24_Y17_N18
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sel[0]~input_o\ & ((!\sel[2]~input_o\))) # (!\sel[0]~input_o\ & (\Add1~28_combout\ & \sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Add1~28_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\input2[14]~input_o\) # ((\input1[14]~input_o\)))) # (!\Mux1~0_combout\ & (!\sel[2]~input_o\ & (\input2[14]~input_o\ $ (\input1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \input1[14]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X24_Y17_N22
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\) # ((\Mux1~0_combout\ & ((!\Mux14~0_combout\))) # (!\Mux1~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~28_combout\ & \Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~28_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X27_Y16_N20
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\sel[2]~input_o\ & (\input2[14]~input_o\ & (!\sel[0]~input_o\ & \input1[14]~input_o\))) # (!\sel[2]~input_o\ & (((\sel[0]~input_o\) # (!\input1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input1[14]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X27_Y16_N26
\output~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~13_combout\ = (\input2[14]~input_o\) # (\input1[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datad => \input1[14]~input_o\,
	combout => \output~13_combout\);

-- Location: LCCOMB_X27_Y16_N12
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\input2[14]~input_o\ $ (\input1[14]~input_o\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\input2[14]~input_o\ & ((\input1[14]~input_o\) # (!\Add0~27\))) # (!\input2[14]~input_o\ & (\input1[14]~input_o\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datab => \input1[14]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X27_Y16_N22
\Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux14~4_combout\ & ((\Mux1~3_combout\ & (!\output~13_combout\)) # (!\Mux1~3_combout\ & ((\Add0~28_combout\))))) # (!\Mux14~4_combout\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mux1~3_combout\,
	datac => \output~13_combout\,
	datad => \Add0~28_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X26_Y19_N6
\Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!\sel[3]~input_o\ & ((\sel[1]~input_o\ & (\Mux1~2_combout\)) # (!\sel[1]~input_o\ & ((\Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[3]~input_o\,
	datab => \Mux1~2_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X26_Y19_N16
\Mux1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux1~5_combout\) # ((\Mux1~7_combout\ & \sel[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~7_combout\,
	datac => \sel[3]~input_o\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~8_combout\);

-- Location: IOIBUF_X20_Y31_N1
\input2[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input2(15),
	o => \input2[15]~input_o\);

-- Location: LCCOMB_X27_Y16_N14
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\input1[15]~input_o\ & ((\input2[15]~input_o\ & (\Add0~29\ & VCC)) # (!\input2[15]~input_o\ & (!\Add0~29\)))) # (!\input1[15]~input_o\ & ((\input2[15]~input_o\ & (!\Add0~29\)) # (!\input2[15]~input_o\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\input1[15]~input_o\ & (!\input2[15]~input_o\ & !\Add0~29\)) # (!\input1[15]~input_o\ & ((!\Add0~29\) # (!\input2[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input1[15]~input_o\,
	datab => \input2[15]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X27_Y18_N26
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sel[2]~input_o\ & ((!\input1[15]~input_o\) # (!\input2[15]~input_o\))) # (!\sel[2]~input_o\ & ((\input1[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \input2[15]~input_o\,
	datad => \input1[15]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X27_Y18_N28
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\Mux0~0_combout\) # ((\input2[15]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \input2[15]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X27_Y18_N30
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ((\Mux15~1_combout\ & (\Add0~30_combout\ & \sel[0]~input_o\))) # (!\Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Add0~30_combout\,
	datac => \sel[0]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \input2[15]~input_o\ $ (\Add1~29\ $ (!\input1[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input2[15]~input_o\,
	datad => \input1[15]~input_o\,
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X27_Y18_N0
\Mux15~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~26_combout\ = (\sel[2]~input_o\ & (((\Add1~30_combout\)))) # (!\sel[2]~input_o\ & (\input2[15]~input_o\ $ (((\input1[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \input2[15]~input_o\,
	datac => \Add1~30_combout\,
	datad => \input1[15]~input_o\,
	combout => \Mux15~26_combout\);

-- Location: LCCOMB_X27_Y20_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(1) = LCELL((\input2[14]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\ & ((\input1[0]~input_o\))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\ & (\input1[1]~input_o\)))) # (!\input2[14]~input_o\ & (\input1[1]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[14]~input_o\,
	datab => \input1[1]~input_o\,
	datac => \input1[0]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(1));

-- Location: LCCOMB_X27_Y20_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ $ ((\input1[3]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ & ((!\input1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\,
	datab => \input1[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\,
	datad => \input1[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3));

-- Location: LCCOMB_X26_Y20_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(1) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(1),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\);

-- Location: LCCOMB_X23_Y20_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(0) = LCELL((\input1[0]~input_o\ & \input2[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input1[0]~input_o\,
	datac => \input2[15]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(0));

-- Location: LCCOMB_X26_Y18_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(13) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\input1[13]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & !\input1[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \input1[13]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \input1[12]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(13));

-- Location: LCCOMB_X27_Y21_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(15) = LCELL((\input2[0]~input_o\ & (\input2[1]~input_o\ $ ((\input1[15]~input_o\)))) # (!\input2[0]~input_o\ & (\input2[1]~input_o\ & ((!\input1[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input2[1]~input_o\,
	datac => \input1[15]~input_o\,
	datad => \input1[14]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(15));

-- Location: LCCOMB_X23_Y20_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(13) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(15) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(13) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(15) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(13) & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(13),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(15),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~1\);

-- Location: LCCOMB_X23_Y20_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~19\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(0) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(0) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~17\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~19\);

-- Location: LCCOMB_X24_Y20_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~27\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~18_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~25\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~27\);

-- Location: LCCOMB_X26_Y20_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & ((\input1[7]~input_o\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (!\input1[6]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\,
	datac => \input1[7]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7));

-- Location: LCCOMB_X26_Y21_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (\input1[5]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (((!\input1[4]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[5]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\,
	datac => \input1[4]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5));

-- Location: LCCOMB_X26_Y21_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~11\);

-- Location: LCCOMB_X27_Y21_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ $ (\input1[9]~input_o\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (!\input1[8]~input_o\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[8]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datad => \input1[9]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9));

-- Location: LCCOMB_X26_Y18_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (((\input1[11]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (!\input1[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datac => \input1[10]~input_o\,
	datad => \input1[11]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11));

-- Location: LCCOMB_X26_Y18_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(11),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~7\);

-- Location: LCCOMB_X25_Y18_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~23\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~10_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~21\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~23\);

-- Location: LCCOMB_X24_Y17_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~30_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~31\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~26_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~22_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~29\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~30_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~31\);

-- Location: LCCOMB_X27_Y18_N8
\Mux15~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~27_combout\ = (!\sel[2]~input_o\ & ((\input2[15]~input_o\) # (\input1[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \input2[15]~input_o\,
	datad => \input1[15]~input_o\,
	combout => \Mux15~27_combout\);

-- Location: LCCOMB_X27_Y18_N18
\Mux15~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~28_combout\ = (\Mux15~27_combout\) # ((\Mux15~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~30_combout\ & \sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~30_combout\,
	datac => \Mux15~27_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux15~28_combout\);

-- Location: LCCOMB_X27_Y18_N12
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((\Mux15~28_combout\) # (!\sel[1]~input_o\)))) # (!\Mux0~2_combout\ & (\Mux15~26_combout\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux15~26_combout\,
	datac => \Mux15~28_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X25_Y17_N0
\Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\sel[1]~input_o\ & (\input1[7]~input_o\)) # (!\sel[1]~input_o\ & (((!\sel[0]~input_o\ & \input1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \input1[7]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \input1[14]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X27_Y18_N22
\Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\sel[3]~input_o\ & (!\sel[2]~input_o\ & ((\Mux0~4_combout\)))) # (!\sel[3]~input_o\ & (((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux0~3_combout\,
	datac => \Mux0~4_combout\,
	datad => \sel[3]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X27_Y16_N16
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = !\Add0~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~31\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X27_Y21_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(16) = LCELL((\input2[1]~input_o\ & ((\input2[0]~input_o\) # (!\input1[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input2[0]~input_o\,
	datab => \input2[1]~input_o\,
	datac => \input1[15]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(16));

-- Location: LCCOMB_X26_Y18_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(14) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (((\input1[14]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (!\input1[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \input1[13]~input_o\,
	datac => \input1[14]~input_o\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(14));

-- Location: LCCOMB_X23_Y20_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~2_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(16) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~1\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(16),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(14),
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~2_combout\);

-- Location: LCCOMB_X23_Y20_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(1) = LCELL((\input1[1]~input_o\ & \input2[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[1]~input_o\,
	datac => \input2[15]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(1));

-- Location: LCCOMB_X23_Y20_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~20_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~2_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(1) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_8~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le12a\(1),
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~19\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~20_combout\);

-- Location: LCCOMB_X27_Y20_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\ & ((\input2[14]~input_o\ & (\input1[1]~input_o\)) # (!\input2[14]~input_o\ & ((\input1[2]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\ & (((\input2[14]~input_o\ & \input1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~11_combout\,
	datab => \input1[1]~input_o\,
	datac => \input2[14]~input_o\,
	datad => \input1[2]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(2));

-- Location: LCCOMB_X27_Y20_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ $ (((\input1[4]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\ & (!\input1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[6]~9_combout\,
	datab => \input1[3]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[6]~5_combout\,
	datad => \input1[4]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(4));

-- Location: LCCOMB_X26_Y20_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le11a\(2),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le10a\(4),
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\);

-- Location: LCCOMB_X24_Y20_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~28_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~20_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~27\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_4~20_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~27\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~28_combout\);

-- Location: LCCOMB_X27_Y21_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(10) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\input1[10]~input_o\ $ ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & !\input1[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[10]~input_o\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datad => \input1[9]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(10));

-- Location: LCCOMB_X26_Y18_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(12) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (((\input1[12]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (!\input1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \input1[11]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	datad => \input1[12]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(12));

-- Location: LCCOMB_X26_Y18_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~8_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(10) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(12) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(10),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(12),
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~8_combout\);

-- Location: LCCOMB_X26_Y20_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ $ (((\input1[8]~input_o\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\ & (!\input1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[4]~5_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[4]~3_combout\,
	datac => \input1[7]~input_o\,
	datad => \input1[8]~input_o\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8));

-- Location: LCCOMB_X26_Y21_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(6) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (\input1[6]~input_o\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\ & (((!\input1[5]~input_o\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[6]~input_o\,
	datab => \input1[5]~input_o\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[5]~4_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[5]~7_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(6));

-- Location: LCCOMB_X26_Y21_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~12_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~11\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le9a\(6),
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~12_combout\);

-- Location: LCCOMB_X25_Y18_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~24_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~8_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~23\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_7~8_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_6~12_combout\,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~23\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~24_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~32_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~28_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~31\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~28_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~24_combout\,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~31\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~32_combout\);

-- Location: LCCOMB_X24_Y16_N10
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux15~1_combout\ & ((\sel[1]~input_o\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~32_combout\))) # (!\sel[1]~input_o\ & (\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~32_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X24_Y16_N4
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\input1[0]~input_o\))) # (!\sel[0]~input_o\ & (\input1[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1[15]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \input1[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X24_Y16_N22
\Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~0_combout\) # ((\sel[3]~input_o\ & (\Mux16~1_combout\ & !\sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \sel[3]~input_o\,
	datac => \Mux16~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux16~2_combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


