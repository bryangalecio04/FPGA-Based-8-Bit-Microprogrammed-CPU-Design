library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity cpu is
	port(
		button, clear: in std_logic;
		Z_FLAG: out std_logic_vector(0 to 0);
		R0SegHi, R0SegLo, R1SegHi, R1SegLo, pcSegHi, pcSegLo, spSegHi, spSegLo: out std_logic_vector(0 to 6)
	);
end cpu;

architecture structural of cpu is
component uSequencer is
	generic(
		uROM_width: integer := 10;
		uROM_file: string := ""
	);
	port(
		opcode: in std_logic_vector(3 downto 0);
		uop: out std_logic_vector(1 to (uROM_width-9));
		debug_map_addr: out std_logic_vector(8 downto 0);
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

-- CLOCK / CONTROL SIGNALS
signal CLOCK, useqEnable, useqClear: std_logic;
signal PC_LOAD, PC_CLEAR, PC_INC, IR_LOAD, WRITE_SEL, MAR_LOAD, MDR_SEL, MDR_LOAD: std_logic;
signal R0_ENABLE, R0_LOAD, R1_ENABLE, R1_LOAD, ALU_SEL, Z_LOAD, JUMP_SEL, JUMPZ_SEL: std_logic;
signal SP_ENABLE, SP_LOAD, SP_INC, SP_DEC, M: std_logic;

-- DATA PATH SIGNALS (8-bit registers / ALU)
signal PC_OUT, IR_OUT, MAR_OUT, MEM_OUT, MDR_OUT: std_logic_vector(7 downto 0);
signal MAR_MUX_OUT, MDR_MUX_OUT: std_logic_vector(7 downto 0);
signal R0_OUT, R0_MUX_OUT, R1_OUT, R1_MUX_OUT: std_logic_vector(7 downto 0);
signal ALU_A, ALU_B, ALU_OUT: std_logic_vector(7 downto 0);
signal SP_OUT: std_logic_vector(7 downto 0);

-- MUX SELECT SIGNALS
signal MAR_SEL, MDR_MUX_SEL, R0_SEL, R1_SEL: std_logic_vector(1 downto 0);
signal V_MUX_SEL, V_SEL, Z_SEL: std_logic_vector(0 to 0);

-- 1-BIT MUX
signal V_MUX_0, V_MUX_1: std_logic;
signal V_MUX_OUT, Z_MUX_OUT, Z_OUT: std_logic_vector(0 to 0);

-- MUX DATA ARRAYS
signal MAR_MUX_DATA, MDR_MUX_DATA, R0_MUX_DATA, R1_MUX_DATA: std_logic_2D(3 downto 0, 7 downto 0);
signal V_MUX_DATA, Z_MUX_DATA: std_logic_2D(1 downto 0, 0 to 0);

-- MICROSEQUENCER / UOP SIGNALS
signal uop: std_logic_vector(1 to 24);
signal m_next_address: std_logic_vector(8 downto 0);

begin
	CLOCK <= not(button);
	delay: lpm_counter
		generic map(lpm_width=>2)
		port map(clock=>CLOCK, cout=>useqEnable);

	useqClear <= clear;
	PC_CLEAR <= uop(1) and useqEnable;
	PC_INC <= uop(2) and useqEnable;
	IR_LOAD <= uop(3);
	WRITE_SEL <= uop(4) and useqEnable;
	MAR_SEL(1) <= uop(5) and useqEnable;
	MAR_SEL(0) <= uop(6) and useqEnable;
	MAR_LOAD <= uop(7) and useqEnable;
	MDR_SEL <= uop(8) and useqEnable;
	MDR_LOAD <= uop(9) and useqEnable;
	R0_SEL(1) <= uop(10) and useqEnable;
	R0_SEL(0) <= uop(11) and useqEnable;
	R0_LOAD <= uop(12) and useqEnable;
	R1_SEL(1) <= uop(13) and useqEnable;
	R1_SEL(0) <= uop(14) and useqEnable;
	R1_LOAD <= uop(15) and useqEnable;
	ALU_SEL <= uop(16) and useqEnable;
	V_SEL(0) <= uop(17) and useqEnable;
	Z_SEL(0) <= uop(18) and useqEnable;
	Z_LOAD <= uop(19) and useqEnable;
	JUMP_SEL <= uop(20) and useqEnable;
	JUMPZ_SEL <= uop(21) and useqEnable;
	SP_LOAD <= uop(22) and useqEnable;
	SP_INC <= uop(23) and useqEnable;
	SP_DEC <= uop(24) and useqEnable;

	PC_LOAD <= (JUMPZ_SEL and Z_OUT(0)) or JUMP_SEL;
	R0_ENABLE <= R0_LOAD and not(IR_OUT(0));
	R1_ENABLE <= R1_LOAD and IR_OUT(0);
	SP_ENABLE <= SP_INC or SP_DEC;
	V_MUX_0 <= R0_OUT(0) OR R0_OUT(1) OR R0_OUT(2) OR R0_OUT(3) OR R0_OUT(4) OR R0_OUT(5) OR R0_OUT(6) OR R0_OUT(7);
	V_MUX_1 <= R1_OUT(0) OR R1_OUT(1) OR R1_OUT(2) OR R1_OUT(3) OR R1_OUT(4) OR R1_OUT(5) OR R1_OUT(6) OR R1_OUT(7);
	V_MUX_SEL(0) <= V_SEL(0) and IR_OUT(0);

	process (IR_OUT)
	begin
		if IR_OUT(0) = '0' then
			ALU_A <= R0_OUT;
			ALU_B <= R1_OUT;
		else
			ALU_A <= R1_OUT;
			ALU_B <= R0_OUT;
		end if;
	end process;

	PC: lpm_counter
		generic map(lpm_width=>8)
		port map(sload=>PC_LOAD, data=>MDR_OUT, q=>PC_OUT, cnt_en=>PC_INC, sclr=>PC_CLEAR, clock=>CLOCK);

	IR: lpm_ff
		generic map(lpm_width=>8)
		port map(enable=>IR_LOAD, data=>MDR_OUT, q=>IR_OUT, clock=>CLOCK);

	uSeq: uSequencer
		generic map(uROM_width=>33, uROM_file=>"rom.mif")
		port map(opcode=>IR_OUT(7 downto 4), uop=>uop, debug_map_addr=>m_next_address, enable=>useqEnable, clear=>useqClear, clock=>CLOCK);

	MAR_MUX_LOOP: for i in 0 to 7 generate
		MAR_MUX_DATA(0, i) <= PC_OUT(i);
		MAR_MUX_DATA(1, i) <= MDR_OUT(i);
		MAR_MUX_DATA(2, i) <= SP_OUT(i);
		MAR_MUX_DATA(3, i) <= '0';
	end generate;

	MAR_MUX: lpm_mux
		generic map(lpm_width=>8, lpm_size=>4, lpm_widths=>2)
		port map(data=>MAR_MUX_DATA, result=>MAR_MUX_OUT, sel=>MAR_SEL);

	MAR: lpm_ff
		generic map(lpm_width=>8)
		port map(enable=>MAR_LOAD, data=>MAR_MUX_OUT, q=>MAR_OUT, clock=>CLOCK);

	RAM: lpm_ram_dq
		generic map(lpm_widthad=>8, lpm_width=>8, lpm_file=>"ram.mif")
		port map(address=>MAR_OUT, data=>MDR_OUT, q=>MEM_OUT, inclock=>CLOCK, outclock=>CLOCK, we=>WRITE_SEL);

	MDR_MUX_LOOP: for i in 0 to 7 generate
		MDR_MUX_DATA(0, i) <= MEM_OUT(i);
		MDR_MUX_DATA(1, i) <= R0_OUT(i);
		MDR_MUX_DATA(2, i) <= MEM_OUT(i);
		MDR_MUX_DATA(3, i) <= R1_OUT(i);
	end generate;

	MDR_MUX: lpm_mux
		generic map(lpm_width=>8, lpm_size=>4, lpm_widths=>2)
		port map(data=>MDR_MUX_DATA, result=>MDR_MUX_OUT, sel=>(IR_OUT(0) & MDR_SEL));

	MDR: lpm_ff
		generic map(lpm_width=>8)
		port map(enable=>MDR_LOAD, data=>MDR_MUX_OUT, q=>MDR_OUT, clock=>CLOCK);

	ALU: lpm_add_sub
		generic map (lpm_width=>8)
		port map (dataa=>ALU_A, datab=>ALU_B, result=>ALU_OUT, add_sub=>ALU_SEL);

	R0_MUX_LOOP: for i in 0 to 7 generate
		R0_MUX_DATA(0, i) <= MDR_OUT(i);
		R0_MUX_DATA(1, i) <= ALU_OUT(i);
		R0_MUX_DATA(2, i) <= R1_OUT(i);
		R0_MUX_DATA(3, i) <= '0';
	end generate;

	R0_MUX: lpm_mux
		generic map(lpm_width=>8, lpm_size=>4, lpm_widths=>2)
		port map(data=>R0_MUX_DATA, result=>R0_MUX_OUT, sel=>R0_SEL);

	REG0: lpm_ff
		generic map(lpm_width=>8)
		port map(enable=>R0_ENABLE, data=>R0_MUX_OUT, q=>R0_OUT, clock=>CLOCK);

	R1_MUX_LOOP: for i in 0 to 7 generate
		R1_MUX_DATA(0, i) <= MDR_OUT(i);
		R1_MUX_DATA(1, i) <= ALU_OUT(i);
		R1_MUX_DATA(2, i) <= R0_OUT(i);
		R1_MUX_DATA(3, i) <= '0';
	end generate;

	R1_MUX: lpm_mux
		generic map(lpm_width=> 8, lpm_size=> 4, lpm_widths=> 2)
		port map(data=>R1_MUX_DATA, result=>R1_MUX_OUT, sel=>R1_SEL);

	REG1: lpm_ff
		generic map(lpm_width=>8)
		port map(enable=>R1_ENABLE, data=>R1_MUX_OUT, q=>R1_OUT, clock=>CLOCK);

	STACK_POINTER: lpm_counter
		generic map(lpm_width=>8)
		port map(sload=>SP_LOAD, data=>MDR_OUT, q=>SP_OUT, cnt_en=>SP_ENABLE, updown=>SP_INC, clock=>CLOCK);

	V_MUX_DATA(0, 0) <= V_MUX_0;
	V_MUX_DATA(1, 0) <= V_MUX_1;

	V_MUX: lpm_mux
		generic map(lpm_width=>1, lpm_size=>2, lpm_widths=>1)
		port map(data=>V_MUX_DATA, result=>V_MUX_OUT, sel=>V_MUX_SEL);

	Z_MUX_DATA(0, 0) <= not V_MUX_OUT(0);
	Z_MUX_DATA(1, 0) <= V_MUX_OUT(0);

	Z_MUX: lpm_mux
		generic map(lpm_width=>1, lpm_size=>2, lpm_widths=>1)
		port map(data=>Z_MUX_DATA, result=>Z_MUX_OUT, sel=>Z_SEL);

	REG_Z: lpm_ff
		generic map(lpm_width=>1)
		port map(enable=>Z_LOAD, data=>Z_MUX_OUT, q=>Z_OUT, clock=>CLOCK);

	Z_FLAG <= Z_OUT;

	R0Hi: seven_segment_display port map(digit=>R0_OUT(7 downto 4), display=>R0SegHi);
	R0Lo: seven_segment_display port map(digit=>R0_OUT(3 downto 0), display=>R0SegLo);
	R1Hi: seven_segment_display port map(digit=>R1_OUT(7 downto 4), display=>R1SegHi);
	R1Lo: seven_segment_display port map(digit=>R1_OUT(3 downto 0), display=>R1SegLo);
	pcHi: seven_segment_display port map(digit=>PC_OUT(7 downto 4), display=>pcSegHi);
	pcLo: seven_segment_display port map(digit=>PC_OUT(3 downto 0), display=>pcSegLo);
	spHi: seven_segment_display port map(digit=>SP_OUT(7 downto 4), display=>spSegHi);
	spLo: seven_segment_display port map(digit=>SP_OUT(3 downto 0), display=>spSegLo);

end structural;