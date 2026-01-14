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

-- DATE "12/12/2025 11:16:38"

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

ENTITY 	cpu IS
    PORT (
	button : IN std_logic;
	clear : IN std_logic;
	Z_FLAG : BUFFER std_logic_vector(0 DOWNTO 0);
	R0SegHi : BUFFER std_logic_vector(0 TO 6);
	R0SegLo : BUFFER std_logic_vector(0 TO 6);
	R1SegHi : BUFFER std_logic_vector(0 TO 6);
	R1SegLo : BUFFER std_logic_vector(0 TO 6);
	pcSegHi : BUFFER std_logic_vector(0 TO 6);
	pcSegLo : BUFFER std_logic_vector(0 TO 6);
	spSegHi : BUFFER std_logic_vector(0 TO 6);
	spSegLo : BUFFER std_logic_vector(0 TO 6)
	);
END cpu;

-- Design Ports Information
-- Z_FLAG[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegHi[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegHi[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegHi[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegHi[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegHi[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegHi[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegHi[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegLo[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegLo[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegLo[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegLo[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegLo[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegLo[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0SegLo[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegHi[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegHi[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegHi[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegHi[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegHi[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegHi[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegHi[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegLo[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegLo[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegLo[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegLo[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegLo[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegLo[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1SegLo[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegHi[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegHi[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegHi[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegHi[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegHi[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegHi[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegHi[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegLo[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegLo[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegLo[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegLo[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegLo[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegLo[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcSegLo[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegHi[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegHi[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegHi[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegHi[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegHi[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegHi[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegHi[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegLo[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegLo[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegLo[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegLo[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegLo[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegLo[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spSegLo[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
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
SIGNAL ww_Z_FLAG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_R0SegHi : std_logic_vector(0 TO 6);
SIGNAL ww_R0SegLo : std_logic_vector(0 TO 6);
SIGNAL ww_R1SegHi : std_logic_vector(0 TO 6);
SIGNAL ww_R1SegLo : std_logic_vector(0 TO 6);
SIGNAL ww_pcSegHi : std_logic_vector(0 TO 6);
SIGNAL ww_pcSegLo : std_logic_vector(0 TO 6);
SIGNAL ww_spSegHi : std_logic_vector(0 TO 6);
SIGNAL ww_spSegLo : std_logic_vector(0 TO 6);
SIGNAL \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Z_FLAG[0]~output_o\ : std_logic;
SIGNAL \R0SegHi[6]~output_o\ : std_logic;
SIGNAL \R0SegHi[5]~output_o\ : std_logic;
SIGNAL \R0SegHi[4]~output_o\ : std_logic;
SIGNAL \R0SegHi[3]~output_o\ : std_logic;
SIGNAL \R0SegHi[2]~output_o\ : std_logic;
SIGNAL \R0SegHi[1]~output_o\ : std_logic;
SIGNAL \R0SegHi[0]~output_o\ : std_logic;
SIGNAL \R0SegLo[6]~output_o\ : std_logic;
SIGNAL \R0SegLo[5]~output_o\ : std_logic;
SIGNAL \R0SegLo[4]~output_o\ : std_logic;
SIGNAL \R0SegLo[3]~output_o\ : std_logic;
SIGNAL \R0SegLo[2]~output_o\ : std_logic;
SIGNAL \R0SegLo[1]~output_o\ : std_logic;
SIGNAL \R0SegLo[0]~output_o\ : std_logic;
SIGNAL \R1SegHi[6]~output_o\ : std_logic;
SIGNAL \R1SegHi[5]~output_o\ : std_logic;
SIGNAL \R1SegHi[4]~output_o\ : std_logic;
SIGNAL \R1SegHi[3]~output_o\ : std_logic;
SIGNAL \R1SegHi[2]~output_o\ : std_logic;
SIGNAL \R1SegHi[1]~output_o\ : std_logic;
SIGNAL \R1SegHi[0]~output_o\ : std_logic;
SIGNAL \R1SegLo[6]~output_o\ : std_logic;
SIGNAL \R1SegLo[5]~output_o\ : std_logic;
SIGNAL \R1SegLo[4]~output_o\ : std_logic;
SIGNAL \R1SegLo[3]~output_o\ : std_logic;
SIGNAL \R1SegLo[2]~output_o\ : std_logic;
SIGNAL \R1SegLo[1]~output_o\ : std_logic;
SIGNAL \R1SegLo[0]~output_o\ : std_logic;
SIGNAL \pcSegHi[6]~output_o\ : std_logic;
SIGNAL \pcSegHi[5]~output_o\ : std_logic;
SIGNAL \pcSegHi[4]~output_o\ : std_logic;
SIGNAL \pcSegHi[3]~output_o\ : std_logic;
SIGNAL \pcSegHi[2]~output_o\ : std_logic;
SIGNAL \pcSegHi[1]~output_o\ : std_logic;
SIGNAL \pcSegHi[0]~output_o\ : std_logic;
SIGNAL \pcSegLo[6]~output_o\ : std_logic;
SIGNAL \pcSegLo[5]~output_o\ : std_logic;
SIGNAL \pcSegLo[4]~output_o\ : std_logic;
SIGNAL \pcSegLo[3]~output_o\ : std_logic;
SIGNAL \pcSegLo[2]~output_o\ : std_logic;
SIGNAL \pcSegLo[1]~output_o\ : std_logic;
SIGNAL \pcSegLo[0]~output_o\ : std_logic;
SIGNAL \spSegHi[6]~output_o\ : std_logic;
SIGNAL \spSegHi[5]~output_o\ : std_logic;
SIGNAL \spSegHi[4]~output_o\ : std_logic;
SIGNAL \spSegHi[3]~output_o\ : std_logic;
SIGNAL \spSegHi[2]~output_o\ : std_logic;
SIGNAL \spSegHi[1]~output_o\ : std_logic;
SIGNAL \spSegHi[0]~output_o\ : std_logic;
SIGNAL \spSegLo[6]~output_o\ : std_logic;
SIGNAL \spSegLo[5]~output_o\ : std_logic;
SIGNAL \spSegLo[4]~output_o\ : std_logic;
SIGNAL \spSegLo[3]~output_o\ : std_logic;
SIGNAL \spSegLo[2]~output_o\ : std_logic;
SIGNAL \spSegLo[1]~output_o\ : std_logic;
SIGNAL \spSegLo[0]~output_o\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \delay|auto_generated|counter_comb_bita1~0_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[7]~6_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \R1_ENABLE~0_combout\ : std_logic;
SIGNAL \ALU_SEL~combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~9_combout\ : std_logic;
SIGNAL \MDR|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \WRITE_SEL~combout\ : std_logic;
SIGNAL \SP_INC~combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \SP_LOAD~combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|_~0_combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[0]~6_combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[7]~1_combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[7]~2_combout\ : std_logic;
SIGNAL \PC|auto_generated|_~0_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \MAR_LOAD~combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \ALU_B[1]~0_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~5_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \R0_ENABLE~0_combout\ : std_logic;
SIGNAL \ALU_B[0]~1_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~6_combout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \MDR|dffs[1]~5_combout\ : std_logic;
SIGNAL \MDR|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~3_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~4_combout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[2]~12_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[2]~12_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \MDR|dffs[2]~6_combout\ : std_logic;
SIGNAL \MDR|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[3]~14_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~1_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~2_combout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[3]~15_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[3]~14_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[3]~15_combout\ : std_logic;
SIGNAL \MDR|dffs[3]~7_combout\ : std_logic;
SIGNAL \MDR|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[1]~7_combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[2]~8_combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[3]~9_combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[4]~0_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[4]~8_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[4]~9_combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[5]~3_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[5]~11_combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[6]~4_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[6]~12_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[6]~13_combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \PC|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \PC|auto_generated|counter_reg_bit[7]~5_combout\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \STACK_POINTER|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[7]~14_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[7]~15_combout\ : std_logic;
SIGNAL \MDR_SEL~combout\ : std_logic;
SIGNAL \MDR_LOAD~combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[3]~6_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[3]~7_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \MAR_MUX|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[6]~4_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~8_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~0_combout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[6]~5_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[6]~4_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[6]~5_combout\ : std_logic;
SIGNAL \MDR|dffs[6]~2_combout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[7]~6_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \MDR|dffs[7]~3_combout\ : std_logic;
SIGNAL \MDR|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \IR|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \IR|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \uSeq|uPC|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \MDR|dffs[0]~4_combout\ : std_logic;
SIGNAL \MDR|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \ALU|auto_generated|_~7_combout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \MDR|dffs[5]~1_combout\ : std_logic;
SIGNAL \MDR|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \IR|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \ALU|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \R1_MUX|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \MDR|dffs[4]~0_combout\ : std_logic;
SIGNAL \MDR|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \IR|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \uSeq|uPC|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \uSeq|uPC_mux|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \R0_MUX|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \V_MUX_DATA[0][0]~3_combout\ : std_logic;
SIGNAL \V_MUX_DATA[0][0]~2_combout\ : std_logic;
SIGNAL \V_MUX|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \V_MUX_DATA[1][0]~1_combout\ : std_logic;
SIGNAL \V_MUX_DATA[1][0]~0_combout\ : std_logic;
SIGNAL \V_MUX|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \Z_MUX|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \Z_LOAD~combout\ : std_logic;
SIGNAL \R0Hi|Mux6~0_combout\ : std_logic;
SIGNAL \R0Hi|Mux5~0_combout\ : std_logic;
SIGNAL \R0Hi|Mux4~0_combout\ : std_logic;
SIGNAL \R0Hi|Mux3~0_combout\ : std_logic;
SIGNAL \R0Hi|Mux2~0_combout\ : std_logic;
SIGNAL \R0Hi|Mux1~0_combout\ : std_logic;
SIGNAL \R0Hi|Mux0~0_combout\ : std_logic;
SIGNAL \R0Lo|Mux6~0_combout\ : std_logic;
SIGNAL \R0Lo|Mux5~0_combout\ : std_logic;
SIGNAL \R0Lo|Mux4~0_combout\ : std_logic;
SIGNAL \R0Lo|Mux3~0_combout\ : std_logic;
SIGNAL \R0Lo|Mux2~0_combout\ : std_logic;
SIGNAL \R0Lo|Mux1~0_combout\ : std_logic;
SIGNAL \R0Lo|Mux0~0_combout\ : std_logic;
SIGNAL \R1Hi|Mux6~0_combout\ : std_logic;
SIGNAL \R1Hi|Mux5~0_combout\ : std_logic;
SIGNAL \R1Hi|Mux4~0_combout\ : std_logic;
SIGNAL \R1Hi|Mux3~0_combout\ : std_logic;
SIGNAL \R1Hi|Mux2~0_combout\ : std_logic;
SIGNAL \R1Hi|Mux1~0_combout\ : std_logic;
SIGNAL \R1Hi|Mux0~0_combout\ : std_logic;
SIGNAL \R1Lo|Mux6~0_combout\ : std_logic;
SIGNAL \R1Lo|Mux5~0_combout\ : std_logic;
SIGNAL \R1Lo|Mux4~0_combout\ : std_logic;
SIGNAL \R1Lo|Mux3~0_combout\ : std_logic;
SIGNAL \R1Lo|Mux2~0_combout\ : std_logic;
SIGNAL \R1Lo|Mux1~0_combout\ : std_logic;
SIGNAL \R1Lo|Mux0~0_combout\ : std_logic;
SIGNAL \pcHi|Mux6~0_combout\ : std_logic;
SIGNAL \pcHi|Mux5~0_combout\ : std_logic;
SIGNAL \pcHi|Mux4~0_combout\ : std_logic;
SIGNAL \pcHi|Mux3~0_combout\ : std_logic;
SIGNAL \pcHi|Mux2~0_combout\ : std_logic;
SIGNAL \pcHi|Mux1~0_combout\ : std_logic;
SIGNAL \pcHi|Mux0~0_combout\ : std_logic;
SIGNAL \pcLo|Mux6~0_combout\ : std_logic;
SIGNAL \pcLo|Mux5~0_combout\ : std_logic;
SIGNAL \pcLo|Mux4~0_combout\ : std_logic;
SIGNAL \pcLo|Mux3~0_combout\ : std_logic;
SIGNAL \pcLo|Mux2~0_combout\ : std_logic;
SIGNAL \pcLo|Mux1~0_combout\ : std_logic;
SIGNAL \pcLo|Mux0~0_combout\ : std_logic;
SIGNAL \spHi|Mux6~0_combout\ : std_logic;
SIGNAL \spHi|Mux5~0_combout\ : std_logic;
SIGNAL \spHi|Mux4~0_combout\ : std_logic;
SIGNAL \spHi|Mux3~0_combout\ : std_logic;
SIGNAL \spHi|Mux2~0_combout\ : std_logic;
SIGNAL \spHi|Mux1~0_combout\ : std_logic;
SIGNAL \spHi|Mux0~0_combout\ : std_logic;
SIGNAL \spLo|Mux6~0_combout\ : std_logic;
SIGNAL \spLo|Mux5~0_combout\ : std_logic;
SIGNAL \spLo|Mux4~0_combout\ : std_logic;
SIGNAL \spLo|Mux3~0_combout\ : std_logic;
SIGNAL \spLo|Mux2~0_combout\ : std_logic;
SIGNAL \spLo|Mux1~0_combout\ : std_logic;
SIGNAL \spLo|Mux0~0_combout\ : std_logic;
SIGNAL \MDR|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG0|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG1|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL R1_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL R0_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL MAR_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL \delay|auto_generated|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PC|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uSeq|uPC|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MAR|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_Z|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \STACK_POINTER|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uSeq|uROM|srom|rom_block|auto_generated|q_a\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \spLo|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \spHi|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \pcLo|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \pcHi|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \R1Lo|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \R1Hi|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \R0Lo|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \R0Hi|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_button~input_o\ : std_logic;

BEGIN

ww_button <= button;
ww_clear <= clear;
Z_FLAG <= ww_Z_FLAG;
R0SegHi <= ww_R0SegHi;
R0SegLo <= ww_R0SegLo;
R1SegHi <= ww_R1SegHi;
R1SegLo <= ww_R1SegLo;
pcSegHi <= ww_pcSegHi;
pcSegLo <= ww_pcSegLo;
spSegHi <= ww_spSegHi;
spSegLo <= ww_spSegLo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \MDR|dffs\(7) & \MDR|dffs\(6) & \MDR|dffs\(5) & \MDR|dffs\(4) & \MDR|dffs\(3) & \MDR|dffs\(2) & \MDR|dffs\(1) & 
\MDR|dffs\(0));

\RAM|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MAR|dffs\(7) & \MAR|dffs\(6) & \MAR|dffs\(5) & \MAR|dffs\(4) & \MAR|dffs\(3) & \MAR|dffs\(2) & \MAR|dffs\(1) & \MAR|dffs\(0));

\RAM|sram|ram_block|auto_generated|q_a\(0) <= \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM|sram|ram_block|auto_generated|q_a\(1) <= \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM|sram|ram_block|auto_generated|q_a\(2) <= \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAM|sram|ram_block|auto_generated|q_a\(3) <= \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RAM|sram|ram_block|auto_generated|q_a\(4) <= \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RAM|sram|ram_block|auto_generated|q_a\(5) <= \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RAM|sram|ram_block|auto_generated|q_a\(6) <= \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RAM|sram|ram_block|auto_generated|q_a\(7) <= \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

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
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(17) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(18) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(19) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(21) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(22) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(24) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(25) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(26) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(27) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(29) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(30) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(31) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);
\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32) <= \uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(32);
\spLo|ALT_INV_Mux6~0_combout\ <= NOT \spLo|Mux6~0_combout\;
\spHi|ALT_INV_Mux6~0_combout\ <= NOT \spHi|Mux6~0_combout\;
\pcLo|ALT_INV_Mux6~0_combout\ <= NOT \pcLo|Mux6~0_combout\;
\pcHi|ALT_INV_Mux6~0_combout\ <= NOT \pcHi|Mux6~0_combout\;
\R1Lo|ALT_INV_Mux6~0_combout\ <= NOT \R1Lo|Mux6~0_combout\;
\R1Hi|ALT_INV_Mux6~0_combout\ <= NOT \R1Hi|Mux6~0_combout\;
\R0Lo|ALT_INV_Mux6~0_combout\ <= NOT \R0Lo|Mux6~0_combout\;
\R0Hi|ALT_INV_Mux6~0_combout\ <= NOT \R0Hi|Mux6~0_combout\;
\ALT_INV_button~input_o\ <= NOT \button~input_o\;

-- Location: IOOBUF_X60_Y73_N16
\Z_FLAG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_Z|dffs\(0),
	devoe => ww_devoe,
	o => \Z_FLAG[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\R0SegHi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Hi|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \R0SegHi[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\R0SegHi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Hi|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \R0SegHi[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\R0SegHi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Hi|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \R0SegHi[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\R0SegHi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Hi|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \R0SegHi[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\R0SegHi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Hi|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \R0SegHi[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\R0SegHi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Hi|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \R0SegHi[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\R0SegHi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Hi|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \R0SegHi[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\R0SegLo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Lo|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \R0SegLo[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\R0SegLo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Lo|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \R0SegLo[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\R0SegLo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Lo|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \R0SegLo[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\R0SegLo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Lo|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \R0SegLo[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\R0SegLo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Lo|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \R0SegLo[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\R0SegLo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Lo|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \R0SegLo[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\R0SegLo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0Lo|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \R0SegLo[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\R1SegHi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Hi|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \R1SegHi[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\R1SegHi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Hi|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \R1SegHi[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\R1SegHi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Hi|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \R1SegHi[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\R1SegHi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Hi|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \R1SegHi[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\R1SegHi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Hi|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \R1SegHi[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\R1SegHi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Hi|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \R1SegHi[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\R1SegHi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Hi|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \R1SegHi[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\R1SegLo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Lo|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \R1SegLo[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\R1SegLo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Lo|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \R1SegLo[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\R1SegLo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Lo|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \R1SegLo[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\R1SegLo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Lo|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \R1SegLo[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\R1SegLo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Lo|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \R1SegLo[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\R1SegLo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Lo|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \R1SegLo[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\R1SegLo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1Lo|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \R1SegLo[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\pcSegHi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcHi|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \pcSegHi[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\pcSegHi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcHi|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \pcSegHi[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\pcSegHi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcHi|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \pcSegHi[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\pcSegHi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcHi|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \pcSegHi[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\pcSegHi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcHi|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \pcSegHi[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\pcSegHi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcHi|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \pcSegHi[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\pcSegHi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcHi|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \pcSegHi[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\pcSegLo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcLo|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \pcSegLo[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\pcSegLo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcLo|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \pcSegLo[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\pcSegLo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcLo|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \pcSegLo[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\pcSegLo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcLo|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \pcSegLo[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\pcSegLo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcLo|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \pcSegLo[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\pcSegLo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcLo|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \pcSegLo[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\pcSegLo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcLo|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \pcSegLo[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\spSegHi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spHi|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \spSegHi[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\spSegHi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spHi|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \spSegHi[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\spSegHi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spHi|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \spSegHi[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\spSegHi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spHi|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \spSegHi[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\spSegHi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spHi|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \spSegHi[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\spSegHi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spHi|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \spSegHi[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\spSegHi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spHi|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \spSegHi[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\spSegLo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spLo|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \spSegLo[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\spSegLo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spLo|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \spSegLo[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\spSegLo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spLo|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \spSegLo[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\spSegLo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spLo|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \spSegLo[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\spSegLo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spLo|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \spSegLo[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\spSegLo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spLo|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \spSegLo[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\spSegLo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spLo|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \spSegLo[0]~output_o\);

-- Location: IOIBUF_X115_Y53_N15
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X114_Y52_N20
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

-- Location: FF_X114_Y52_N21
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

-- Location: LCCOMB_X114_Y52_N22
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

-- Location: FF_X114_Y52_N23
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

-- Location: LCCOMB_X114_Y52_N24
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

-- Location: LCCOMB_X109_Y52_N2
\R0_MUX|auto_generated|result_node[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[5]~2_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & ((\REG1|dffs\(5)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & (\MDR|dffs\(5))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (\MDR|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(5),
	datab => \REG1|dffs\(5),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	combout => \R0_MUX|auto_generated|result_node[5]~2_combout\);

-- Location: M9K_X104_Y52_N0
\uSeq|uROM|srom|rom_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"004010002400E30010000E20140000E10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000010030000D30140000D20000002D10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002400010010000C20140000C10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008010810000B20040000B1000000000000000000000000000000000000000000000000",
	mem_init2 => X"0000000000000000000000000000000000000000000000000000000000000000000000000010010810000A20040000A100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200100100009200400009100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C00100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000140010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006C00010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006E0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B400010000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000002000000100300003402C00003308100003200400003100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024000100100002400C000023081000022004000021000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000240001081000012004000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000101081000003004000002000000001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "uSequencer:uSeq|lpm_rom:uROM|altrom:srom|altsyncram:rom_block|altsyncram_lsv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 33,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
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

-- Location: LCCOMB_X113_Y52_N24
\R1_SEL[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- R1_SEL(0) = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(19) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(19),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => R1_SEL(0));

-- Location: LCCOMB_X110_Y52_N8
\R1_MUX|auto_generated|result_node[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[7]~6_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\REG0|dffs\(7))) # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & 
-- ((\MDR|dffs\(7)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & (((\MDR|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	datab => \REG0|dffs\(7),
	datac => \MDR|dffs\(7),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \R1_MUX|auto_generated|result_node[7]~6_combout\);

-- Location: LCCOMB_X111_Y52_N30
\R1_MUX|auto_generated|result_node[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[7]~7_combout\ = (R1_SEL(0) & (!R1_SEL(1) & (\ALU|auto_generated|result_int[8]~16_combout\))) # (!R1_SEL(0) & (((\R1_MUX|auto_generated|result_node[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1_SEL(0),
	datab => R1_SEL(1),
	datac => \ALU|auto_generated|result_int[8]~16_combout\,
	datad => \R1_MUX|auto_generated|result_node[7]~6_combout\,
	combout => \R1_MUX|auto_generated|result_node[7]~7_combout\);

-- Location: LCCOMB_X110_Y52_N12
\R1_ENABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_ENABLE~0_combout\ = (\IR|dffs\(0) & (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(0),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(18),
	combout => \R1_ENABLE~0_combout\);

-- Location: FF_X111_Y52_N31
\REG1|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R1_MUX|auto_generated|result_node[7]~7_combout\,
	ena => \R1_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|dffs\(7));

-- Location: LCCOMB_X112_Y52_N2
ALU_SEL : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_SEL~combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(17) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(17),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \ALU_SEL~combout\);

-- Location: LCCOMB_X111_Y52_N2
\ALU|auto_generated|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~9_combout\ = \ALU_SEL~combout\ $ (((\IR|dffs\(0) & (\REG0|dffs\(7))) # (!\IR|dffs\(0) & ((\REG1|dffs\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(0),
	datab => \REG0|dffs\(7),
	datac => \REG1|dffs\(7),
	datad => \ALU_SEL~combout\,
	combout => \ALU|auto_generated|_~9_combout\);

-- Location: LCCOMB_X109_Y52_N24
\MDR|dffs[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[6]~feeder_combout\ = \MDR|dffs[6]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs[6]~2_combout\,
	combout => \MDR|dffs[6]~feeder_combout\);

-- Location: LCCOMB_X103_Y51_N16
WRITE_SEL : cycloneive_lcell_comb
-- Equation(s):
-- \WRITE_SEL~combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(29) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(29),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \WRITE_SEL~combout\);

-- Location: LCCOMB_X105_Y51_N4
\MAR_SEL[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- MAR_SEL(1) = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => MAR_SEL(1));

-- Location: LCCOMB_X105_Y52_N2
SP_INC : cycloneive_lcell_comb
-- Equation(s):
-- \SP_INC~combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(10) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(10),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \SP_INC~combout\);

-- Location: LCCOMB_X105_Y52_N4
\STACK_POINTER|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|counter_comb_bita0~combout\ = \STACK_POINTER|auto_generated|counter_reg_bit\(0) $ (((VCC) # (!\SP_INC~combout\)))
-- \STACK_POINTER|auto_generated|counter_comb_bita0~COUT\ = CARRY(\STACK_POINTER|auto_generated|counter_reg_bit\(0) $ (!\SP_INC~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	datab => \SP_INC~combout\,
	datad => VCC,
	combout => \STACK_POINTER|auto_generated|counter_comb_bita0~combout\,
	cout => \STACK_POINTER|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X105_Y52_N20
SP_LOAD : cycloneive_lcell_comb
-- Equation(s):
-- \SP_LOAD~combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(11) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(11),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \SP_LOAD~combout\);

-- Location: LCCOMB_X105_Y52_N26
\STACK_POINTER|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|_~0_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(11)) # ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(10)) # 
-- (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(11),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(10),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(9),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \STACK_POINTER|auto_generated|_~0_combout\);

-- Location: FF_X105_Y52_N5
\STACK_POINTER|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \STACK_POINTER|auto_generated|counter_comb_bita0~combout\,
	asdata => \MDR|dffs\(0),
	sload => \SP_LOAD~combout\,
	ena => \STACK_POINTER|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X106_Y52_N14
\PC|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_comb_bita0~combout\ = \PC|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \PC|auto_generated|counter_comb_bita0~COUT\ = CARRY(\PC|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \PC|auto_generated|counter_comb_bita0~combout\,
	cout => \PC|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X106_Y52_N10
\PC|auto_generated|counter_reg_bit[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[0]~6_combout\ = (\MDR|dffs\(0) & ((!\delay|auto_generated|counter_comb_bita1~0_combout\) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \MDR|dffs\(0),
	combout => \PC|auto_generated|counter_reg_bit[0]~6_combout\);

-- Location: LCCOMB_X105_Y52_N22
\PC|auto_generated|counter_reg_bit[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[7]~1_combout\ = (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32) & (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(13) & ((!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(12)) # (!\REG_Z|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	datab => \REG_Z|dffs\(0),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(12),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(13),
	combout => \PC|auto_generated|counter_reg_bit[7]~1_combout\);

-- Location: LCCOMB_X106_Y52_N12
\PC|auto_generated|counter_reg_bit[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[7]~2_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & !\PC|auto_generated|counter_reg_bit[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \PC|auto_generated|counter_reg_bit[7]~1_combout\,
	combout => \PC|auto_generated|counter_reg_bit[7]~2_combout\);

-- Location: LCCOMB_X106_Y52_N2
\PC|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|_~0_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(31)) # (!\PC|auto_generated|counter_reg_bit[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(31),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \PC|auto_generated|counter_reg_bit[7]~1_combout\,
	combout => \PC|auto_generated|_~0_combout\);

-- Location: FF_X106_Y52_N15
\PC|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \PC|auto_generated|counter_comb_bita0~combout\,
	asdata => \PC|auto_generated|counter_reg_bit[0]~6_combout\,
	sload => \PC|auto_generated|counter_reg_bit[7]~2_combout\,
	ena => \PC|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X105_Y51_N8
\MAR_MUX|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[0]~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(0))) # 
-- (!\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\PC|auto_generated|counter_reg_bit\(0)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & (((\PC|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \PC|auto_generated|counter_reg_bit\(0),
	combout => \MAR_MUX|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X105_Y51_N10
\MAR_SEL[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- MAR_SEL(0) = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(27),
	combout => MAR_SEL(0));

-- Location: LCCOMB_X105_Y51_N24
\MAR_MUX|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[0]~1_combout\ = (MAR_SEL(0) & (\MDR|dffs\(0) & (!MAR_SEL(1)))) # (!MAR_SEL(0) & (((\MAR_MUX|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(0),
	datab => MAR_SEL(1),
	datac => \MAR_MUX|auto_generated|result_node[0]~0_combout\,
	datad => MAR_SEL(0),
	combout => \MAR_MUX|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X105_Y51_N22
MAR_LOAD : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_LOAD~combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(26),
	combout => \MAR_LOAD~combout\);

-- Location: FF_X105_Y51_N25
\MAR|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MAR_MUX|auto_generated|result_node[0]~1_combout\,
	ena => \MAR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|dffs\(0));

-- Location: LCCOMB_X110_Y52_N6
\R1_MUX|auto_generated|result_node[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[1]~10_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & ((\REG0|dffs\(1)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & (\MDR|dffs\(1))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (\MDR|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(1),
	datab => \REG0|dffs\(1),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	combout => \R1_MUX|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X113_Y52_N8
\ALU_B[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_B[1]~0_combout\ = (\IR|dffs\(0) & ((\REG0|dffs\(1)))) # (!\IR|dffs\(0) & (\REG1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(0),
	datac => \REG1|dffs\(1),
	datad => \REG0|dffs\(1),
	combout => \ALU_B[1]~0_combout\);

-- Location: LCCOMB_X113_Y52_N22
\ALU|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~5_combout\ = \ALU_B[1]~0_combout\ $ (((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(17) & \delay|auto_generated|counter_comb_bita1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_B[1]~0_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(17),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \ALU|auto_generated|_~5_combout\);

-- Location: LCCOMB_X109_Y52_N22
\R0_MUX|auto_generated|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[0]~8_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & (\REG1|dffs\(0))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & ((\MDR|dffs\(0)))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (((\MDR|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \MDR|dffs\(0),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	combout => \R0_MUX|auto_generated|result_node[0]~8_combout\);

-- Location: LCCOMB_X112_Y52_N14
\ALU|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[0]~1_cout\ = CARRY((!\delay|auto_generated|counter_comb_bita1~0_combout\) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(17),
	datab => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => VCC,
	cout => \ALU|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X112_Y52_N16
\ALU|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[1]~2_combout\ = (\ALU|auto_generated|_~6_combout\ & ((\MDR|dffs[0]~4_combout\ & (!\ALU|auto_generated|result_int[0]~1_cout\)) # (!\MDR|dffs[0]~4_combout\ & ((\ALU|auto_generated|result_int[0]~1_cout\) # (GND))))) # 
-- (!\ALU|auto_generated|_~6_combout\ & ((\MDR|dffs[0]~4_combout\ & (\ALU|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\MDR|dffs[0]~4_combout\ & (!\ALU|auto_generated|result_int[0]~1_cout\))))
-- \ALU|auto_generated|result_int[1]~3\ = CARRY((\ALU|auto_generated|_~6_combout\ & ((!\ALU|auto_generated|result_int[0]~1_cout\) # (!\MDR|dffs[0]~4_combout\))) # (!\ALU|auto_generated|_~6_combout\ & (!\MDR|dffs[0]~4_combout\ & 
-- !\ALU|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|auto_generated|_~6_combout\,
	datab => \MDR|dffs[0]~4_combout\,
	datad => VCC,
	cin => \ALU|auto_generated|result_int[0]~1_cout\,
	combout => \ALU|auto_generated|result_int[1]~2_combout\,
	cout => \ALU|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X111_Y52_N24
\R0_MUX|auto_generated|result_node[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[0]~9_combout\ = (R0_SEL(0) & (((!R0_SEL(1) & \ALU|auto_generated|result_int[1]~2_combout\)))) # (!R0_SEL(0) & (\R0_MUX|auto_generated|result_node[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0_MUX|auto_generated|result_node[0]~8_combout\,
	datab => R0_SEL(1),
	datac => R0_SEL(0),
	datad => \ALU|auto_generated|result_int[1]~2_combout\,
	combout => \R0_MUX|auto_generated|result_node[0]~9_combout\);

-- Location: LCCOMB_X111_Y52_N20
\R0_ENABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_ENABLE~0_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(21) & !\IR|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(21),
	datad => \IR|dffs\(0),
	combout => \R0_ENABLE~0_combout\);

-- Location: FF_X111_Y52_N25
\REG0|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R0_MUX|auto_generated|result_node[0]~9_combout\,
	ena => \R0_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|dffs\(0));

-- Location: LCCOMB_X113_Y52_N0
\ALU_B[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_B[0]~1_combout\ = (\IR|dffs\(0) & ((\REG0|dffs\(0)))) # (!\IR|dffs\(0) & (\REG1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(0),
	datac => \REG1|dffs\(0),
	datad => \REG0|dffs\(0),
	combout => \ALU_B[0]~1_combout\);

-- Location: LCCOMB_X113_Y52_N6
\ALU|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~6_combout\ = \ALU_B[0]~1_combout\ $ (((\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_B[0]~1_combout\,
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(17),
	combout => \ALU|auto_generated|_~6_combout\);

-- Location: LCCOMB_X112_Y52_N18
\ALU|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[2]~4_combout\ = ((\MDR|dffs[1]~5_combout\ $ (\ALU|auto_generated|_~5_combout\ $ (\ALU|auto_generated|result_int[1]~3\)))) # (GND)
-- \ALU|auto_generated|result_int[2]~5\ = CARRY((\MDR|dffs[1]~5_combout\ & ((!\ALU|auto_generated|result_int[1]~3\) # (!\ALU|auto_generated|_~5_combout\))) # (!\MDR|dffs[1]~5_combout\ & (!\ALU|auto_generated|_~5_combout\ & 
-- !\ALU|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs[1]~5_combout\,
	datab => \ALU|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \ALU|auto_generated|result_int[1]~3\,
	combout => \ALU|auto_generated|result_int[2]~4_combout\,
	cout => \ALU|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X111_Y52_N16
\R1_MUX|auto_generated|result_node[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[1]~11_combout\ = (R1_SEL(0) & (((!R1_SEL(1) & \ALU|auto_generated|result_int[2]~4_combout\)))) # (!R1_SEL(0) & (\R1_MUX|auto_generated|result_node[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1_SEL(0),
	datab => \R1_MUX|auto_generated|result_node[1]~10_combout\,
	datac => R1_SEL(1),
	datad => \ALU|auto_generated|result_int[2]~4_combout\,
	combout => \R1_MUX|auto_generated|result_node[1]~11_combout\);

-- Location: FF_X111_Y52_N17
\REG1|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R1_MUX|auto_generated|result_node[1]~11_combout\,
	ena => \R1_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|dffs\(1));

-- Location: LCCOMB_X111_Y52_N8
\MDR|dffs[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[1]~5_combout\ = (\IR|dffs\(0) & (\REG1|dffs\(1))) # (!\IR|dffs\(0) & ((\REG0|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG1|dffs\(1),
	datac => \REG0|dffs\(1),
	datad => \IR|dffs\(0),
	combout => \MDR|dffs[1]~5_combout\);

-- Location: LCCOMB_X109_Y52_N14
\MDR|dffs[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[1]~feeder_combout\ = \MDR|dffs[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDR|dffs[1]~5_combout\,
	combout => \MDR|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X113_Y52_N4
\ALU|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~3_combout\ = (\IR|dffs\(0) & ((!\REG0|dffs\(2)))) # (!\IR|dffs\(0) & (!\REG1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(2),
	datac => \IR|dffs\(0),
	datad => \REG0|dffs\(2),
	combout => \ALU|auto_generated|_~3_combout\);

-- Location: LCCOMB_X113_Y52_N10
\ALU|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~4_combout\ = \ALU|auto_generated|_~3_combout\ $ (((!\delay|auto_generated|counter_comb_bita1~0_combout\) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|auto_generated|_~3_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(17),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \ALU|auto_generated|_~4_combout\);

-- Location: LCCOMB_X112_Y52_N20
\ALU|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[3]~6_combout\ = (\MDR|dffs[2]~6_combout\ & ((\ALU|auto_generated|_~4_combout\ & (!\ALU|auto_generated|result_int[2]~5\)) # (!\ALU|auto_generated|_~4_combout\ & (\ALU|auto_generated|result_int[2]~5\ & VCC)))) # 
-- (!\MDR|dffs[2]~6_combout\ & ((\ALU|auto_generated|_~4_combout\ & ((\ALU|auto_generated|result_int[2]~5\) # (GND))) # (!\ALU|auto_generated|_~4_combout\ & (!\ALU|auto_generated|result_int[2]~5\))))
-- \ALU|auto_generated|result_int[3]~7\ = CARRY((\MDR|dffs[2]~6_combout\ & (\ALU|auto_generated|_~4_combout\ & !\ALU|auto_generated|result_int[2]~5\)) # (!\MDR|dffs[2]~6_combout\ & ((\ALU|auto_generated|_~4_combout\) # 
-- (!\ALU|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs[2]~6_combout\,
	datab => \ALU|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \ALU|auto_generated|result_int[2]~5\,
	combout => \ALU|auto_generated|result_int[3]~6_combout\,
	cout => \ALU|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X110_Y52_N24
\R0_MUX|auto_generated|result_node[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[2]~12_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\REG1|dffs\(2)))) # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & 
-- (\MDR|dffs\(2))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & (\MDR|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(2),
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \REG1|dffs\(2),
	combout => \R0_MUX|auto_generated|result_node[2]~12_combout\);

-- Location: LCCOMB_X111_Y52_N0
\R0_MUX|auto_generated|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[2]~13_combout\ = (R0_SEL(0) & (!R0_SEL(1) & (\ALU|auto_generated|result_int[3]~6_combout\))) # (!R0_SEL(0) & (((\R0_MUX|auto_generated|result_node[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0_SEL(0),
	datab => R0_SEL(1),
	datac => \ALU|auto_generated|result_int[3]~6_combout\,
	datad => \R0_MUX|auto_generated|result_node[2]~12_combout\,
	combout => \R0_MUX|auto_generated|result_node[2]~13_combout\);

-- Location: FF_X111_Y52_N1
\REG0|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R0_MUX|auto_generated|result_node[2]~13_combout\,
	ena => \R0_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|dffs\(2));

-- Location: LCCOMB_X110_Y52_N28
\R1_MUX|auto_generated|result_node[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[2]~12_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & ((\REG0|dffs\(2)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & (\MDR|dffs\(2))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (\MDR|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(2),
	datab => \REG0|dffs\(2),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	combout => \R1_MUX|auto_generated|result_node[2]~12_combout\);

-- Location: LCCOMB_X113_Y52_N12
\R1_MUX|auto_generated|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[2]~13_combout\ = (R1_SEL(0) & (!R1_SEL(1) & ((\ALU|auto_generated|result_int[3]~6_combout\)))) # (!R1_SEL(0) & (((\R1_MUX|auto_generated|result_node[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1_SEL(1),
	datab => R1_SEL(0),
	datac => \R1_MUX|auto_generated|result_node[2]~12_combout\,
	datad => \ALU|auto_generated|result_int[3]~6_combout\,
	combout => \R1_MUX|auto_generated|result_node[2]~13_combout\);

-- Location: FF_X113_Y52_N13
\REG1|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R1_MUX|auto_generated|result_node[2]~13_combout\,
	ena => \R1_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|dffs\(2));

-- Location: LCCOMB_X113_Y52_N20
\MDR|dffs[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[2]~6_combout\ = (\IR|dffs\(0) & (\REG1|dffs\(2))) # (!\IR|dffs\(0) & ((\REG0|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(2),
	datac => \IR|dffs\(0),
	datad => \REG0|dffs\(2),
	combout => \MDR|dffs[2]~6_combout\);

-- Location: LCCOMB_X109_Y52_N8
\MDR|dffs[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[2]~feeder_combout\ = \MDR|dffs[2]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDR|dffs[2]~6_combout\,
	combout => \MDR|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X110_Y52_N26
\R1_MUX|auto_generated|result_node[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[3]~14_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & ((\REG0|dffs\(3)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & (\MDR|dffs\(3))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (\MDR|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(3),
	datab => \REG0|dffs\(3),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	combout => \R1_MUX|auto_generated|result_node[3]~14_combout\);

-- Location: LCCOMB_X113_Y52_N16
\ALU|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~1_combout\ = (\IR|dffs\(0) & (!\REG0|dffs\(3))) # (!\IR|dffs\(0) & ((!\REG1|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(0),
	datac => \REG0|dffs\(3),
	datad => \REG1|dffs\(3),
	combout => \ALU|auto_generated|_~1_combout\);

-- Location: LCCOMB_X113_Y52_N30
\ALU|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~2_combout\ = \ALU|auto_generated|_~1_combout\ $ (((!\delay|auto_generated|counter_comb_bita1~0_combout\) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|auto_generated|_~1_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(17),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \ALU|auto_generated|_~2_combout\);

-- Location: LCCOMB_X112_Y52_N22
\ALU|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[4]~8_combout\ = ((\ALU|auto_generated|_~2_combout\ $ (\MDR|dffs[3]~7_combout\ $ (\ALU|auto_generated|result_int[3]~7\)))) # (GND)
-- \ALU|auto_generated|result_int[4]~9\ = CARRY((\ALU|auto_generated|_~2_combout\ & (\MDR|dffs[3]~7_combout\ & !\ALU|auto_generated|result_int[3]~7\)) # (!\ALU|auto_generated|_~2_combout\ & ((\MDR|dffs[3]~7_combout\) # 
-- (!\ALU|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|auto_generated|_~2_combout\,
	datab => \MDR|dffs[3]~7_combout\,
	datad => VCC,
	cin => \ALU|auto_generated|result_int[3]~7\,
	combout => \ALU|auto_generated|result_int[4]~8_combout\,
	cout => \ALU|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X111_Y52_N22
\R1_MUX|auto_generated|result_node[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[3]~15_combout\ = (R1_SEL(0) & (((!R1_SEL(1) & \ALU|auto_generated|result_int[4]~8_combout\)))) # (!R1_SEL(0) & (\R1_MUX|auto_generated|result_node[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1_MUX|auto_generated|result_node[3]~14_combout\,
	datab => R1_SEL(1),
	datac => R1_SEL(0),
	datad => \ALU|auto_generated|result_int[4]~8_combout\,
	combout => \R1_MUX|auto_generated|result_node[3]~15_combout\);

-- Location: FF_X111_Y52_N23
\REG1|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R1_MUX|auto_generated|result_node[3]~15_combout\,
	ena => \R1_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|dffs\(3));

-- Location: LCCOMB_X110_Y52_N2
\R0_MUX|auto_generated|result_node[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[3]~14_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & (\REG1|dffs\(3))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & ((\MDR|dffs\(3)))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (((\MDR|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	datac => \REG1|dffs\(3),
	datad => \MDR|dffs\(3),
	combout => \R0_MUX|auto_generated|result_node[3]~14_combout\);

-- Location: LCCOMB_X111_Y52_N10
\R0_MUX|auto_generated|result_node[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[3]~15_combout\ = (R0_SEL(0) & (((!R0_SEL(1) & \ALU|auto_generated|result_int[4]~8_combout\)))) # (!R0_SEL(0) & (\R0_MUX|auto_generated|result_node[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0_MUX|auto_generated|result_node[3]~14_combout\,
	datab => R0_SEL(1),
	datac => R0_SEL(0),
	datad => \ALU|auto_generated|result_int[4]~8_combout\,
	combout => \R0_MUX|auto_generated|result_node[3]~15_combout\);

-- Location: FF_X111_Y52_N11
\REG0|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R0_MUX|auto_generated|result_node[3]~15_combout\,
	ena => \R0_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|dffs\(3));

-- Location: LCCOMB_X111_Y52_N6
\MDR|dffs[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[3]~7_combout\ = (\IR|dffs\(0) & ((\REG1|dffs\(3)))) # (!\IR|dffs\(0) & (\REG0|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(3),
	datac => \REG1|dffs\(3),
	datad => \IR|dffs\(0),
	combout => \MDR|dffs[3]~7_combout\);

-- Location: LCCOMB_X109_Y52_N10
\MDR|dffs[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[3]~feeder_combout\ = \MDR|dffs[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MDR|dffs[3]~7_combout\,
	combout => \MDR|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X105_Y52_N6
\STACK_POINTER|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|counter_comb_bita1~combout\ = (\STACK_POINTER|auto_generated|counter_comb_bita0~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(1) $ (((\SP_INC~combout\) # (VCC))))) # 
-- (!\STACK_POINTER|auto_generated|counter_comb_bita0~COUT\ & ((\STACK_POINTER|auto_generated|counter_reg_bit\(1)) # ((GND))))
-- \STACK_POINTER|auto_generated|counter_comb_bita1~COUT\ = CARRY((\STACK_POINTER|auto_generated|counter_reg_bit\(1) $ (\SP_INC~combout\)) # (!\STACK_POINTER|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datab => \SP_INC~combout\,
	datad => VCC,
	cin => \STACK_POINTER|auto_generated|counter_comb_bita0~COUT\,
	combout => \STACK_POINTER|auto_generated|counter_comb_bita1~combout\,
	cout => \STACK_POINTER|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X105_Y52_N7
\STACK_POINTER|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \STACK_POINTER|auto_generated|counter_comb_bita1~combout\,
	asdata => \MDR|dffs\(1),
	sload => \SP_LOAD~combout\,
	ena => \STACK_POINTER|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X105_Y52_N8
\STACK_POINTER|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|counter_comb_bita2~combout\ = (\STACK_POINTER|auto_generated|counter_comb_bita1~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(2) & ((VCC)))) # (!\STACK_POINTER|auto_generated|counter_comb_bita1~COUT\ & 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(2) $ (((VCC) # (!\SP_INC~combout\)))))
-- \STACK_POINTER|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\STACK_POINTER|auto_generated|counter_comb_bita1~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(2) $ (!\SP_INC~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	datab => \SP_INC~combout\,
	datad => VCC,
	cin => \STACK_POINTER|auto_generated|counter_comb_bita1~COUT\,
	combout => \STACK_POINTER|auto_generated|counter_comb_bita2~combout\,
	cout => \STACK_POINTER|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X105_Y52_N9
\STACK_POINTER|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \STACK_POINTER|auto_generated|counter_comb_bita2~combout\,
	asdata => \MDR|dffs\(2),
	sload => \SP_LOAD~combout\,
	ena => \STACK_POINTER|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X105_Y52_N10
\STACK_POINTER|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|counter_comb_bita3~combout\ = (\STACK_POINTER|auto_generated|counter_comb_bita2~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(3) $ (((\SP_INC~combout\) # (VCC))))) # 
-- (!\STACK_POINTER|auto_generated|counter_comb_bita2~COUT\ & ((\STACK_POINTER|auto_generated|counter_reg_bit\(3)) # ((GND))))
-- \STACK_POINTER|auto_generated|counter_comb_bita3~COUT\ = CARRY((\STACK_POINTER|auto_generated|counter_reg_bit\(3) $ (\SP_INC~combout\)) # (!\STACK_POINTER|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datab => \SP_INC~combout\,
	datad => VCC,
	cin => \STACK_POINTER|auto_generated|counter_comb_bita2~COUT\,
	combout => \STACK_POINTER|auto_generated|counter_comb_bita3~combout\,
	cout => \STACK_POINTER|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X105_Y52_N11
\STACK_POINTER|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \STACK_POINTER|auto_generated|counter_comb_bita3~combout\,
	asdata => \MDR|dffs\(3),
	sload => \SP_LOAD~combout\,
	ena => \STACK_POINTER|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X105_Y52_N12
\STACK_POINTER|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|counter_comb_bita4~combout\ = (\STACK_POINTER|auto_generated|counter_comb_bita3~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(4) & ((VCC)))) # (!\STACK_POINTER|auto_generated|counter_comb_bita3~COUT\ & 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(4) $ (((VCC) # (!\SP_INC~combout\)))))
-- \STACK_POINTER|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\STACK_POINTER|auto_generated|counter_comb_bita3~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(4) $ (!\SP_INC~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datab => \SP_INC~combout\,
	datad => VCC,
	cin => \STACK_POINTER|auto_generated|counter_comb_bita3~COUT\,
	combout => \STACK_POINTER|auto_generated|counter_comb_bita4~combout\,
	cout => \STACK_POINTER|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X105_Y52_N13
\STACK_POINTER|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \STACK_POINTER|auto_generated|counter_comb_bita4~combout\,
	asdata => \MDR|dffs\(4),
	sload => \SP_LOAD~combout\,
	ena => \STACK_POINTER|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X106_Y52_N16
\PC|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_comb_bita1~combout\ = (\PC|auto_generated|counter_reg_bit\(1) & (!\PC|auto_generated|counter_comb_bita0~COUT\)) # (!\PC|auto_generated|counter_reg_bit\(1) & ((\PC|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \PC|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\PC|auto_generated|counter_comb_bita0~COUT\) # (!\PC|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \PC|auto_generated|counter_comb_bita0~COUT\,
	combout => \PC|auto_generated|counter_comb_bita1~combout\,
	cout => \PC|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X106_Y52_N4
\PC|auto_generated|counter_reg_bit[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[1]~7_combout\ = (\MDR|dffs\(1) & ((!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32)) # (!\delay|auto_generated|counter_comb_bita1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MDR|dffs\(1),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	combout => \PC|auto_generated|counter_reg_bit[1]~7_combout\);

-- Location: FF_X106_Y52_N17
\PC|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \PC|auto_generated|counter_comb_bita1~combout\,
	asdata => \PC|auto_generated|counter_reg_bit[1]~7_combout\,
	sload => \PC|auto_generated|counter_reg_bit[7]~2_combout\,
	ena => \PC|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X106_Y52_N18
\PC|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_comb_bita2~combout\ = (\PC|auto_generated|counter_reg_bit\(2) & (\PC|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\PC|auto_generated|counter_reg_bit\(2) & (!\PC|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \PC|auto_generated|counter_comb_bita2~COUT\ = CARRY((\PC|auto_generated|counter_reg_bit\(2) & !\PC|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \PC|auto_generated|counter_comb_bita1~COUT\,
	combout => \PC|auto_generated|counter_comb_bita2~combout\,
	cout => \PC|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X105_Y52_N0
\PC|auto_generated|counter_reg_bit[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[2]~8_combout\ = (\MDR|dffs\(2) & ((!\delay|auto_generated|counter_comb_bita1~0_combout\) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(2),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \PC|auto_generated|counter_reg_bit[2]~8_combout\);

-- Location: FF_X106_Y52_N19
\PC|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \PC|auto_generated|counter_comb_bita2~combout\,
	asdata => \PC|auto_generated|counter_reg_bit[2]~8_combout\,
	sload => \PC|auto_generated|counter_reg_bit[7]~2_combout\,
	ena => \PC|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X106_Y52_N20
\PC|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_comb_bita3~combout\ = (\PC|auto_generated|counter_reg_bit\(3) & (!\PC|auto_generated|counter_comb_bita2~COUT\)) # (!\PC|auto_generated|counter_reg_bit\(3) & ((\PC|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \PC|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\PC|auto_generated|counter_comb_bita2~COUT\) # (!\PC|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \PC|auto_generated|counter_comb_bita2~COUT\,
	combout => \PC|auto_generated|counter_comb_bita3~combout\,
	cout => \PC|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X106_Y52_N30
\PC|auto_generated|counter_reg_bit[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[3]~9_combout\ = (\MDR|dffs\(3) & ((!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32)) # (!\delay|auto_generated|counter_comb_bita1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(3),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	combout => \PC|auto_generated|counter_reg_bit[3]~9_combout\);

-- Location: FF_X106_Y52_N21
\PC|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \PC|auto_generated|counter_comb_bita3~combout\,
	asdata => \PC|auto_generated|counter_reg_bit[3]~9_combout\,
	sload => \PC|auto_generated|counter_reg_bit[7]~2_combout\,
	ena => \PC|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X106_Y52_N22
\PC|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_comb_bita4~combout\ = (\PC|auto_generated|counter_reg_bit\(4) & (\PC|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\PC|auto_generated|counter_reg_bit\(4) & (!\PC|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \PC|auto_generated|counter_comb_bita4~COUT\ = CARRY((\PC|auto_generated|counter_reg_bit\(4) & !\PC|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \PC|auto_generated|counter_comb_bita3~COUT\,
	combout => \PC|auto_generated|counter_comb_bita4~combout\,
	cout => \PC|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X105_Y52_N24
\PC|auto_generated|counter_reg_bit[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[4]~0_combout\ = (\MDR|dffs\(4) & ((!\delay|auto_generated|counter_comb_bita1~0_combout\) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MDR|dffs\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \PC|auto_generated|counter_reg_bit[4]~0_combout\);

-- Location: FF_X106_Y52_N23
\PC|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \PC|auto_generated|counter_comb_bita4~combout\,
	asdata => \PC|auto_generated|counter_reg_bit[4]~0_combout\,
	sload => \PC|auto_generated|counter_reg_bit[7]~2_combout\,
	ena => \PC|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X105_Y52_N28
\MAR_MUX|auto_generated|result_node[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[4]~8_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(4))) # 
-- (!\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\PC|auto_generated|counter_reg_bit\(4)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & (((\PC|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datab => \PC|auto_generated|counter_reg_bit\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \MAR_MUX|auto_generated|result_node[4]~8_combout\);

-- Location: LCCOMB_X105_Y51_N28
\MAR_MUX|auto_generated|result_node[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[4]~9_combout\ = (MAR_SEL(0) & (!MAR_SEL(1) & (\MDR|dffs\(4)))) # (!MAR_SEL(0) & (((\MAR_MUX|auto_generated|result_node[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR_SEL(0),
	datab => MAR_SEL(1),
	datac => \MDR|dffs\(4),
	datad => \MAR_MUX|auto_generated|result_node[4]~8_combout\,
	combout => \MAR_MUX|auto_generated|result_node[4]~9_combout\);

-- Location: FF_X105_Y51_N29
\MAR|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MAR_MUX|auto_generated|result_node[4]~9_combout\,
	ena => \MAR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|dffs\(4));

-- Location: LCCOMB_X105_Y52_N14
\STACK_POINTER|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|counter_comb_bita5~combout\ = (\STACK_POINTER|auto_generated|counter_comb_bita4~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(5) $ (((\SP_INC~combout\) # (VCC))))) # 
-- (!\STACK_POINTER|auto_generated|counter_comb_bita4~COUT\ & ((\STACK_POINTER|auto_generated|counter_reg_bit\(5)) # ((GND))))
-- \STACK_POINTER|auto_generated|counter_comb_bita5~COUT\ = CARRY((\STACK_POINTER|auto_generated|counter_reg_bit\(5) $ (\SP_INC~combout\)) # (!\STACK_POINTER|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datab => \SP_INC~combout\,
	datad => VCC,
	cin => \STACK_POINTER|auto_generated|counter_comb_bita4~COUT\,
	combout => \STACK_POINTER|auto_generated|counter_comb_bita5~combout\,
	cout => \STACK_POINTER|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X105_Y52_N15
\STACK_POINTER|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \STACK_POINTER|auto_generated|counter_comb_bita5~combout\,
	asdata => \MDR|dffs\(5),
	sload => \SP_LOAD~combout\,
	ena => \STACK_POINTER|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X106_Y52_N24
\PC|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_comb_bita5~combout\ = (\PC|auto_generated|counter_reg_bit\(5) & (!\PC|auto_generated|counter_comb_bita4~COUT\)) # (!\PC|auto_generated|counter_reg_bit\(5) & ((\PC|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \PC|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\PC|auto_generated|counter_comb_bita4~COUT\) # (!\PC|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \PC|auto_generated|counter_comb_bita4~COUT\,
	combout => \PC|auto_generated|counter_comb_bita5~combout\,
	cout => \PC|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X106_Y52_N8
\PC|auto_generated|counter_reg_bit[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[5]~3_combout\ = (\MDR|dffs\(5) & ((!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32)) # (!\delay|auto_generated|counter_comb_bita1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(5),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	combout => \PC|auto_generated|counter_reg_bit[5]~3_combout\);

-- Location: FF_X106_Y52_N25
\PC|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \PC|auto_generated|counter_comb_bita5~combout\,
	asdata => \PC|auto_generated|counter_reg_bit[5]~3_combout\,
	sload => \PC|auto_generated|counter_reg_bit[7]~2_combout\,
	ena => \PC|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X105_Y52_N30
\MAR_MUX|auto_generated|result_node[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[5]~10_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & (\STACK_POINTER|auto_generated|counter_reg_bit\(5))) # 
-- (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & ((\PC|auto_generated|counter_reg_bit\(5)))))) # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (((\PC|auto_generated|counter_reg_bit\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datad => \PC|auto_generated|counter_reg_bit\(5),
	combout => \MAR_MUX|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X105_Y51_N26
\MAR_MUX|auto_generated|result_node[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[5]~11_combout\ = (MAR_SEL(0) & (\MDR|dffs\(5) & (!MAR_SEL(1)))) # (!MAR_SEL(0) & (((\MAR_MUX|auto_generated|result_node[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(5),
	datab => MAR_SEL(1),
	datac => \MAR_MUX|auto_generated|result_node[5]~10_combout\,
	datad => MAR_SEL(0),
	combout => \MAR_MUX|auto_generated|result_node[5]~11_combout\);

-- Location: FF_X105_Y51_N27
\MAR|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MAR_MUX|auto_generated|result_node[5]~11_combout\,
	ena => \MAR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|dffs\(5));

-- Location: LCCOMB_X105_Y52_N16
\STACK_POINTER|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|counter_comb_bita6~combout\ = (\STACK_POINTER|auto_generated|counter_comb_bita5~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(6) & ((VCC)))) # (!\STACK_POINTER|auto_generated|counter_comb_bita5~COUT\ & 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(6) $ (((VCC) # (!\SP_INC~combout\)))))
-- \STACK_POINTER|auto_generated|counter_comb_bita6~COUT\ = CARRY((!\STACK_POINTER|auto_generated|counter_comb_bita5~COUT\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(6) $ (!\SP_INC~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datab => \SP_INC~combout\,
	datad => VCC,
	cin => \STACK_POINTER|auto_generated|counter_comb_bita5~COUT\,
	combout => \STACK_POINTER|auto_generated|counter_comb_bita6~combout\,
	cout => \STACK_POINTER|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X105_Y52_N17
\STACK_POINTER|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \STACK_POINTER|auto_generated|counter_comb_bita6~combout\,
	asdata => \MDR|dffs\(6),
	sload => \SP_LOAD~combout\,
	ena => \STACK_POINTER|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X106_Y52_N26
\PC|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_comb_bita6~combout\ = (\PC|auto_generated|counter_reg_bit\(6) & (\PC|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\PC|auto_generated|counter_reg_bit\(6) & (!\PC|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \PC|auto_generated|counter_comb_bita6~COUT\ = CARRY((\PC|auto_generated|counter_reg_bit\(6) & !\PC|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \PC|auto_generated|counter_comb_bita5~COUT\,
	combout => \PC|auto_generated|counter_comb_bita6~combout\,
	cout => \PC|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X106_Y52_N6
\PC|auto_generated|counter_reg_bit[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[6]~4_combout\ = (\MDR|dffs\(6) & ((!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32)) # (!\delay|auto_generated|counter_comb_bita1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(6),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	combout => \PC|auto_generated|counter_reg_bit[6]~4_combout\);

-- Location: FF_X106_Y52_N27
\PC|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \PC|auto_generated|counter_comb_bita6~combout\,
	asdata => \PC|auto_generated|counter_reg_bit[6]~4_combout\,
	sload => \PC|auto_generated|counter_reg_bit[7]~2_combout\,
	ena => \PC|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X105_Y51_N2
\MAR_MUX|auto_generated|result_node[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[6]~12_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(6))) # 
-- (!\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\PC|auto_generated|counter_reg_bit\(6)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & (((\PC|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \PC|auto_generated|counter_reg_bit\(6),
	combout => \MAR_MUX|auto_generated|result_node[6]~12_combout\);

-- Location: LCCOMB_X105_Y51_N0
\MAR_MUX|auto_generated|result_node[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[6]~13_combout\ = (MAR_SEL(0) & (\MDR|dffs\(6) & (!MAR_SEL(1)))) # (!MAR_SEL(0) & (((\MAR_MUX|auto_generated|result_node[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR_SEL(0),
	datab => \MDR|dffs\(6),
	datac => MAR_SEL(1),
	datad => \MAR_MUX|auto_generated|result_node[6]~12_combout\,
	combout => \MAR_MUX|auto_generated|result_node[6]~13_combout\);

-- Location: FF_X105_Y51_N1
\MAR|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MAR_MUX|auto_generated|result_node[6]~13_combout\,
	ena => \MAR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|dffs\(6));

-- Location: LCCOMB_X106_Y52_N28
\PC|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_comb_bita7~combout\ = \PC|auto_generated|counter_comb_bita6~COUT\ $ (\PC|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|auto_generated|counter_reg_bit\(7),
	cin => \PC|auto_generated|counter_comb_bita6~COUT\,
	combout => \PC|auto_generated|counter_comb_bita7~combout\);

-- Location: LCCOMB_X106_Y52_N0
\PC|auto_generated|counter_reg_bit[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|auto_generated|counter_reg_bit[7]~5_combout\ = (\MDR|dffs\(7) & ((!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(32)) # (!\delay|auto_generated|counter_comb_bita1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(7),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(32),
	combout => \PC|auto_generated|counter_reg_bit[7]~5_combout\);

-- Location: FF_X106_Y52_N29
\PC|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \PC|auto_generated|counter_comb_bita7~combout\,
	asdata => \PC|auto_generated|counter_reg_bit[7]~5_combout\,
	sload => \PC|auto_generated|counter_reg_bit[7]~2_combout\,
	ena => \PC|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X105_Y52_N18
\STACK_POINTER|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|auto_generated|counter_comb_bita7~combout\ = \STACK_POINTER|auto_generated|counter_comb_bita6~COUT\ $ (\STACK_POINTER|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	cin => \STACK_POINTER|auto_generated|counter_comb_bita6~COUT\,
	combout => \STACK_POINTER|auto_generated|counter_comb_bita7~combout\);

-- Location: FF_X105_Y52_N19
\STACK_POINTER|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \STACK_POINTER|auto_generated|counter_comb_bita7~combout\,
	asdata => \MDR|dffs\(7),
	sload => \SP_LOAD~combout\,
	ena => \STACK_POINTER|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X106_Y51_N24
\MAR_MUX|auto_generated|result_node[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[7]~14_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\STACK_POINTER|auto_generated|counter_reg_bit\(7)))) # 
-- (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (\PC|auto_generated|counter_reg_bit\(7))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & (\PC|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(7),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \MAR_MUX|auto_generated|result_node[7]~14_combout\);

-- Location: LCCOMB_X105_Y51_N14
\MAR_MUX|auto_generated|result_node[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[7]~15_combout\ = (MAR_SEL(0) & (\MDR|dffs\(7) & (!MAR_SEL(1)))) # (!MAR_SEL(0) & (((\MAR_MUX|auto_generated|result_node[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR_SEL(0),
	datab => \MDR|dffs\(7),
	datac => MAR_SEL(1),
	datad => \MAR_MUX|auto_generated|result_node[7]~14_combout\,
	combout => \MAR_MUX|auto_generated|result_node[7]~15_combout\);

-- Location: FF_X105_Y51_N15
\MAR|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MAR_MUX|auto_generated|result_node[7]~15_combout\,
	ena => \MAR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|dffs\(7));

-- Location: M9K_X104_Y51_N0
\RAM|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00038400E00034400150004400D0000500010003D400B0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:RAM|altram:sram|altsyncram:ram_block|altsyncram_hd91:auto_generated|ALTSYNCRAM",
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
	portawe => \WRITE_SEL~combout\,
	portare => VCC,
	clk0 => \ALT_INV_button~input_o\,
	clk1 => GND,
	portadatain => \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X109_Y52_N0
MDR_SEL : cycloneive_lcell_comb
-- Equation(s):
-- \MDR_SEL~combout\ = (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(25)) # (!\delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(25),
	combout => \MDR_SEL~combout\);

-- Location: LCCOMB_X109_Y52_N6
MDR_LOAD : cycloneive_lcell_comb
-- Equation(s):
-- \MDR_LOAD~combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(24),
	combout => \MDR_LOAD~combout\);

-- Location: FF_X109_Y52_N11
\MDR|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MDR|dffs[3]~feeder_combout\,
	asdata => \RAM|sram|ram_block|auto_generated|q_a\(3),
	sload => \MDR_SEL~combout\,
	ena => \MDR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|dffs\(3));

-- Location: LCCOMB_X105_Y51_N20
\MAR_MUX|auto_generated|result_node[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[3]~6_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(3))) # 
-- (!\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\PC|auto_generated|counter_reg_bit\(3)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & (((\PC|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \PC|auto_generated|counter_reg_bit\(3),
	combout => \MAR_MUX|auto_generated|result_node[3]~6_combout\);

-- Location: LCCOMB_X105_Y51_N30
\MAR_MUX|auto_generated|result_node[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[3]~7_combout\ = (MAR_SEL(0) & (\MDR|dffs\(3) & ((!MAR_SEL(1))))) # (!MAR_SEL(0) & (((\MAR_MUX|auto_generated|result_node[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(3),
	datab => \MAR_MUX|auto_generated|result_node[3]~6_combout\,
	datac => MAR_SEL(1),
	datad => MAR_SEL(0),
	combout => \MAR_MUX|auto_generated|result_node[3]~7_combout\);

-- Location: FF_X105_Y51_N31
\MAR|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MAR_MUX|auto_generated|result_node[3]~7_combout\,
	ena => \MAR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|dffs\(3));

-- Location: FF_X109_Y52_N9
\MDR|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MDR|dffs[2]~feeder_combout\,
	asdata => \RAM|sram|ram_block|auto_generated|q_a\(2),
	sload => \MDR_SEL~combout\,
	ena => \MDR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|dffs\(2));

-- Location: LCCOMB_X105_Y51_N18
\MAR_MUX|auto_generated|result_node[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[2]~4_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\STACK_POINTER|auto_generated|counter_reg_bit\(2)))) # 
-- (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (\PC|auto_generated|counter_reg_bit\(2))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & (\PC|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	combout => \MAR_MUX|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X105_Y51_N12
\MAR_MUX|auto_generated|result_node[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[2]~5_combout\ = (MAR_SEL(0) & (\MDR|dffs\(2) & (!MAR_SEL(1)))) # (!MAR_SEL(0) & (((\MAR_MUX|auto_generated|result_node[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR_SEL(0),
	datab => \MDR|dffs\(2),
	datac => MAR_SEL(1),
	datad => \MAR_MUX|auto_generated|result_node[2]~4_combout\,
	combout => \MAR_MUX|auto_generated|result_node[2]~5_combout\);

-- Location: FF_X105_Y51_N13
\MAR|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MAR_MUX|auto_generated|result_node[2]~5_combout\,
	ena => \MAR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|dffs\(2));

-- Location: FF_X109_Y52_N15
\MDR|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MDR|dffs[1]~feeder_combout\,
	asdata => \RAM|sram|ram_block|auto_generated|q_a\(1),
	sload => \MDR_SEL~combout\,
	ena => \MDR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|dffs\(1));

-- Location: LCCOMB_X105_Y51_N16
\MAR_MUX|auto_generated|result_node[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[1]~2_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\STACK_POINTER|auto_generated|counter_reg_bit\(1))) # 
-- (!\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\PC|auto_generated|counter_reg_bit\(1)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(28) & (((\PC|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(28),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \PC|auto_generated|counter_reg_bit\(1),
	combout => \MAR_MUX|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X105_Y51_N6
\MAR_MUX|auto_generated|result_node[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAR_MUX|auto_generated|result_node[1]~3_combout\ = (MAR_SEL(0) & (\MDR|dffs\(1) & ((!MAR_SEL(1))))) # (!MAR_SEL(0) & (((\MAR_MUX|auto_generated|result_node[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs\(1),
	datab => \MAR_MUX|auto_generated|result_node[1]~2_combout\,
	datac => MAR_SEL(1),
	datad => MAR_SEL(0),
	combout => \MAR_MUX|auto_generated|result_node[1]~3_combout\);

-- Location: FF_X105_Y51_N7
\MAR|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MAR_MUX|auto_generated|result_node[1]~3_combout\,
	ena => \MAR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|dffs\(1));

-- Location: FF_X109_Y52_N25
\MDR|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MDR|dffs[6]~feeder_combout\,
	asdata => \RAM|sram|ram_block|auto_generated|q_a\(6),
	sload => \MDR_SEL~combout\,
	ena => \MDR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|dffs\(6));

-- Location: LCCOMB_X110_Y52_N4
\R0_MUX|auto_generated|result_node[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[6]~4_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & ((\REG1|dffs\(6)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & (\MDR|dffs\(6))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (\MDR|dffs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datab => \MDR|dffs\(6),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	datad => \REG1|dffs\(6),
	combout => \R0_MUX|auto_generated|result_node[6]~4_combout\);

-- Location: LCCOMB_X112_Y52_N0
\ALU|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~8_combout\ = \ALU_SEL~combout\ $ (((\IR|dffs\(0) & (\REG0|dffs\(6))) # (!\IR|dffs\(0) & ((\REG1|dffs\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(6),
	datab => \IR|dffs\(0),
	datac => \REG1|dffs\(6),
	datad => \ALU_SEL~combout\,
	combout => \ALU|auto_generated|_~8_combout\);

-- Location: LCCOMB_X112_Y52_N12
\ALU|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~0_combout\ = \ALU_SEL~combout\ $ (((\IR|dffs\(0) & ((\REG0|dffs\(4)))) # (!\IR|dffs\(0) & (\REG1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(4),
	datab => \IR|dffs\(0),
	datac => \REG0|dffs\(4),
	datad => \ALU_SEL~combout\,
	combout => \ALU|auto_generated|_~0_combout\);

-- Location: LCCOMB_X112_Y52_N24
\ALU|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[5]~10_combout\ = (\ALU|auto_generated|_~0_combout\ & ((\MDR|dffs[4]~0_combout\ & (!\ALU|auto_generated|result_int[4]~9\)) # (!\MDR|dffs[4]~0_combout\ & ((\ALU|auto_generated|result_int[4]~9\) # (GND))))) # 
-- (!\ALU|auto_generated|_~0_combout\ & ((\MDR|dffs[4]~0_combout\ & (\ALU|auto_generated|result_int[4]~9\ & VCC)) # (!\MDR|dffs[4]~0_combout\ & (!\ALU|auto_generated|result_int[4]~9\))))
-- \ALU|auto_generated|result_int[5]~11\ = CARRY((\ALU|auto_generated|_~0_combout\ & ((!\ALU|auto_generated|result_int[4]~9\) # (!\MDR|dffs[4]~0_combout\))) # (!\ALU|auto_generated|_~0_combout\ & (!\MDR|dffs[4]~0_combout\ & 
-- !\ALU|auto_generated|result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|auto_generated|_~0_combout\,
	datab => \MDR|dffs[4]~0_combout\,
	datad => VCC,
	cin => \ALU|auto_generated|result_int[4]~9\,
	combout => \ALU|auto_generated|result_int[5]~10_combout\,
	cout => \ALU|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X112_Y52_N26
\ALU|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[6]~12_combout\ = ((\ALU|auto_generated|_~7_combout\ $ (\MDR|dffs[5]~1_combout\ $ (\ALU|auto_generated|result_int[5]~11\)))) # (GND)
-- \ALU|auto_generated|result_int[6]~13\ = CARRY((\ALU|auto_generated|_~7_combout\ & (\MDR|dffs[5]~1_combout\ & !\ALU|auto_generated|result_int[5]~11\)) # (!\ALU|auto_generated|_~7_combout\ & ((\MDR|dffs[5]~1_combout\) # 
-- (!\ALU|auto_generated|result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|auto_generated|_~7_combout\,
	datab => \MDR|dffs[5]~1_combout\,
	datad => VCC,
	cin => \ALU|auto_generated|result_int[5]~11\,
	combout => \ALU|auto_generated|result_int[6]~12_combout\,
	cout => \ALU|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X112_Y52_N28
\ALU|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[7]~14_combout\ = (\MDR|dffs[6]~2_combout\ & ((\ALU|auto_generated|_~8_combout\ & (!\ALU|auto_generated|result_int[6]~13\)) # (!\ALU|auto_generated|_~8_combout\ & (\ALU|auto_generated|result_int[6]~13\ & VCC)))) # 
-- (!\MDR|dffs[6]~2_combout\ & ((\ALU|auto_generated|_~8_combout\ & ((\ALU|auto_generated|result_int[6]~13\) # (GND))) # (!\ALU|auto_generated|_~8_combout\ & (!\ALU|auto_generated|result_int[6]~13\))))
-- \ALU|auto_generated|result_int[7]~15\ = CARRY((\MDR|dffs[6]~2_combout\ & (\ALU|auto_generated|_~8_combout\ & !\ALU|auto_generated|result_int[6]~13\)) # (!\MDR|dffs[6]~2_combout\ & ((\ALU|auto_generated|_~8_combout\) # 
-- (!\ALU|auto_generated|result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|dffs[6]~2_combout\,
	datab => \ALU|auto_generated|_~8_combout\,
	datad => VCC,
	cin => \ALU|auto_generated|result_int[6]~13\,
	combout => \ALU|auto_generated|result_int[7]~14_combout\,
	cout => \ALU|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X111_Y52_N12
\R0_MUX|auto_generated|result_node[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[6]~5_combout\ = (R0_SEL(0) & (!R0_SEL(1) & ((\ALU|auto_generated|result_int[7]~14_combout\)))) # (!R0_SEL(0) & (((\R0_MUX|auto_generated|result_node[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0_SEL(0),
	datab => R0_SEL(1),
	datac => \R0_MUX|auto_generated|result_node[6]~4_combout\,
	datad => \ALU|auto_generated|result_int[7]~14_combout\,
	combout => \R0_MUX|auto_generated|result_node[6]~5_combout\);

-- Location: FF_X111_Y52_N13
\REG0|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R0_MUX|auto_generated|result_node[6]~5_combout\,
	ena => \R0_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|dffs\(6));

-- Location: LCCOMB_X110_Y52_N30
\R1_MUX|auto_generated|result_node[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[6]~4_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\REG0|dffs\(6))) # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & 
-- ((\MDR|dffs\(6)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & (((\MDR|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	datab => \REG0|dffs\(6),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \MDR|dffs\(6),
	combout => \R1_MUX|auto_generated|result_node[6]~4_combout\);

-- Location: LCCOMB_X111_Y52_N28
\R1_MUX|auto_generated|result_node[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[6]~5_combout\ = (R1_SEL(0) & (((!R1_SEL(1) & \ALU|auto_generated|result_int[7]~14_combout\)))) # (!R1_SEL(0) & (\R1_MUX|auto_generated|result_node[6]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1_SEL(0),
	datab => \R1_MUX|auto_generated|result_node[6]~4_combout\,
	datac => R1_SEL(1),
	datad => \ALU|auto_generated|result_int[7]~14_combout\,
	combout => \R1_MUX|auto_generated|result_node[6]~5_combout\);

-- Location: FF_X111_Y52_N29
\REG1|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R1_MUX|auto_generated|result_node[6]~5_combout\,
	ena => \R1_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|dffs\(6));

-- Location: LCCOMB_X110_Y52_N20
\MDR|dffs[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[6]~2_combout\ = (\IR|dffs\(0) & (\REG1|dffs\(6))) # (!\IR|dffs\(0) & ((\REG0|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(0),
	datab => \REG1|dffs\(6),
	datac => \REG0|dffs\(6),
	combout => \MDR|dffs[6]~2_combout\);

-- Location: LCCOMB_X112_Y52_N30
\ALU|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|result_int[8]~16_combout\ = \MDR|dffs[7]~3_combout\ $ (\ALU|auto_generated|result_int[7]~15\ $ (\ALU|auto_generated|_~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MDR|dffs[7]~3_combout\,
	datad => \ALU|auto_generated|_~9_combout\,
	cin => \ALU|auto_generated|result_int[7]~15\,
	combout => \ALU|auto_generated|result_int[8]~16_combout\);

-- Location: LCCOMB_X109_Y52_N16
\R0_MUX|auto_generated|result_node[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[7]~6_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\REG1|dffs\(7))) # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & 
-- ((\MDR|dffs\(7)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & (((\MDR|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	datab => \REG1|dffs\(7),
	datac => \MDR|dffs\(7),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \R0_MUX|auto_generated|result_node[7]~6_combout\);

-- Location: LCCOMB_X111_Y52_N18
\R0_MUX|auto_generated|result_node[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[7]~7_combout\ = (R0_SEL(0) & (!R0_SEL(1) & (\ALU|auto_generated|result_int[8]~16_combout\))) # (!R0_SEL(0) & (((\R0_MUX|auto_generated|result_node[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0_SEL(0),
	datab => R0_SEL(1),
	datac => \ALU|auto_generated|result_int[8]~16_combout\,
	datad => \R0_MUX|auto_generated|result_node[7]~6_combout\,
	combout => \R0_MUX|auto_generated|result_node[7]~7_combout\);

-- Location: FF_X111_Y52_N19
\REG0|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R0_MUX|auto_generated|result_node[7]~7_combout\,
	ena => \R0_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|dffs\(7));

-- Location: LCCOMB_X110_Y52_N10
\MDR|dffs[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[7]~3_combout\ = (\IR|dffs\(0) & ((\REG1|dffs\(7)))) # (!\IR|dffs\(0) & (\REG0|dffs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(0),
	datab => \REG0|dffs\(7),
	datac => \REG1|dffs\(7),
	combout => \MDR|dffs[7]~3_combout\);

-- Location: LCCOMB_X109_Y52_N30
\MDR|dffs[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[7]~feeder_combout\ = \MDR|dffs[7]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MDR|dffs[7]~3_combout\,
	combout => \MDR|dffs[7]~feeder_combout\);

-- Location: FF_X109_Y52_N31
\MDR|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MDR|dffs[7]~feeder_combout\,
	asdata => \RAM|sram|ram_block|auto_generated|q_a\(7),
	sload => \MDR_SEL~combout\,
	ena => \MDR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|dffs\(7));

-- Location: LCCOMB_X110_Y53_N10
\IR|dffs[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR|dffs[7]~feeder_combout\ = \MDR|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDR|dffs\(7),
	combout => \IR|dffs[7]~feeder_combout\);

-- Location: FF_X110_Y53_N11
\IR|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \IR|dffs[7]~feeder_combout\,
	ena => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|dffs\(7));

-- Location: LCCOMB_X114_Y53_N10
\uSeq|uPC_mux|auto_generated|result_node[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[7]~7_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & (\IR|dffs\(7))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|dffs\(7),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(7),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[7]~7_combout\);

-- Location: IOIBUF_X115_Y14_N8
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: FF_X114_Y53_N11
\uSeq|uPC|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node[7]~7_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(7));

-- Location: LCCOMB_X110_Y53_N24
\IR|dffs[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR|dffs[6]~feeder_combout\ = \MDR|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDR|dffs\(6),
	combout => \IR|dffs[6]~feeder_combout\);

-- Location: FF_X110_Y53_N25
\IR|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \IR|dffs[6]~feeder_combout\,
	ena => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|dffs\(6));

-- Location: LCCOMB_X105_Y53_N10
\uSeq|uPC_mux|auto_generated|result_node[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[6]~6_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & ((\IR|dffs\(6)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(6),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	datad => \IR|dffs\(6),
	combout => \uSeq|uPC_mux|auto_generated|result_node[6]~6_combout\);

-- Location: LCCOMB_X114_Y53_N12
\uSeq|uPC|dffs[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC|dffs[6]~feeder_combout\ = \uSeq|uPC_mux|auto_generated|result_node[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSeq|uPC_mux|auto_generated|result_node[6]~6_combout\,
	combout => \uSeq|uPC|dffs[6]~feeder_combout\);

-- Location: FF_X114_Y53_N13
\uSeq|uPC|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC|dffs[6]~feeder_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(6));

-- Location: LCCOMB_X113_Y52_N2
\R1_SEL[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- R1_SEL(1) = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => R1_SEL(1));

-- Location: LCCOMB_X113_Y52_N18
\R1_MUX|auto_generated|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[0]~8_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & ((\delay|auto_generated|counter_comb_bita1~0_combout\ & (\REG0|dffs\(0))) # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & 
-- ((\MDR|dffs\(0)))))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & (((\MDR|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	datab => \REG0|dffs\(0),
	datac => \MDR|dffs\(0),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \R1_MUX|auto_generated|result_node[0]~8_combout\);

-- Location: LCCOMB_X113_Y52_N26
\R1_MUX|auto_generated|result_node[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[0]~9_combout\ = (R1_SEL(0) & (!R1_SEL(1) & ((\ALU|auto_generated|result_int[1]~2_combout\)))) # (!R1_SEL(0) & (((\R1_MUX|auto_generated|result_node[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1_SEL(1),
	datab => \R1_MUX|auto_generated|result_node[0]~8_combout\,
	datac => \ALU|auto_generated|result_int[1]~2_combout\,
	datad => R1_SEL(0),
	combout => \R1_MUX|auto_generated|result_node[0]~9_combout\);

-- Location: FF_X113_Y52_N27
\REG1|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R1_MUX|auto_generated|result_node[0]~9_combout\,
	ena => \R1_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|dffs\(0));

-- Location: LCCOMB_X113_Y52_N14
\MDR|dffs[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[0]~4_combout\ = (\IR|dffs\(0) & (\REG1|dffs\(0))) # (!\IR|dffs\(0) & ((\REG0|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(0),
	datac => \REG1|dffs\(0),
	datad => \REG0|dffs\(0),
	combout => \MDR|dffs[0]~4_combout\);

-- Location: LCCOMB_X109_Y52_N28
\MDR|dffs[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[0]~feeder_combout\ = \MDR|dffs[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDR|dffs[0]~4_combout\,
	combout => \MDR|dffs[0]~feeder_combout\);

-- Location: FF_X109_Y52_N29
\MDR|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MDR|dffs[0]~feeder_combout\,
	asdata => \RAM|sram|ram_block|auto_generated|q_a\(0),
	sload => \MDR_SEL~combout\,
	ena => \MDR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|dffs\(0));

-- Location: FF_X113_Y52_N19
\IR|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	asdata => \MDR|dffs\(0),
	sload => VCC,
	ena => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|dffs\(0));

-- Location: LCCOMB_X112_Y52_N10
\ALU|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|auto_generated|_~7_combout\ = \ALU_SEL~combout\ $ (((\IR|dffs\(0) & (\REG0|dffs\(5))) # (!\IR|dffs\(0) & ((\REG1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(5),
	datab => \IR|dffs\(0),
	datac => \REG1|dffs\(5),
	datad => \ALU_SEL~combout\,
	combout => \ALU|auto_generated|_~7_combout\);

-- Location: LCCOMB_X112_Y52_N4
\R0_MUX|auto_generated|result_node[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[5]~3_combout\ = (R0_SEL(0) & (((!R0_SEL(1) & \ALU|auto_generated|result_int[6]~12_combout\)))) # (!R0_SEL(0) & (\R0_MUX|auto_generated|result_node[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0_MUX|auto_generated|result_node[5]~2_combout\,
	datab => R0_SEL(1),
	datac => \ALU|auto_generated|result_int[6]~12_combout\,
	datad => R0_SEL(0),
	combout => \R0_MUX|auto_generated|result_node[5]~3_combout\);

-- Location: FF_X112_Y52_N5
\REG0|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R0_MUX|auto_generated|result_node[5]~3_combout\,
	ena => \R0_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|dffs\(5));

-- Location: LCCOMB_X109_Y52_N18
\R1_MUX|auto_generated|result_node[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[5]~2_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & (\REG0|dffs\(5))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & ((\MDR|dffs\(5)))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (((\MDR|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datab => \REG0|dffs\(5),
	datac => \MDR|dffs\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	combout => \R1_MUX|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X112_Y52_N8
\R1_MUX|auto_generated|result_node[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[5]~3_combout\ = (R1_SEL(0) & (((!R1_SEL(1) & \ALU|auto_generated|result_int[6]~12_combout\)))) # (!R1_SEL(0) & (\R1_MUX|auto_generated|result_node[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1_MUX|auto_generated|result_node[5]~2_combout\,
	datab => R1_SEL(1),
	datac => \ALU|auto_generated|result_int[6]~12_combout\,
	datad => R1_SEL(0),
	combout => \R1_MUX|auto_generated|result_node[5]~3_combout\);

-- Location: FF_X112_Y52_N9
\REG1|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R1_MUX|auto_generated|result_node[5]~3_combout\,
	ena => \R1_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|dffs\(5));

-- Location: LCCOMB_X113_Y52_N28
\MDR|dffs[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[5]~1_combout\ = (\IR|dffs\(0) & (\REG1|dffs\(5))) # (!\IR|dffs\(0) & ((\REG0|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(5),
	datab => \REG0|dffs\(5),
	datac => \IR|dffs\(0),
	combout => \MDR|dffs[5]~1_combout\);

-- Location: LCCOMB_X109_Y52_N26
\MDR|dffs[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[5]~feeder_combout\ = \MDR|dffs[5]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDR|dffs[5]~1_combout\,
	combout => \MDR|dffs[5]~feeder_combout\);

-- Location: FF_X109_Y52_N27
\MDR|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MDR|dffs[5]~feeder_combout\,
	asdata => \RAM|sram|ram_block|auto_generated|q_a\(5),
	sload => \MDR_SEL~combout\,
	ena => \MDR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|dffs\(5));

-- Location: LCCOMB_X110_Y53_N14
\IR|dffs[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR|dffs[5]~feeder_combout\ = \MDR|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDR|dffs\(5),
	combout => \IR|dffs[5]~feeder_combout\);

-- Location: FF_X110_Y53_N15
\IR|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \IR|dffs[5]~feeder_combout\,
	ena => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|dffs\(5));

-- Location: LCCOMB_X114_Y53_N22
\uSeq|uPC_mux|auto_generated|result_node[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[5]~5_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & (\IR|dffs\(5))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(5),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(5),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[5]~5_combout\);

-- Location: FF_X114_Y53_N23
\uSeq|uPC|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC_mux|auto_generated|result_node[5]~5_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(5));

-- Location: LCCOMB_X110_Y52_N18
\R0_SEL[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- R0_SEL(1) = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	combout => R0_SEL(1));

-- Location: LCCOMB_X109_Y52_N12
\R0_MUX|auto_generated|result_node[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[4]~0_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & ((\REG1|dffs\(4)))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & (\MDR|dffs\(4))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (\MDR|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datab => \MDR|dffs\(4),
	datac => \REG1|dffs\(4),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	combout => \R0_MUX|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X111_Y52_N26
\R0_MUX|auto_generated|result_node[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[4]~1_combout\ = (R0_SEL(0) & (!R0_SEL(1) & ((\ALU|auto_generated|result_int[5]~10_combout\)))) # (!R0_SEL(0) & (((\R0_MUX|auto_generated|result_node[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0_SEL(0),
	datab => R0_SEL(1),
	datac => \R0_MUX|auto_generated|result_node[4]~0_combout\,
	datad => \ALU|auto_generated|result_int[5]~10_combout\,
	combout => \R0_MUX|auto_generated|result_node[4]~1_combout\);

-- Location: FF_X111_Y52_N27
\REG0|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R0_MUX|auto_generated|result_node[4]~1_combout\,
	ena => \R0_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|dffs\(4));

-- Location: LCCOMB_X109_Y52_N20
\R1_MUX|auto_generated|result_node[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[4]~0_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & (\REG0|dffs\(4))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(20) & ((\MDR|dffs\(4)))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (((\MDR|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(4),
	datab => \MDR|dffs\(4),
	datac => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(20),
	combout => \R1_MUX|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X112_Y52_N6
\R1_MUX|auto_generated|result_node[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1_MUX|auto_generated|result_node[4]~1_combout\ = (R1_SEL(0) & (((!R1_SEL(1) & \ALU|auto_generated|result_int[5]~10_combout\)))) # (!R1_SEL(0) & (\R1_MUX|auto_generated|result_node[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1_MUX|auto_generated|result_node[4]~0_combout\,
	datab => R1_SEL(0),
	datac => R1_SEL(1),
	datad => \ALU|auto_generated|result_int[5]~10_combout\,
	combout => \R1_MUX|auto_generated|result_node[4]~1_combout\);

-- Location: FF_X112_Y52_N7
\REG1|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R1_MUX|auto_generated|result_node[4]~1_combout\,
	ena => \R1_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|dffs\(4));

-- Location: LCCOMB_X111_Y52_N4
\MDR|dffs[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[4]~0_combout\ = (\IR|dffs\(0) & (\REG1|dffs\(4))) # (!\IR|dffs\(0) & ((\REG0|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(4),
	datac => \REG0|dffs\(4),
	datad => \IR|dffs\(0),
	combout => \MDR|dffs[4]~0_combout\);

-- Location: LCCOMB_X109_Y52_N4
\MDR|dffs[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDR|dffs[4]~feeder_combout\ = \MDR|dffs[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDR|dffs[4]~0_combout\,
	combout => \MDR|dffs[4]~feeder_combout\);

-- Location: FF_X109_Y52_N5
\MDR|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \MDR|dffs[4]~feeder_combout\,
	asdata => \RAM|sram|ram_block|auto_generated|q_a\(4),
	sload => \MDR_SEL~combout\,
	ena => \MDR_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|dffs\(4));

-- Location: LCCOMB_X110_Y53_N0
\IR|dffs[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR|dffs[4]~feeder_combout\ = \MDR|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MDR|dffs\(4),
	combout => \IR|dffs[4]~feeder_combout\);

-- Location: FF_X110_Y53_N1
\IR|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \IR|dffs[4]~feeder_combout\,
	ena => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|dffs\(4));

-- Location: LCCOMB_X105_Y53_N20
\uSeq|uPC_mux|auto_generated|result_node[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[4]~4_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & (\IR|dffs\(4))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|dffs\(4),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(4),
	combout => \uSeq|uPC_mux|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X114_Y53_N8
\uSeq|uPC|dffs[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC|dffs[4]~feeder_combout\ = \uSeq|uPC_mux|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uSeq|uPC_mux|auto_generated|result_node[4]~4_combout\,
	combout => \uSeq|uPC|dffs[4]~feeder_combout\);

-- Location: FF_X114_Y53_N9
\uSeq|uPC|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \uSeq|uPC|dffs[4]~feeder_combout\,
	sclr => \clear~input_o\,
	ena => \delay|auto_generated|counter_comb_bita1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uSeq|uPC|dffs\(4));

-- Location: LCCOMB_X114_Y53_N30
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

-- Location: FF_X114_Y53_N31
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

-- Location: LCCOMB_X114_Y53_N4
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

-- Location: FF_X114_Y53_N5
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

-- Location: LCCOMB_X103_Y52_N14
\uSeq|uPC_mux|auto_generated|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[1]~1_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(1) & !\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(1),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	combout => \uSeq|uPC_mux|auto_generated|result_node[1]~1_combout\);

-- Location: FF_X103_Y52_N15
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

-- Location: LCCOMB_X103_Y52_N28
\uSeq|uPC_mux|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uSeq|uPC_mux|auto_generated|result_node[0]~0_combout\ = (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(8) & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(8),
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(0),
	combout => \uSeq|uPC_mux|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X103_Y52_N29
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

-- Location: LCCOMB_X110_Y52_N16
\R0_SEL[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- R0_SEL(0) = (\delay|auto_generated|counter_comb_bita1~0_combout\ & \uSeq|uROM|srom|rom_block|auto_generated|q_a\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datad => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(22),
	combout => R0_SEL(0));

-- Location: LCCOMB_X110_Y52_N22
\R0_MUX|auto_generated|result_node[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[1]~10_combout\ = (\delay|auto_generated|counter_comb_bita1~0_combout\ & ((\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & (\REG1|dffs\(1))) # (!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(23) & ((\MDR|dffs\(1)))))) 
-- # (!\delay|auto_generated|counter_comb_bita1~0_combout\ & (((\MDR|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|auto_generated|counter_comb_bita1~0_combout\,
	datab => \REG1|dffs\(1),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(23),
	datad => \MDR|dffs\(1),
	combout => \R0_MUX|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X111_Y52_N14
\R0_MUX|auto_generated|result_node[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0_MUX|auto_generated|result_node[1]~11_combout\ = (R0_SEL(0) & (((!R0_SEL(1) & \ALU|auto_generated|result_int[2]~4_combout\)))) # (!R0_SEL(0) & (\R0_MUX|auto_generated|result_node[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R0_SEL(0),
	datab => \R0_MUX|auto_generated|result_node[1]~10_combout\,
	datac => R0_SEL(1),
	datad => \ALU|auto_generated|result_int[2]~4_combout\,
	combout => \R0_MUX|auto_generated|result_node[1]~11_combout\);

-- Location: FF_X111_Y52_N15
\REG0|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \R0_MUX|auto_generated|result_node[1]~11_combout\,
	ena => \R0_ENABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|dffs\(1));

-- Location: LCCOMB_X111_Y53_N10
\V_MUX_DATA[0][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_MUX_DATA[0][0]~3_combout\ = (\REG0|dffs\(1)) # ((\REG0|dffs\(2)) # ((\REG0|dffs\(0)) # (\REG0|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(1),
	datab => \REG0|dffs\(2),
	datac => \REG0|dffs\(0),
	datad => \REG0|dffs\(3),
	combout => \V_MUX_DATA[0][0]~3_combout\);

-- Location: LCCOMB_X110_Y52_N14
\V_MUX_DATA[0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_MUX_DATA[0][0]~2_combout\ = (\REG0|dffs\(6)) # ((\REG0|dffs\(7)) # ((\REG0|dffs\(5)) # (\REG0|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(6),
	datab => \REG0|dffs\(7),
	datac => \REG0|dffs\(5),
	datad => \REG0|dffs\(4),
	combout => \V_MUX_DATA[0][0]~2_combout\);

-- Location: LCCOMB_X111_Y53_N12
\V_MUX|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_MUX|auto_generated|result_node[0]~1_combout\ = (\V_MUX_DATA[0][0]~3_combout\ & (((!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(16))) # (!\IR|dffs\(0)))) # (!\V_MUX_DATA[0][0]~3_combout\ & (\V_MUX_DATA[0][0]~2_combout\ & 
-- ((!\uSeq|uROM|srom|rom_block|auto_generated|q_a\(16)) # (!\IR|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_MUX_DATA[0][0]~3_combout\,
	datab => \IR|dffs\(0),
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(16),
	datad => \V_MUX_DATA[0][0]~2_combout\,
	combout => \V_MUX|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X110_Y52_N0
\V_MUX_DATA[1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_MUX_DATA[1][0]~1_combout\ = (\REG1|dffs\(0)) # ((\REG1|dffs\(2)) # ((\REG1|dffs\(3)) # (\REG1|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \REG1|dffs\(2),
	datac => \REG1|dffs\(3),
	datad => \REG1|dffs\(1),
	combout => \V_MUX_DATA[1][0]~1_combout\);

-- Location: LCCOMB_X112_Y50_N6
\V_MUX_DATA[1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_MUX_DATA[1][0]~0_combout\ = (\REG1|dffs\(6)) # ((\REG1|dffs\(4)) # ((\REG1|dffs\(7)) # (\REG1|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(6),
	datab => \REG1|dffs\(4),
	datac => \REG1|dffs\(7),
	datad => \REG1|dffs\(5),
	combout => \V_MUX_DATA[1][0]~0_combout\);

-- Location: LCCOMB_X111_Y53_N0
\V_MUX|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_MUX|auto_generated|result_node[0]~0_combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(16) & (\IR|dffs\(0) & ((\V_MUX_DATA[1][0]~1_combout\) # (\V_MUX_DATA[1][0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(16),
	datab => \IR|dffs\(0),
	datac => \V_MUX_DATA[1][0]~1_combout\,
	datad => \V_MUX_DATA[1][0]~0_combout\,
	combout => \V_MUX|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X111_Y53_N16
\Z_MUX|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z_MUX|auto_generated|result_node[0]~0_combout\ = \uSeq|uROM|srom|rom_block|auto_generated|q_a\(15) $ (((!\V_MUX|auto_generated|result_node[0]~1_combout\ & !\V_MUX|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_MUX|auto_generated|result_node[0]~1_combout\,
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(15),
	datad => \V_MUX|auto_generated|result_node[0]~0_combout\,
	combout => \Z_MUX|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X111_Y53_N2
Z_LOAD : cycloneive_lcell_comb
-- Equation(s):
-- \Z_LOAD~combout\ = (\uSeq|uROM|srom|rom_block|auto_generated|q_a\(14) & \delay|auto_generated|counter_comb_bita1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uSeq|uROM|srom|rom_block|auto_generated|q_a\(14),
	datad => \delay|auto_generated|counter_comb_bita1~0_combout\,
	combout => \Z_LOAD~combout\);

-- Location: FF_X111_Y53_N17
\REG_Z|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button~input_o\,
	d => \Z_MUX|auto_generated|result_node[0]~0_combout\,
	ena => \Z_LOAD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Z|dffs\(0));

-- Location: LCCOMB_X114_Y48_N20
\R0Hi|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Hi|Mux6~0_combout\ = (\REG0|dffs\(4) & ((\REG0|dffs\(7)) # (\REG0|dffs\(6) $ (\REG0|dffs\(5))))) # (!\REG0|dffs\(4) & ((\REG0|dffs\(5)) # (\REG0|dffs\(7) $ (\REG0|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(7),
	datab => \REG0|dffs\(4),
	datac => \REG0|dffs\(6),
	datad => \REG0|dffs\(5),
	combout => \R0Hi|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y48_N10
\R0Hi|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Hi|Mux5~0_combout\ = (\REG0|dffs\(4) & (\REG0|dffs\(7) $ (((\REG0|dffs\(5)) # (!\REG0|dffs\(6)))))) # (!\REG0|dffs\(4) & (!\REG0|dffs\(7) & (!\REG0|dffs\(6) & \REG0|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(7),
	datab => \REG0|dffs\(4),
	datac => \REG0|dffs\(6),
	datad => \REG0|dffs\(5),
	combout => \R0Hi|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y48_N24
\R0Hi|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Hi|Mux4~0_combout\ = (\REG0|dffs\(5) & (!\REG0|dffs\(7) & (\REG0|dffs\(4)))) # (!\REG0|dffs\(5) & ((\REG0|dffs\(6) & (!\REG0|dffs\(7))) # (!\REG0|dffs\(6) & ((\REG0|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(7),
	datab => \REG0|dffs\(4),
	datac => \REG0|dffs\(6),
	datad => \REG0|dffs\(5),
	combout => \R0Hi|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y48_N18
\R0Hi|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Hi|Mux3~0_combout\ = (\REG0|dffs\(5) & ((\REG0|dffs\(4) & ((\REG0|dffs\(6)))) # (!\REG0|dffs\(4) & (\REG0|dffs\(7) & !\REG0|dffs\(6))))) # (!\REG0|dffs\(5) & (!\REG0|dffs\(7) & (\REG0|dffs\(4) $ (\REG0|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(7),
	datab => \REG0|dffs\(4),
	datac => \REG0|dffs\(6),
	datad => \REG0|dffs\(5),
	combout => \R0Hi|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y48_N12
\R0Hi|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Hi|Mux2~0_combout\ = (\REG0|dffs\(7) & (\REG0|dffs\(6) & ((\REG0|dffs\(5)) # (!\REG0|dffs\(4))))) # (!\REG0|dffs\(7) & (!\REG0|dffs\(4) & (!\REG0|dffs\(6) & \REG0|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(7),
	datab => \REG0|dffs\(4),
	datac => \REG0|dffs\(6),
	datad => \REG0|dffs\(5),
	combout => \R0Hi|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y48_N6
\R0Hi|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Hi|Mux1~0_combout\ = (\REG0|dffs\(7) & ((\REG0|dffs\(4) & ((\REG0|dffs\(5)))) # (!\REG0|dffs\(4) & (\REG0|dffs\(6))))) # (!\REG0|dffs\(7) & (\REG0|dffs\(6) & (\REG0|dffs\(4) $ (\REG0|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(7),
	datab => \REG0|dffs\(4),
	datac => \REG0|dffs\(6),
	datad => \REG0|dffs\(5),
	combout => \R0Hi|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y48_N8
\R0Hi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Hi|Mux0~0_combout\ = (\REG0|dffs\(7) & (\REG0|dffs\(4) & (\REG0|dffs\(6) $ (\REG0|dffs\(5))))) # (!\REG0|dffs\(7) & (!\REG0|dffs\(5) & (\REG0|dffs\(4) $ (\REG0|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(7),
	datab => \REG0|dffs\(4),
	datac => \REG0|dffs\(6),
	datad => \REG0|dffs\(5),
	combout => \R0Hi|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y53_N16
\R0Lo|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Lo|Mux6~0_combout\ = (\REG0|dffs\(0) & ((\REG0|dffs\(3)) # (\REG0|dffs\(1) $ (\REG0|dffs\(2))))) # (!\REG0|dffs\(0) & ((\REG0|dffs\(1)) # (\REG0|dffs\(2) $ (\REG0|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(1),
	datab => \REG0|dffs\(2),
	datac => \REG0|dffs\(0),
	datad => \REG0|dffs\(3),
	combout => \R0Lo|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y53_N10
\R0Lo|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Lo|Mux5~0_combout\ = (\REG0|dffs\(1) & (!\REG0|dffs\(3) & ((\REG0|dffs\(0)) # (!\REG0|dffs\(2))))) # (!\REG0|dffs\(1) & (\REG0|dffs\(0) & (\REG0|dffs\(2) $ (!\REG0|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(1),
	datab => \REG0|dffs\(2),
	datac => \REG0|dffs\(0),
	datad => \REG0|dffs\(3),
	combout => \R0Lo|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y53_N0
\R0Lo|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Lo|Mux4~0_combout\ = (\REG0|dffs\(1) & (((\REG0|dffs\(0) & !\REG0|dffs\(3))))) # (!\REG0|dffs\(1) & ((\REG0|dffs\(2) & ((!\REG0|dffs\(3)))) # (!\REG0|dffs\(2) & (\REG0|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(1),
	datab => \REG0|dffs\(2),
	datac => \REG0|dffs\(0),
	datad => \REG0|dffs\(3),
	combout => \R0Lo|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y53_N6
\R0Lo|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Lo|Mux3~0_combout\ = (\REG0|dffs\(1) & ((\REG0|dffs\(2) & (\REG0|dffs\(0))) # (!\REG0|dffs\(2) & (!\REG0|dffs\(0) & \REG0|dffs\(3))))) # (!\REG0|dffs\(1) & (!\REG0|dffs\(3) & (\REG0|dffs\(2) $ (\REG0|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(1),
	datab => \REG0|dffs\(2),
	datac => \REG0|dffs\(0),
	datad => \REG0|dffs\(3),
	combout => \R0Lo|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y53_N22
\R0Lo|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Lo|Mux2~0_combout\ = (\REG0|dffs\(2) & (\REG0|dffs\(3) & ((\REG0|dffs\(1)) # (!\REG0|dffs\(0))))) # (!\REG0|dffs\(2) & (\REG0|dffs\(1) & (!\REG0|dffs\(0) & !\REG0|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(1),
	datab => \REG0|dffs\(2),
	datac => \REG0|dffs\(0),
	datad => \REG0|dffs\(3),
	combout => \R0Lo|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y53_N24
\R0Lo|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Lo|Mux1~0_combout\ = (\REG0|dffs\(1) & ((\REG0|dffs\(0) & ((\REG0|dffs\(3)))) # (!\REG0|dffs\(0) & (\REG0|dffs\(2))))) # (!\REG0|dffs\(1) & (\REG0|dffs\(2) & (\REG0|dffs\(0) $ (\REG0|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(1),
	datab => \REG0|dffs\(2),
	datac => \REG0|dffs\(0),
	datad => \REG0|dffs\(3),
	combout => \R0Lo|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y53_N26
\R0Lo|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R0Lo|Mux0~0_combout\ = (\REG0|dffs\(2) & (!\REG0|dffs\(1) & (\REG0|dffs\(0) $ (!\REG0|dffs\(3))))) # (!\REG0|dffs\(2) & (\REG0|dffs\(0) & (\REG0|dffs\(1) $ (!\REG0|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|dffs\(1),
	datab => \REG0|dffs\(2),
	datac => \REG0|dffs\(0),
	datad => \REG0|dffs\(3),
	combout => \R0Lo|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y50_N12
\R1Hi|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Hi|Mux6~0_combout\ = (\REG1|dffs\(4) & ((\REG1|dffs\(7)) # (\REG1|dffs\(6) $ (\REG1|dffs\(5))))) # (!\REG1|dffs\(4) & ((\REG1|dffs\(5)) # (\REG1|dffs\(6) $ (\REG1|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(4),
	datab => \REG1|dffs\(6),
	datac => \REG1|dffs\(7),
	datad => \REG1|dffs\(5),
	combout => \R1Hi|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y50_N14
\R1Hi|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Hi|Mux5~0_combout\ = (\REG1|dffs\(4) & (\REG1|dffs\(7) $ (((\REG1|dffs\(5)) # (!\REG1|dffs\(6)))))) # (!\REG1|dffs\(4) & (!\REG1|dffs\(6) & (!\REG1|dffs\(7) & \REG1|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(4),
	datab => \REG1|dffs\(6),
	datac => \REG1|dffs\(7),
	datad => \REG1|dffs\(5),
	combout => \R1Hi|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y50_N28
\R1Hi|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Hi|Mux4~0_combout\ = (\REG1|dffs\(5) & (\REG1|dffs\(4) & ((!\REG1|dffs\(7))))) # (!\REG1|dffs\(5) & ((\REG1|dffs\(6) & ((!\REG1|dffs\(7)))) # (!\REG1|dffs\(6) & (\REG1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(4),
	datab => \REG1|dffs\(6),
	datac => \REG1|dffs\(7),
	datad => \REG1|dffs\(5),
	combout => \R1Hi|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y50_N16
\R1Hi|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Hi|Mux3~0_combout\ = (\REG1|dffs\(5) & ((\REG1|dffs\(6) & (\REG1|dffs\(4))) # (!\REG1|dffs\(6) & (!\REG1|dffs\(4) & \REG1|dffs\(7))))) # (!\REG1|dffs\(5) & (!\REG1|dffs\(7) & (\REG1|dffs\(6) $ (\REG1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(6),
	datab => \REG1|dffs\(4),
	datac => \REG1|dffs\(7),
	datad => \REG1|dffs\(5),
	combout => \R1Hi|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y50_N26
\R1Hi|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Hi|Mux2~0_combout\ = (\REG1|dffs\(6) & (\REG1|dffs\(7) & ((\REG1|dffs\(5)) # (!\REG1|dffs\(4))))) # (!\REG1|dffs\(6) & (!\REG1|dffs\(4) & (!\REG1|dffs\(7) & \REG1|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(4),
	datab => \REG1|dffs\(6),
	datac => \REG1|dffs\(7),
	datad => \REG1|dffs\(5),
	combout => \R1Hi|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y50_N30
\R1Hi|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Hi|Mux1~0_combout\ = (\REG1|dffs\(7) & ((\REG1|dffs\(4) & ((\REG1|dffs\(5)))) # (!\REG1|dffs\(4) & (\REG1|dffs\(6))))) # (!\REG1|dffs\(7) & (\REG1|dffs\(6) & (\REG1|dffs\(4) $ (\REG1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(6),
	datab => \REG1|dffs\(4),
	datac => \REG1|dffs\(7),
	datad => \REG1|dffs\(5),
	combout => \R1Hi|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y50_N8
\R1Hi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Hi|Mux0~0_combout\ = (\REG1|dffs\(6) & (!\REG1|dffs\(5) & (\REG1|dffs\(4) $ (!\REG1|dffs\(7))))) # (!\REG1|dffs\(6) & (\REG1|dffs\(4) & (\REG1|dffs\(7) $ (!\REG1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(6),
	datab => \REG1|dffs\(4),
	datac => \REG1|dffs\(7),
	datad => \REG1|dffs\(5),
	combout => \R1Hi|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y52_N12
\R1Lo|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Lo|Mux6~0_combout\ = (\REG1|dffs\(0) & ((\REG1|dffs\(3)) # (\REG1|dffs\(1) $ (\REG1|dffs\(2))))) # (!\REG1|dffs\(0) & ((\REG1|dffs\(1)) # (\REG1|dffs\(3) $ (\REG1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \REG1|dffs\(3),
	datac => \REG1|dffs\(1),
	datad => \REG1|dffs\(2),
	combout => \R1Lo|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y52_N26
\R1Lo|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Lo|Mux5~0_combout\ = (\REG1|dffs\(0) & (\REG1|dffs\(3) $ (((\REG1|dffs\(1)) # (!\REG1|dffs\(2)))))) # (!\REG1|dffs\(0) & (!\REG1|dffs\(3) & (\REG1|dffs\(1) & !\REG1|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \REG1|dffs\(3),
	datac => \REG1|dffs\(1),
	datad => \REG1|dffs\(2),
	combout => \R1Lo|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y52_N4
\R1Lo|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Lo|Mux4~0_combout\ = (\REG1|dffs\(1) & (\REG1|dffs\(0) & (!\REG1|dffs\(3)))) # (!\REG1|dffs\(1) & ((\REG1|dffs\(2) & ((!\REG1|dffs\(3)))) # (!\REG1|dffs\(2) & (\REG1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \REG1|dffs\(3),
	datac => \REG1|dffs\(1),
	datad => \REG1|dffs\(2),
	combout => \R1Lo|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y52_N2
\R1Lo|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Lo|Mux3~0_combout\ = (\REG1|dffs\(1) & ((\REG1|dffs\(0) & ((\REG1|dffs\(2)))) # (!\REG1|dffs\(0) & (\REG1|dffs\(3) & !\REG1|dffs\(2))))) # (!\REG1|dffs\(1) & (!\REG1|dffs\(3) & (\REG1|dffs\(0) $ (\REG1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \REG1|dffs\(3),
	datac => \REG1|dffs\(1),
	datad => \REG1|dffs\(2),
	combout => \R1Lo|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y52_N8
\R1Lo|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Lo|Mux2~0_combout\ = (\REG1|dffs\(3) & (\REG1|dffs\(2) & ((\REG1|dffs\(1)) # (!\REG1|dffs\(0))))) # (!\REG1|dffs\(3) & (!\REG1|dffs\(0) & (\REG1|dffs\(1) & !\REG1|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \REG1|dffs\(3),
	datac => \REG1|dffs\(1),
	datad => \REG1|dffs\(2),
	combout => \R1Lo|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y52_N10
\R1Lo|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Lo|Mux1~0_combout\ = (\REG1|dffs\(3) & ((\REG1|dffs\(0) & (\REG1|dffs\(1))) # (!\REG1|dffs\(0) & ((\REG1|dffs\(2)))))) # (!\REG1|dffs\(3) & (\REG1|dffs\(2) & (\REG1|dffs\(0) $ (\REG1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \REG1|dffs\(3),
	datac => \REG1|dffs\(1),
	datad => \REG1|dffs\(2),
	combout => \R1Lo|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y52_N16
\R1Lo|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1Lo|Mux0~0_combout\ = (\REG1|dffs\(3) & (\REG1|dffs\(0) & (\REG1|dffs\(1) $ (\REG1|dffs\(2))))) # (!\REG1|dffs\(3) & (!\REG1|dffs\(1) & (\REG1|dffs\(0) $ (\REG1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|dffs\(0),
	datab => \REG1|dffs\(3),
	datac => \REG1|dffs\(1),
	datad => \REG1|dffs\(2),
	combout => \R1Lo|Mux0~0_combout\);

-- Location: LCCOMB_X97_Y11_N16
\pcHi|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcHi|Mux6~0_combout\ = (\PC|auto_generated|counter_reg_bit\(4) & ((\PC|auto_generated|counter_reg_bit\(7)) # (\PC|auto_generated|counter_reg_bit\(5) $ (\PC|auto_generated|counter_reg_bit\(6))))) # (!\PC|auto_generated|counter_reg_bit\(4) & 
-- ((\PC|auto_generated|counter_reg_bit\(5)) # (\PC|auto_generated|counter_reg_bit\(7) $ (\PC|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(7),
	datab => \PC|auto_generated|counter_reg_bit\(5),
	datac => \PC|auto_generated|counter_reg_bit\(4),
	datad => \PC|auto_generated|counter_reg_bit\(6),
	combout => \pcHi|Mux6~0_combout\);

-- Location: LCCOMB_X97_Y11_N10
\pcHi|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcHi|Mux5~0_combout\ = (\PC|auto_generated|counter_reg_bit\(5) & (!\PC|auto_generated|counter_reg_bit\(7) & ((\PC|auto_generated|counter_reg_bit\(4)) # (!\PC|auto_generated|counter_reg_bit\(6))))) # (!\PC|auto_generated|counter_reg_bit\(5) & 
-- (\PC|auto_generated|counter_reg_bit\(4) & (\PC|auto_generated|counter_reg_bit\(7) $ (!\PC|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(7),
	datab => \PC|auto_generated|counter_reg_bit\(5),
	datac => \PC|auto_generated|counter_reg_bit\(4),
	datad => \PC|auto_generated|counter_reg_bit\(6),
	combout => \pcHi|Mux5~0_combout\);

-- Location: LCCOMB_X97_Y11_N12
\pcHi|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcHi|Mux4~0_combout\ = (\PC|auto_generated|counter_reg_bit\(5) & (!\PC|auto_generated|counter_reg_bit\(7) & (\PC|auto_generated|counter_reg_bit\(4)))) # (!\PC|auto_generated|counter_reg_bit\(5) & ((\PC|auto_generated|counter_reg_bit\(6) & 
-- (!\PC|auto_generated|counter_reg_bit\(7))) # (!\PC|auto_generated|counter_reg_bit\(6) & ((\PC|auto_generated|counter_reg_bit\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(7),
	datab => \PC|auto_generated|counter_reg_bit\(5),
	datac => \PC|auto_generated|counter_reg_bit\(4),
	datad => \PC|auto_generated|counter_reg_bit\(6),
	combout => \pcHi|Mux4~0_combout\);

-- Location: LCCOMB_X97_Y11_N14
\pcHi|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcHi|Mux3~0_combout\ = (\PC|auto_generated|counter_reg_bit\(5) & ((\PC|auto_generated|counter_reg_bit\(4) & ((\PC|auto_generated|counter_reg_bit\(6)))) # (!\PC|auto_generated|counter_reg_bit\(4) & (\PC|auto_generated|counter_reg_bit\(7) & 
-- !\PC|auto_generated|counter_reg_bit\(6))))) # (!\PC|auto_generated|counter_reg_bit\(5) & (!\PC|auto_generated|counter_reg_bit\(7) & (\PC|auto_generated|counter_reg_bit\(4) $ (\PC|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(7),
	datab => \PC|auto_generated|counter_reg_bit\(5),
	datac => \PC|auto_generated|counter_reg_bit\(4),
	datad => \PC|auto_generated|counter_reg_bit\(6),
	combout => \pcHi|Mux3~0_combout\);

-- Location: LCCOMB_X97_Y11_N20
\pcHi|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcHi|Mux2~0_combout\ = (\PC|auto_generated|counter_reg_bit\(7) & (\PC|auto_generated|counter_reg_bit\(6) & ((\PC|auto_generated|counter_reg_bit\(5)) # (!\PC|auto_generated|counter_reg_bit\(4))))) # (!\PC|auto_generated|counter_reg_bit\(7) & 
-- (\PC|auto_generated|counter_reg_bit\(5) & (!\PC|auto_generated|counter_reg_bit\(4) & !\PC|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(7),
	datab => \PC|auto_generated|counter_reg_bit\(5),
	datac => \PC|auto_generated|counter_reg_bit\(4),
	datad => \PC|auto_generated|counter_reg_bit\(6),
	combout => \pcHi|Mux2~0_combout\);

-- Location: LCCOMB_X97_Y11_N26
\pcHi|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcHi|Mux1~0_combout\ = (\PC|auto_generated|counter_reg_bit\(7) & ((\PC|auto_generated|counter_reg_bit\(4) & (\PC|auto_generated|counter_reg_bit\(5))) # (!\PC|auto_generated|counter_reg_bit\(4) & ((\PC|auto_generated|counter_reg_bit\(6)))))) # 
-- (!\PC|auto_generated|counter_reg_bit\(7) & (\PC|auto_generated|counter_reg_bit\(6) & (\PC|auto_generated|counter_reg_bit\(5) $ (\PC|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(7),
	datab => \PC|auto_generated|counter_reg_bit\(5),
	datac => \PC|auto_generated|counter_reg_bit\(4),
	datad => \PC|auto_generated|counter_reg_bit\(6),
	combout => \pcHi|Mux1~0_combout\);

-- Location: LCCOMB_X97_Y11_N4
\pcHi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcHi|Mux0~0_combout\ = (\PC|auto_generated|counter_reg_bit\(7) & (\PC|auto_generated|counter_reg_bit\(4) & (\PC|auto_generated|counter_reg_bit\(5) $ (\PC|auto_generated|counter_reg_bit\(6))))) # (!\PC|auto_generated|counter_reg_bit\(7) & 
-- (!\PC|auto_generated|counter_reg_bit\(5) & (\PC|auto_generated|counter_reg_bit\(4) $ (\PC|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(7),
	datab => \PC|auto_generated|counter_reg_bit\(5),
	datac => \PC|auto_generated|counter_reg_bit\(4),
	datad => \PC|auto_generated|counter_reg_bit\(6),
	combout => \pcHi|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y4_N4
\pcLo|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcLo|Mux6~0_combout\ = (\PC|auto_generated|counter_reg_bit\(0) & ((\PC|auto_generated|counter_reg_bit\(3)) # (\PC|auto_generated|counter_reg_bit\(1) $ (\PC|auto_generated|counter_reg_bit\(2))))) # (!\PC|auto_generated|counter_reg_bit\(0) & 
-- ((\PC|auto_generated|counter_reg_bit\(1)) # (\PC|auto_generated|counter_reg_bit\(2) $ (\PC|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(1),
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datac => \PC|auto_generated|counter_reg_bit\(3),
	datad => \PC|auto_generated|counter_reg_bit\(0),
	combout => \pcLo|Mux6~0_combout\);

-- Location: LCCOMB_X83_Y4_N22
\pcLo|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcLo|Mux5~0_combout\ = (\PC|auto_generated|counter_reg_bit\(1) & (!\PC|auto_generated|counter_reg_bit\(3) & ((\PC|auto_generated|counter_reg_bit\(0)) # (!\PC|auto_generated|counter_reg_bit\(2))))) # (!\PC|auto_generated|counter_reg_bit\(1) & 
-- (\PC|auto_generated|counter_reg_bit\(0) & (\PC|auto_generated|counter_reg_bit\(2) $ (!\PC|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(1),
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datac => \PC|auto_generated|counter_reg_bit\(3),
	datad => \PC|auto_generated|counter_reg_bit\(0),
	combout => \pcLo|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y4_N20
\pcLo|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcLo|Mux4~0_combout\ = (\PC|auto_generated|counter_reg_bit\(1) & (((!\PC|auto_generated|counter_reg_bit\(3) & \PC|auto_generated|counter_reg_bit\(0))))) # (!\PC|auto_generated|counter_reg_bit\(1) & ((\PC|auto_generated|counter_reg_bit\(2) & 
-- (!\PC|auto_generated|counter_reg_bit\(3))) # (!\PC|auto_generated|counter_reg_bit\(2) & ((\PC|auto_generated|counter_reg_bit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(1),
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datac => \PC|auto_generated|counter_reg_bit\(3),
	datad => \PC|auto_generated|counter_reg_bit\(0),
	combout => \pcLo|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y4_N14
\pcLo|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcLo|Mux3~0_combout\ = (\PC|auto_generated|counter_reg_bit\(1) & ((\PC|auto_generated|counter_reg_bit\(2) & ((\PC|auto_generated|counter_reg_bit\(0)))) # (!\PC|auto_generated|counter_reg_bit\(2) & (\PC|auto_generated|counter_reg_bit\(3) & 
-- !\PC|auto_generated|counter_reg_bit\(0))))) # (!\PC|auto_generated|counter_reg_bit\(1) & (!\PC|auto_generated|counter_reg_bit\(3) & (\PC|auto_generated|counter_reg_bit\(2) $ (\PC|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(1),
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datac => \PC|auto_generated|counter_reg_bit\(3),
	datad => \PC|auto_generated|counter_reg_bit\(0),
	combout => \pcLo|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y4_N8
\pcLo|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcLo|Mux2~0_combout\ = (\PC|auto_generated|counter_reg_bit\(2) & (\PC|auto_generated|counter_reg_bit\(3) & ((\PC|auto_generated|counter_reg_bit\(1)) # (!\PC|auto_generated|counter_reg_bit\(0))))) # (!\PC|auto_generated|counter_reg_bit\(2) & 
-- (\PC|auto_generated|counter_reg_bit\(1) & (!\PC|auto_generated|counter_reg_bit\(3) & !\PC|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(1),
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datac => \PC|auto_generated|counter_reg_bit\(3),
	datad => \PC|auto_generated|counter_reg_bit\(0),
	combout => \pcLo|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y4_N6
\pcLo|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcLo|Mux1~0_combout\ = (\PC|auto_generated|counter_reg_bit\(1) & ((\PC|auto_generated|counter_reg_bit\(0) & ((\PC|auto_generated|counter_reg_bit\(3)))) # (!\PC|auto_generated|counter_reg_bit\(0) & (\PC|auto_generated|counter_reg_bit\(2))))) # 
-- (!\PC|auto_generated|counter_reg_bit\(1) & (\PC|auto_generated|counter_reg_bit\(2) & (\PC|auto_generated|counter_reg_bit\(3) $ (\PC|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(1),
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datac => \PC|auto_generated|counter_reg_bit\(3),
	datad => \PC|auto_generated|counter_reg_bit\(0),
	combout => \pcLo|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y4_N12
\pcLo|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcLo|Mux0~0_combout\ = (\PC|auto_generated|counter_reg_bit\(2) & (!\PC|auto_generated|counter_reg_bit\(1) & (\PC|auto_generated|counter_reg_bit\(3) $ (!\PC|auto_generated|counter_reg_bit\(0))))) # (!\PC|auto_generated|counter_reg_bit\(2) & 
-- (\PC|auto_generated|counter_reg_bit\(0) & (\PC|auto_generated|counter_reg_bit\(1) $ (!\PC|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|auto_generated|counter_reg_bit\(1),
	datab => \PC|auto_generated|counter_reg_bit\(2),
	datac => \PC|auto_generated|counter_reg_bit\(3),
	datad => \PC|auto_generated|counter_reg_bit\(0),
	combout => \pcLo|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y4_N30
\spHi|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spHi|Mux6~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(4) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(7)) # (\STACK_POINTER|auto_generated|counter_reg_bit\(5) $ (\STACK_POINTER|auto_generated|counter_reg_bit\(6))))) # 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(4) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(5)) # (\STACK_POINTER|auto_generated|counter_reg_bit\(6) $ (\STACK_POINTER|auto_generated|counter_reg_bit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	combout => \spHi|Mux6~0_combout\);

-- Location: LCCOMB_X83_Y4_N16
\spHi|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spHi|Mux5~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(5) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(7) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(4)) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(6))))) # 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(5) & (\STACK_POINTER|auto_generated|counter_reg_bit\(4) & (\STACK_POINTER|auto_generated|counter_reg_bit\(6) $ (!\STACK_POINTER|auto_generated|counter_reg_bit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	combout => \spHi|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y4_N18
\spHi|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spHi|Mux4~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(5) & (((\STACK_POINTER|auto_generated|counter_reg_bit\(4) & !\STACK_POINTER|auto_generated|counter_reg_bit\(7))))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(5) & 
-- ((\STACK_POINTER|auto_generated|counter_reg_bit\(6) & ((!\STACK_POINTER|auto_generated|counter_reg_bit\(7)))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(6) & (\STACK_POINTER|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	combout => \spHi|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y4_N24
\spHi|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spHi|Mux3~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(5) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(6) & (\STACK_POINTER|auto_generated|counter_reg_bit\(4))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(6) & 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(4) & \STACK_POINTER|auto_generated|counter_reg_bit\(7))))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(5) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(7) & 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(6) $ (\STACK_POINTER|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	combout => \spHi|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y4_N10
\spHi|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spHi|Mux2~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(6) & (\STACK_POINTER|auto_generated|counter_reg_bit\(7) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(5)) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(4))))) # 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(6) & (\STACK_POINTER|auto_generated|counter_reg_bit\(5) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(4) & !\STACK_POINTER|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	combout => \spHi|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y4_N28
\spHi|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spHi|Mux1~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(5) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(4) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(7)))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(4) & 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(6))))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(5) & (\STACK_POINTER|auto_generated|counter_reg_bit\(6) & (\STACK_POINTER|auto_generated|counter_reg_bit\(4) $ 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	combout => \spHi|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y4_N26
\spHi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spHi|Mux0~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(6) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(5) & (\STACK_POINTER|auto_generated|counter_reg_bit\(4) $ (!\STACK_POINTER|auto_generated|counter_reg_bit\(7))))) # 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(6) & (\STACK_POINTER|auto_generated|counter_reg_bit\(4) & (\STACK_POINTER|auto_generated|counter_reg_bit\(5) $ (!\STACK_POINTER|auto_generated|counter_reg_bit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(5),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(6),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(4),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(7),
	combout => \spHi|Mux0~0_combout\);

-- Location: LCCOMB_X90_Y16_N4
\spLo|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spLo|Mux6~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(0) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(3)) # (\STACK_POINTER|auto_generated|counter_reg_bit\(1) $ (\STACK_POINTER|auto_generated|counter_reg_bit\(2))))) # 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(0) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(1)) # (\STACK_POINTER|auto_generated|counter_reg_bit\(3) $ (\STACK_POINTER|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	combout => \spLo|Mux6~0_combout\);

-- Location: LCCOMB_X90_Y16_N26
\spLo|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spLo|Mux5~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(1) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(3) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(0)) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(2))))) # 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(1) & (\STACK_POINTER|auto_generated|counter_reg_bit\(0) & (\STACK_POINTER|auto_generated|counter_reg_bit\(3) $ (!\STACK_POINTER|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	combout => \spLo|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y16_N24
\spLo|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spLo|Mux4~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(1) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(3) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(0))))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(1) & 
-- ((\STACK_POINTER|auto_generated|counter_reg_bit\(2) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(3))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(2) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	combout => \spLo|Mux4~0_combout\);

-- Location: LCCOMB_X90_Y16_N18
\spLo|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spLo|Mux3~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(1) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(2) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(0)))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(2) & 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(3) & !\STACK_POINTER|auto_generated|counter_reg_bit\(0))))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(1) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(3) & 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(2) $ (\STACK_POINTER|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	combout => \spLo|Mux3~0_combout\);

-- Location: LCCOMB_X90_Y16_N8
\spLo|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spLo|Mux2~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(3) & (\STACK_POINTER|auto_generated|counter_reg_bit\(2) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(1)) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(0))))) # 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(3) & (\STACK_POINTER|auto_generated|counter_reg_bit\(1) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(2) & !\STACK_POINTER|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	combout => \spLo|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y16_N10
\spLo|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spLo|Mux1~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(1) & ((\STACK_POINTER|auto_generated|counter_reg_bit\(0) & (\STACK_POINTER|auto_generated|counter_reg_bit\(3))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(0) & 
-- ((\STACK_POINTER|auto_generated|counter_reg_bit\(2)))))) # (!\STACK_POINTER|auto_generated|counter_reg_bit\(1) & (\STACK_POINTER|auto_generated|counter_reg_bit\(2) & (\STACK_POINTER|auto_generated|counter_reg_bit\(3) $ 
-- (\STACK_POINTER|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	combout => \spLo|Mux1~0_combout\);

-- Location: LCCOMB_X90_Y16_N12
\spLo|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spLo|Mux0~0_combout\ = (\STACK_POINTER|auto_generated|counter_reg_bit\(3) & (\STACK_POINTER|auto_generated|counter_reg_bit\(0) & (\STACK_POINTER|auto_generated|counter_reg_bit\(1) $ (\STACK_POINTER|auto_generated|counter_reg_bit\(2))))) # 
-- (!\STACK_POINTER|auto_generated|counter_reg_bit\(3) & (!\STACK_POINTER|auto_generated|counter_reg_bit\(1) & (\STACK_POINTER|auto_generated|counter_reg_bit\(2) $ (\STACK_POINTER|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|auto_generated|counter_reg_bit\(1),
	datab => \STACK_POINTER|auto_generated|counter_reg_bit\(3),
	datac => \STACK_POINTER|auto_generated|counter_reg_bit\(2),
	datad => \STACK_POINTER|auto_generated|counter_reg_bit\(0),
	combout => \spLo|Mux0~0_combout\);

ww_Z_FLAG(0) <= \Z_FLAG[0]~output_o\;

ww_R0SegHi(6) <= \R0SegHi[6]~output_o\;

ww_R0SegHi(5) <= \R0SegHi[5]~output_o\;

ww_R0SegHi(4) <= \R0SegHi[4]~output_o\;

ww_R0SegHi(3) <= \R0SegHi[3]~output_o\;

ww_R0SegHi(2) <= \R0SegHi[2]~output_o\;

ww_R0SegHi(1) <= \R0SegHi[1]~output_o\;

ww_R0SegHi(0) <= \R0SegHi[0]~output_o\;

ww_R0SegLo(6) <= \R0SegLo[6]~output_o\;

ww_R0SegLo(5) <= \R0SegLo[5]~output_o\;

ww_R0SegLo(4) <= \R0SegLo[4]~output_o\;

ww_R0SegLo(3) <= \R0SegLo[3]~output_o\;

ww_R0SegLo(2) <= \R0SegLo[2]~output_o\;

ww_R0SegLo(1) <= \R0SegLo[1]~output_o\;

ww_R0SegLo(0) <= \R0SegLo[0]~output_o\;

ww_R1SegHi(6) <= \R1SegHi[6]~output_o\;

ww_R1SegHi(5) <= \R1SegHi[5]~output_o\;

ww_R1SegHi(4) <= \R1SegHi[4]~output_o\;

ww_R1SegHi(3) <= \R1SegHi[3]~output_o\;

ww_R1SegHi(2) <= \R1SegHi[2]~output_o\;

ww_R1SegHi(1) <= \R1SegHi[1]~output_o\;

ww_R1SegHi(0) <= \R1SegHi[0]~output_o\;

ww_R1SegLo(6) <= \R1SegLo[6]~output_o\;

ww_R1SegLo(5) <= \R1SegLo[5]~output_o\;

ww_R1SegLo(4) <= \R1SegLo[4]~output_o\;

ww_R1SegLo(3) <= \R1SegLo[3]~output_o\;

ww_R1SegLo(2) <= \R1SegLo[2]~output_o\;

ww_R1SegLo(1) <= \R1SegLo[1]~output_o\;

ww_R1SegLo(0) <= \R1SegLo[0]~output_o\;

ww_pcSegHi(6) <= \pcSegHi[6]~output_o\;

ww_pcSegHi(5) <= \pcSegHi[5]~output_o\;

ww_pcSegHi(4) <= \pcSegHi[4]~output_o\;

ww_pcSegHi(3) <= \pcSegHi[3]~output_o\;

ww_pcSegHi(2) <= \pcSegHi[2]~output_o\;

ww_pcSegHi(1) <= \pcSegHi[1]~output_o\;

ww_pcSegHi(0) <= \pcSegHi[0]~output_o\;

ww_pcSegLo(6) <= \pcSegLo[6]~output_o\;

ww_pcSegLo(5) <= \pcSegLo[5]~output_o\;

ww_pcSegLo(4) <= \pcSegLo[4]~output_o\;

ww_pcSegLo(3) <= \pcSegLo[3]~output_o\;

ww_pcSegLo(2) <= \pcSegLo[2]~output_o\;

ww_pcSegLo(1) <= \pcSegLo[1]~output_o\;

ww_pcSegLo(0) <= \pcSegLo[0]~output_o\;

ww_spSegHi(6) <= \spSegHi[6]~output_o\;

ww_spSegHi(5) <= \spSegHi[5]~output_o\;

ww_spSegHi(4) <= \spSegHi[4]~output_o\;

ww_spSegHi(3) <= \spSegHi[3]~output_o\;

ww_spSegHi(2) <= \spSegHi[2]~output_o\;

ww_spSegHi(1) <= \spSegHi[1]~output_o\;

ww_spSegHi(0) <= \spSegHi[0]~output_o\;

ww_spSegLo(6) <= \spSegLo[6]~output_o\;

ww_spSegLo(5) <= \spSegLo[5]~output_o\;

ww_spSegLo(4) <= \spSegLo[4]~output_o\;

ww_spSegLo(3) <= \spSegLo[3]~output_o\;

ww_spSegLo(2) <= \spSegLo[2]~output_o\;

ww_spSegLo(1) <= \spSegLo[1]~output_o\;

ww_spSegLo(0) <= \spSegLo[0]~output_o\;
END structure;


