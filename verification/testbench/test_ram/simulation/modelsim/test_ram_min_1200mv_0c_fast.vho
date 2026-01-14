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

-- DATE "11/25/2025 13:19:41"

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

ENTITY 	test_ram IS
    PORT (
	button : IN std_logic;
	clear : IN std_logic;
	useqEnOut : OUT std_logic;
	marData : IN std_logic_vector(7 DOWNTO 0);
	marSegHi : OUT std_logic_vector(0 TO 6);
	marSegLo : OUT std_logic_vector(0 TO 6);
	mdrSegHi : OUT std_logic_vector(0 TO 6);
	mdrSegLo : OUT std_logic_vector(0 TO 6);
	nextAddrHi : OUT std_logic_vector(0 TO 6);
	nextAddrLo : OUT std_logic_vector(0 TO 6);
	ctrlSignals : OUT std_logic_vector(0 TO 7)
	);
END test_ram;

-- Design Ports Information
-- useqEnOut	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegHi[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegHi[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegHi[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegHi[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegHi[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegHi[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegHi[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegLo[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegLo[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegLo[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegLo[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegLo[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegLo[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marSegLo[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegHi[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegHi[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegHi[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegHi[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegHi[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegHi[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegHi[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegLo[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegLo[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegLo[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegLo[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegLo[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegLo[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdrSegLo[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrHi[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrHi[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrHi[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrHi[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrHi[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrHi[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrHi[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrLo[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrLo[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrLo[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrLo[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrLo[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrLo[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextAddrLo[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlSignals[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marData[4]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marData[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marData[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marData[7]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marData[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marData[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marData[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marData[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_ram IS
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
SIGNAL ww_marData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_marSegHi : std_logic_vector(0 TO 6);
SIGNAL ww_marSegLo : std_logic_vector(0 TO 6);
SIGNAL ww_mdrSegHi : std_logic_vector(0 TO 6);
SIGNAL ww_mdrSegLo : std_logic_vector(0 TO 6);
SIGNAL ww_nextAddrHi : std_logic_vector(0 TO 6);
SIGNAL ww_nextAddrLo : std_logic_vector(0 TO 6);
SIGNAL ww_ctrlSignals : std_logic_vector(0 TO 7);
SIGNAL \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \useqEnOut~output_o\ : std_logic;
SIGNAL \marSegHi[6]~output_o\ : std_logic;
SIGNAL \marSegHi[5]~output_o\ : std_logic;
SIGNAL \marSegHi[4]~output_o\ : std_logic;
SIGNAL \marSegHi[3]~output_o\ : std_logic;
SIGNAL \marSegHi[2]~output_o\ : std_logic;
SIGNAL \marSegHi[1]~output_o\ : std_logic;
SIGNAL \marSegHi[0]~output_o\ : std_logic;
SIGNAL \marSegLo[6]~output_o\ : std_logic;
SIGNAL \marSegLo[5]~output_o\ : std_logic;
SIGNAL \marSegLo[4]~output_o\ : std_logic;
SIGNAL \marSegLo[3]~output_o\ : std_logic;
SIGNAL \marSegLo[2]~output_o\ : std_logic;
SIGNAL \marSegLo[1]~output_o\ : std_logic;
SIGNAL \marSegLo[0]~output_o\ : std_logic;
SIGNAL \mdrSegHi[6]~output_o\ : std_logic;
SIGNAL \mdrSegHi[5]~output_o\ : std_logic;
SIGNAL \mdrSegHi[4]~output_o\ : std_logic;
SIGNAL \mdrSegHi[3]~output_o\ : std_logic;
SIGNAL \mdrSegHi[2]~output_o\ : std_logic;
SIGNAL \mdrSegHi[1]~output_o\ : std_logic;
SIGNAL \mdrSegHi[0]~output_o\ : std_logic;
SIGNAL \mdrSegLo[6]~output_o\ : std_logic;
SIGNAL \mdrSegLo[5]~output_o\ : std_logic;
SIGNAL \mdrSegLo[4]~output_o\ : std_logic;
SIGNAL \mdrSegLo[3]~output_o\ : std_logic;
SIGNAL \mdrSegLo[2]~output_o\ : std_logic;
SIGNAL \mdrSegLo[1]~output_o\ : std_logic;
SIGNAL \mdrSegLo[0]~output_o\ : std_logic;
SIGNAL \nextAddrHi[6]~output_o\ : std_logic;
SIGNAL \nextAddrHi[5]~output_o\ : std_logic;
SIGNAL \nextAddrHi[4]~output_o\ : std_logic;
SIGNAL \nextAddrHi[3]~output_o\ : std_logic;
SIGNAL \nextAddrHi[2]~output_o\ : std_logic;
SIGNAL \nextAddrHi[1]~output_o\ : std_logic;
SIGNAL \nextAddrHi[0]~output_o\ : std_logic;
SIGNAL \nextAddrLo[6]~output_o\ : std_logic;
SIGNAL \nextAddrLo[5]~output_o\ : std_logic;
SIGNAL \nextAddrLo[4]~output_o\ : std_logic;
SIGNAL \nextAddrLo[3]~output_o\ : std_logic;
SIGNAL \nextAddrLo[2]~output_o\ : std_logic;
SIGNAL \nextAddrLo[1]~output_o\ : std_logic;
SIGNAL \nextAddrLo[0]~output_o\ : std_logic;
SIGNAL \ctrlSignals[7]~output_o\ : std_logic;
SIGNAL \ctrlSignals[6]~output_o\ : std_logic;
SIGNAL \ctrlSignals[5]~output_o\ : std_logic;
SIGNAL \ctrlSignals[4]~output_o\ : std_logic;
SIGNAL \ctrlSignals[3]~output_o\ : std_logic;
SIGNAL \ctrlSignals[2]~output_o\ : std_logic;
SIGNAL \ctrlSignals[1]~output_o\ : std_logic;
SIGNAL \ctrlSignals[0]~output_o\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~0_combout\ : std_logic;
SIGNAL \marData[7]~input_o\ : std_logic;
SIGNAL \marReg|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \microSequencer|uPC_mux|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \microSequencer|uPC_mux|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \microSequencer|uPC_mux|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \microSequencer|uPC_mux|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \microSequencer|uPC_mux|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \microSequencer|uPC_mux|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \microSequencer|uPC_mux|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \microSequencer|uPC_mux|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \ctrlSignals~7_combout\ : std_logic;
SIGNAL \marData[4]~input_o\ : std_logic;
SIGNAL \marData[5]~input_o\ : std_logic;
SIGNAL \marReg|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \marData[6]~input_o\ : std_logic;
SIGNAL \marA|Mux6~0_combout\ : std_logic;
SIGNAL \marA|Mux5~0_combout\ : std_logic;
SIGNAL \marA|Mux4~0_combout\ : std_logic;
SIGNAL \marA|Mux3~0_combout\ : std_logic;
SIGNAL \marA|Mux2~0_combout\ : std_logic;
SIGNAL \marA|Mux1~0_combout\ : std_logic;
SIGNAL \marA|Mux0~0_combout\ : std_logic;
SIGNAL \marData[2]~input_o\ : std_logic;
SIGNAL \marData[1]~input_o\ : std_logic;
SIGNAL \marReg|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \marData[0]~input_o\ : std_logic;
SIGNAL \marData[3]~input_o\ : std_logic;
SIGNAL \marB|Mux6~0_combout\ : std_logic;
SIGNAL \marB|Mux5~0_combout\ : std_logic;
SIGNAL \marB|Mux4~0_combout\ : std_logic;
SIGNAL \marB|Mux3~0_combout\ : std_logic;
SIGNAL \marB|Mux2~0_combout\ : std_logic;
SIGNAL \marB|Mux1~0_combout\ : std_logic;
SIGNAL \marB|Mux0~0_combout\ : std_logic;
SIGNAL \ctrlSignals~5_combout\ : std_logic;
SIGNAL \ctrlSignals~6_combout\ : std_logic;
SIGNAL \mdrReg|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \mdrReg|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \mdrReg|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \mdrReg|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \mdrReg|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \mdrA|Mux6~0_combout\ : std_logic;
SIGNAL \mdrA|Mux5~0_combout\ : std_logic;
SIGNAL \mdrA|Mux4~0_combout\ : std_logic;
SIGNAL \mdrA|Mux3~0_combout\ : std_logic;
SIGNAL \mdrA|Mux2~0_combout\ : std_logic;
SIGNAL \mdrA|Mux1~0_combout\ : std_logic;
SIGNAL \mdrA|Mux0~0_combout\ : std_logic;
SIGNAL \mdrB|Mux6~0_combout\ : std_logic;
SIGNAL \mdrB|Mux5~0_combout\ : std_logic;
SIGNAL \mdrB|Mux4~0_combout\ : std_logic;
SIGNAL \mdrB|Mux3~0_combout\ : std_logic;
SIGNAL \mdrB|Mux2~0_combout\ : std_logic;
SIGNAL \mdrB|Mux1~0_combout\ : std_logic;
SIGNAL \mdrB|Mux0~0_combout\ : std_logic;
SIGNAL \nextAddressA|Mux6~0_combout\ : std_logic;
SIGNAL \nextAddressA|Mux5~0_combout\ : std_logic;
SIGNAL \nextAddressA|Mux4~0_combout\ : std_logic;
SIGNAL \nextAddressA|Mux3~0_combout\ : std_logic;
SIGNAL \nextAddressA|Mux2~0_combout\ : std_logic;
SIGNAL \nextAddressA|Mux1~0_combout\ : std_logic;
SIGNAL \nextAddressA|Mux0~0_combout\ : std_logic;
SIGNAL \nextAddressB|Mux6~0_combout\ : std_logic;
SIGNAL \nextAddressB|Mux5~0_combout\ : std_logic;
SIGNAL \nextAddressB|Mux4~0_combout\ : std_logic;
SIGNAL \nextAddressB|Mux3~0_combout\ : std_logic;
SIGNAL \nextAddressB|Mux2~0_combout\ : std_logic;
SIGNAL \nextAddressB|Mux1~0_combout\ : std_logic;
SIGNAL \nextAddressB|Mux0~0_combout\ : std_logic;
SIGNAL \ctrlSignals~0_combout\ : std_logic;
SIGNAL \ctrlSignals~1_combout\ : std_logic;
SIGNAL \ctrlSignals~2_combout\ : std_logic;
SIGNAL \ctrlSignals~3_combout\ : std_logic;
SIGNAL \ctrlSignals~4_combout\ : std_logic;
SIGNAL \microSequencer|uROM|srom|rom_block|auto_generated|q_a\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \delay|auto_generated|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \marReg|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \microSequencer|uPC|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mdrReg|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_button~input_o\ : std_logic;
SIGNAL \nextAddressB|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \nextAddressA|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \mdrB|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \mdrA|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \marB|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \marA|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_button <= button;
ww_clear <= clear;
useqEnOut <= ww_useqEnOut;
ww_marData <= marData;
marSegHi <= ww_marSegHi;
marSegLo <= ww_marSegLo;
mdrSegHi <= ww_mdrSegHi;
mdrSegLo <= ww_mdrSegLo;
nextAddrHi <= ww_nextAddrHi;
nextAddrLo <= ww_nextAddrLo;
ctrlSignals <= ww_ctrlSignals;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\microSequencer|uPC|dffs\(7) & \microSequencer|uPC|dffs\(6) & \microSequencer|uPC|dffs\(5) & \microSequencer|uPC|dffs\(4) & \microSequencer|uPC|dffs\(3) & 
\microSequencer|uPC|dffs\(2) & \microSequencer|uPC|dffs\(1) & \microSequencer|uPC|dffs\(0));

\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(9) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(10) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(11) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(12) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(13) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(14) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(15) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(16) <= \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);

\ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \mdrReg|dffs\(7) & \mdrReg|dffs\(6) & \mdrReg|dffs\(5) & \mdrReg|dffs\(4) & \mdrReg|dffs\(3) & \mdrReg|dffs\(2) & 
\mdrReg|dffs\(1) & \mdrReg|dffs\(0));

\ram|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\marReg|dffs\(7) & \marReg|dffs\(6) & \marReg|dffs\(5) & \marReg|dffs\(4) & \marReg|dffs\(3) & \marReg|dffs\(2) & \marReg|dffs\(1) & \marReg|dffs\(0));

\ram|sram|ram_block|auto_generated|q_a\(0) <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ram|sram|ram_block|auto_generated|q_a\(1) <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ram|sram|ram_block|auto_generated|q_a\(2) <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ram|sram|ram_block|auto_generated|q_a\(3) <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ram|sram|ram_block|auto_generated|q_a\(4) <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ram|sram|ram_block|auto_generated|q_a\(5) <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ram|sram|ram_block|auto_generated|q_a\(6) <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ram|sram|ram_block|auto_generated|q_a\(7) <= \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ALT_INV_button~input_o\ <= NOT \button~input_o\;
\nextAddressB|ALT_INV_Mux6~0_combout\ <= NOT \nextAddressB|Mux6~0_combout\;
\nextAddressA|ALT_INV_Mux6~0_combout\ <= NOT \nextAddressA|Mux6~0_combout\;
\mdrB|ALT_INV_Mux6~0_combout\ <= NOT \mdrB|Mux6~0_combout\;
\mdrA|ALT_INV_Mux6~0_combout\ <= NOT \mdrA|Mux6~0_combout\;
\marB|ALT_INV_Mux6~0_combout\ <= NOT \marB|Mux6~0_combout\;
\marA|ALT_INV_Mux6~0_combout\ <= NOT \marA|Mux6~0_combout\;

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

-- Location: IOOBUF_X115_Y28_N9
\marSegHi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marA|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \marSegHi[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\marSegHi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marA|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \marSegHi[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\marSegHi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marA|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \marSegHi[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\marSegHi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marA|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \marSegHi[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\marSegHi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marA|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \marSegHi[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\marSegHi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marA|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \marSegHi[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\marSegHi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \marSegHi[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\marSegLo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marB|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \marSegLo[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\marSegLo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marB|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \marSegLo[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\marSegLo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marB|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \marSegLo[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\marSegLo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marB|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \marSegLo[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\marSegLo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marB|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \marSegLo[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\marSegLo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marB|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \marSegLo[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\marSegLo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \marB|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \marSegLo[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\mdrSegHi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrA|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegHi[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\mdrSegHi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrA|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegHi[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\mdrSegHi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrA|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegHi[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\mdrSegHi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrA|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegHi[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\mdrSegHi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrA|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegHi[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\mdrSegHi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrA|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegHi[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\mdrSegHi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegHi[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\mdrSegLo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrB|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegLo[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\mdrSegLo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrB|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegLo[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\mdrSegLo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrB|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegLo[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\mdrSegLo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrB|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegLo[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\mdrSegLo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrB|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegLo[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\mdrSegLo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrB|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegLo[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\mdrSegLo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdrB|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \mdrSegLo[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\nextAddrHi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressA|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrHi[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\nextAddrHi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressA|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrHi[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\nextAddrHi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressA|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrHi[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\nextAddrHi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressA|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrHi[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\nextAddrHi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressA|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrHi[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\nextAddrHi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressA|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrHi[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\nextAddrHi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrHi[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\nextAddrLo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressB|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrLo[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\nextAddrLo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressB|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrLo[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\nextAddrLo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressB|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrLo[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\nextAddrLo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressB|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrLo[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\nextAddrLo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressB|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrLo[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\nextAddrLo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressB|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrLo[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\nextAddrLo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nextAddressB|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \nextAddrLo[0]~output_o\);

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

-- Location: IOIBUF_X115_Y40_N8
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X105_Y23_N24
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

-- Location: FF_X105_Y23_N25
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

-- Location: LCCOMB_X105_Y23_N26
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

-- Location: FF_X105_Y23_N27
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

-- Location: LCCOMB_X105_Y23_N28
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

-- Location: IOIBUF_X115_Y14_N8
\marData[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_marData(7),
	o => \marData[7]~input_o\);

-- Location: LCCOMB_X106_Y23_N6
\marReg|dffs[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \marReg|dffs[7]~feeder_combout\ = \marData[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \marData[7]~input_o\,
	combout => \marReg|dffs[7]~feeder_combout\);

-- Location: M9K_X104_Y23_N0
\microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009400448289009438204C07428188805418108403408080001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "test_rom_file.mif",
	init_file_layout => "port_a",
	logical_ram_name => "uSequencer:microSequencer|lpm_rom:uROM|altrom:srom|altsyncram:rom_block|altsyncram_lt01:auto_generated|ALTSYNCRAM",
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
	portaaddr => \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \microSequencer|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X103_Y23_N22
\microSequencer|uPC_mux|auto_generated|result_node[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \microSequencer|uPC_mux|auto_generated|result_node[7]~7_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & !\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \microSequencer|uPC_mux|auto_generated|result_node[7]~7_combout\);

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

-- Location: FF_X103_Y23_N23
\microSequencer|uPC|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \microSequencer|uPC_mux|auto_generated|result_node[7]~7_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \microSequencer|uPC|dffs\(7));

-- Location: LCCOMB_X103_Y23_N16
\microSequencer|uPC_mux|auto_generated|result_node[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \microSequencer|uPC_mux|auto_generated|result_node[6]~6_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & !\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \microSequencer|uPC_mux|auto_generated|result_node[6]~6_combout\);

-- Location: FF_X103_Y23_N17
\microSequencer|uPC|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \microSequencer|uPC_mux|auto_generated|result_node[6]~6_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \microSequencer|uPC|dffs\(6));

-- Location: LCCOMB_X103_Y23_N30
\microSequencer|uPC_mux|auto_generated|result_node[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \microSequencer|uPC_mux|auto_generated|result_node[5]~5_combout\ = (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8) & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5),
	combout => \microSequencer|uPC_mux|auto_generated|result_node[5]~5_combout\);

-- Location: FF_X103_Y23_N31
\microSequencer|uPC|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \microSequencer|uPC_mux|auto_generated|result_node[5]~5_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \microSequencer|uPC|dffs\(5));

-- Location: LCCOMB_X103_Y23_N28
\microSequencer|uPC_mux|auto_generated|result_node[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \microSequencer|uPC_mux|auto_generated|result_node[4]~4_combout\ = (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8) & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4),
	combout => \microSequencer|uPC_mux|auto_generated|result_node[4]~4_combout\);

-- Location: FF_X103_Y23_N29
\microSequencer|uPC|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \microSequencer|uPC_mux|auto_generated|result_node[4]~4_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \microSequencer|uPC|dffs\(4));

-- Location: LCCOMB_X103_Y23_N10
\microSequencer|uPC_mux|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \microSequencer|uPC_mux|auto_generated|result_node[3]~3_combout\ = (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8) & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3),
	combout => \microSequencer|uPC_mux|auto_generated|result_node[3]~3_combout\);

-- Location: FF_X103_Y23_N11
\microSequencer|uPC|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \microSequencer|uPC_mux|auto_generated|result_node[3]~3_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \microSequencer|uPC|dffs\(3));

-- Location: LCCOMB_X103_Y23_N24
\microSequencer|uPC_mux|auto_generated|result_node[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \microSequencer|uPC_mux|auto_generated|result_node[2]~2_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) & !\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \microSequencer|uPC_mux|auto_generated|result_node[2]~2_combout\);

-- Location: FF_X103_Y23_N25
\microSequencer|uPC|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \microSequencer|uPC_mux|auto_generated|result_node[2]~2_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \microSequencer|uPC|dffs\(2));

-- Location: LCCOMB_X103_Y23_N26
\microSequencer|uPC_mux|auto_generated|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \microSequencer|uPC_mux|auto_generated|result_node[1]~1_combout\ = (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8) & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1),
	combout => \microSequencer|uPC_mux|auto_generated|result_node[1]~1_combout\);

-- Location: FF_X103_Y23_N27
\microSequencer|uPC|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \microSequencer|uPC_mux|auto_generated|result_node[1]~1_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \microSequencer|uPC|dffs\(1));

-- Location: LCCOMB_X103_Y23_N12
\microSequencer|uPC_mux|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \microSequencer|uPC_mux|auto_generated|result_node[0]~0_combout\ = (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8) & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(8),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \microSequencer|uPC_mux|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X103_Y23_N13
\microSequencer|uPC|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \microSequencer|uPC_mux|auto_generated|result_node[0]~0_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \microSequencer|uPC|dffs\(0));

-- Location: LCCOMB_X106_Y23_N12
\ctrlSignals~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~7_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(16) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(16),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \ctrlSignals~7_combout\);

-- Location: FF_X106_Y23_N7
\marReg|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \marReg|dffs[7]~feeder_combout\,
	ena => \ctrlSignals~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \marReg|dffs\(7));

-- Location: IOIBUF_X115_Y10_N8
\marData[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_marData(4),
	o => \marData[4]~input_o\);

-- Location: FF_X106_Y23_N13
\marReg|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \marData[4]~input_o\,
	sload => VCC,
	ena => \ctrlSignals~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \marReg|dffs\(4));

-- Location: IOIBUF_X115_Y6_N15
\marData[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_marData(5),
	o => \marData[5]~input_o\);

-- Location: LCCOMB_X106_Y23_N30
\marReg|dffs[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \marReg|dffs[5]~feeder_combout\ = \marData[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \marData[5]~input_o\,
	combout => \marReg|dffs[5]~feeder_combout\);

-- Location: FF_X106_Y23_N31
\marReg|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \marReg|dffs[5]~feeder_combout\,
	ena => \ctrlSignals~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \marReg|dffs\(5));

-- Location: IOIBUF_X115_Y13_N1
\marData[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_marData(6),
	o => \marData[6]~input_o\);

-- Location: FF_X106_Y23_N21
\marReg|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \marData[6]~input_o\,
	sload => VCC,
	ena => \ctrlSignals~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \marReg|dffs\(6));

-- Location: LCCOMB_X106_Y23_N0
\marA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marA|Mux6~0_combout\ = (\marReg|dffs\(4) & ((\marReg|dffs\(7)) # (\marReg|dffs\(5) $ (\marReg|dffs\(6))))) # (!\marReg|dffs\(4) & ((\marReg|dffs\(5)) # (\marReg|dffs\(7) $ (\marReg|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(7),
	datab => \marReg|dffs\(4),
	datac => \marReg|dffs\(5),
	datad => \marReg|dffs\(6),
	combout => \marA|Mux6~0_combout\);

-- Location: LCCOMB_X106_Y23_N14
\marA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marA|Mux5~0_combout\ = (\marReg|dffs\(4) & (\marReg|dffs\(7) $ (((\marReg|dffs\(5)) # (!\marReg|dffs\(6)))))) # (!\marReg|dffs\(4) & (!\marReg|dffs\(7) & (\marReg|dffs\(5) & !\marReg|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(7),
	datab => \marReg|dffs\(4),
	datac => \marReg|dffs\(5),
	datad => \marReg|dffs\(6),
	combout => \marA|Mux5~0_combout\);

-- Location: LCCOMB_X106_Y23_N8
\marA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marA|Mux4~0_combout\ = (\marReg|dffs\(5) & (!\marReg|dffs\(7) & (\marReg|dffs\(4)))) # (!\marReg|dffs\(5) & ((\marReg|dffs\(6) & (!\marReg|dffs\(7))) # (!\marReg|dffs\(6) & ((\marReg|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(7),
	datab => \marReg|dffs\(4),
	datac => \marReg|dffs\(5),
	datad => \marReg|dffs\(6),
	combout => \marA|Mux4~0_combout\);

-- Location: LCCOMB_X106_Y23_N2
\marA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marA|Mux3~0_combout\ = (\marReg|dffs\(5) & ((\marReg|dffs\(4) & ((\marReg|dffs\(6)))) # (!\marReg|dffs\(4) & (\marReg|dffs\(7) & !\marReg|dffs\(6))))) # (!\marReg|dffs\(5) & (!\marReg|dffs\(7) & (\marReg|dffs\(4) $ (\marReg|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(7),
	datab => \marReg|dffs\(4),
	datac => \marReg|dffs\(5),
	datad => \marReg|dffs\(6),
	combout => \marA|Mux3~0_combout\);

-- Location: LCCOMB_X106_Y23_N16
\marA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marA|Mux2~0_combout\ = (\marReg|dffs\(7) & (\marReg|dffs\(6) & ((\marReg|dffs\(5)) # (!\marReg|dffs\(4))))) # (!\marReg|dffs\(7) & (!\marReg|dffs\(4) & (\marReg|dffs\(5) & !\marReg|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(7),
	datab => \marReg|dffs\(4),
	datac => \marReg|dffs\(5),
	datad => \marReg|dffs\(6),
	combout => \marA|Mux2~0_combout\);

-- Location: LCCOMB_X106_Y23_N10
\marA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marA|Mux1~0_combout\ = (\marReg|dffs\(7) & ((\marReg|dffs\(4) & (\marReg|dffs\(5))) # (!\marReg|dffs\(4) & ((\marReg|dffs\(6)))))) # (!\marReg|dffs\(7) & (\marReg|dffs\(6) & (\marReg|dffs\(4) $ (\marReg|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(7),
	datab => \marReg|dffs\(4),
	datac => \marReg|dffs\(5),
	datad => \marReg|dffs\(6),
	combout => \marA|Mux1~0_combout\);

-- Location: LCCOMB_X106_Y23_N24
\marA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marA|Mux0~0_combout\ = (\marReg|dffs\(7) & (\marReg|dffs\(4) & (\marReg|dffs\(5) $ (\marReg|dffs\(6))))) # (!\marReg|dffs\(7) & (!\marReg|dffs\(5) & (\marReg|dffs\(4) $ (\marReg|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(7),
	datab => \marReg|dffs\(4),
	datac => \marReg|dffs\(5),
	datad => \marReg|dffs\(6),
	combout => \marA|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y7_N15
\marData[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_marData(2),
	o => \marData[2]~input_o\);

-- Location: FF_X106_Y23_N23
\marReg|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \marData[2]~input_o\,
	sload => VCC,
	ena => \ctrlSignals~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \marReg|dffs\(2));

-- Location: IOIBUF_X115_Y5_N15
\marData[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_marData(1),
	o => \marData[1]~input_o\);

-- Location: LCCOMB_X106_Y23_N4
\marReg|dffs[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \marReg|dffs[1]~feeder_combout\ = \marData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \marData[1]~input_o\,
	combout => \marReg|dffs[1]~feeder_combout\);

-- Location: FF_X106_Y23_N5
\marReg|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \marReg|dffs[1]~feeder_combout\,
	ena => \ctrlSignals~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \marReg|dffs\(1));

-- Location: IOIBUF_X115_Y4_N15
\marData[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_marData(0),
	o => \marData[0]~input_o\);

-- Location: FF_X106_Y23_N19
\marReg|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \marData[0]~input_o\,
	sload => VCC,
	ena => \ctrlSignals~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \marReg|dffs\(0));

-- Location: IOIBUF_X115_Y9_N22
\marData[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_marData(3),
	o => \marData[3]~input_o\);

-- Location: FF_X106_Y23_N29
\marReg|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \marData[3]~input_o\,
	sload => VCC,
	ena => \ctrlSignals~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \marReg|dffs\(3));

-- Location: LCCOMB_X106_Y23_N18
\marB|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marB|Mux6~0_combout\ = (\marReg|dffs\(0) & ((\marReg|dffs\(3)) # (\marReg|dffs\(2) $ (\marReg|dffs\(1))))) # (!\marReg|dffs\(0) & ((\marReg|dffs\(1)) # (\marReg|dffs\(2) $ (\marReg|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(2),
	datab => \marReg|dffs\(1),
	datac => \marReg|dffs\(0),
	datad => \marReg|dffs\(3),
	combout => \marB|Mux6~0_combout\);

-- Location: LCCOMB_X106_Y23_N26
\marB|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marB|Mux5~0_combout\ = (\marReg|dffs\(2) & (\marReg|dffs\(0) & (\marReg|dffs\(1) $ (\marReg|dffs\(3))))) # (!\marReg|dffs\(2) & (!\marReg|dffs\(3) & ((\marReg|dffs\(0)) # (\marReg|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(2),
	datab => \marReg|dffs\(0),
	datac => \marReg|dffs\(1),
	datad => \marReg|dffs\(3),
	combout => \marB|Mux5~0_combout\);

-- Location: LCCOMB_X106_Y22_N16
\marB|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marB|Mux4~0_combout\ = (\marReg|dffs\(1) & (\marReg|dffs\(0) & ((!\marReg|dffs\(3))))) # (!\marReg|dffs\(1) & ((\marReg|dffs\(2) & ((!\marReg|dffs\(3)))) # (!\marReg|dffs\(2) & (\marReg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(0),
	datab => \marReg|dffs\(2),
	datac => \marReg|dffs\(3),
	datad => \marReg|dffs\(1),
	combout => \marB|Mux4~0_combout\);

-- Location: LCCOMB_X106_Y23_N28
\marB|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marB|Mux3~0_combout\ = (\marReg|dffs\(1) & ((\marReg|dffs\(2) & ((\marReg|dffs\(0)))) # (!\marReg|dffs\(2) & (\marReg|dffs\(3) & !\marReg|dffs\(0))))) # (!\marReg|dffs\(1) & (!\marReg|dffs\(3) & (\marReg|dffs\(2) $ (\marReg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(2),
	datab => \marReg|dffs\(1),
	datac => \marReg|dffs\(3),
	datad => \marReg|dffs\(0),
	combout => \marB|Mux3~0_combout\);

-- Location: LCCOMB_X105_Y22_N20
\marB|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marB|Mux2~0_combout\ = (\marReg|dffs\(3) & (\marReg|dffs\(2) & ((\marReg|dffs\(1)) # (!\marReg|dffs\(0))))) # (!\marReg|dffs\(3) & (\marReg|dffs\(1) & (!\marReg|dffs\(0) & !\marReg|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(1),
	datab => \marReg|dffs\(0),
	datac => \marReg|dffs\(3),
	datad => \marReg|dffs\(2),
	combout => \marB|Mux2~0_combout\);

-- Location: LCCOMB_X106_Y23_N22
\marB|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marB|Mux1~0_combout\ = (\marReg|dffs\(3) & ((\marReg|dffs\(0) & (\marReg|dffs\(1))) # (!\marReg|dffs\(0) & ((\marReg|dffs\(2)))))) # (!\marReg|dffs\(3) & (\marReg|dffs\(2) & (\marReg|dffs\(1) $ (\marReg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(3),
	datab => \marReg|dffs\(1),
	datac => \marReg|dffs\(2),
	datad => \marReg|dffs\(0),
	combout => \marB|Mux1~0_combout\);

-- Location: LCCOMB_X105_Y23_N0
\marB|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \marB|Mux0~0_combout\ = (\marReg|dffs\(2) & (!\marReg|dffs\(1) & (\marReg|dffs\(3) $ (!\marReg|dffs\(0))))) # (!\marReg|dffs\(2) & (\marReg|dffs\(0) & (\marReg|dffs\(1) $ (!\marReg|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \marReg|dffs\(1),
	datab => \marReg|dffs\(2),
	datac => \marReg|dffs\(3),
	datad => \marReg|dffs\(0),
	combout => \marB|Mux0~0_combout\);

-- Location: LCCOMB_X105_Y23_N30
\ctrlSignals~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~5_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(14) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(14),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \ctrlSignals~5_combout\);

-- Location: M9K_X104_Y22_N0
\ram|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AA0037400FC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "test_ram_file.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:ram|altram:sram|altsyncram:ram_block|altsyncram_fea1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ctrlSignals~5_combout\,
	portare => VCC,
	clk0 => \ALT_INV_button~input_o\,
	clk1 => GND,
	portadatain => \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y23_N20
\ctrlSignals~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~6_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(15) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(15),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \ctrlSignals~6_combout\);

-- Location: FF_X105_Y23_N29
\mdrReg|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \ram|sram|ram_block|auto_generated|q_a\(7),
	sload => VCC,
	ena => \ctrlSignals~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdrReg|dffs\(7));

-- Location: LCCOMB_X105_Y23_N22
\mdrReg|dffs[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrReg|dffs[6]~feeder_combout\ = \ram|sram|ram_block|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram|sram|ram_block|auto_generated|q_a\(6),
	combout => \mdrReg|dffs[6]~feeder_combout\);

-- Location: FF_X105_Y23_N23
\mdrReg|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \mdrReg|dffs[6]~feeder_combout\,
	ena => \ctrlSignals~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdrReg|dffs\(6));

-- Location: FF_X105_Y23_N21
\mdrReg|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \ram|sram|ram_block|auto_generated|q_a\(5),
	sload => VCC,
	ena => \ctrlSignals~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdrReg|dffs\(5));

-- Location: LCCOMB_X105_Y23_N10
\mdrReg|dffs[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrReg|dffs[3]~feeder_combout\ = \ram|sram|ram_block|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram|sram|ram_block|auto_generated|q_a\(3),
	combout => \mdrReg|dffs[3]~feeder_combout\);

-- Location: FF_X105_Y23_N11
\mdrReg|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \mdrReg|dffs[3]~feeder_combout\,
	ena => \ctrlSignals~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdrReg|dffs\(3));

-- Location: LCCOMB_X105_Y23_N12
\mdrReg|dffs[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrReg|dffs[2]~feeder_combout\ = \ram|sram|ram_block|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram|sram|ram_block|auto_generated|q_a\(2),
	combout => \mdrReg|dffs[2]~feeder_combout\);

-- Location: FF_X105_Y23_N13
\mdrReg|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \mdrReg|dffs[2]~feeder_combout\,
	ena => \ctrlSignals~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdrReg|dffs\(2));

-- Location: LCCOMB_X105_Y23_N18
\mdrReg|dffs[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrReg|dffs[1]~feeder_combout\ = \ram|sram|ram_block|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram|sram|ram_block|auto_generated|q_a\(1),
	combout => \mdrReg|dffs[1]~feeder_combout\);

-- Location: FF_X105_Y23_N19
\mdrReg|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \mdrReg|dffs[1]~feeder_combout\,
	ena => \ctrlSignals~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdrReg|dffs\(1));

-- Location: LCCOMB_X105_Y23_N16
\mdrReg|dffs[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrReg|dffs[0]~feeder_combout\ = \ram|sram|ram_block|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram|sram|ram_block|auto_generated|q_a\(0),
	combout => \mdrReg|dffs[0]~feeder_combout\);

-- Location: FF_X105_Y23_N17
\mdrReg|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \mdrReg|dffs[0]~feeder_combout\,
	ena => \ctrlSignals~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdrReg|dffs\(0));

-- Location: FF_X105_Y23_N31
\mdrReg|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \ram|sram|ram_block|auto_generated|q_a\(4),
	sload => VCC,
	ena => \ctrlSignals~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdrReg|dffs\(4));

-- Location: LCCOMB_X105_Y22_N22
\mdrA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrA|Mux6~0_combout\ = (\mdrReg|dffs\(4) & ((\mdrReg|dffs\(7)) # (\mdrReg|dffs\(6) $ (\mdrReg|dffs\(5))))) # (!\mdrReg|dffs\(4) & ((\mdrReg|dffs\(5)) # (\mdrReg|dffs\(6) $ (\mdrReg|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(4),
	datab => \mdrReg|dffs\(6),
	datac => \mdrReg|dffs\(5),
	datad => \mdrReg|dffs\(7),
	combout => \mdrA|Mux6~0_combout\);

-- Location: LCCOMB_X105_Y22_N12
\mdrA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrA|Mux5~0_combout\ = (\mdrReg|dffs\(4) & (\mdrReg|dffs\(7) $ (((\mdrReg|dffs\(5)) # (!\mdrReg|dffs\(6)))))) # (!\mdrReg|dffs\(4) & (!\mdrReg|dffs\(6) & (\mdrReg|dffs\(5) & !\mdrReg|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(4),
	datab => \mdrReg|dffs\(6),
	datac => \mdrReg|dffs\(5),
	datad => \mdrReg|dffs\(7),
	combout => \mdrA|Mux5~0_combout\);

-- Location: LCCOMB_X105_Y22_N18
\mdrA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrA|Mux4~0_combout\ = (\mdrReg|dffs\(5) & (\mdrReg|dffs\(4) & ((!\mdrReg|dffs\(7))))) # (!\mdrReg|dffs\(5) & ((\mdrReg|dffs\(6) & ((!\mdrReg|dffs\(7)))) # (!\mdrReg|dffs\(6) & (\mdrReg|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(4),
	datab => \mdrReg|dffs\(6),
	datac => \mdrReg|dffs\(5),
	datad => \mdrReg|dffs\(7),
	combout => \mdrA|Mux4~0_combout\);

-- Location: LCCOMB_X105_Y22_N0
\mdrA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrA|Mux3~0_combout\ = (\mdrReg|dffs\(5) & ((\mdrReg|dffs\(4) & (\mdrReg|dffs\(6))) # (!\mdrReg|dffs\(4) & (!\mdrReg|dffs\(6) & \mdrReg|dffs\(7))))) # (!\mdrReg|dffs\(5) & (!\mdrReg|dffs\(7) & (\mdrReg|dffs\(4) $ (\mdrReg|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(4),
	datab => \mdrReg|dffs\(6),
	datac => \mdrReg|dffs\(5),
	datad => \mdrReg|dffs\(7),
	combout => \mdrA|Mux3~0_combout\);

-- Location: LCCOMB_X105_Y22_N10
\mdrA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrA|Mux2~0_combout\ = (\mdrReg|dffs\(6) & (\mdrReg|dffs\(7) & ((\mdrReg|dffs\(5)) # (!\mdrReg|dffs\(4))))) # (!\mdrReg|dffs\(6) & (!\mdrReg|dffs\(4) & (\mdrReg|dffs\(5) & !\mdrReg|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(4),
	datab => \mdrReg|dffs\(6),
	datac => \mdrReg|dffs\(5),
	datad => \mdrReg|dffs\(7),
	combout => \mdrA|Mux2~0_combout\);

-- Location: LCCOMB_X105_Y23_N4
\mdrA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrA|Mux1~0_combout\ = (\mdrReg|dffs\(5) & ((\mdrReg|dffs\(4) & (\mdrReg|dffs\(7))) # (!\mdrReg|dffs\(4) & ((\mdrReg|dffs\(6)))))) # (!\mdrReg|dffs\(5) & (\mdrReg|dffs\(6) & (\mdrReg|dffs\(7) $ (\mdrReg|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(5),
	datab => \mdrReg|dffs\(7),
	datac => \mdrReg|dffs\(4),
	datad => \mdrReg|dffs\(6),
	combout => \mdrA|Mux1~0_combout\);

-- Location: LCCOMB_X105_Y23_N14
\mdrA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrA|Mux0~0_combout\ = (\mdrReg|dffs\(7) & (\mdrReg|dffs\(4) & (\mdrReg|dffs\(5) $ (\mdrReg|dffs\(6))))) # (!\mdrReg|dffs\(7) & (!\mdrReg|dffs\(5) & (\mdrReg|dffs\(4) $ (\mdrReg|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(5),
	datab => \mdrReg|dffs\(7),
	datac => \mdrReg|dffs\(4),
	datad => \mdrReg|dffs\(6),
	combout => \mdrA|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y19_N28
\mdrB|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrB|Mux6~0_combout\ = (\mdrReg|dffs\(0) & ((\mdrReg|dffs\(3)) # (\mdrReg|dffs\(1) $ (\mdrReg|dffs\(2))))) # (!\mdrReg|dffs\(0) & ((\mdrReg|dffs\(1)) # (\mdrReg|dffs\(3) $ (\mdrReg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(1),
	datab => \mdrReg|dffs\(0),
	datac => \mdrReg|dffs\(3),
	datad => \mdrReg|dffs\(2),
	combout => \mdrB|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\mdrB|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrB|Mux5~0_combout\ = (\mdrReg|dffs\(1) & (!\mdrReg|dffs\(3) & ((\mdrReg|dffs\(0)) # (!\mdrReg|dffs\(2))))) # (!\mdrReg|dffs\(1) & (\mdrReg|dffs\(0) & (\mdrReg|dffs\(3) $ (!\mdrReg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(1),
	datab => \mdrReg|dffs\(0),
	datac => \mdrReg|dffs\(3),
	datad => \mdrReg|dffs\(2),
	combout => \mdrB|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y19_N12
\mdrB|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrB|Mux4~0_combout\ = (\mdrReg|dffs\(1) & (\mdrReg|dffs\(0) & (!\mdrReg|dffs\(3)))) # (!\mdrReg|dffs\(1) & ((\mdrReg|dffs\(2) & ((!\mdrReg|dffs\(3)))) # (!\mdrReg|dffs\(2) & (\mdrReg|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(1),
	datab => \mdrReg|dffs\(0),
	datac => \mdrReg|dffs\(3),
	datad => \mdrReg|dffs\(2),
	combout => \mdrB|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y19_N2
\mdrB|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrB|Mux3~0_combout\ = (\mdrReg|dffs\(1) & ((\mdrReg|dffs\(0) & ((\mdrReg|dffs\(2)))) # (!\mdrReg|dffs\(0) & (\mdrReg|dffs\(3) & !\mdrReg|dffs\(2))))) # (!\mdrReg|dffs\(1) & (!\mdrReg|dffs\(3) & (\mdrReg|dffs\(0) $ (\mdrReg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(1),
	datab => \mdrReg|dffs\(0),
	datac => \mdrReg|dffs\(3),
	datad => \mdrReg|dffs\(2),
	combout => \mdrB|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y19_N24
\mdrB|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrB|Mux2~0_combout\ = (\mdrReg|dffs\(3) & (\mdrReg|dffs\(2) & ((\mdrReg|dffs\(1)) # (!\mdrReg|dffs\(0))))) # (!\mdrReg|dffs\(3) & (\mdrReg|dffs\(1) & (!\mdrReg|dffs\(0) & !\mdrReg|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(1),
	datab => \mdrReg|dffs\(0),
	datac => \mdrReg|dffs\(3),
	datad => \mdrReg|dffs\(2),
	combout => \mdrB|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\mdrB|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrB|Mux1~0_combout\ = (\mdrReg|dffs\(1) & ((\mdrReg|dffs\(0) & (\mdrReg|dffs\(3))) # (!\mdrReg|dffs\(0) & ((\mdrReg|dffs\(2)))))) # (!\mdrReg|dffs\(1) & (\mdrReg|dffs\(2) & (\mdrReg|dffs\(0) $ (\mdrReg|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(1),
	datab => \mdrReg|dffs\(0),
	datac => \mdrReg|dffs\(3),
	datad => \mdrReg|dffs\(2),
	combout => \mdrB|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y19_N20
\mdrB|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mdrB|Mux0~0_combout\ = (\mdrReg|dffs\(3) & (\mdrReg|dffs\(0) & (\mdrReg|dffs\(1) $ (\mdrReg|dffs\(2))))) # (!\mdrReg|dffs\(3) & (!\mdrReg|dffs\(1) & (\mdrReg|dffs\(0) $ (\mdrReg|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdrReg|dffs\(1),
	datab => \mdrReg|dffs\(0),
	datac => \mdrReg|dffs\(3),
	datad => \mdrReg|dffs\(2),
	combout => \mdrB|Mux0~0_combout\);

-- Location: LCCOMB_X94_Y4_N4
\nextAddressA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressA|Mux6~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7)) # (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5)) # (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5),
	combout => \nextAddressA|Mux6~0_combout\);

-- Location: LCCOMB_X94_Y4_N26
\nextAddressA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressA|Mux5~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4)) # 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5),
	combout => \nextAddressA|Mux5~0_combout\);

-- Location: LCCOMB_X94_Y4_N24
\nextAddressA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressA|Mux4~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4))))) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & 
-- ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5),
	combout => \nextAddressA|Mux4~0_combout\);

-- Location: LCCOMB_X94_Y4_N22
\nextAddressA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressA|Mux3~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4)))) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & !\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5) & 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) $ (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5),
	combout => \nextAddressA|Mux3~0_combout\);

-- Location: LCCOMB_X94_Y4_N28
\nextAddressA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressA|Mux2~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5)) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) & 
-- \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5),
	combout => \nextAddressA|Mux2~0_combout\);

-- Location: LCCOMB_X94_Y4_N10
\nextAddressA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressA|Mux1~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5)))) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) & 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) $ (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5),
	combout => \nextAddressA|Mux1~0_combout\);

-- Location: LCCOMB_X94_Y4_N12
\nextAddressA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressA|Mux0~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(7),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(4),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(5),
	combout => \nextAddressA|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y23_N0
\nextAddressB|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressB|Mux6~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3)) # (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1)) # (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1),
	combout => \nextAddressB|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y23_N18
\nextAddressB|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressB|Mux5~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) $ (((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1)) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2)))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) 
-- & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1),
	combout => \nextAddressB|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y23_N8
\nextAddressB|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressB|Mux4~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3)))) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) & ((!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3)))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) & 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1),
	combout => \nextAddressB|Mux4~0_combout\);

-- Location: LCCOMB_X103_Y23_N2
\nextAddressB|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressB|Mux3~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2)))) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & !\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1) & 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) $ (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1),
	combout => \nextAddressB|Mux3~0_combout\);

-- Location: LCCOMB_X103_Y23_N20
\nextAddressB|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressB|Mux2~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1)) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) & 
-- \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1),
	combout => \nextAddressB|Mux2~0_combout\);

-- Location: LCCOMB_X103_Y23_N6
\nextAddressB|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressB|Mux1~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & ((\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1)))) # 
-- (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) & 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) $ (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1),
	combout => \nextAddressB|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y23_N4
\nextAddressB|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextAddressB|Mux0~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1))))) # (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3) & (!\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1) & (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0) $ 
-- (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(0),
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(3),
	datac => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(2),
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(1),
	combout => \nextAddressB|Mux0~0_combout\);

-- Location: LCCOMB_X100_Y57_N28
\ctrlSignals~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~0_combout\ = (\microSequencer|uROM|srom|rom_block|auto_generated|q_a\(9) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(9),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \ctrlSignals~0_combout\);

-- Location: LCCOMB_X103_Y23_N14
\ctrlSignals~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~1_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(10),
	combout => \ctrlSignals~1_combout\);

-- Location: LCCOMB_X100_Y57_N18
\ctrlSignals~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~2_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(11),
	combout => \ctrlSignals~2_combout\);

-- Location: LCCOMB_X105_Y23_N8
\ctrlSignals~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~3_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(12),
	combout => \ctrlSignals~3_combout\);

-- Location: LCCOMB_X100_Y57_N24
\ctrlSignals~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrlSignals~4_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \microSequencer|uROM|srom|rom_block|auto_generated|q_a\(13),
	combout => \ctrlSignals~4_combout\);

ww_useqEnOut <= \useqEnOut~output_o\;

ww_marSegHi(6) <= \marSegHi[6]~output_o\;

ww_marSegHi(5) <= \marSegHi[5]~output_o\;

ww_marSegHi(4) <= \marSegHi[4]~output_o\;

ww_marSegHi(3) <= \marSegHi[3]~output_o\;

ww_marSegHi(2) <= \marSegHi[2]~output_o\;

ww_marSegHi(1) <= \marSegHi[1]~output_o\;

ww_marSegHi(0) <= \marSegHi[0]~output_o\;

ww_marSegLo(6) <= \marSegLo[6]~output_o\;

ww_marSegLo(5) <= \marSegLo[5]~output_o\;

ww_marSegLo(4) <= \marSegLo[4]~output_o\;

ww_marSegLo(3) <= \marSegLo[3]~output_o\;

ww_marSegLo(2) <= \marSegLo[2]~output_o\;

ww_marSegLo(1) <= \marSegLo[1]~output_o\;

ww_marSegLo(0) <= \marSegLo[0]~output_o\;

ww_mdrSegHi(6) <= \mdrSegHi[6]~output_o\;

ww_mdrSegHi(5) <= \mdrSegHi[5]~output_o\;

ww_mdrSegHi(4) <= \mdrSegHi[4]~output_o\;

ww_mdrSegHi(3) <= \mdrSegHi[3]~output_o\;

ww_mdrSegHi(2) <= \mdrSegHi[2]~output_o\;

ww_mdrSegHi(1) <= \mdrSegHi[1]~output_o\;

ww_mdrSegHi(0) <= \mdrSegHi[0]~output_o\;

ww_mdrSegLo(6) <= \mdrSegLo[6]~output_o\;

ww_mdrSegLo(5) <= \mdrSegLo[5]~output_o\;

ww_mdrSegLo(4) <= \mdrSegLo[4]~output_o\;

ww_mdrSegLo(3) <= \mdrSegLo[3]~output_o\;

ww_mdrSegLo(2) <= \mdrSegLo[2]~output_o\;

ww_mdrSegLo(1) <= \mdrSegLo[1]~output_o\;

ww_mdrSegLo(0) <= \mdrSegLo[0]~output_o\;

ww_nextAddrHi(6) <= \nextAddrHi[6]~output_o\;

ww_nextAddrHi(5) <= \nextAddrHi[5]~output_o\;

ww_nextAddrHi(4) <= \nextAddrHi[4]~output_o\;

ww_nextAddrHi(3) <= \nextAddrHi[3]~output_o\;

ww_nextAddrHi(2) <= \nextAddrHi[2]~output_o\;

ww_nextAddrHi(1) <= \nextAddrHi[1]~output_o\;

ww_nextAddrHi(0) <= \nextAddrHi[0]~output_o\;

ww_nextAddrLo(6) <= \nextAddrLo[6]~output_o\;

ww_nextAddrLo(5) <= \nextAddrLo[5]~output_o\;

ww_nextAddrLo(4) <= \nextAddrLo[4]~output_o\;

ww_nextAddrLo(3) <= \nextAddrLo[3]~output_o\;

ww_nextAddrLo(2) <= \nextAddrLo[2]~output_o\;

ww_nextAddrLo(1) <= \nextAddrLo[1]~output_o\;

ww_nextAddrLo(0) <= \nextAddrLo[0]~output_o\;

ww_ctrlSignals(7) <= \ctrlSignals[7]~output_o\;

ww_ctrlSignals(6) <= \ctrlSignals[6]~output_o\;

ww_ctrlSignals(5) <= \ctrlSignals[5]~output_o\;

ww_ctrlSignals(4) <= \ctrlSignals[4]~output_o\;

ww_ctrlSignals(3) <= \ctrlSignals[3]~output_o\;

ww_ctrlSignals(2) <= \ctrlSignals[2]~output_o\;

ww_ctrlSignals(1) <= \ctrlSignals[1]~output_o\;

ww_ctrlSignals(0) <= \ctrlSignals[0]~output_o\;
END structure;


