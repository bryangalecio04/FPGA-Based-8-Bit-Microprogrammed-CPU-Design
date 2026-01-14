library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity test_ram is
	port(
		button, clear: in std_logic;
		useqEnOut: out std_logic;
		marData: in std_logic_vector(7 downto 0); -- connected to switches, input to MAR
		marSegHi, marSegLo, mdrSegHi, mdrSegLo, nextAddrHi, nextAddrLo: out std_logic_vector(0 to 6);
		ctrlSignals: out std_logic_vector(0 to 7)
	);
end test_ram;

architecture structural of test_ram is
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

signal clk, useqEnable, useqClear, marLoad, mdrLoad, memWE: std_logic;
signal uop: std_logic_vector(0 to 7);
signal marADig, marBDig, mdrADig, mdrBDig, nextAADig, nextABDig: std_logic_vector(3 downto 0);
signal marOut, memOut, mdrOut: std_logic_vector(7 downto 0);
signal address_out: std_logic_vector(8 downto 0);
begin
	clk <= not(button);
	useqClear <= clear;
	useqEnOut <= useqEnable;
	marLoad <= uop(0) and useqEnable;
	mdrLoad <= uop(1) and useqEnable;
	memWE <= uop(2) and useqEnable;
	
	marADig <= marOut(7 downto 4);
	marBDig <= marOut(3 downto 0);
	mdrADig <= mdrOut(7 downto 4);
	mdrBDig <= mdrOut(3 downto 0);
	nextAADig <= address_out(7 downto 4);
	nextABDig <= address_out(3 downto 0);

	labelG: for i in 0 to 7 generate
		ctrlSignals(i) <= uop(i) and useqEnable;
	end generate;

	delay: lpm_counter generic map(lpm_width=>2) port map(clock=>clk, cout=>useqEnable);
	microSequencer: uSequencer
		generic map(uROM_width=>17, uROM_file=>"test_rom_file.mif")
		port map(opcode=>"0000", uop=>uop, debug_map_addr=>address_out, enable=>useqEnable, clear=>useqClear, clock=>clk);
	marReg: lpm_ff
		generic map(lpm_width=>8)
		port map(data=>marData, q=>marOut, clock=>clk, enable=>marLoad);
	mdrReg: lpm_ff
		generic map(lpm_width=>8)
		port map(data=>memOut, q=>mdrOut, clock=>clk, enable=>mdrLoad);
	ram: lpm_ram_dq
		generic map(lpm_widthad=>8, lpm_width=>8, lpm_file=>"test_ram_file.mif")
		port map(data=>mdrOut, address=>marOut, q=>memOut, inclock=>clk, outclock=>clk, we=>memWE);
	marA: seven_segment_display port map(digit=>marADig, display=>marSegHi);
	marB: seven_segment_display port map(digit=>marBDig, display=>marSegLo);
	mdrA: seven_segment_display port map(digit=>mdrADig, display=>mdrSegHi);
	mdrB: seven_segment_display port map(digit=>mdrBDig, display=>mdrSegLo);
	nextAddressA: seven_segment_display port map(digit=>nextAADig, display=>nextAddrHi);
	nextAddressB: seven_segment_display port map(digit=>nextABDig, display=>nextAddrLo);
end structural;