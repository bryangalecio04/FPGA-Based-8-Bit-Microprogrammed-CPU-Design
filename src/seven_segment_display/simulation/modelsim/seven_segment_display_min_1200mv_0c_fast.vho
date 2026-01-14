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

-- DATE "11/13/2025 14:36:59"

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

ENTITY 	seven_segment_display IS
    PORT (
	digit : IN std_logic_vector(3 DOWNTO 0);
	display : OUT std_logic_vector(0 TO 6)
	);
END seven_segment_display;

-- Design Ports Information
-- display[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven_segment_display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_digit : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(0 TO 6);
SIGNAL \display[6]~output_o\ : std_logic;
SIGNAL \display[5]~output_o\ : std_logic;
SIGNAL \display[4]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \digit[1]~input_o\ : std_logic;
SIGNAL \digit[3]~input_o\ : std_logic;
SIGNAL \digit[0]~input_o\ : std_logic;
SIGNAL \digit[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_digit <= digit;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y45_N16
\display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display[6]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display[5]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOIBUF_X0_Y46_N15
\digit[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit(1),
	o => \digit[1]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\digit[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit(3),
	o => \digit[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\digit[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit(0),
	o => \digit[0]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\digit[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit(2),
	o => \digit[2]~input_o\);

-- Location: LCCOMB_X1_Y47_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\digit[0]~input_o\ & ((\digit[3]~input_o\) # (\digit[1]~input_o\ $ (\digit[2]~input_o\)))) # (!\digit[0]~input_o\ & ((\digit[1]~input_o\) # (\digit[3]~input_o\ $ (\digit[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit[1]~input_o\,
	datab => \digit[3]~input_o\,
	datac => \digit[0]~input_o\,
	datad => \digit[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y47_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\digit[1]~input_o\ & (!\digit[3]~input_o\ & ((\digit[0]~input_o\) # (!\digit[2]~input_o\)))) # (!\digit[1]~input_o\ & (\digit[0]~input_o\ & (\digit[3]~input_o\ $ (!\digit[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit[1]~input_o\,
	datab => \digit[3]~input_o\,
	datac => \digit[0]~input_o\,
	datad => \digit[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y47_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\digit[1]~input_o\ & (!\digit[3]~input_o\ & (\digit[0]~input_o\))) # (!\digit[1]~input_o\ & ((\digit[2]~input_o\ & (!\digit[3]~input_o\)) # (!\digit[2]~input_o\ & ((\digit[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit[1]~input_o\,
	datab => \digit[3]~input_o\,
	datac => \digit[0]~input_o\,
	datad => \digit[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y47_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\digit[1]~input_o\ & ((\digit[0]~input_o\ & ((\digit[2]~input_o\))) # (!\digit[0]~input_o\ & (\digit[3]~input_o\ & !\digit[2]~input_o\)))) # (!\digit[1]~input_o\ & (!\digit[3]~input_o\ & (\digit[0]~input_o\ $ (\digit[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit[1]~input_o\,
	datab => \digit[3]~input_o\,
	datac => \digit[0]~input_o\,
	datad => \digit[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y47_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\digit[3]~input_o\ & (\digit[2]~input_o\ & ((\digit[1]~input_o\) # (!\digit[0]~input_o\)))) # (!\digit[3]~input_o\ & (\digit[1]~input_o\ & (!\digit[0]~input_o\ & !\digit[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit[1]~input_o\,
	datab => \digit[3]~input_o\,
	datac => \digit[0]~input_o\,
	datad => \digit[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y47_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\digit[1]~input_o\ & ((\digit[0]~input_o\ & (\digit[3]~input_o\)) # (!\digit[0]~input_o\ & ((\digit[2]~input_o\))))) # (!\digit[1]~input_o\ & (\digit[2]~input_o\ & (\digit[3]~input_o\ $ (\digit[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit[1]~input_o\,
	datab => \digit[3]~input_o\,
	datac => \digit[0]~input_o\,
	datad => \digit[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y47_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\digit[3]~input_o\ & (\digit[0]~input_o\ & (\digit[1]~input_o\ $ (\digit[2]~input_o\)))) # (!\digit[3]~input_o\ & (!\digit[1]~input_o\ & (\digit[0]~input_o\ $ (\digit[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit[1]~input_o\,
	datab => \digit[3]~input_o\,
	datac => \digit[0]~input_o\,
	datad => \digit[2]~input_o\,
	combout => \Mux0~0_combout\);

ww_display(6) <= \display[6]~output_o\;

ww_display(5) <= \display[5]~output_o\;

ww_display(4) <= \display[4]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(0) <= \display[0]~output_o\;
END structure;


