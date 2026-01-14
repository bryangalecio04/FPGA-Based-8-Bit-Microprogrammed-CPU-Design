library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity test_uSequencer_PC is
	port(
		button, clear: in std_logic;
		useqEnOut: out std_logic;
		ctrlSignals: out std_logic_vector(0 to 7);
		pc_Seg1, pc_Seg0, M_disp, addr_hex1_disp1, addr_hex0_disp0: out std_logic_vector(0 to 6)
	);
end test_uSequencer_PC;

architecture structural of test_uSequencer_PC is
component uSequencer is
  generic(
    uROM_width: integer := 10;
    uROM_file: string := ""
  );
  port(
    opcode: in std_logic_vector(3 downto 0);
    uop: out std_logic_vector(1 to (uROM_width-9));
    debug_map_addr: out std_logic_vector(8 downto 0);  -- for debugging
    enable, clear: in std_logic;
    clock: in std_logic
  );
end component;

component seven_segment_display is
	port(
		digit: in std_logic_vector(3 downto 0);
		display: out std_logic_vector(0 to 6)
	);
end component;

signal useqEnable, useqClear, clk: std_logic;
signal pcInc, pcLoad, pcClear: std_logic;
signal pcOut: std_logic_vector(7 downto 0);
signal uop: std_logic_vector(0 to 7);
signal address_out: std_logic_vector(8 downto 0);
signal M, addr_hex1, addr_hex0, pc_hex1, pc_hex0: std_logic_vector(3 downto 0);
begin
	clk <= not(button);
	delay: lpm_counter
		generic map(lpm_width=>2)
		port map(clock=>clk, cout=>useqEnable);
	
	useqClear <= clear;
	useqEnOut <= useqEnable;

	labelG: for i in 0 to 7 generate
		ctrlSignals(i) <= uop(i) and useqEnable;
	end generate;

	pcInc <= uop(0) and useqEnable;
	pcLoad <= uop(1) and useqEnable;
	pcClear <= uop(2) and useqEnable;

	uSeq: uSequencer
		generic map(uROM_width=>17, uROM_file=>"test_uSequencer_PC_file.mif")
		port map(opcode=>"0011", uop=>uop, debug_map_addr=>address_out, enable=>useqEnable, clear=>useqClear, clock=>clk);
	
	pc: lpm_counter
		generic map(lpm_width=>8)
		port map(sload=>pcLoad, data=> "10101010", q=>pcOut, cnt_en=>pcInc, sclr=>pcClear, clock=>clk);

	M <= "000" & address_out(8);
	addr_hex1 <= address_out(7 downto 4);
	addr_hex0 <= address_out(3 downto 0);
	pc_hex1 <= pcOut(7 downto 4);
	pc_hex0 <= pcOut(3 downto 0);
	display1: seven_segment_display port map(digit=>M, display=>M_disp);
	display2: seven_segment_display port map(digit=>addr_hex1, display=>addr_hex1_disp1);
	display3: seven_segment_display port map(digit=>addr_hex0, display=>addr_hex0_disp0);
	display4: seven_segment_display port map(digit=>pc_hex1, display=>pc_Seg1);
	display5: seven_segment_display port map(digit=>pc_hex0, display=>pc_Seg0);	
end structural;