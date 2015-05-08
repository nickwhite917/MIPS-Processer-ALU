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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/07/2015 14:13:35"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopLevelALU IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	oled : BUFFER std_logic_vector(27 DOWNTO 0);
	zeroFlag : BUFFER std_logic;
	ALUctl : IN std_logic_vector(3 DOWNTO 0)
	);
END TopLevelALU;

-- Design Ports Information
-- oled[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[11]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[14]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[15]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[16]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[17]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[18]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[19]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[21]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[22]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[23]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[24]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[25]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[26]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oled[27]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zeroFlag	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUctl[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUctl[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUctl[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUctl[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopLevelALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_oled : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_zeroFlag : std_logic;
SIGNAL ww_ALUctl : std_logic_vector(3 DOWNTO 0);
SIGNAL \oled[0]~output_o\ : std_logic;
SIGNAL \oled[1]~output_o\ : std_logic;
SIGNAL \oled[2]~output_o\ : std_logic;
SIGNAL \oled[3]~output_o\ : std_logic;
SIGNAL \oled[4]~output_o\ : std_logic;
SIGNAL \oled[5]~output_o\ : std_logic;
SIGNAL \oled[6]~output_o\ : std_logic;
SIGNAL \oled[7]~output_o\ : std_logic;
SIGNAL \oled[8]~output_o\ : std_logic;
SIGNAL \oled[9]~output_o\ : std_logic;
SIGNAL \oled[10]~output_o\ : std_logic;
SIGNAL \oled[11]~output_o\ : std_logic;
SIGNAL \oled[12]~output_o\ : std_logic;
SIGNAL \oled[13]~output_o\ : std_logic;
SIGNAL \oled[14]~output_o\ : std_logic;
SIGNAL \oled[15]~output_o\ : std_logic;
SIGNAL \oled[16]~output_o\ : std_logic;
SIGNAL \oled[17]~output_o\ : std_logic;
SIGNAL \oled[18]~output_o\ : std_logic;
SIGNAL \oled[19]~output_o\ : std_logic;
SIGNAL \oled[20]~output_o\ : std_logic;
SIGNAL \oled[21]~output_o\ : std_logic;
SIGNAL \oled[22]~output_o\ : std_logic;
SIGNAL \oled[23]~output_o\ : std_logic;
SIGNAL \oled[24]~output_o\ : std_logic;
SIGNAL \oled[25]~output_o\ : std_logic;
SIGNAL \oled[26]~output_o\ : std_logic;
SIGNAL \oled[27]~output_o\ : std_logic;
SIGNAL \zeroFlag~output_o\ : std_logic;
SIGNAL \ALUctl[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \ALUctl[0]~input_o\ : std_logic;
SIGNAL \ALUctl[2]~input_o\ : std_logic;
SIGNAL \A0|Mux0~5_combout\ : std_logic;
SIGNAL \A2|Mux0~0_combout\ : std_logic;
SIGNAL \A2|Mux0~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A0|Mux2~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A1|Mux2~0_combout\ : std_logic;
SIGNAL \A2|Mux0~1_combout\ : std_logic;
SIGNAL \A0|Mux0~4_combout\ : std_logic;
SIGNAL \A2|Mux0~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A3|Mux0~2_combout\ : std_logic;
SIGNAL \A3|Mux0~1_combout\ : std_logic;
SIGNAL \A2|Mux2~0_combout\ : std_logic;
SIGNAL \A3|Mux0~0_combout\ : std_logic;
SIGNAL \A3|Mux0~3_combout\ : std_logic;
SIGNAL \A1|Mux0~1_combout\ : std_logic;
SIGNAL \A1|Mux0~0_combout\ : std_logic;
SIGNAL \A1|Mux0~2_combout\ : std_logic;
SIGNAL \A1|Mux0~3_combout\ : std_logic;
SIGNAL \A0|Mux0~3_combout\ : std_logic;
SIGNAL \A0|Mux0~2_combout\ : std_logic;
SIGNAL \A0|Mux0~6_combout\ : std_logic;
SIGNAL \hex0|Mux6~0_combout\ : std_logic;
SIGNAL \hex0|Mux5~0_combout\ : std_logic;
SIGNAL \hex0|Mux4~0_combout\ : std_logic;
SIGNAL \hex0|Mux3~0_combout\ : std_logic;
SIGNAL \hex0|Mux2~0_combout\ : std_logic;
SIGNAL \hex0|Mux1~0_combout\ : std_logic;
SIGNAL \hex0|Mux0~0_combout\ : std_logic;
SIGNAL \hex1|Mux6~0_combout\ : std_logic;
SIGNAL \hex1|Mux5~0_combout\ : std_logic;
SIGNAL \hex1|Mux4~0_combout\ : std_logic;
SIGNAL \hex1|Mux3~0_combout\ : std_logic;
SIGNAL \hex1|Mux2~0_combout\ : std_logic;
SIGNAL \hex1|Mux1~0_combout\ : std_logic;
SIGNAL \hex1|Mux0~0_combout\ : std_logic;
SIGNAL \hex2|Mux6~0_combout\ : std_logic;
SIGNAL \hex2|Mux5~0_combout\ : std_logic;
SIGNAL \hex2|Mux4~0_combout\ : std_logic;
SIGNAL \hex2|Mux3~0_combout\ : std_logic;
SIGNAL \hex2|Mux2~0_combout\ : std_logic;
SIGNAL \hex2|Mux1~0_combout\ : std_logic;
SIGNAL \hex2|Mux0~0_combout\ : std_logic;
SIGNAL \ALUctl[3]~input_o\ : std_logic;
SIGNAL \hex3|Mux6~0_combout\ : std_logic;
SIGNAL \hex3|Mux5~0_combout\ : std_logic;
SIGNAL \hex3|Mux4~0_combout\ : std_logic;
SIGNAL \hex3|Mux3~0_combout\ : std_logic;
SIGNAL \hex3|Mux2~0_combout\ : std_logic;
SIGNAL \hex3|Mux1~0_combout\ : std_logic;
SIGNAL \hex3|Mux0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \hex3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \hex3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \hex2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
oled <= ww_oled;
zeroFlag <= ww_zeroFlag;
ww_ALUctl <= ALUctl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\hex3|ALT_INV_Mux1~0_combout\ <= NOT \hex3|Mux1~0_combout\;
\hex3|ALT_INV_Mux2~0_combout\ <= NOT \hex3|Mux2~0_combout\;
\hex2|ALT_INV_Mux0~0_combout\ <= NOT \hex2|Mux0~0_combout\;
\hex1|ALT_INV_Mux0~0_combout\ <= NOT \hex1|Mux0~0_combout\;
\hex0|ALT_INV_Mux0~0_combout\ <= NOT \hex0|Mux0~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\oled[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \oled[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\oled[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \oled[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\oled[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \oled[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\oled[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \oled[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\oled[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \oled[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\oled[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \oled[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\oled[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \oled[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\oled[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \oled[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\oled[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \oled[8]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\oled[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \oled[9]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\oled[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \oled[10]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\oled[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \oled[11]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\oled[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \oled[12]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\oled[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \oled[13]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\oled[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \oled[14]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\oled[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \oled[15]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\oled[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \oled[16]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\oled[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \oled[17]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\oled[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \oled[18]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\oled[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \oled[19]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\oled[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \oled[20]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\oled[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \oled[21]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\oled[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \oled[22]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\oled[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \oled[23]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\oled[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \oled[24]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\oled[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \oled[25]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\oled[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \oled[26]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\oled[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \oled[27]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\zeroFlag~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~2_combout\,
	devoe => ww_devoe,
	o => \zeroFlag~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\ALUctl[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUctl(1),
	o => \ALUctl[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\ALUctl[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUctl(0),
	o => \ALUctl[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\ALUctl[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUctl(2),
	o => \ALUctl[2]~input_o\);

-- Location: LCCOMB_X19_Y26_N24
\A0|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Mux0~5_combout\ = (!\ALUctl[0]~input_o\ & (\ALUctl[1]~input_o\ $ (\ALUctl[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[2]~input_o\,
	combout => \A0|Mux0~5_combout\);

-- Location: LCCOMB_X16_Y27_N18
\A2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|Mux0~0_combout\ = (\A0|Mux0~5_combout\ & ((\A[2]~input_o\ & (\ALUctl[1]~input_o\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A0|Mux0~5_combout\,
	combout => \A2|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y27_N24
\A2|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|Mux0~2_combout\ = (\ALUctl[2]~input_o\ & (!\B[2]~input_o\ & !\A[2]~input_o\)) # (!\ALUctl[2]~input_o\ & (\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \A2|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y26_N2
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\ALUctl[1]~input_o\ & \ALUctl[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[0]~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X0_Y26_N8
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X19_Y26_N4
\A0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Mux2~0_combout\ = (\A[0]~input_o\ & (\ALUctl[2]~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \A0|Mux2~0_combout\);

-- Location: IOIBUF_X0_Y23_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X16_Y27_N28
\A1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mux2~0_combout\ = (\A[1]~input_o\ & ((\A0|Mux2~0_combout\) # (\ALUctl[2]~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\A0|Mux2~0_combout\ & (\ALUctl[2]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ALUctl[2]~input_o\,
	datac => \A0|Mux2~0_combout\,
	datad => \B[1]~input_o\,
	combout => \A1|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y27_N22
\A2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|Mux0~1_combout\ = (\process_0~0_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\ $ (\A1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A1|Mux2~0_combout\,
	combout => \A2|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y27_N16
\A0|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Mux0~4_combout\ = (\ALUctl[1]~input_o\ & \ALUctl[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUctl[1]~input_o\,
	datad => \ALUctl[0]~input_o\,
	combout => \A0|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y27_N10
\A2|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|Mux0~3_combout\ = (\A2|Mux0~0_combout\) # ((\A2|Mux0~1_combout\) # ((\A2|Mux0~2_combout\ & \A0|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~0_combout\,
	datab => \A2|Mux0~2_combout\,
	datac => \A2|Mux0~1_combout\,
	datad => \A0|Mux0~4_combout\,
	combout => \A2|Mux0~3_combout\);

-- Location: IOIBUF_X0_Y25_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X16_Y27_N26
\A3|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux0~2_combout\ = (\ALUctl[2]~input_o\ & (!\A[3]~input_o\ & !\B[3]~input_o\)) # (!\ALUctl[2]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \A3|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y27_N8
\A3|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux0~1_combout\ = (\A0|Mux0~5_combout\ & ((\A[3]~input_o\ & ((\ALUctl[1]~input_o\))) # (!\A[3]~input_o\ & (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ALUctl[1]~input_o\,
	datad => \A0|Mux0~5_combout\,
	combout => \A3|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y27_N4
\A2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|Mux2~0_combout\ = (\A[2]~input_o\ & ((\A1|Mux2~0_combout\) # (\ALUctl[2]~input_o\ $ (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\A1|Mux2~0_combout\ & (\ALUctl[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A1|Mux2~0_combout\,
	combout => \A2|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y27_N6
\A3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux0~0_combout\ = (\process_0~0_combout\ & (\A[3]~input_o\ $ (\A2|Mux2~0_combout\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A2|Mux2~0_combout\,
	datac => \process_0~0_combout\,
	datad => \B[3]~input_o\,
	combout => \A3|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y27_N20
\A3|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux0~3_combout\ = (\A3|Mux0~1_combout\) # ((\A3|Mux0~0_combout\) # ((\A3|Mux0~2_combout\ & \A0|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Mux0~2_combout\,
	datab => \A0|Mux0~4_combout\,
	datac => \A3|Mux0~1_combout\,
	datad => \A3|Mux0~0_combout\,
	combout => \A3|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y27_N12
\A1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mux0~1_combout\ = (\A0|Mux0~5_combout\ & ((\A[1]~input_o\ & (\ALUctl[1]~input_o\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \A0|Mux0~5_combout\,
	datad => \B[1]~input_o\,
	combout => \A1|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y27_N2
\A1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mux0~0_combout\ = (\process_0~0_combout\ & (\B[1]~input_o\ $ (\A0|Mux2~0_combout\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A0|Mux2~0_combout\,
	datac => \process_0~0_combout\,
	datad => \A[1]~input_o\,
	combout => \A1|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y27_N14
\A1|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mux0~2_combout\ = (\B[1]~input_o\ & (!\ALUctl[2]~input_o\ & \A[1]~input_o\)) # (!\B[1]~input_o\ & (\ALUctl[2]~input_o\ & !\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ALUctl[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \A1|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y27_N0
\A1|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|Mux0~3_combout\ = (\A1|Mux0~1_combout\) # ((\A1|Mux0~0_combout\) # ((\A1|Mux0~2_combout\ & \A0|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Mux0~1_combout\,
	datab => \A1|Mux0~0_combout\,
	datac => \A1|Mux0~2_combout\,
	datad => \A0|Mux0~4_combout\,
	combout => \A1|Mux0~3_combout\);

-- Location: LCCOMB_X19_Y26_N30
\A0|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Mux0~3_combout\ = (\B[0]~input_o\ & (!\ALUctl[1]~input_o\ & ((!\A[0]~input_o\)))) # (!\B[0]~input_o\ & (\ALUctl[0]~input_o\ & (\ALUctl[1]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \A0|Mux0~3_combout\);

-- Location: LCCOMB_X19_Y26_N12
\A0|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Mux0~2_combout\ = (\B[0]~input_o\ & (\ALUctl[1]~input_o\ $ (((\ALUctl[0]~input_o\ & !\A[0]~input_o\))))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\ALUctl[1]~input_o\ $ (\ALUctl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \A0|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y26_N16
\A0|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Mux0~6_combout\ = (\ALUctl[2]~input_o\ & (\A0|Mux0~3_combout\)) # (!\ALUctl[2]~input_o\ & ((\A0|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Mux0~3_combout\,
	datac => \ALUctl[2]~input_o\,
	datad => \A0|Mux0~2_combout\,
	combout => \A0|Mux0~6_combout\);

-- Location: LCCOMB_X19_Y27_N0
\hex0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex0|Mux6~0_combout\ = (\A2|Mux0~3_combout\ & (!\A1|Mux0~3_combout\ & (\A3|Mux0~3_combout\ $ (!\A0|Mux0~6_combout\)))) # (!\A2|Mux0~3_combout\ & (\A0|Mux0~6_combout\ & (\A3|Mux0~3_combout\ $ (!\A1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~3_combout\,
	datab => \A3|Mux0~3_combout\,
	datac => \A1|Mux0~3_combout\,
	datad => \A0|Mux0~6_combout\,
	combout => \hex0|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y27_N2
\hex0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex0|Mux5~0_combout\ = (\A3|Mux0~3_combout\ & ((\A0|Mux0~6_combout\ & ((\A1|Mux0~3_combout\))) # (!\A0|Mux0~6_combout\ & (\A2|Mux0~3_combout\)))) # (!\A3|Mux0~3_combout\ & (\A2|Mux0~3_combout\ & (\A1|Mux0~3_combout\ $ (\A0|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~3_combout\,
	datab => \A3|Mux0~3_combout\,
	datac => \A1|Mux0~3_combout\,
	datad => \A0|Mux0~6_combout\,
	combout => \hex0|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y27_N28
\hex0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex0|Mux4~0_combout\ = (\A2|Mux0~3_combout\ & (\A3|Mux0~3_combout\ & ((\A1|Mux0~3_combout\) # (!\A0|Mux0~6_combout\)))) # (!\A2|Mux0~3_combout\ & (!\A3|Mux0~3_combout\ & (\A1|Mux0~3_combout\ & !\A0|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~3_combout\,
	datab => \A3|Mux0~3_combout\,
	datac => \A1|Mux0~3_combout\,
	datad => \A0|Mux0~6_combout\,
	combout => \hex0|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y27_N6
\hex0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex0|Mux3~0_combout\ = (\A1|Mux0~3_combout\ & ((\A2|Mux0~3_combout\ & ((\A0|Mux0~6_combout\))) # (!\A2|Mux0~3_combout\ & (\A3|Mux0~3_combout\ & !\A0|Mux0~6_combout\)))) # (!\A1|Mux0~3_combout\ & (!\A3|Mux0~3_combout\ & (\A2|Mux0~3_combout\ $ 
-- (\A0|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~3_combout\,
	datab => \A3|Mux0~3_combout\,
	datac => \A1|Mux0~3_combout\,
	datad => \A0|Mux0~6_combout\,
	combout => \hex0|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y27_N16
\hex0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex0|Mux2~0_combout\ = (\A1|Mux0~3_combout\ & (((!\A3|Mux0~3_combout\ & \A0|Mux0~6_combout\)))) # (!\A1|Mux0~3_combout\ & ((\A2|Mux0~3_combout\ & (!\A3|Mux0~3_combout\)) # (!\A2|Mux0~3_combout\ & ((\A0|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~3_combout\,
	datab => \A3|Mux0~3_combout\,
	datac => \A1|Mux0~3_combout\,
	datad => \A0|Mux0~6_combout\,
	combout => \hex0|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y27_N10
\hex0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex0|Mux1~0_combout\ = (\A2|Mux0~3_combout\ & (\A0|Mux0~6_combout\ & (\A3|Mux0~3_combout\ $ (\A1|Mux0~3_combout\)))) # (!\A2|Mux0~3_combout\ & (!\A3|Mux0~3_combout\ & ((\A1|Mux0~3_combout\) # (\A0|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~3_combout\,
	datab => \A3|Mux0~3_combout\,
	datac => \A1|Mux0~3_combout\,
	datad => \A0|Mux0~6_combout\,
	combout => \hex0|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y27_N12
\hex0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex0|Mux0~0_combout\ = (\A0|Mux0~6_combout\ & ((\A3|Mux0~3_combout\) # (\A2|Mux0~3_combout\ $ (\A1|Mux0~3_combout\)))) # (!\A0|Mux0~6_combout\ & ((\A1|Mux0~3_combout\) # (\A2|Mux0~3_combout\ $ (\A3|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~3_combout\,
	datab => \A3|Mux0~3_combout\,
	datac => \A1|Mux0~3_combout\,
	datad => \A0|Mux0~6_combout\,
	combout => \hex0|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y27_N0
\hex1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex1|Mux6~0_combout\ = (\B[3]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ $ (\B[2]~input_o\)))) # (!\B[3]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \hex1|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y27_N26
\hex1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex1|Mux5~0_combout\ = (\B[3]~input_o\ & ((\B[0]~input_o\ & (\B[1]~input_o\)) # (!\B[0]~input_o\ & ((\B[2]~input_o\))))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & (\B[0]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \hex1|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y27_N4
\hex1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex1|Mux4~0_combout\ = (\B[3]~input_o\ & (\B[2]~input_o\ & ((\B[1]~input_o\) # (!\B[0]~input_o\)))) # (!\B[3]~input_o\ & (!\B[0]~input_o\ & (\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \hex1|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y27_N22
\hex1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex1|Mux3~0_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\B[2]~input_o\))) # (!\B[0]~input_o\ & (\B[3]~input_o\ & !\B[2]~input_o\)))) # (!\B[1]~input_o\ & (!\B[3]~input_o\ & (\B[0]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \hex1|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y27_N24
\hex1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex1|Mux2~0_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (!\B[3]~input_o\))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((!\B[3]~input_o\))) # (!\B[2]~input_o\ & (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \hex1|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y27_N10
\hex1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex1|Mux1~0_combout\ = (\B[0]~input_o\ & (\B[3]~input_o\ $ (((\B[1]~input_o\) # (!\B[2]~input_o\))))) # (!\B[0]~input_o\ & (!\B[3]~input_o\ & (\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \hex1|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y27_N28
\hex1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex1|Mux0~0_combout\ = (\B[0]~input_o\ & ((\B[3]~input_o\) # (\B[1]~input_o\ $ (\B[2]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\) # (\B[3]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \hex1|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y28_N0
\hex2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex2|Mux6~0_combout\ = (\A[3]~input_o\ & (\A[0]~input_o\ & (\A[2]~input_o\ $ (\A[1]~input_o\)))) # (!\A[3]~input_o\ & (!\A[1]~input_o\ & (\A[2]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \hex2|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y28_N2
\hex2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex2|Mux5~0_combout\ = (\A[3]~input_o\ & ((\A[0]~input_o\ & ((\A[1]~input_o\))) # (!\A[0]~input_o\ & (\A[2]~input_o\)))) # (!\A[3]~input_o\ & (\A[2]~input_o\ & (\A[0]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \hex2|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y28_N12
\hex2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex2|Mux4~0_combout\ = (\A[3]~input_o\ & (\A[2]~input_o\ & ((\A[1]~input_o\) # (!\A[0]~input_o\)))) # (!\A[3]~input_o\ & (!\A[2]~input_o\ & (!\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \hex2|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y28_N6
\hex2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex2|Mux3~0_combout\ = (\A[1]~input_o\ & ((\A[2]~input_o\ & ((\A[0]~input_o\))) # (!\A[2]~input_o\ & (\A[3]~input_o\ & !\A[0]~input_o\)))) # (!\A[1]~input_o\ & (!\A[3]~input_o\ & (\A[2]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \hex2|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y28_N16
\hex2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex2|Mux2~0_combout\ = (\A[1]~input_o\ & (!\A[3]~input_o\ & ((\A[0]~input_o\)))) # (!\A[1]~input_o\ & ((\A[2]~input_o\ & (!\A[3]~input_o\)) # (!\A[2]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \hex2|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y28_N26
\hex2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex2|Mux1~0_combout\ = (\A[2]~input_o\ & (\A[0]~input_o\ & (\A[3]~input_o\ $ (\A[1]~input_o\)))) # (!\A[2]~input_o\ & (!\A[3]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \hex2|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y28_N20
\hex2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex2|Mux0~0_combout\ = (\A[0]~input_o\ & ((\A[3]~input_o\) # (\A[2]~input_o\ $ (\A[1]~input_o\)))) # (!\A[0]~input_o\ & ((\A[1]~input_o\) # (\A[3]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \hex2|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\ALUctl[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUctl(3),
	o => \ALUctl[3]~input_o\);

-- Location: LCCOMB_X19_Y26_N6
\hex3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex3|Mux6~0_combout\ = (\ALUctl[2]~input_o\ & (\ALUctl[1]~input_o\ & (\ALUctl[0]~input_o\ $ (\ALUctl[3]~input_o\)))) # (!\ALUctl[2]~input_o\ & (!\ALUctl[0]~input_o\ & (\ALUctl[1]~input_o\ $ (\ALUctl[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \ALUctl[3]~input_o\,
	combout => \hex3|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y26_N8
\hex3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex3|Mux5~0_combout\ = (\ALUctl[1]~input_o\ & (\ALUctl[2]~input_o\ & (\ALUctl[0]~input_o\ $ (!\ALUctl[3]~input_o\)))) # (!\ALUctl[1]~input_o\ & ((\ALUctl[0]~input_o\ & (\ALUctl[2]~input_o\)) # (!\ALUctl[0]~input_o\ & ((\ALUctl[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \ALUctl[3]~input_o\,
	combout => \hex3|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y26_N18
\hex3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex3|Mux4~0_combout\ = (\ALUctl[2]~input_o\ & (\ALUctl[3]~input_o\ & ((\ALUctl[0]~input_o\) # (!\ALUctl[1]~input_o\)))) # (!\ALUctl[2]~input_o\ & (\ALUctl[0]~input_o\ & (!\ALUctl[1]~input_o\ & !\ALUctl[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \ALUctl[3]~input_o\,
	combout => \hex3|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y26_N28
\hex3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex3|Mux3~0_combout\ = (\ALUctl[1]~input_o\ & (!\ALUctl[3]~input_o\ & (\ALUctl[0]~input_o\ $ (!\ALUctl[2]~input_o\)))) # (!\ALUctl[1]~input_o\ & ((\ALUctl[0]~input_o\ & (!\ALUctl[2]~input_o\ & \ALUctl[3]~input_o\)) # (!\ALUctl[0]~input_o\ & 
-- (\ALUctl[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \ALUctl[3]~input_o\,
	combout => \hex3|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y26_N22
\hex3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex3|Mux2~0_combout\ = (\ALUctl[1]~input_o\ & ((\ALUctl[2]~input_o\ & ((\ALUctl[3]~input_o\))) # (!\ALUctl[2]~input_o\ & (\ALUctl[0]~input_o\)))) # (!\ALUctl[1]~input_o\ & ((\ALUctl[0]~input_o\) # ((\ALUctl[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \ALUctl[3]~input_o\,
	combout => \hex3|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y26_N0
\hex3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex3|Mux1~0_combout\ = (\ALUctl[0]~input_o\ & ((\ALUctl[1]~input_o\) # ((\ALUctl[2]~input_o\) # (\ALUctl[3]~input_o\)))) # (!\ALUctl[0]~input_o\ & (\ALUctl[3]~input_o\ $ (((\ALUctl[1]~input_o\ & \ALUctl[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \ALUctl[3]~input_o\,
	combout => \hex3|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y26_N10
\hex3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hex3|Mux0~0_combout\ = (\ALUctl[0]~input_o\ & (\ALUctl[1]~input_o\ & (\ALUctl[2]~input_o\ $ (!\ALUctl[3]~input_o\)))) # (!\ALUctl[0]~input_o\ & (!\ALUctl[3]~input_o\ & (\ALUctl[1]~input_o\ $ (\ALUctl[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctl[0]~input_o\,
	datab => \ALUctl[1]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \ALUctl[3]~input_o\,
	combout => \hex3|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y27_N22
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\A2|Mux0~3_combout\ & (!\ALUctl[3]~input_o\ & (\ALUctl[2]~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Mux0~3_combout\,
	datab => \ALUctl[3]~input_o\,
	datac => \ALUctl[2]~input_o\,
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X19_Y27_N24
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\A0|Mux0~6_combout\ & (!\A1|Mux0~3_combout\ & (\process_0~1_combout\ & !\A3|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Mux0~6_combout\,
	datab => \A1|Mux0~3_combout\,
	datac => \process_0~1_combout\,
	datad => \A3|Mux0~3_combout\,
	combout => \process_0~2_combout\);

ww_oled(0) <= \oled[0]~output_o\;

ww_oled(1) <= \oled[1]~output_o\;

ww_oled(2) <= \oled[2]~output_o\;

ww_oled(3) <= \oled[3]~output_o\;

ww_oled(4) <= \oled[4]~output_o\;

ww_oled(5) <= \oled[5]~output_o\;

ww_oled(6) <= \oled[6]~output_o\;

ww_oled(7) <= \oled[7]~output_o\;

ww_oled(8) <= \oled[8]~output_o\;

ww_oled(9) <= \oled[9]~output_o\;

ww_oled(10) <= \oled[10]~output_o\;

ww_oled(11) <= \oled[11]~output_o\;

ww_oled(12) <= \oled[12]~output_o\;

ww_oled(13) <= \oled[13]~output_o\;

ww_oled(14) <= \oled[14]~output_o\;

ww_oled(15) <= \oled[15]~output_o\;

ww_oled(16) <= \oled[16]~output_o\;

ww_oled(17) <= \oled[17]~output_o\;

ww_oled(18) <= \oled[18]~output_o\;

ww_oled(19) <= \oled[19]~output_o\;

ww_oled(20) <= \oled[20]~output_o\;

ww_oled(21) <= \oled[21]~output_o\;

ww_oled(22) <= \oled[22]~output_o\;

ww_oled(23) <= \oled[23]~output_o\;

ww_oled(24) <= \oled[24]~output_o\;

ww_oled(25) <= \oled[25]~output_o\;

ww_oled(26) <= \oled[26]~output_o\;

ww_oled(27) <= \oled[27]~output_o\;

ww_zeroFlag <= \zeroFlag~output_o\;
END structure;


