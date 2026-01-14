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

-- DATE "11/21/2025 00:44:53"

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

ENTITY 	test_uSequencer IS
    PORT (
	button : IN std_logic;
	clear : IN std_logic;
	useqEnOut : OUT std_logic;
	ctrlSignals : OUT std_logic_vector(0 TO 7);
	M_disp : OUT std_logic_vector(0 TO 6);
	addr_hex1_disp1 : OUT std_logic_vector(0 TO 6);
	addr_hex0_disp0 : OUT std_logic_vector(0 TO 6)
	);
END test_uSequencer;

-- Design Ports Information
-- useqEnOut	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_disp[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_disp[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_disp[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_disp[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_disp[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_disp[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_disp[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex1_disp1[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex1_disp1[5]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex1_disp1[4]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex1_disp1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex1_disp1[2]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex1_disp1[1]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex1_disp1[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex0_disp0[6]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex0_disp0[5]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex0_disp0[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex0_disp0[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex0_disp0[2]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex0_disp0[1]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_hex0_disp0[0]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_uSequencer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_useqEnOut : std_logic;
SIGNAL ww_ctrlSignals : std_logic_vector(0 TO 7);
SIGNAL ww_M_disp : std_logic_vector(0 TO 6);
SIGNAL ww_addr_hex1_disp1 : std_logic_vector(0 TO 6);
SIGNAL ww_addr_hex0_disp0 : std_logic_vector(0 TO 6);
SIGNAL \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \useqEnOut~output_o\ : std_logic;
SIGNAL \ctrlSignals[7]~output_o\ : std_logic;
SIGNAL \ctrlSignals[6]~output_o\ : std_logic;
SIGNAL \ctrlSignals[5]~output_o\ : std_logic;
SIGNAL \ctrlSignals[4]~output_o\ : std_logic;
SIGNAL \ctrlSignals[3]~output_o\ : std_logic;
SIGNAL \ctrlSignals[2]~output_o\ : std_logic;
SIGNAL \ctrlSignals[1]~output_o\ : std_logic;
SIGNAL \ctrlSignals[0]~output_o\ : std_logic;
SIGNAL \M_disp[6]~output_o\ : std_logic;
SIGNAL \M_disp[5]~output_o\ : std_logic;
SIGNAL \M_disp[4]~output_o\ : std_logic;
SIGNAL \M_disp[3]~output_o\ : std_logic;
SIGNAL \M_disp[2]~output_o\ : std_logic;
SIGNAL \M_disp[1]~output_o\ : std_logic;
SIGNAL \M_disp[0]~output_o\ : std_logic;
SIGNAL \addr_hex1_disp1[6]~output_o\ : std_logic;
SIGNAL \addr_hex1_disp1[5]~output_o\ : std_logic;
SIGNAL \addr_hex1_disp1[4]~output_o\ : std_logic;
SIGNAL \addr_hex1_disp1[3]~output_o\ : std_logic;
SIGNAL \addr_hex1_disp1[2]~output_o\ : std_logic;
SIGNAL \addr_hex1_disp1[1]~output_o\ : std_logic;
SIGNAL \addr_hex1_disp1[0]~output_o\ : std_logic;
SIGNAL \addr_hex0_disp0[6]~output_o\ : std_logic;
SIGNAL \addr_hex0_disp0[5]~output_o\ : std_logic;
SIGNAL \addr_hex0_disp0[4]~output_o\ : std_logic;
SIGNAL \addr_hex0_disp0[3]~output_o\ : std_logic;
SIGNAL \addr_hex0_disp0[2]~output_o\ : std_logic;
SIGNAL \addr_hex0_disp0[1]~output_o\ : std_logic;
SIGNAL \addr_hex0_disp0[0]~output_o\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~0_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[7]~5_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[6]~4_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \ctrlSignals~0_combout\ : std_logic;
SIGNAL \ctrlSignals~1_combout\ : std_logic;
SIGNAL \ctrlSignals~2_combout\ : std_logic;
SIGNAL \ctrlSignals~3_combout\ : std_logic;
SIGNAL \ctrlSignals~4_combout\ : std_logic;
SIGNAL \ctrlSignals~5_combout\ : std_logic;
SIGNAL \ctrlSignals~6_combout\ : std_logic;
SIGNAL \ctrlSignals~7_combout\ : std_logic;
SIGNAL \display2|Mux6~0_combout\ : std_logic;
SIGNAL \display2|Mux5~0_combout\ : std_logic;
SIGNAL \display2|Mux4~0_combout\ : std_logic;
SIGNAL \display2|Mux3~0_combout\ : std_logic;
SIGNAL \display2|Mux2~0_combout\ : std_logic;
SIGNAL \display2|Mux1~0_combout\ : std_logic;
SIGNAL \display2|Mux0~0_combout\ : std_logic;
SIGNAL \display3|Mux6~0_combout\ : std_logic;
SIGNAL \display3|Mux5~0_combout\ : std_logic;
SIGNAL \display3|Mux4~0_combout\ : std_logic;
SIGNAL \display3|Mux3~0_combout\ : std_logic;
SIGNAL \display3|Mux2~0_combout\ : std_logic;
SIGNAL \display3|Mux1~0_combout\ : std_logic;
SIGNAL \display3|Mux0~0_combout\ : std_logic;
SIGNAL \uSeq|uROM|srom|rom_block|auto_generated|q_a\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \uSeq|uPC|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uSeq|uPC_mux|auto_generated|result_node\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \delay|auto_generated|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_button~input_o\ : std_logic;
SIGNAL \display3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \display2|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_button <= button;
ww_clear <= clear;
useqEnOut <= ww_useqEnOut;
ctrlSignals <= ww_ctrlSignals;
M_disp <= ww_M_disp;
addr_hex1_disp1 <= ww_addr_hex1_disp1;
addr_hex0_disp0 <= ww_addr_hex0_disp0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\uSeq|uPC|dffs\(7) & \uSeq|uPC|dffs\(6) & \uSeq|uPC|dffs\(5) & \uSeq|uPC|dffs\(4) & \uSeq|uPC|dffs\(3) & \uSeq|uPC|dffs\(2) & \uSeq|uPC|dffs\(1) & \uSeq|uPC|dffs\(0)
);

\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(9) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(10) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(11) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(12) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(13) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(14) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(15) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(16) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\ALT_INV_button~input_o\ <= NOT \button~input_o\;
\display3|ALT_INV_Mux6~0_combout\ <= NOT \display3|Mux6~0_combout\;
\display2|ALT_INV_Mux6~0_combout\ <= NOT \display2|Mux6~0_combout\;

-- Location: IOOBUF_X60_Y73_N16
\useqEnOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devoe => ww_devoe,
	o => \useqEnOut~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\ctrlSignals[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlSignals~0_combout\,
	devoe => ww_devoe,
	o => \ctrlSignals[7]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\ctrlSignals[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlSignals~1_combout\,
	devoe => ww_devoe,
	o => \ctrlSignals[6]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\ctrlSignals[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlSignals~2_combout\,
	devoe => ww_devoe,
	o => \ctrlSignals[5]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\ctrlSignals[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlSignals~3_combout\,
	devoe => ww_devoe,
	o => \ctrlSignals[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\ctrlSignals[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlSignals~4_combout\,
	devoe => ww_devoe,
	o => \ctrlSignals[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\ctrlSignals[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlSignals~5_combout\,
	devoe => ww_devoe,
	o => \ctrlSignals[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\ctrlSignals[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlSignals~6_combout\,
	devoe => ww_devoe,
	o => \ctrlSignals[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\ctrlSignals[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlSignals~7_combout\,
	devoe => ww_devoe,
	o => \ctrlSignals[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\M_disp[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \M_disp[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\M_disp[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \M_disp[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\M_disp[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \M_disp[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\M_disp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \M_disp[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\M_disp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \M_disp[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\M_disp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \M_disp[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\M_disp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \M_disp[0]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\addr_hex1_disp1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex1_disp1[6]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\addr_hex1_disp1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex1_disp1[5]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\addr_hex1_disp1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex1_disp1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\addr_hex1_disp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex1_disp1[3]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\addr_hex1_disp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex1_disp1[2]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\addr_hex1_disp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex1_disp1[1]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\addr_hex1_disp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex1_disp1[0]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\addr_hex0_disp0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex0_disp0[6]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\addr_hex0_disp0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex0_disp0[5]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\addr_hex0_disp0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex0_disp0[4]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\addr_hex0_disp0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex0_disp0[3]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\addr_hex0_disp0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex0_disp0[2]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\addr_hex0_disp0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex0_disp0[1]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\addr_hex0_disp0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \addr_hex0_disp0[0]~output_o\);

-- Location: IOIBUF_X115_Y35_N22
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X107_Y35_N24
\delay|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|auto_generated|counter_comb_bita0~combout\ = \delay|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \delay|auto_generated|counter_comb_bita0~COUT\ = CARRY(\delay|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \delay|auto_generated|counter_comb_bita0~combout\,
	cout => \delay|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X107_Y35_N25
\delay|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \delay|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X107_Y35_N26
\delay|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|auto_generated|counter_comb_bita1~combout\ = (\delay|auto_generated|counter_reg_bit\(1) & (!\delay|auto_generated|counter_comb_bita0~COUT\)) # (!\delay|auto_generated|counter_reg_bit\(1) & ((\delay|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \delay|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\delay|auto_generated|counter_comb_bita0~COUT\) # (!\delay|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \delay|auto_generated|counter_comb_bita0~COUT\,
	combout => \delay|auto_generated|counter_comb_bita1~combout\,
	cout => \delay|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X107_Y35_N27
\delay|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \delay|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X107_Y35_N28
\delay|auto_generated|counter_comb_bita1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|auto_generated|counter_comb_bita1~0_combout\ = !\delay|auto_generated|counter_comb_bita1~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \delay|auto_generated|counter_comb_bita1~COUT\,
	combout => \delay|auto_generated|counter_comb_bita1~0_combout\);

-- Location: M9K_X104_Y35_N0
\uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040040E33030C80A31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000900018100403008080001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "test_uSequencer_file.mif",
	init_file_layout => "port_a",
	logical_ram_name => "uSequencer:uSeq|lpm_rom:uROM|altrom:srom|altsyncram:rom_block|altsyncram_7l11:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 17,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ALT_INV_button~input_o\,
	clk1 => GND,
	portaaddr => \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X107_Y35_N30
\uSeq|uPC_mux|auto_generated|result_node[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[7]~5_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[7]~5_combout\);

-- Location: IOIBUF_X115_Y17_N1
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: FF_X107_Y35_N31
\uSeq|uPC|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node[7]~5_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(7));

-- Location: LCCOMB_X107_Y35_N20
\uSeq|uPC_mux|auto_generated|result_node[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[6]~4_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[6]~4_combout\);

-- Location: FF_X107_Y35_N21
\uSeq|uPC|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node[6]~4_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(6));

-- Location: LCCOMB_X107_Y35_N10
\uSeq|uPC_mux|auto_generated|result_node[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node\(5) = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5)) # (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node\(5));

-- Location: FF_X107_Y35_N11
\uSeq|uPC|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node\(5),
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(5));

-- Location: LCCOMB_X107_Y35_N8
\uSeq|uPC_mux|auto_generated|result_node[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node\(4) = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4)) # (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node\(4));

-- Location: FF_X107_Y35_N9
\uSeq|uPC|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node\(4),
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(4));

-- Location: LCCOMB_X107_Y35_N2
\uSeq|uPC_mux|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[3]~3_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(3),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[3]~3_combout\);

-- Location: FF_X107_Y35_N3
\uSeq|uPC|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node[3]~3_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(3));

-- Location: LCCOMB_X107_Y35_N0
\uSeq|uPC_mux|auto_generated|result_node[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[2]~2_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[2]~2_combout\);

-- Location: FF_X107_Y35_N1
\uSeq|uPC|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node[2]~2_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(2));

-- Location: LCCOMB_X107_Y35_N6
\uSeq|uPC_mux|auto_generated|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[1]~1_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[1]~1_combout\);

-- Location: FF_X107_Y35_N7
\uSeq|uPC|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node[1]~1_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(1));

-- Location: LCCOMB_X107_Y35_N12
\uSeq|uPC_mux|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[0]~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X107_Y35_N13
\uSeq|uPC|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node[0]~0_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(0));

-- Location: LCCOMB_X100_Y55_N20
\ctrlSignals~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~0_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(9),
	combout => \ctrlSignals~0_combout\);

-- Location: LCCOMB_X100_Y55_N22
\ctrlSignals~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~1_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(10),
	combout => \ctrlSignals~1_combout\);

-- Location: LCCOMB_X100_Y55_N16
\ctrlSignals~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~2_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(11),
	combout => \ctrlSignals~2_combout\);

-- Location: LCCOMB_X107_Y35_N16
\ctrlSignals~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~3_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(12),
	combout => \ctrlSignals~3_combout\);

-- Location: LCCOMB_X100_Y55_N26
\ctrlSignals~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~4_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(13),
	combout => \ctrlSignals~4_combout\);

-- Location: LCCOMB_X100_Y55_N24
\ctrlSignals~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~5_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(14),
	combout => \ctrlSignals~5_combout\);

-- Location: LCCOMB_X100_Y55_N10
\ctrlSignals~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~6_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(15),
	combout => \ctrlSignals~6_combout\);

-- Location: LCCOMB_X100_Y55_N28
\ctrlSignals~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~7_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(16),
	combout => \ctrlSignals~7_combout\);

-- Location: LCCOMB_X114_Y35_N28
\display2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux6~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7)) # (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6))))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5)) # (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	combout => \display2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y35_N18
\display2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux5~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) $ (((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5)) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6)))))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	combout => \display2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y35_N0
\display2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux4~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) & 
-- ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	combout => \display2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y35_N30
\display2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux3~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & 
-- (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & 
-- (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	combout => \display2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y35_N24
\display2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux2~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5)) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4))))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	combout => \display2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y35_N10
\display2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux1~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & 
-- ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) $ 
-- (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	combout => \display2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y35_N16
\display2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|Mux0~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6))))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	combout => \display2|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y35_N4
\display3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux6~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3)) # (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2))))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1)) # (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(3),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \display3|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y35_N30
\display3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux5~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0)) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2))))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) $ (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(3),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \display3|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y35_N16
\display3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux4~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & 
-- ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(3),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \display3|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y35_N2
\display3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux3~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) & 
-- (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & 
-- (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(3),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \display3|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y35_N20
\display3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux2~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1)) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0))))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(3),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \display3|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y35_N22
\display3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux1~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0) & 
-- ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) $ 
-- (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(3),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \display3|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y35_N12
\display3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display3|Mux0~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2))))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(3) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(2) $ (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(3),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \display3|Mux0~0_combout\);

ww_useqEnOut <= \useqEnOut~output_o\;

ww_ctrlSignals(7) <= \ctrlSignals[7]~output_o\;

ww_ctrlSignals(6) <= \ctrlSignals[6]~output_o\;

ww_ctrlSignals(5) <= \ctrlSignals[5]~output_o\;

ww_ctrlSignals(4) <= \ctrlSignals[4]~output_o\;

ww_ctrlSignals(3) <= \ctrlSignals[3]~output_o\;

ww_ctrlSignals(2) <= \ctrlSignals[2]~output_o\;

ww_ctrlSignals(1) <= \ctrlSignals[1]~output_o\;

ww_ctrlSignals(0) <= \ctrlSignals[0]~output_o\;

ww_M_disp(6) <= \M_disp[6]~output_o\;

ww_M_disp(5) <= \M_disp[5]~output_o\;

ww_M_disp(4) <= \M_disp[4]~output_o\;

ww_M_disp(3) <= \M_disp[3]~output_o\;

ww_M_disp(2) <= \M_disp[2]~output_o\;

ww_M_disp(1) <= \M_disp[1]~output_o\;

ww_M_disp(0) <= \M_disp[0]~output_o\;

ww_addr_hex1_disp1(6) <= \addr_hex1_disp1[6]~output_o\;

ww_addr_hex1_disp1(5) <= \addr_hex1_disp1[5]~output_o\;

ww_addr_hex1_disp1(4) <= \addr_hex1_disp1[4]~output_o\;

ww_addr_hex1_disp1(3) <= \addr_hex1_disp1[3]~output_o\;

ww_addr_hex1_disp1(2) <= \addr_hex1_disp1[2]~output_o\;

ww_addr_hex1_disp1(1) <= \addr_hex1_disp1[1]~output_o\;

ww_addr_hex1_disp1(0) <= \addr_hex1_disp1[0]~output_o\;

ww_addr_hex0_disp0(6) <= \addr_hex0_disp0[6]~output_o\;

ww_addr_hex0_disp0(5) <= \addr_hex0_disp0[5]~output_o\;

ww_addr_hex0_disp0(4) <= \addr_hex0_disp0[4]~output_o\;

ww_addr_hex0_disp0(3) <= \addr_hex0_disp0[3]~output_o\;

ww_addr_hex0_disp0(2) <= \addr_hex0_disp0[2]~output_o\;

ww_addr_hex0_disp0(1) <= \addr_hex0_disp0[1]~output_o\;

ww_addr_hex0_disp0(0) <= \addr_hex0_disp0[0]~output_o\;
END structure;


