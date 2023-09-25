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

-- DATE "09/24/2023 22:29:48"

-- 
-- Device: Altera EP4CGX110CF23I7 Package FBGA484
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
-- ~ALTERA_NCEO~	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
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

ENTITY 	top_level IS
    PORT (
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- led0[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux3~7_combout\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux3~6_combout\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux3~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~6_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~7_combout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \U_ALU|output~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \U_ALU|Add0~1\ : std_logic;
SIGNAL \U_ALU|Add0~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_ALU|Add1~1\ : std_logic;
SIGNAL \U_ALU|Add1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~5_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~5_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~9_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~10_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \U_ALU|Add1~3\ : std_logic;
SIGNAL \U_ALU|Add1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~5_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~6_combout\ : std_logic;
SIGNAL \U_ALU|output~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~3\ : std_logic;
SIGNAL \U_ALU|Add0~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~7_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~11_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~3_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~5\ : std_logic;
SIGNAL \U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \U_ALU|Add1~5\ : std_logic;
SIGNAL \U_ALU|Add1~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~17_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~16_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~10_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~11_combout\ : std_logic;
SIGNAL \U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~12_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~13_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~14_combout\ : std_logic;
SIGNAL \U_ALU|Add1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~9_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~15_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~18_combout\ : std_logic;
SIGNAL \U_LED0|outputs[0]~0_combout\ : std_logic;
SIGNAL \U_LED0|outputs[1]~1_combout\ : std_logic;
SIGNAL \U_LED0|outputs[2]~2_combout\ : std_logic;
SIGNAL \U_LED0|outputs[3]~3_combout\ : std_logic;
SIGNAL \U_LED0|outputs[4]~4_combout\ : std_logic;
SIGNAL \U_LED0|outputs[5]~5_combout\ : std_logic;
SIGNAL \U_LED0|outputs[6]~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \U_ALU|Add0~7\ : std_logic;
SIGNAL \U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_ALU|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_ALU|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_ALU|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_outputs[6]~6_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_outputs[5]~5_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_outputs[4]~4_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_outputs[2]~2_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_outputs[1]~1_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_outputs[0]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U_ALU|ALT_INV_Mux4~2_combout\ <= NOT \U_ALU|Mux4~2_combout\;
\U_LED0|ALT_INV_outputs[6]~6_combout\ <= NOT \U_LED0|outputs[6]~6_combout\;
\U_LED0|ALT_INV_outputs[5]~5_combout\ <= NOT \U_LED0|outputs[5]~5_combout\;
\U_LED0|ALT_INV_outputs[4]~4_combout\ <= NOT \U_LED0|outputs[4]~4_combout\;
\U_LED0|ALT_INV_outputs[2]~2_combout\ <= NOT \U_LED0|outputs[2]~2_combout\;
\U_LED0|ALT_INV_outputs[1]~1_combout\ <= NOT \U_LED0|outputs[1]~1_combout\;
\U_LED0|ALT_INV_outputs[0]~0_combout\ <= NOT \U_LED0|outputs[0]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X117_Y55_N9
\led0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X117_Y84_N2
\led0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X113_Y91_N16
\led0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X117_Y61_N9
\led0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X117_Y59_N9
\led0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X108_Y91_N23
\led0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X117_Y72_N2
\led0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X115_Y91_N16
\led0_dp~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|ALT_INV_Mux4~2_combout\,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X117_Y56_N9
\led1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X117_Y84_N9
\led1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X115_Y91_N9
\led1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X117_Y60_N2
\led1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X117_Y57_N2
\led1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X111_Y91_N16
\led1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X117_Y73_N2
\led1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X117_Y86_N9
\led1_dp~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|ALT_INV_Mux4~2_combout\,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X117_Y54_N2
\led2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X117_Y78_N2
\led2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X115_Y91_N2
\led2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X117_Y61_N2
\led2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X117_Y58_N9
\led2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X108_Y91_N16
\led2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X117_Y73_N9
\led2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X115_Y91_N23
\led2_dp~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|ALT_INV_Mux4~2_combout\,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X117_Y55_N2
\led3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\led3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X113_Y91_N23
\led3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X117_Y60_N9
\led3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X117_Y58_N2
\led3[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X111_Y91_N23
\led3[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\led3[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X117_Y86_N2
\led3_dp~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_ALU|ALT_INV_Mux4~2_combout\,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOIBUF_X117_Y70_N8
\switch[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: IOIBUF_X117_Y65_N8
\switch[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: IOIBUF_X117_Y69_N8
\switch[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: LCCOMB_X113_Y68_N22
\U_ALU|Mux3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~7_combout\ = (!\switch[0]~input_o\ & \switch[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[0]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mux3~7_combout\);

-- Location: IOIBUF_X117_Y64_N8
\button[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X117_Y69_N1
\switch[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: LCCOMB_X113_Y68_N0
\U_ALU|Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~6_combout\ = (!\switch[0]~input_o\ & \switch[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[0]~input_o\,
	datad => \switch[8]~input_o\,
	combout => \U_ALU|Mux3~6_combout\);

-- Location: IOIBUF_X117_Y65_N1
\button[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: IOIBUF_X117_Y66_N8
\switch[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: LCCOMB_X112_Y68_N28
\U_ALU|Mux3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~8_combout\ = (!\switch[0]~input_o\ & \switch[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[0]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mux3~8_combout\);

-- Location: LCCOMB_X112_Y68_N30
\U_ALU|Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~6_combout\ = (\button[0]~input_o\ & (\U_ALU|Mux3~6_combout\ & (!\button[1]~input_o\))) # (!\button[0]~input_o\ & (((\button[1]~input_o\) # (\U_ALU|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \U_ALU|Mux3~6_combout\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Mux3~8_combout\,
	combout => \U_ALU|Mux2~6_combout\);

-- Location: IOIBUF_X117_Y66_N1
\switch[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X112_Y68_N2
\U_ALU|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~2_combout\ = (\button[1]~input_o\ & (((!\switch[0]~input_o\ & \switch[1]~input_o\)) # (!\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X112_Y68_N24
\U_ALU|Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~7_combout\ = (\U_ALU|Mux2~6_combout\ & (((\U_ALU|Mux3~7_combout\) # (!\U_ALU|Mux1~2_combout\)))) # (!\U_ALU|Mux2~6_combout\ & (\switch[9]~input_o\ & ((\U_ALU|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \U_ALU|Mux3~7_combout\,
	datac => \U_ALU|Mux2~6_combout\,
	datad => \U_ALU|Mux1~2_combout\,
	combout => \U_ALU|Mux2~7_combout\);

-- Location: IOIBUF_X117_Y67_N1
\switch[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: LCCOMB_X113_Y68_N6
\U_ALU|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|output~0_combout\ = (\switch[3]~input_o\) # (\switch[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[3]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|output~0_combout\);

-- Location: LCCOMB_X113_Y68_N16
\U_ALU|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~3_combout\ = (\button[0]~input_o\ & (((!\switch[0]~input_o\)))) # (!\button[0]~input_o\ & ((\switch[0]~input_o\ & (\switch[3]~input_o\ & \switch[7]~input_o\)) # (!\switch[0]~input_o\ & ((!\switch[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X112_Y68_N16
\U_ALU|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~1_combout\ = (\button[0]~input_o\ & (((!\switch[1]~input_o\ & !\button[1]~input_o\)) # (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux1~1_combout\);

-- Location: IOIBUF_X117_Y64_N1
\switch[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: LCCOMB_X115_Y68_N18
\U_ALU|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~0_combout\ = (\switch[2]~input_o\ & (\switch[6]~input_o\ $ (VCC))) # (!\switch[2]~input_o\ & (\switch[6]~input_o\ & VCC))
-- \U_ALU|Add0~1\ = CARRY((\switch[2]~input_o\ & \switch[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[6]~input_o\,
	datad => VCC,
	combout => \U_ALU|Add0~0_combout\,
	cout => \U_ALU|Add0~1\);

-- Location: LCCOMB_X115_Y68_N20
\U_ALU|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~2_combout\ = (\switch[3]~input_o\ & ((\switch[7]~input_o\ & (\U_ALU|Add0~1\ & VCC)) # (!\switch[7]~input_o\ & (!\U_ALU|Add0~1\)))) # (!\switch[3]~input_o\ & ((\switch[7]~input_o\ & (!\U_ALU|Add0~1\)) # (!\switch[7]~input_o\ & ((\U_ALU|Add0~1\) 
-- # (GND)))))
-- \U_ALU|Add0~3\ = CARRY((\switch[3]~input_o\ & (!\switch[7]~input_o\ & !\U_ALU|Add0~1\)) # (!\switch[3]~input_o\ & ((!\U_ALU|Add0~1\) # (!\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[7]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~1\,
	combout => \U_ALU|Add0~2_combout\,
	cout => \U_ALU|Add0~3\);

-- Location: LCCOMB_X113_Y68_N10
\U_ALU|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~4_combout\ = (\U_ALU|Mux2~3_combout\ & (((!\U_ALU|Mux1~1_combout\)) # (!\U_ALU|output~0_combout\))) # (!\U_ALU|Mux2~3_combout\ & (((\U_ALU|Mux1~1_combout\ & \U_ALU|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|output~0_combout\,
	datab => \U_ALU|Mux2~3_combout\,
	datac => \U_ALU|Mux1~1_combout\,
	datad => \U_ALU|Add0~2_combout\,
	combout => \U_ALU|Mux2~4_combout\);

-- Location: LCCOMB_X112_Y68_N14
\U_ALU|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~0_combout\ = (\button[0]~input_o\ & (((!\switch[1]~input_o\ & \button[1]~input_o\)) # (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X116_Y68_N2
\U_ALU|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~0_combout\ = (\switch[6]~input_o\ & ((GND) # (!\switch[2]~input_o\))) # (!\switch[6]~input_o\ & (\switch[2]~input_o\ $ (GND)))
-- \U_ALU|Add1~1\ = CARRY((\switch[6]~input_o\) # (!\switch[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[2]~input_o\,
	datad => VCC,
	combout => \U_ALU|Add1~0_combout\,
	cout => \U_ALU|Add1~1\);

-- Location: LCCOMB_X116_Y68_N4
\U_ALU|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~2_combout\ = (\switch[3]~input_o\ & ((\switch[7]~input_o\ & (!\U_ALU|Add1~1\)) # (!\switch[7]~input_o\ & ((\U_ALU|Add1~1\) # (GND))))) # (!\switch[3]~input_o\ & ((\switch[7]~input_o\ & (\U_ALU|Add1~1\ & VCC)) # (!\switch[7]~input_o\ & 
-- (!\U_ALU|Add1~1\))))
-- \U_ALU|Add1~3\ = CARRY((\switch[3]~input_o\ & ((!\U_ALU|Add1~1\) # (!\switch[7]~input_o\))) # (!\switch[3]~input_o\ & (!\switch[7]~input_o\ & !\U_ALU|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[7]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add1~1\,
	combout => \U_ALU|Add1~2_combout\,
	cout => \U_ALU|Add1~3\);

-- Location: LCCOMB_X116_Y68_N22
\U_ALU|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~0_combout\ = (\button[0]~input_o\ & ((!\switch[0]~input_o\))) # (!\button[0]~input_o\ & (\U_ALU|Add1~2_combout\ & \switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \U_ALU|Add1~2_combout\,
	datac => \switch[0]~input_o\,
	combout => \U_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y68_N2
\U_ALU|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~1_combout\ = (\U_ALU|Mux2~0_combout\ & ((\switch[3]~input_o\) # ((\switch[7]~input_o\)))) # (!\U_ALU|Mux2~0_combout\ & (!\switch[0]~input_o\ & (\switch[3]~input_o\ $ (\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~0_combout\,
	datab => \switch[3]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X115_Y68_N6
\U_ALU|Mult0|auto_generated|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(1) = (\switch[2]~input_o\ & (\switch[3]~input_o\ $ (((\switch[7]~input_o\))))) # (!\switch[2]~input_o\ & (\switch[3]~input_o\ & (!\switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X114_Y68_N16
\U_ALU|Mult0|auto_generated|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(0) = \switch[3]~input_o\ $ (((\switch[6]~input_o\ & \switch[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X114_Y68_N20
\U_ALU|Mult0|auto_generated|op_3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~0_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(0) & (\switch[3]~input_o\ $ (VCC))) # (!\U_ALU|Mult0|auto_generated|le3a\(0) & (\switch[3]~input_o\ & VCC))
-- \U_ALU|Mult0|auto_generated|op_3~1\ = CARRY((\U_ALU|Mult0|auto_generated|le3a\(0) & \switch[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le3a\(0),
	datab => \switch[3]~input_o\,
	datad => VCC,
	combout => \U_ALU|Mult0|auto_generated|op_3~0_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X114_Y68_N22
\U_ALU|Mult0|auto_generated|op_3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~2_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(1) & (!\U_ALU|Mult0|auto_generated|op_3~1\)) # (!\U_ALU|Mult0|auto_generated|le3a\(1) & ((\U_ALU|Mult0|auto_generated|op_3~1\) # (GND)))
-- \U_ALU|Mult0|auto_generated|op_3~3\ = CARRY((!\U_ALU|Mult0|auto_generated|op_3~1\) # (!\U_ALU|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~1\,
	combout => \U_ALU|Mult0|auto_generated|op_3~2_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X113_Y68_N28
\U_ALU|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~2_combout\ = (\U_ALU|Mux2~1_combout\) # ((\U_ALU|Mux1~0_combout\ & (!\U_ALU|Mux2~0_combout\ & \U_ALU|Mult0|auto_generated|op_3~2_combout\)) # (!\U_ALU|Mux1~0_combout\ & (\U_ALU|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \U_ALU|Mux2~0_combout\,
	datad => \U_ALU|Mult0|auto_generated|op_3~2_combout\,
	combout => \U_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X113_Y68_N4
\U_ALU|Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~5_combout\ = (!\switch[1]~input_o\ & ((\button[1]~input_o\ & ((\U_ALU|Mux2~2_combout\))) # (!\button[1]~input_o\ & (\U_ALU|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~4_combout\,
	datab => \U_ALU|Mux2~2_combout\,
	datac => \switch[1]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux2~5_combout\);

-- Location: LCCOMB_X112_Y68_N10
\U_ALU|Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~8_combout\ = (\U_ALU|Mux2~5_combout\) # ((\U_ALU|Mux2~7_combout\ & \switch[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mux2~7_combout\,
	datac => \switch[1]~input_o\,
	datad => \U_ALU|Mux2~5_combout\,
	combout => \U_ALU|Mux2~8_combout\);

-- Location: LCCOMB_X112_Y68_N18
\U_ALU|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~5_combout\ = (!\switch[0]~input_o\ & \switch[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[0]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux3~5_combout\);

-- Location: LCCOMB_X112_Y68_N26
\U_ALU|Mux1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~9_combout\ = (\button[0]~input_o\ & (((!\button[1]~input_o\ & \U_ALU|Mux3~5_combout\)))) # (!\button[0]~input_o\ & ((\U_ALU|Mux3~7_combout\) # ((\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \U_ALU|Mux3~7_combout\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Mux3~5_combout\,
	combout => \U_ALU|Mux1~9_combout\);

-- Location: LCCOMB_X112_Y68_N12
\U_ALU|Mux1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~10_combout\ = (\U_ALU|Mux1~9_combout\ & (((\U_ALU|Mux3~6_combout\)) # (!\U_ALU|Mux1~2_combout\))) # (!\U_ALU|Mux1~9_combout\ & (\U_ALU|Mux1~2_combout\ & ((\switch[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~9_combout\,
	datab => \U_ALU|Mux1~2_combout\,
	datac => \U_ALU|Mux3~6_combout\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mux1~10_combout\);

-- Location: LCCOMB_X114_Y68_N12
\U_ALU|Mult0|auto_generated|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(2) = (\switch[2]~input_o\ & (\switch[8]~input_o\ $ ((\switch[3]~input_o\)))) # (!\switch[2]~input_o\ & (((\switch[3]~input_o\ & !\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(2));

-- Location: IOIBUF_X117_Y67_N8
\switch[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X117_Y68_N1
\switch[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: LCCOMB_X114_Y68_N0
\U_ALU|Mult0|auto_generated|cs1a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ = \switch[5]~input_o\ $ (((\switch[3]~input_o\ & \switch[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[3]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[5]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X114_Y68_N6
\U_ALU|Mult0|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~0_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(2) & (\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ $ (VCC))) # (!\U_ALU|Mult0|auto_generated|le3a\(2) & (\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ & VCC))
-- \U_ALU|Mult0|auto_generated|op_1~1\ = CARRY((\U_ALU|Mult0|auto_generated|le3a\(2) & \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le3a\(2),
	datab => \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\,
	datad => VCC,
	combout => \U_ALU|Mult0|auto_generated|op_1~0_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X114_Y68_N30
\U_ALU|Mult0|auto_generated|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(0) = \switch[5]~input_o\ $ (((\switch[6]~input_o\ & ((\switch[3]~input_o\) # (\switch[4]~input_o\))) # (!\switch[6]~input_o\ & (\switch[3]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[5]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X114_Y68_N24
\U_ALU|Mult0|auto_generated|op_3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~4_combout\ = ((\U_ALU|Mult0|auto_generated|op_1~0_combout\ $ (\U_ALU|Mult0|auto_generated|le4a\(0) $ (!\U_ALU|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_3~5\ = CARRY((\U_ALU|Mult0|auto_generated|op_1~0_combout\ & ((\U_ALU|Mult0|auto_generated|le4a\(0)) # (!\U_ALU|Mult0|auto_generated|op_3~3\))) # (!\U_ALU|Mult0|auto_generated|op_1~0_combout\ & 
-- (\U_ALU|Mult0|auto_generated|le4a\(0) & !\U_ALU|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_1~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~3\,
	combout => \U_ALU|Mult0|auto_generated|op_3~4_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X116_Y68_N6
\U_ALU|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~4_combout\ = ((\switch[4]~input_o\ $ (\switch[8]~input_o\ $ (\U_ALU|Add1~3\)))) # (GND)
-- \U_ALU|Add1~5\ = CARRY((\switch[4]~input_o\ & (\switch[8]~input_o\ & !\U_ALU|Add1~3\)) # (!\switch[4]~input_o\ & ((\switch[8]~input_o\) # (!\U_ALU|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \switch[8]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add1~3\,
	combout => \U_ALU|Add1~4_combout\,
	cout => \U_ALU|Add1~5\);

-- Location: LCCOMB_X116_Y68_N14
\U_ALU|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~3_combout\ = (\switch[0]~input_o\ & (\U_ALU|Add1~4_combout\ & !\button[0]~input_o\)) # (!\switch[0]~input_o\ & ((\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add1~4_combout\,
	datac => \switch[0]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux1~3_combout\);

-- Location: LCCOMB_X113_Y68_N8
\U_ALU|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~4_combout\ = (\U_ALU|Mux1~3_combout\ & ((\switch[4]~input_o\) # ((\switch[8]~input_o\)))) # (!\U_ALU|Mux1~3_combout\ & (!\switch[0]~input_o\ & (\switch[4]~input_o\ $ (\switch[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~3_combout\,
	datab => \switch[4]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[8]~input_o\,
	combout => \U_ALU|Mux1~4_combout\);

-- Location: LCCOMB_X113_Y68_N26
\U_ALU|Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~5_combout\ = (\U_ALU|Mux1~4_combout\) # ((\U_ALU|Mux1~0_combout\ & (\U_ALU|Mult0|auto_generated|op_3~4_combout\ & !\U_ALU|Mux1~3_combout\)) # (!\U_ALU|Mux1~0_combout\ & ((\U_ALU|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|op_3~4_combout\,
	datac => \U_ALU|Mux1~4_combout\,
	datad => \U_ALU|Mux1~3_combout\,
	combout => \U_ALU|Mux1~5_combout\);

-- Location: LCCOMB_X113_Y68_N30
\U_ALU|Mux1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~6_combout\ = (\button[0]~input_o\ & (((!\switch[0]~input_o\)))) # (!\button[0]~input_o\ & ((\switch[0]~input_o\ & (\switch[4]~input_o\ & \switch[8]~input_o\)) # (!\switch[0]~input_o\ & ((!\switch[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \switch[4]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[8]~input_o\,
	combout => \U_ALU|Mux1~6_combout\);

-- Location: LCCOMB_X113_Y68_N20
\U_ALU|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|output~1_combout\ = (\switch[4]~input_o\) # (\switch[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[4]~input_o\,
	datad => \switch[8]~input_o\,
	combout => \U_ALU|output~1_combout\);

-- Location: LCCOMB_X115_Y68_N22
\U_ALU|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~4_combout\ = ((\switch[8]~input_o\ $ (\switch[4]~input_o\ $ (!\U_ALU|Add0~3\)))) # (GND)
-- \U_ALU|Add0~5\ = CARRY((\switch[8]~input_o\ & ((\switch[4]~input_o\) # (!\U_ALU|Add0~3\))) # (!\switch[8]~input_o\ & (\switch[4]~input_o\ & !\U_ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[4]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~3\,
	combout => \U_ALU|Add0~4_combout\,
	cout => \U_ALU|Add0~5\);

-- Location: LCCOMB_X113_Y68_N24
\U_ALU|Mux1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~7_combout\ = (\U_ALU|Mux1~6_combout\ & (((!\U_ALU|Mux1~1_combout\)) # (!\U_ALU|output~1_combout\))) # (!\U_ALU|Mux1~6_combout\ & (((\U_ALU|Mux1~1_combout\ & \U_ALU|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~6_combout\,
	datab => \U_ALU|output~1_combout\,
	datac => \U_ALU|Mux1~1_combout\,
	datad => \U_ALU|Add0~4_combout\,
	combout => \U_ALU|Mux1~7_combout\);

-- Location: LCCOMB_X113_Y68_N18
\U_ALU|Mux1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~8_combout\ = (!\switch[1]~input_o\ & ((\button[1]~input_o\ & (\U_ALU|Mux1~5_combout\)) # (!\button[1]~input_o\ & ((\U_ALU|Mux1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~5_combout\,
	datab => \U_ALU|Mux1~7_combout\,
	datac => \switch[1]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux1~8_combout\);

-- Location: LCCOMB_X112_Y68_N6
\U_ALU|Mux1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~11_combout\ = (\U_ALU|Mux1~8_combout\) # ((\U_ALU|Mux1~10_combout\ & \switch[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~10_combout\,
	datac => \switch[1]~input_o\,
	datad => \U_ALU|Mux1~8_combout\,
	combout => \U_ALU|Mux1~11_combout\);

-- Location: LCCOMB_X112_Y68_N4
\U_ALU|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~4_combout\ = (!\button[0]~input_o\ & ((\button[1]~input_o\ & ((\U_ALU|Mux3~5_combout\))) # (!\button[1]~input_o\ & (\U_ALU|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \U_ALU|Mux3~6_combout\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Mux3~5_combout\,
	combout => \U_ALU|Mux0~4_combout\);

-- Location: LCCOMB_X116_Y68_N18
\U_ALU|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~5_combout\ = (\button[1]~input_o\ & (\switch[7]~input_o\ & (!\switch[0]~input_o\ & \button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux0~5_combout\);

-- Location: LCCOMB_X115_Y68_N10
\U_ALU|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~3_combout\ = (\button[0]~input_o\ & (\button[1]~input_o\ & (\switch[0]~input_o\ & !\switch[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux3~3_combout\);

-- Location: LCCOMB_X113_Y68_N12
\U_ALU|Mult0|auto_generated|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ = \switch[3]~input_o\ $ (\switch[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[3]~input_o\,
	datac => \switch[4]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X114_Y68_N4
\U_ALU|Mult0|auto_generated|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(1) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ $ (((\switch[7]~input_o\))))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ & (!\switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\,
	datac => \switch[6]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X114_Y68_N2
\U_ALU|Mult0|auto_generated|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(3) = (\switch[2]~input_o\ & (\switch[9]~input_o\ $ (((\switch[3]~input_o\))))) # (!\switch[2]~input_o\ & (((!\switch[8]~input_o\ & \switch[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X114_Y68_N8
\U_ALU|Mult0|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~2_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(3) & (!\U_ALU|Mult0|auto_generated|op_1~1\)) # (!\U_ALU|Mult0|auto_generated|le3a\(3) & ((\U_ALU|Mult0|auto_generated|op_1~1\) # (GND)))
-- \U_ALU|Mult0|auto_generated|op_1~3\ = CARRY((!\U_ALU|Mult0|auto_generated|op_1~1\) # (!\U_ALU|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~1\,
	combout => \U_ALU|Mult0|auto_generated|op_1~2_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X114_Y68_N26
\U_ALU|Mult0|auto_generated|op_3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~6_combout\ = (\U_ALU|Mult0|auto_generated|le4a\(1) & ((\U_ALU|Mult0|auto_generated|op_1~2_combout\ & (\U_ALU|Mult0|auto_generated|op_3~5\ & VCC)) # (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\U_ALU|Mult0|auto_generated|op_3~5\)))) # (!\U_ALU|Mult0|auto_generated|le4a\(1) & ((\U_ALU|Mult0|auto_generated|op_1~2_combout\ & (!\U_ALU|Mult0|auto_generated|op_3~5\)) # (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & 
-- ((\U_ALU|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \U_ALU|Mult0|auto_generated|op_3~7\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(1) & (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & !\U_ALU|Mult0|auto_generated|op_3~5\)) # (!\U_ALU|Mult0|auto_generated|le4a\(1) & ((!\U_ALU|Mult0|auto_generated|op_3~5\) # 
-- (!\U_ALU|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(1),
	datab => \U_ALU|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~5\,
	combout => \U_ALU|Mult0|auto_generated|op_3~6_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X115_Y68_N0
\U_ALU|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~2_combout\ = (!\switch[0]~input_o\ & ((\switch[5]~input_o\) # (\switch[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \switch[9]~input_o\,
	combout => \U_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X115_Y68_N28
\U_ALU|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~4_combout\ = (\U_ALU|Mux3~2_combout\) # ((\U_ALU|Mux3~3_combout\ & \U_ALU|Mult0|auto_generated|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~3_combout\,
	datac => \U_ALU|Mult0|auto_generated|op_3~6_combout\,
	datad => \U_ALU|Mux3~2_combout\,
	combout => \U_ALU|Mux3~4_combout\);

-- Location: LCCOMB_X116_Y68_N10
\U_ALU|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~0_combout\ = (\switch[9]~input_o\ & ((!\switch[0]~input_o\) # (!\switch[5]~input_o\))) # (!\switch[9]~input_o\ & ((\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[0]~input_o\,
	combout => \U_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X116_Y68_N12
\U_ALU|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~1_combout\ = (\button[1]~input_o\ & (!\button[0]~input_o\)) # (!\button[1]~input_o\ & ((\U_ALU|Mux0~0_combout\) # ((\button[0]~input_o\ & \switch[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \U_ALU|Mux0~0_combout\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux0~1_combout\);

-- Location: LCCOMB_X115_Y68_N24
\U_ALU|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~6_combout\ = (\switch[9]~input_o\ & ((\switch[5]~input_o\ & (\U_ALU|Add0~5\ & VCC)) # (!\switch[5]~input_o\ & (!\U_ALU|Add0~5\)))) # (!\switch[9]~input_o\ & ((\switch[5]~input_o\ & (!\U_ALU|Add0~5\)) # (!\switch[5]~input_o\ & ((\U_ALU|Add0~5\) 
-- # (GND)))))
-- \U_ALU|Add0~7\ = CARRY((\switch[9]~input_o\ & (!\switch[5]~input_o\ & !\U_ALU|Add0~5\)) # (!\switch[9]~input_o\ & ((!\U_ALU|Add0~5\) # (!\switch[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[5]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~5\,
	combout => \U_ALU|Add0~6_combout\,
	cout => \U_ALU|Add0~7\);

-- Location: LCCOMB_X112_Y68_N0
\U_ALU|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~1_combout\ = (\switch[0]~input_o\ & (!\switch[1]~input_o\ & (!\button[1]~input_o\ & \button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \button[1]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X116_Y68_N30
\U_ALU|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~2_combout\ = ((\U_ALU|Add0~6_combout\ & (\U_ALU|Mux3~1_combout\ & \button[0]~input_o\))) # (!\U_ALU|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~1_combout\,
	datab => \U_ALU|Add0~6_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux0~2_combout\);

-- Location: LCCOMB_X116_Y68_N8
\U_ALU|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~6_combout\ = \switch[9]~input_o\ $ (\switch[5]~input_o\ $ (!\U_ALU|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[5]~input_o\,
	cin => \U_ALU|Add1~5\,
	combout => \U_ALU|Add1~6_combout\);

-- Location: LCCOMB_X116_Y68_N24
\U_ALU|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~0_combout\ = (\switch[0]~input_o\ & (\U_ALU|Add1~6_combout\)) # (!\switch[0]~input_o\ & ((\switch[9]~input_o\ $ (\switch[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_ALU|Add1~6_combout\,
	datac => \switch[9]~input_o\,
	datad => \switch[5]~input_o\,
	combout => \U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X116_Y68_N0
\U_ALU|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~3_combout\ = (\button[1]~input_o\ & ((\U_ALU|Mux0~2_combout\ & (\U_ALU|Mux3~4_combout\)) # (!\U_ALU|Mux0~2_combout\ & ((\U_ALU|Mux3~0_combout\))))) # (!\button[1]~input_o\ & (((\U_ALU|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_ALU|Mux3~4_combout\,
	datac => \U_ALU|Mux0~2_combout\,
	datad => \U_ALU|Mux3~0_combout\,
	combout => \U_ALU|Mux0~3_combout\);

-- Location: LCCOMB_X116_Y68_N28
\U_ALU|Mux0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~6_combout\ = (\switch[1]~input_o\ & ((\U_ALU|Mux0~4_combout\) # ((\U_ALU|Mux0~5_combout\)))) # (!\switch[1]~input_o\ & (((\U_ALU|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~4_combout\,
	datab => \U_ALU|Mux0~5_combout\,
	datac => \switch[1]~input_o\,
	datad => \U_ALU|Mux0~3_combout\,
	combout => \U_ALU|Mux0~6_combout\);

-- Location: LCCOMB_X112_Y68_N22
\U_ALU|Mux3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~17_combout\ = (\button[1]~input_o\ & (\switch[6]~input_o\ & (!\switch[0]~input_o\ & !\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux3~17_combout\);

-- Location: LCCOMB_X112_Y68_N20
\U_ALU|Mux3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~16_combout\ = (\button[0]~input_o\ & ((\button[1]~input_o\ & (\U_ALU|Mux3~6_combout\)) # (!\button[1]~input_o\ & ((\U_ALU|Mux3~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \U_ALU|Mux3~6_combout\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Mux3~7_combout\,
	combout => \U_ALU|Mux3~16_combout\);

-- Location: LCCOMB_X116_Y68_N16
\U_ALU|Mux3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~10_combout\ = (\switch[6]~input_o\ & ((!\switch[0]~input_o\) # (!\switch[2]~input_o\))) # (!\switch[6]~input_o\ & ((\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datac => \switch[6]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux3~10_combout\);

-- Location: LCCOMB_X116_Y68_N26
\U_ALU|Mux3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~11_combout\ = (\button[1]~input_o\ & (!\button[0]~input_o\)) # (!\button[1]~input_o\ & ((\U_ALU|Mux3~10_combout\) # ((\button[0]~input_o\ & \switch[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \U_ALU|Mux3~10_combout\,
	datac => \switch[2]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux3~11_combout\);

-- Location: LCCOMB_X116_Y68_N20
\U_ALU|Mux3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~12_combout\ = ((\U_ALU|Add0~0_combout\ & (\U_ALU|Mux3~1_combout\ & \button[0]~input_o\))) # (!\U_ALU|Mux3~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~11_combout\,
	datab => \U_ALU|Add0~0_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux3~12_combout\);

-- Location: LCCOMB_X115_Y68_N16
\U_ALU|Mux3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~13_combout\ = (!\switch[2]~input_o\ & !\switch[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[2]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mux3~13_combout\);

-- Location: LCCOMB_X115_Y68_N2
\U_ALU|Mux3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~14_combout\ = (\U_ALU|Mux3~3_combout\ & ((\U_ALU|Mult0|auto_generated|op_3~0_combout\) # ((!\U_ALU|Mux3~13_combout\ & !\switch[0]~input_o\)))) # (!\U_ALU|Mux3~3_combout\ & (!\U_ALU|Mux3~13_combout\ & (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~3_combout\,
	datab => \U_ALU|Mux3~13_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_ALU|Mult0|auto_generated|op_3~0_combout\,
	combout => \U_ALU|Mux3~14_combout\);

-- Location: LCCOMB_X115_Y68_N14
\U_ALU|Mux3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~9_combout\ = (\switch[0]~input_o\ & ((\U_ALU|Add1~0_combout\))) # (!\switch[0]~input_o\ & (\U_ALU|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Add0~0_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_ALU|Add1~0_combout\,
	combout => \U_ALU|Mux3~9_combout\);

-- Location: LCCOMB_X115_Y68_N4
\U_ALU|Mux3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~15_combout\ = (\U_ALU|Mux3~12_combout\ & ((\U_ALU|Mux3~14_combout\) # ((!\button[1]~input_o\)))) # (!\U_ALU|Mux3~12_combout\ & (((\U_ALU|Mux3~9_combout\ & \button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~12_combout\,
	datab => \U_ALU|Mux3~14_combout\,
	datac => \U_ALU|Mux3~9_combout\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux3~15_combout\);

-- Location: LCCOMB_X112_Y68_N8
\U_ALU|Mux3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~18_combout\ = (\switch[1]~input_o\ & ((\U_ALU|Mux3~17_combout\) # ((\U_ALU|Mux3~16_combout\)))) # (!\switch[1]~input_o\ & (((\U_ALU|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~17_combout\,
	datab => \U_ALU|Mux3~16_combout\,
	datac => \switch[1]~input_o\,
	datad => \U_ALU|Mux3~15_combout\,
	combout => \U_ALU|Mux3~18_combout\);

-- Location: LCCOMB_X116_Y72_N24
\U_LED0|outputs[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[0]~0_combout\ = (\U_ALU|Mux3~18_combout\ & ((\U_ALU|Mux0~6_combout\) # (\U_ALU|Mux2~8_combout\ $ (\U_ALU|Mux1~11_combout\)))) # (!\U_ALU|Mux3~18_combout\ & ((\U_ALU|Mux2~8_combout\) # (\U_ALU|Mux1~11_combout\ $ (\U_ALU|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~8_combout\,
	datab => \U_ALU|Mux1~11_combout\,
	datac => \U_ALU|Mux0~6_combout\,
	datad => \U_ALU|Mux3~18_combout\,
	combout => \U_LED0|outputs[0]~0_combout\);

-- Location: LCCOMB_X116_Y72_N18
\U_LED0|outputs[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[1]~1_combout\ = (\U_ALU|Mux2~8_combout\ & ((\U_ALU|Mux0~6_combout\) # ((\U_ALU|Mux1~11_combout\ & !\U_ALU|Mux3~18_combout\)))) # (!\U_ALU|Mux2~8_combout\ & ((\U_ALU|Mux1~11_combout\ $ (\U_ALU|Mux0~6_combout\)) # 
-- (!\U_ALU|Mux3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~8_combout\,
	datab => \U_ALU|Mux1~11_combout\,
	datac => \U_ALU|Mux0~6_combout\,
	datad => \U_ALU|Mux3~18_combout\,
	combout => \U_LED0|outputs[1]~1_combout\);

-- Location: LCCOMB_X116_Y72_N12
\U_LED0|outputs[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[2]~2_combout\ = (\U_ALU|Mux2~8_combout\ & (((\U_ALU|Mux0~6_combout\) # (!\U_ALU|Mux3~18_combout\)))) # (!\U_ALU|Mux2~8_combout\ & ((\U_ALU|Mux1~11_combout\ & (\U_ALU|Mux0~6_combout\)) # (!\U_ALU|Mux1~11_combout\ & 
-- ((!\U_ALU|Mux3~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~8_combout\,
	datab => \U_ALU|Mux1~11_combout\,
	datac => \U_ALU|Mux0~6_combout\,
	datad => \U_ALU|Mux3~18_combout\,
	combout => \U_LED0|outputs[2]~2_combout\);

-- Location: LCCOMB_X116_Y72_N30
\U_LED0|outputs[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[3]~3_combout\ = (\U_ALU|Mux3~18_combout\ & (\U_ALU|Mux2~8_combout\ $ ((!\U_ALU|Mux1~11_combout\)))) # (!\U_ALU|Mux3~18_combout\ & ((\U_ALU|Mux2~8_combout\ & (!\U_ALU|Mux1~11_combout\ & \U_ALU|Mux0~6_combout\)) # (!\U_ALU|Mux2~8_combout\ & 
-- (\U_ALU|Mux1~11_combout\ & !\U_ALU|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~8_combout\,
	datab => \U_ALU|Mux1~11_combout\,
	datac => \U_ALU|Mux0~6_combout\,
	datad => \U_ALU|Mux3~18_combout\,
	combout => \U_LED0|outputs[3]~3_combout\);

-- Location: LCCOMB_X116_Y72_N0
\U_LED0|outputs[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[4]~4_combout\ = (\U_ALU|Mux1~11_combout\ & (((!\U_ALU|Mux2~8_combout\ & \U_ALU|Mux3~18_combout\)) # (!\U_ALU|Mux0~6_combout\))) # (!\U_ALU|Mux1~11_combout\ & (((\U_ALU|Mux0~6_combout\) # (\U_ALU|Mux3~18_combout\)) # 
-- (!\U_ALU|Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~8_combout\,
	datab => \U_ALU|Mux1~11_combout\,
	datac => \U_ALU|Mux0~6_combout\,
	datad => \U_ALU|Mux3~18_combout\,
	combout => \U_LED0|outputs[4]~4_combout\);

-- Location: LCCOMB_X116_Y72_N10
\U_LED0|outputs[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[5]~5_combout\ = (\U_ALU|Mux2~8_combout\ & ((\U_ALU|Mux3~18_combout\ & ((!\U_ALU|Mux0~6_combout\))) # (!\U_ALU|Mux3~18_combout\ & (!\U_ALU|Mux1~11_combout\)))) # (!\U_ALU|Mux2~8_combout\ & ((\U_ALU|Mux0~6_combout\ $ 
-- (!\U_ALU|Mux3~18_combout\)) # (!\U_ALU|Mux1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~8_combout\,
	datab => \U_ALU|Mux1~11_combout\,
	datac => \U_ALU|Mux0~6_combout\,
	datad => \U_ALU|Mux3~18_combout\,
	combout => \U_LED0|outputs[5]~5_combout\);

-- Location: LCCOMB_X116_Y72_N4
\U_LED0|outputs[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[6]~6_combout\ = (\U_ALU|Mux1~11_combout\ & ((\U_ALU|Mux2~8_combout\) # (\U_ALU|Mux0~6_combout\ $ (\U_ALU|Mux3~18_combout\)))) # (!\U_ALU|Mux1~11_combout\ & ((\U_ALU|Mux2~8_combout\ $ (\U_ALU|Mux0~6_combout\)) # (!\U_ALU|Mux3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~8_combout\,
	datab => \U_ALU|Mux1~11_combout\,
	datac => \U_ALU|Mux0~6_combout\,
	datad => \U_ALU|Mux3~18_combout\,
	combout => \U_LED0|outputs[6]~6_combout\);

-- Location: LCCOMB_X115_Y68_N30
\U_ALU|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~0_combout\ = (\button[0]~input_o\ & ((\switch[6]~input_o\) # ((!\switch[1]~input_o\)))) # (!\button[0]~input_o\ & (((\switch[9]~input_o\ & \switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[9]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y68_N14
\U_ALU|Mult0|auto_generated|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(0) = (\switch[6]~input_o\ & ((\switch[5]~input_o\) # ((\switch[3]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[5]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X113_Y68_N14
\U_ALU|Mult0|auto_generated|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(2) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\switch[8]~input_o\ $ ((\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\)))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (((\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ & !\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \switch[8]~input_o\,
	datac => \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X114_Y68_N18
\U_ALU|Mult0|auto_generated|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(4) = (\switch[3]~input_o\ & ((\switch[2]~input_o\) # (!\switch[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \switch[2]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X114_Y68_N10
\U_ALU|Mult0|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~4_combout\ = \U_ALU|Mult0|auto_generated|le4a\(2) $ (\U_ALU|Mult0|auto_generated|op_1~3\ $ (!\U_ALU|Mult0|auto_generated|le3a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(2),
	datad => \U_ALU|Mult0|auto_generated|le3a\(4),
	cin => \U_ALU|Mult0|auto_generated|op_1~3\,
	combout => \U_ALU|Mult0|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X114_Y68_N28
\U_ALU|Mult0|auto_generated|op_3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~8_combout\ = \U_ALU|Mult0|auto_generated|le5a\(0) $ (\U_ALU|Mult0|auto_generated|op_3~7\ $ (!\U_ALU|Mult0|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mult0|auto_generated|le5a\(0),
	datad => \U_ALU|Mult0|auto_generated|op_1~4_combout\,
	cin => \U_ALU|Mult0|auto_generated|op_3~7\,
	combout => \U_ALU|Mult0|auto_generated|op_3~8_combout\);

-- Location: LCCOMB_X115_Y68_N26
\U_ALU|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~8_combout\ = !\U_ALU|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_ALU|Add0~7\,
	combout => \U_ALU|Add0~8_combout\);

-- Location: LCCOMB_X115_Y68_N8
\U_ALU|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~1_combout\ = (\switch[0]~input_o\ & (!\switch[1]~input_o\ & ((\U_ALU|Add0~8_combout\) # (\button[1]~input_o\)))) # (!\switch[0]~input_o\ & (((!\button[1]~input_o\ & \switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add0~8_combout\,
	datab => \button[1]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X115_Y68_N12
\U_ALU|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~2_combout\ = (\U_ALU|Mux4~0_combout\ & (\U_ALU|Mux4~1_combout\ & ((\U_ALU|Mult0|auto_generated|op_3~8_combout\) # (!\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux4~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \U_ALU|Mux4~1_combout\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux4~2_combout\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;
END structure;


