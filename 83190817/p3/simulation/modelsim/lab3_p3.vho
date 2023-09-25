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

-- DATE "09/25/2023 15:03:22"

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
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led0_dp : BUFFER std_logic;
	led1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1_dp : BUFFER std_logic;
	led2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led2_dp : BUFFER std_logic;
	led3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led3_dp : BUFFER std_logic
	);
END top_level;

-- Design Ports Information
-- led0[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_ALU|Add0~1\ : std_logic;
SIGNAL \U_ALU|Add0~3\ : std_logic;
SIGNAL \U_ALU|Add0~5\ : std_logic;
SIGNAL \U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \U_ALU|Add1~1\ : std_logic;
SIGNAL \U_ALU|Add1~3\ : std_logic;
SIGNAL \U_ALU|Add1~5\ : std_logic;
SIGNAL \U_ALU|Add1~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~7_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~10_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~8_combout\ : std_logic;
SIGNAL \U_ALU|Add1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \U_ALU|output~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~5_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~9_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~5_combout\ : std_logic;
SIGNAL \U_ALU|Add0~2_combout\ : std_logic;
SIGNAL \U_ALU|output~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~6_combout\ : std_logic;
SIGNAL \U_ALU|Add1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~7_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~9_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~11_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~12_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~12_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~7_combout\ : std_logic;
SIGNAL \U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~8_combout\ : std_logic;
SIGNAL \U_ALU|Add1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~5_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~9_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~10_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~11_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~13_combout\ : std_logic;
SIGNAL \U_LED0|outputs[0]~0_combout\ : std_logic;
SIGNAL \U_LED0|outputs[1]~1_combout\ : std_logic;
SIGNAL \U_LED0|outputs[2]~2_combout\ : std_logic;
SIGNAL \U_LED0|outputs[3]~3_combout\ : std_logic;
SIGNAL \U_LED0|outputs[4]~4_combout\ : std_logic;
SIGNAL \U_LED0|outputs[5]~5_combout\ : std_logic;
SIGNAL \U_LED0|outputs[6]~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \U_ALU|Add0~7\ : std_logic;
SIGNAL \U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~8_combout\ : std_logic;
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

-- Location: IOOBUF_X117_Y22_N2
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

-- Location: IOOBUF_X117_Y55_N9
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

-- Location: IOOBUF_X117_Y53_N9
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

-- Location: IOOBUF_X117_Y15_N2
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

-- Location: IOOBUF_X117_Y43_N2
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

-- Location: IOOBUF_X117_Y51_N2
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

-- Location: IOOBUF_X117_Y27_N2
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

-- Location: IOOBUF_X117_Y19_N2
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

-- Location: IOOBUF_X117_Y17_N9
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

-- Location: IOOBUF_X117_Y55_N2
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

-- Location: IOOBUF_X117_Y54_N2
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

-- Location: IOOBUF_X117_Y14_N2
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

-- Location: IOOBUF_X117_Y48_N9
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

-- Location: IOOBUF_X117_Y42_N2
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

-- Location: IOOBUF_X117_Y27_N9
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

-- Location: IOOBUF_X117_Y19_N9
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

-- Location: IOOBUF_X117_Y22_N9
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

-- Location: IOOBUF_X117_Y58_N2
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

-- Location: IOOBUF_X117_Y49_N2
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

-- Location: IOOBUF_X117_Y13_N9
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

-- Location: IOOBUF_X117_Y48_N2
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

-- Location: IOOBUF_X117_Y49_N9
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

-- Location: IOOBUF_X117_Y24_N2
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

-- Location: IOOBUF_X117_Y21_N2
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

-- Location: IOOBUF_X117_Y17_N2
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

-- Location: IOOBUF_X117_Y58_N9
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

-- Location: IOOBUF_X117_Y56_N9
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

-- Location: IOOBUF_X117_Y24_N9
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

-- Location: IOOBUF_X117_Y43_N9
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

-- Location: IOOBUF_X117_Y51_N9
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

-- Location: IOOBUF_X117_Y28_N9
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

-- Location: IOOBUF_X117_Y21_N9
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

-- Location: IOIBUF_X117_Y35_N8
\switch[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: IOIBUF_X117_Y33_N1
\switch[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X117_Y31_N1
\switch[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: IOIBUF_X117_Y36_N8
\button[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\button[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: LCCOMB_X116_Y35_N18
\U_ALU|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~4_combout\ = (\button[1]~input_o\ & (\switch[7]~input_o\)) # (!\button[1]~input_o\ & (((\switch[8]~input_o\ & !\button[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datab => \switch[8]~input_o\,
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux0~4_combout\);

-- Location: IOIBUF_X117_Y32_N8
\switch[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: IOIBUF_X117_Y34_N1
\switch[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: LCCOMB_X114_Y36_N20
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

-- Location: LCCOMB_X114_Y36_N6
\U_ALU|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~1_combout\ = (\button[1]~input_o\ & (!\button[0]~input_o\)) # (!\button[1]~input_o\ & ((\U_ALU|Mux0~0_combout\) # ((\button[0]~input_o\ & \switch[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \U_ALU|Mux0~0_combout\,
	datac => \switch[5]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux0~1_combout\);

-- Location: IOIBUF_X117_Y39_N1
\switch[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X117_Y34_N8
\switch[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X117_Y38_N8
\switch[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X117_Y36_N1
\switch[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: LCCOMB_X115_Y36_N20
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

-- Location: LCCOMB_X115_Y36_N22
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

-- Location: LCCOMB_X115_Y36_N24
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

-- Location: LCCOMB_X115_Y36_N26
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

-- Location: IOIBUF_X117_Y41_N8
\switch[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X114_Y36_N2
\U_ALU|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~1_combout\ = (\button[0]~input_o\ & (!\button[1]~input_o\ & (\switch[0]~input_o\ & !\switch[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X114_Y36_N16
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

-- Location: LCCOMB_X115_Y35_N20
\U_ALU|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~0_combout\ = (\switch[2]~input_o\ & (\switch[6]~input_o\ $ (VCC))) # (!\switch[2]~input_o\ & ((\switch[6]~input_o\) # (GND)))
-- \U_ALU|Add1~1\ = CARRY((\switch[6]~input_o\) # (!\switch[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[6]~input_o\,
	datad => VCC,
	combout => \U_ALU|Add1~0_combout\,
	cout => \U_ALU|Add1~1\);

-- Location: LCCOMB_X115_Y35_N22
\U_ALU|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~2_combout\ = (\switch[7]~input_o\ & ((\switch[3]~input_o\ & (!\U_ALU|Add1~1\)) # (!\switch[3]~input_o\ & (\U_ALU|Add1~1\ & VCC)))) # (!\switch[7]~input_o\ & ((\switch[3]~input_o\ & ((\U_ALU|Add1~1\) # (GND))) # (!\switch[3]~input_o\ & 
-- (!\U_ALU|Add1~1\))))
-- \U_ALU|Add1~3\ = CARRY((\switch[7]~input_o\ & (\switch[3]~input_o\ & !\U_ALU|Add1~1\)) # (!\switch[7]~input_o\ & ((\switch[3]~input_o\) # (!\U_ALU|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datab => \switch[3]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add1~1\,
	combout => \U_ALU|Add1~2_combout\,
	cout => \U_ALU|Add1~3\);

-- Location: LCCOMB_X115_Y35_N24
\U_ALU|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~4_combout\ = ((\switch[8]~input_o\ $ (\switch[4]~input_o\ $ (\U_ALU|Add1~3\)))) # (GND)
-- \U_ALU|Add1~5\ = CARRY((\switch[8]~input_o\ & ((!\U_ALU|Add1~3\) # (!\switch[4]~input_o\))) # (!\switch[8]~input_o\ & (!\switch[4]~input_o\ & !\U_ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[4]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add1~3\,
	combout => \U_ALU|Add1~4_combout\,
	cout => \U_ALU|Add1~5\);

-- Location: LCCOMB_X115_Y35_N26
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

-- Location: LCCOMB_X114_Y36_N0
\U_ALU|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~0_combout\ = (\switch[0]~input_o\ & (((\U_ALU|Add1~6_combout\)))) # (!\switch[0]~input_o\ & (\switch[9]~input_o\ $ ((\switch[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \U_ALU|Add1~6_combout\,
	combout => \U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y36_N12
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

-- Location: LCCOMB_X114_Y36_N18
\U_ALU|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~2_combout\ = (!\switch[0]~input_o\ & ((\switch[9]~input_o\) # (\switch[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[0]~input_o\,
	combout => \U_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X115_Y36_N30
\U_ALU|Mult0|auto_generated|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(3) = (\switch[2]~input_o\ & (\switch[3]~input_o\ $ ((\switch[9]~input_o\)))) # (!\switch[2]~input_o\ & (\switch[3]~input_o\ & ((!\switch[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[9]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \switch[8]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X116_Y36_N16
\U_ALU|Mult0|auto_generated|cs1a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ = \switch[5]~input_o\ $ (((\switch[3]~input_o\ & \switch[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X116_Y36_N28
\U_ALU|Mult0|auto_generated|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(2) = (\switch[2]~input_o\ & (\switch[3]~input_o\ $ (((\switch[8]~input_o\))))) # (!\switch[2]~input_o\ & (\switch[3]~input_o\ & (!\switch[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X115_Y36_N14
\U_ALU|Mult0|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~0_combout\ = (\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le3a\(2) & VCC))
-- \U_ALU|Mult0|auto_generated|op_1~1\ = CARRY((\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ & \U_ALU|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \U_ALU|Mult0|auto_generated|op_1~0_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X115_Y36_N16
\U_ALU|Mult0|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~2_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(3) & (!\U_ALU|Mult0|auto_generated|op_1~1\)) # (!\U_ALU|Mult0|auto_generated|le3a\(3) & ((\U_ALU|Mult0|auto_generated|op_1~1\) # (GND)))
-- \U_ALU|Mult0|auto_generated|op_1~3\ = CARRY((!\U_ALU|Mult0|auto_generated|op_1~1\) # (!\U_ALU|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~1\,
	combout => \U_ALU|Mult0|auto_generated|op_1~2_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X116_Y36_N6
\U_ALU|Mult0|auto_generated|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ = \switch[3]~input_o\ $ (\switch[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X116_Y36_N0
\U_ALU|Mult0|auto_generated|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(1) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ $ ((\switch[7]~input_o\)))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\ & ((!\switch[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\,
	datac => \switch[7]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X116_Y36_N2
\U_ALU|Mult0|auto_generated|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(0) = \switch[5]~input_o\ $ (((\switch[3]~input_o\ & ((\switch[6]~input_o\) # (\switch[4]~input_o\))) # (!\switch[3]~input_o\ & (\switch[6]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X115_Y36_N10
\U_ALU|Mult0|auto_generated|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(1) = (\switch[2]~input_o\ & (\switch[3]~input_o\ $ ((\switch[7]~input_o\)))) # (!\switch[2]~input_o\ & (\switch[3]~input_o\ & ((!\switch[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X115_Y36_N12
\U_ALU|Mult0|auto_generated|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(0) = \switch[3]~input_o\ $ (((\switch[2]~input_o\ & \switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X115_Y36_N0
\U_ALU|Mult0|auto_generated|op_3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~0_combout\ = (\switch[3]~input_o\ & (\U_ALU|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\switch[3]~input_o\ & (\U_ALU|Mult0|auto_generated|le3a\(0) & VCC))
-- \U_ALU|Mult0|auto_generated|op_3~1\ = CARRY((\switch[3]~input_o\ & \U_ALU|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \U_ALU|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \U_ALU|Mult0|auto_generated|op_3~0_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X115_Y36_N2
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

-- Location: LCCOMB_X115_Y36_N4
\U_ALU|Mult0|auto_generated|op_3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~4_combout\ = ((\U_ALU|Mult0|auto_generated|le4a\(0) $ (\U_ALU|Mult0|auto_generated|op_1~0_combout\ $ (!\U_ALU|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_3~5\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(0) & ((\U_ALU|Mult0|auto_generated|op_1~0_combout\) # (!\U_ALU|Mult0|auto_generated|op_3~3\))) # (!\U_ALU|Mult0|auto_generated|le4a\(0) & 
-- (\U_ALU|Mult0|auto_generated|op_1~0_combout\ & !\U_ALU|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(0),
	datab => \U_ALU|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~3\,
	combout => \U_ALU|Mult0|auto_generated|op_3~4_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X115_Y36_N6
\U_ALU|Mult0|auto_generated|op_3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~6_combout\ = (\U_ALU|Mult0|auto_generated|op_1~2_combout\ & ((\U_ALU|Mult0|auto_generated|le4a\(1) & (\U_ALU|Mult0|auto_generated|op_3~5\ & VCC)) # (!\U_ALU|Mult0|auto_generated|le4a\(1) & 
-- (!\U_ALU|Mult0|auto_generated|op_3~5\)))) # (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & ((\U_ALU|Mult0|auto_generated|le4a\(1) & (!\U_ALU|Mult0|auto_generated|op_3~5\)) # (!\U_ALU|Mult0|auto_generated|le4a\(1) & ((\U_ALU|Mult0|auto_generated|op_3~5\) 
-- # (GND)))))
-- \U_ALU|Mult0|auto_generated|op_3~7\ = CARRY((\U_ALU|Mult0|auto_generated|op_1~2_combout\ & (!\U_ALU|Mult0|auto_generated|le4a\(1) & !\U_ALU|Mult0|auto_generated|op_3~5\)) # (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & 
-- ((!\U_ALU|Mult0|auto_generated|op_3~5\) # (!\U_ALU|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_1~2_combout\,
	datab => \U_ALU|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~5\,
	combout => \U_ALU|Mult0|auto_generated|op_3~6_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X114_Y36_N14
\U_ALU|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~4_combout\ = (\U_ALU|Mux3~2_combout\) # ((\U_ALU|Mux3~3_combout\ & \U_ALU|Mult0|auto_generated|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~3_combout\,
	datab => \U_ALU|Mux3~2_combout\,
	datad => \U_ALU|Mult0|auto_generated|op_3~6_combout\,
	combout => \U_ALU|Mux3~4_combout\);

-- Location: LCCOMB_X114_Y36_N24
\U_ALU|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~3_combout\ = (\U_ALU|Mux0~2_combout\ & (((\U_ALU|Mux3~4_combout\) # (!\button[1]~input_o\)))) # (!\U_ALU|Mux0~2_combout\ & (\U_ALU|Mux3~0_combout\ & ((\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~2_combout\,
	datab => \U_ALU|Mux3~0_combout\,
	datac => \U_ALU|Mux3~4_combout\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux0~3_combout\);

-- Location: LCCOMB_X115_Y35_N2
\U_ALU|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~5_combout\ = (\switch[1]~input_o\ & (!\switch[0]~input_o\ & (\U_ALU|Mux0~4_combout\))) # (!\switch[1]~input_o\ & (((\U_ALU|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_ALU|Mux0~4_combout\,
	datac => \U_ALU|Mux0~3_combout\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux0~5_combout\);

-- Location: LCCOMB_X115_Y35_N16
\U_ALU|Mux1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~6_combout\ = (\button[1]~input_o\ & ((!\button[0]~input_o\))) # (!\button[1]~input_o\ & (\switch[9]~input_o\ & \button[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[1]~input_o\,
	datac => \switch[9]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux1~6_combout\);

-- Location: LCCOMB_X115_Y35_N10
\U_ALU|Mux1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~7_combout\ = (\switch[0]~input_o\ & (\U_ALU|Mux1~6_combout\ & ((!\button[0]~input_o\)))) # (!\switch[0]~input_o\ & ((\U_ALU|Mux1~6_combout\) # ((\switch[7]~input_o\ & !\button[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_ALU|Mux1~6_combout\,
	datac => \switch[7]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux1~7_combout\);

-- Location: LCCOMB_X115_Y35_N30
\U_ALU|Mux2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~10_combout\ = (\button[1]~input_o\ & (((!\switch[0]~input_o\ & \switch[1]~input_o\)) # (!\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \button[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux2~10_combout\);

-- Location: LCCOMB_X115_Y35_N12
\U_ALU|Mux1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~8_combout\ = (\U_ALU|Mux2~10_combout\ & (\switch[6]~input_o\ & ((!\switch[0]~input_o\) # (!\U_ALU|Mux1~7_combout\)))) # (!\U_ALU|Mux2~10_combout\ & (\U_ALU|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~7_combout\,
	datab => \switch[6]~input_o\,
	datac => \U_ALU|Mux2~10_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux1~8_combout\);

-- Location: LCCOMB_X115_Y35_N4
\U_ALU|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~0_combout\ = (\switch[0]~input_o\ & (\U_ALU|Add1~4_combout\ & !\button[0]~input_o\)) # (!\switch[0]~input_o\ & ((\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \U_ALU|Add1~4_combout\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X116_Y35_N0
\U_ALU|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~0_combout\ = (\button[0]~input_o\ & (((\button[1]~input_o\ & !\switch[1]~input_o\)) # (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \button[1]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X116_Y36_N18
\U_ALU|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~1_combout\ = (\U_ALU|Mux1~0_combout\ & (((\switch[8]~input_o\) # (\switch[4]~input_o\)))) # (!\U_ALU|Mux1~0_combout\ & (!\switch[0]~input_o\ & (\switch[8]~input_o\ $ (\switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \switch[0]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X116_Y36_N12
\U_ALU|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~2_combout\ = (\U_ALU|Mux1~1_combout\) # ((\U_ALU|Mux1~0_combout\ & ((!\U_ALU|Mux2~0_combout\))) # (!\U_ALU|Mux1~0_combout\ & (\U_ALU|Mult0|auto_generated|op_3~4_combout\ & \U_ALU|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|op_3~4_combout\,
	datac => \U_ALU|Mux2~0_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X116_Y36_N10
\U_ALU|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~4_combout\ = (\button[0]~input_o\ & (((!\switch[1]~input_o\ & !\button[1]~input_o\)) # (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux2~4_combout\);

-- Location: LCCOMB_X116_Y36_N8
\U_ALU|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~3_combout\ = (\button[0]~input_o\ & (!\switch[0]~input_o\)) # (!\button[0]~input_o\ & ((\switch[0]~input_o\ & (\switch[8]~input_o\ & \switch[4]~input_o\)) # (!\switch[0]~input_o\ & (!\switch[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|Mux1~3_combout\);

-- Location: LCCOMB_X116_Y36_N14
\U_ALU|output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|output~1_combout\ = (\switch[8]~input_o\) # (\switch[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[8]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|output~1_combout\);

-- Location: LCCOMB_X116_Y36_N26
\U_ALU|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~4_combout\ = (\U_ALU|Mux2~4_combout\ & ((\U_ALU|Mux1~3_combout\ & (!\U_ALU|output~1_combout\)) # (!\U_ALU|Mux1~3_combout\ & ((\U_ALU|Add0~4_combout\))))) # (!\U_ALU|Mux2~4_combout\ & (\U_ALU|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~4_combout\,
	datab => \U_ALU|Mux1~3_combout\,
	datac => \U_ALU|output~1_combout\,
	datad => \U_ALU|Add0~4_combout\,
	combout => \U_ALU|Mux1~4_combout\);

-- Location: LCCOMB_X115_Y35_N14
\U_ALU|Mux1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~5_combout\ = (!\switch[1]~input_o\ & ((\button[1]~input_o\ & (\U_ALU|Mux1~2_combout\)) # (!\button[1]~input_o\ & ((\U_ALU|Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~2_combout\,
	datab => \U_ALU|Mux1~4_combout\,
	datac => \button[1]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux1~5_combout\);

-- Location: LCCOMB_X116_Y35_N28
\U_ALU|Mux1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~9_combout\ = (\U_ALU|Mux1~5_combout\) # ((\U_ALU|Mux1~8_combout\ & \switch[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux1~8_combout\,
	datac => \switch[1]~input_o\,
	datad => \U_ALU|Mux1~5_combout\,
	combout => \U_ALU|Mux1~9_combout\);

-- Location: LCCOMB_X116_Y36_N20
\U_ALU|Mux2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~5_combout\ = (\switch[0]~input_o\ & (\switch[3]~input_o\ & (\switch[7]~input_o\ & !\button[0]~input_o\))) # (!\switch[0]~input_o\ & (((\button[0]~input_o\) # (!\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux2~5_combout\);

-- Location: LCCOMB_X116_Y36_N24
\U_ALU|output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|output~0_combout\ = (\switch[7]~input_o\) # (\switch[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[7]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|output~0_combout\);

-- Location: LCCOMB_X116_Y36_N30
\U_ALU|Mux2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~6_combout\ = (\U_ALU|Mux2~4_combout\ & ((\U_ALU|Mux2~5_combout\ & ((!\U_ALU|output~0_combout\))) # (!\U_ALU|Mux2~5_combout\ & (\U_ALU|Add0~2_combout\)))) # (!\U_ALU|Mux2~4_combout\ & (\U_ALU|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~4_combout\,
	datab => \U_ALU|Mux2~5_combout\,
	datac => \U_ALU|Add0~2_combout\,
	datad => \U_ALU|output~0_combout\,
	combout => \U_ALU|Mux2~6_combout\);

-- Location: LCCOMB_X115_Y35_N8
\U_ALU|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~1_combout\ = (\switch[0]~input_o\ & (\U_ALU|Add1~2_combout\ & !\button[0]~input_o\)) # (!\switch[0]~input_o\ & ((\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datac => \U_ALU|Add1~2_combout\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X116_Y35_N26
\U_ALU|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~2_combout\ = (\U_ALU|Mux2~1_combout\ & ((\switch[7]~input_o\) # ((\switch[3]~input_o\)))) # (!\U_ALU|Mux2~1_combout\ & (!\switch[0]~input_o\ & (\switch[7]~input_o\ $ (\switch[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \switch[3]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X116_Y35_N12
\U_ALU|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~3_combout\ = (\U_ALU|Mux2~2_combout\) # ((\U_ALU|Mux2~1_combout\ & ((!\U_ALU|Mux2~0_combout\))) # (!\U_ALU|Mux2~1_combout\ & (\U_ALU|Mult0|auto_generated|op_3~2_combout\ & \U_ALU|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~1_combout\,
	datab => \U_ALU|Mult0|auto_generated|op_3~2_combout\,
	datac => \U_ALU|Mux2~2_combout\,
	datad => \U_ALU|Mux2~0_combout\,
	combout => \U_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X116_Y35_N6
\U_ALU|Mux2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~7_combout\ = (!\switch[1]~input_o\ & ((\button[1]~input_o\ & ((\U_ALU|Mux2~3_combout\))) # (!\button[1]~input_o\ & (\U_ALU|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~6_combout\,
	datab => \button[1]~input_o\,
	datac => \switch[1]~input_o\,
	datad => \U_ALU|Mux2~3_combout\,
	combout => \U_ALU|Mux2~7_combout\);

-- Location: LCCOMB_X115_Y35_N18
\U_ALU|Mux2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~8_combout\ = (\button[1]~input_o\ & ((!\button[0]~input_o\))) # (!\button[1]~input_o\ & (\switch[8]~input_o\ & \button[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[1]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux2~8_combout\);

-- Location: LCCOMB_X115_Y35_N28
\U_ALU|Mux2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~9_combout\ = (\switch[0]~input_o\ & (((\U_ALU|Mux2~8_combout\ & !\button[0]~input_o\)))) # (!\switch[0]~input_o\ & ((\U_ALU|Mux2~8_combout\) # ((\switch[6]~input_o\ & !\button[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \U_ALU|Mux2~8_combout\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux2~9_combout\);

-- Location: LCCOMB_X115_Y35_N0
\U_ALU|Mux2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~11_combout\ = (\U_ALU|Mux2~10_combout\ & (\switch[9]~input_o\ & ((!\switch[0]~input_o\) # (!\U_ALU|Mux2~9_combout\)))) # (!\U_ALU|Mux2~10_combout\ & (((\U_ALU|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \U_ALU|Mux2~9_combout\,
	datac => \U_ALU|Mux2~10_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux2~11_combout\);

-- Location: LCCOMB_X116_Y35_N8
\U_ALU|Mux2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~12_combout\ = (\U_ALU|Mux2~7_combout\) # ((\switch[1]~input_o\ & \U_ALU|Mux2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~7_combout\,
	datac => \switch[1]~input_o\,
	datad => \U_ALU|Mux2~11_combout\,
	combout => \U_ALU|Mux2~12_combout\);

-- Location: LCCOMB_X116_Y35_N30
\U_ALU|Mux3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~12_combout\ = (\button[1]~input_o\ & (((\switch[8]~input_o\)))) # (!\button[1]~input_o\ & (\switch[7]~input_o\ & ((\button[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datab => \switch[8]~input_o\,
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux3~12_combout\);

-- Location: LCCOMB_X114_Y36_N4
\U_ALU|Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~6_combout\ = (\switch[6]~input_o\ & ((!\switch[2]~input_o\) # (!\switch[0]~input_o\))) # (!\switch[6]~input_o\ & (\switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \U_ALU|Mux3~6_combout\);

-- Location: LCCOMB_X113_Y36_N24
\U_ALU|Mux3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~7_combout\ = (\button[1]~input_o\ & (((!\button[0]~input_o\)))) # (!\button[1]~input_o\ & ((\U_ALU|Mux3~6_combout\) # ((\switch[2]~input_o\ & \button[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~6_combout\,
	datab => \button[1]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux3~7_combout\);

-- Location: LCCOMB_X113_Y36_N10
\U_ALU|Mux3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~8_combout\ = ((\U_ALU|Mux3~1_combout\ & (\U_ALU|Add0~0_combout\ & \button[0]~input_o\))) # (!\U_ALU|Mux3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~1_combout\,
	datab => \U_ALU|Mux3~7_combout\,
	datac => \U_ALU|Add0~0_combout\,
	datad => \button[0]~input_o\,
	combout => \U_ALU|Mux3~8_combout\);

-- Location: LCCOMB_X114_Y36_N26
\U_ALU|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~5_combout\ = (\switch[0]~input_o\ & (\U_ALU|Add1~0_combout\)) # (!\switch[0]~input_o\ & ((\U_ALU|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add1~0_combout\,
	datab => \U_ALU|Add0~0_combout\,
	datac => \switch[0]~input_o\,
	combout => \U_ALU|Mux3~5_combout\);

-- Location: LCCOMB_X114_Y36_N22
\U_ALU|Mux3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~9_combout\ = (!\switch[6]~input_o\ & !\switch[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \U_ALU|Mux3~9_combout\);

-- Location: LCCOMB_X114_Y36_N8
\U_ALU|Mux3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~10_combout\ = (\U_ALU|Mux3~9_combout\ & (\U_ALU|Mult0|auto_generated|op_3~0_combout\ & ((\U_ALU|Mux3~3_combout\)))) # (!\U_ALU|Mux3~9_combout\ & (((\U_ALU|Mult0|auto_generated|op_3~0_combout\ & \U_ALU|Mux3~3_combout\)) # 
-- (!\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~9_combout\,
	datab => \U_ALU|Mult0|auto_generated|op_3~0_combout\,
	datac => \switch[0]~input_o\,
	datad => \U_ALU|Mux3~3_combout\,
	combout => \U_ALU|Mux3~10_combout\);

-- Location: LCCOMB_X113_Y36_N28
\U_ALU|Mux3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~11_combout\ = (\U_ALU|Mux3~8_combout\ & (((\U_ALU|Mux3~10_combout\) # (!\button[1]~input_o\)))) # (!\U_ALU|Mux3~8_combout\ & (\U_ALU|Mux3~5_combout\ & ((\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~8_combout\,
	datab => \U_ALU|Mux3~5_combout\,
	datac => \U_ALU|Mux3~10_combout\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux3~11_combout\);

-- Location: LCCOMB_X116_Y35_N16
\U_ALU|Mux3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~13_combout\ = (\switch[1]~input_o\ & (\U_ALU|Mux3~12_combout\ & ((!\switch[0]~input_o\)))) # (!\switch[1]~input_o\ & (((\U_ALU|Mux3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux3~12_combout\,
	datab => \switch[1]~input_o\,
	datac => \U_ALU|Mux3~11_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux3~13_combout\);

-- Location: LCCOMB_X116_Y35_N10
\U_LED0|outputs[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[0]~0_combout\ = (\U_ALU|Mux3~13_combout\ & ((\U_ALU|Mux0~5_combout\) # (\U_ALU|Mux1~9_combout\ $ (\U_ALU|Mux2~12_combout\)))) # (!\U_ALU|Mux3~13_combout\ & ((\U_ALU|Mux2~12_combout\) # (\U_ALU|Mux0~5_combout\ $ (\U_ALU|Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~5_combout\,
	datab => \U_ALU|Mux1~9_combout\,
	datac => \U_ALU|Mux2~12_combout\,
	datad => \U_ALU|Mux3~13_combout\,
	combout => \U_LED0|outputs[0]~0_combout\);

-- Location: LCCOMB_X116_Y35_N4
\U_LED0|outputs[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[1]~1_combout\ = (\U_ALU|Mux1~9_combout\ & ((\U_ALU|Mux0~5_combout\ $ (!\U_ALU|Mux2~12_combout\)) # (!\U_ALU|Mux3~13_combout\))) # (!\U_ALU|Mux1~9_combout\ & ((\U_ALU|Mux0~5_combout\) # ((!\U_ALU|Mux2~12_combout\ & 
-- !\U_ALU|Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~5_combout\,
	datab => \U_ALU|Mux1~9_combout\,
	datac => \U_ALU|Mux2~12_combout\,
	datad => \U_ALU|Mux3~13_combout\,
	combout => \U_LED0|outputs[1]~1_combout\);

-- Location: LCCOMB_X116_Y35_N22
\U_LED0|outputs[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[2]~2_combout\ = (\U_ALU|Mux2~12_combout\ & ((\U_ALU|Mux0~5_combout\) # ((!\U_ALU|Mux3~13_combout\)))) # (!\U_ALU|Mux2~12_combout\ & ((\U_ALU|Mux1~9_combout\ & (\U_ALU|Mux0~5_combout\)) # (!\U_ALU|Mux1~9_combout\ & 
-- ((!\U_ALU|Mux3~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~5_combout\,
	datab => \U_ALU|Mux1~9_combout\,
	datac => \U_ALU|Mux2~12_combout\,
	datad => \U_ALU|Mux3~13_combout\,
	combout => \U_LED0|outputs[2]~2_combout\);

-- Location: LCCOMB_X116_Y35_N24
\U_LED0|outputs[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[3]~3_combout\ = (\U_ALU|Mux3~13_combout\ & ((\U_ALU|Mux1~9_combout\ $ (!\U_ALU|Mux2~12_combout\)))) # (!\U_ALU|Mux3~13_combout\ & ((\U_ALU|Mux0~5_combout\ & (!\U_ALU|Mux1~9_combout\ & \U_ALU|Mux2~12_combout\)) # (!\U_ALU|Mux0~5_combout\ & 
-- (\U_ALU|Mux1~9_combout\ & !\U_ALU|Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~5_combout\,
	datab => \U_ALU|Mux1~9_combout\,
	datac => \U_ALU|Mux2~12_combout\,
	datad => \U_ALU|Mux3~13_combout\,
	combout => \U_LED0|outputs[3]~3_combout\);

-- Location: LCCOMB_X116_Y35_N2
\U_LED0|outputs[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[4]~4_combout\ = (\U_ALU|Mux0~5_combout\ & (((!\U_ALU|Mux2~12_combout\ & \U_ALU|Mux3~13_combout\)) # (!\U_ALU|Mux1~9_combout\))) # (!\U_ALU|Mux0~5_combout\ & ((\U_ALU|Mux1~9_combout\) # ((\U_ALU|Mux3~13_combout\) # 
-- (!\U_ALU|Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~5_combout\,
	datab => \U_ALU|Mux1~9_combout\,
	datac => \U_ALU|Mux2~12_combout\,
	datad => \U_ALU|Mux3~13_combout\,
	combout => \U_LED0|outputs[4]~4_combout\);

-- Location: LCCOMB_X116_Y35_N20
\U_LED0|outputs[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[5]~5_combout\ = (\U_ALU|Mux0~5_combout\ & ((\U_ALU|Mux3~13_combout\ & ((!\U_ALU|Mux2~12_combout\))) # (!\U_ALU|Mux3~13_combout\ & (!\U_ALU|Mux1~9_combout\)))) # (!\U_ALU|Mux0~5_combout\ & ((\U_ALU|Mux2~12_combout\ $ 
-- (!\U_ALU|Mux3~13_combout\)) # (!\U_ALU|Mux1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~5_combout\,
	datab => \U_ALU|Mux1~9_combout\,
	datac => \U_ALU|Mux2~12_combout\,
	datad => \U_ALU|Mux3~13_combout\,
	combout => \U_LED0|outputs[5]~5_combout\);

-- Location: LCCOMB_X116_Y35_N14
\U_LED0|outputs[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_LED0|outputs[6]~6_combout\ = (\U_ALU|Mux0~5_combout\ & ((\U_ALU|Mux1~9_combout\ $ (!\U_ALU|Mux2~12_combout\)) # (!\U_ALU|Mux3~13_combout\))) # (!\U_ALU|Mux0~5_combout\ & ((\U_ALU|Mux2~12_combout\) # (\U_ALU|Mux1~9_combout\ $ 
-- (!\U_ALU|Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~5_combout\,
	datab => \U_ALU|Mux1~9_combout\,
	datac => \U_ALU|Mux2~12_combout\,
	datad => \U_ALU|Mux3~13_combout\,
	combout => \U_LED0|outputs[6]~6_combout\);

-- Location: LCCOMB_X114_Y36_N10
\U_ALU|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~0_combout\ = (\button[0]~input_o\ & ((\switch[6]~input_o\) # ((!\switch[1]~input_o\)))) # (!\button[0]~input_o\ & (((\switch[9]~input_o\ & \switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \button[0]~input_o\,
	datac => \switch[9]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X115_Y36_N28
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

-- Location: LCCOMB_X114_Y36_N28
\U_ALU|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~1_combout\ = (\switch[1]~input_o\ & (((!\switch[0]~input_o\ & !\button[1]~input_o\)))) # (!\switch[1]~input_o\ & (\switch[0]~input_o\ & ((\U_ALU|Add0~8_combout\) # (\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[1]~input_o\,
	datab => \U_ALU|Add0~8_combout\,
	datac => \switch[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X115_Y35_N6
\U_ALU|Mult0|auto_generated|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(4) = (\switch[3]~input_o\ & ((\switch[2]~input_o\) # (!\switch[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[3]~input_o\,
	datac => \switch[9]~input_o\,
	datad => \switch[2]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X116_Y36_N4
\U_ALU|Mult0|auto_generated|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(2) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\switch[8]~input_o\ $ (((\U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\))))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\switch[7]~input_o\ & 
-- \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \switch[8]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \U_ALU|Mult0|auto_generated|cs1a[1]~0_combout\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X115_Y36_N18
\U_ALU|Mult0|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~4_combout\ = \U_ALU|Mult0|auto_generated|le3a\(4) $ (\U_ALU|Mult0|auto_generated|op_1~3\ $ (!\U_ALU|Mult0|auto_generated|le4a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mult0|auto_generated|le3a\(4),
	datad => \U_ALU|Mult0|auto_generated|le4a\(2),
	cin => \U_ALU|Mult0|auto_generated|op_1~3\,
	combout => \U_ALU|Mult0|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X116_Y36_N22
\U_ALU|Mult0|auto_generated|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(0) = (\switch[6]~input_o\ & ((\switch[5]~input_o\) # ((\switch[3]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X115_Y36_N8
\U_ALU|Mult0|auto_generated|op_3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~8_combout\ = \U_ALU|Mult0|auto_generated|op_1~4_combout\ $ (\U_ALU|Mult0|auto_generated|op_3~7\ $ (!\U_ALU|Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mult0|auto_generated|op_1~4_combout\,
	datad => \U_ALU|Mult0|auto_generated|le5a\(0),
	cin => \U_ALU|Mult0|auto_generated|op_3~7\,
	combout => \U_ALU|Mult0|auto_generated|op_3~8_combout\);

-- Location: LCCOMB_X114_Y36_N30
\U_ALU|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~2_combout\ = (\U_ALU|Mux4~0_combout\ & (\U_ALU|Mux4~1_combout\ & ((\U_ALU|Mult0|auto_generated|op_3~8_combout\) # (!\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux4~0_combout\,
	datab => \U_ALU|Mux4~1_combout\,
	datac => \U_ALU|Mult0|auto_generated|op_3~8_combout\,
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


