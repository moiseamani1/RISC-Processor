library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Control_Unit_TB is
end Control_Unit_TB;


ARCHITECTURE testbench of Control_Unit_TB is
		signal CLK_TB      :std_logic;
		signal OPCode_TB    : std_logic_vector(5 downto 0);
		signal RegisterWrite_TB : std_logic := '0';
		signal ALUSource_TB   :std_logic;
		signal ALUOp_TB    : std_logic_vector(2 downto 0);
		signal MemWrite_TB :  std_logic;
		signal MemRead_TB :std_logic;
		signal RegisterDestination_TB   : std_logic;
		signal MemToReg_TB :std_logic;
		signal Jump_TB     :std_logic;
		signal Branch_TB   :  std_logic;

signal sim_end : boolean := false;	

component Control_Unit is
	port (
		CLK      : in std_logic;
		OPCode    : in  std_logic_vector(5 downto 0);
		RegisterWrite : out std_logic := '0';
		ALUSource   : out std_logic;
		ALUOp    : out std_logic_vector(2 downto 0);
		MemWrite : out std_logic;
		MemRead  : out std_logic;
		RegisterDestination   : out std_logic;
		MemToReg : out std_logic;
		Jump     : out std_logic;
		Branch   : out std_logic);
end component;


constant period: time := 100 ns;

begin
DUT : Control_Unit
	  port map(
	  CLK =>CLK_TB,
	  OPCode => OPCode_TB,
	  RegisterWrite => RegisterWrite_TB,
	  ALUSource => ALUSource_TB,
	  ALUOp => ALUOp_TB,
	  MemWrite => MemWrite_TB,
	  MemRead => MemRead_TB,
	  RegisterDestination => RegisterDestination_TB,
	  MemToReg => MemToReg_TB,
	  Jump =>Jump_TB,
	  Branch =>Branch_TB

);

clock_process : process
begin
	while (not sim_end) loop
		wait for period;
		end loop;
	wait;
end process;


testbench_process : process


begin

CLK_TB <='1';
OPCode_TB <="100011";--Load Word


wait for period;
assert(RegisterWrite_TB = '1')
report "Test FAOut sum failed" severity error;

assert(ALUSource_TB = '1')
report "Test FAOut sum failed" severity error;

assert(ALUOp_TB = "001")
report "Test FAOut sum failed" severity error;

assert(MemRead_TB = '1')
report "Test FAOut sum failed" severity error;

assert(MemToReg_TB = '1')
report "Test FAOut sum failed" severity error;

assert(RegisterDestination_TB = '0')
report "Test FAOut sum failed" severity error;



CLK_TB <='1';
OPCode_TB <="000000";--arithmetic functions


wait for period;
assert(RegisterWrite_TB = '1')
report "Test FAOut sum failed" severity error;


assert(ALUOp_TB = "000")
report "Test FAOut sum failed" severity error;



CLK_TB <='1';
OPCode_TB <="001000";--addition 

wait for period;
assert(RegisterWrite_TB = '1')
report "Test FAOut sum failed" severity error;

assert(ALUSource_TB = '1')
report "Test FAOut sum failed" severity error;

assert(ALUOp_TB = "100")
report "Test FAOut sum failed" severity error;

assert(RegisterDestination_TB = '0')
report "Test FAOut sum failed" severity error;



CLK_TB <='1';
OPCode_TB <="101011";--store word

wait for period;
assert(ALUSource_TB = '1')
report "Test FAOut sum failed" severity error;


assert(ALUOp_TB = "001")
report "Test FAOut sum failed" severity error;

assert(MemWrite_TB = '1')
report "Test FAOut sum failed" severity error;


CLK_TB <='1';
OPCode_TB <="000100";--branch

wait for period;
assert(ALUOp_TB = "010")
report "Test FAOut sum failed" severity error;

assert(Branch_TB = '1')
report "Test FAOut sum failed" severity error;


CLK_TB <='1';
OPCode_TB <="000101";--branch
wait for period;
assert(ALUOp_TB = "011")
report "Test FAOut sum failed" severity error;

assert(Branch_TB = '1')
report "Test FAOut sum failed" severity error;


CLK_TB <='1';
OPCode_TB <="000010";--jump
wait for period;
assert(Jump_TB = '1')
report "Test FAOut sum failed" severity error;




--		RegisterWrite <=
--			('1' and CLK) when "100011",--Load Word
--			('1' and CLK) when "000000",--arithmetic functions
--			('1' and CLK) when "001000",-- addition
--			'0' when others;
--



--		ALUSource <=
--			'1' after 2 ns when "100011", -- load word
--			'1' after 2 ns when "101011", -- store word
--			'1' after 2 ns when "001000", -- addition
--			'0' when others;
--

--		ALUOp <=
--			"000" after 2 ns when "000000", --arithmetic operation
--			"001" after 2 ns when "100011", --load
--			"001" after 2 ns when "101011", --store
--			"010" after 2 ns when "000100", --branch
--			"011" after 2 ns when "000101", --branch
--			"100" after 2 ns when "001000", --addition
--			"111" when others;




--		MemWrite <=
--			'1' after 10 ns when "101011",
--			'0' when others;
--



--    	MemRead <=
--        	'1' after 2 ns when "100011",
--        	'0' when others;



--		MemToReg <=
--			'1' after 2 ns when "100011",
--			'0' when others;




--		RegisterDestination <=
--			'0' when "100011",
--			'0' when "001000",
--			'1' when others;



--		Jump <=
--			'1' when "000010",
--			'0' when others;




--		Branch <=
--			'1' when "000100",
--			'1' when "000101",
--			'0' when others;

sim_end <= true; -- signal the end of the stimuli
wait;

end process;


end testbench;
