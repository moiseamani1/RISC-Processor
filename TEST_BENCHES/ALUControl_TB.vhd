library ieee;
use ieee.std_logic_1164.all;

ENTITY ALUControl_TB is
	
END ALUControl_TB;

ARCHITECTURE testbench of ALUControl_TB is
--
	signal ALUOp_TB       :std_logic_vector(2 downto 0);
	signal Funct_TB       :std_logic_vector(5 downto 0);
	signal ALUCont_out_TB : std_logic_vector(3 downto 0);
signal sim_end : boolean := false;	
component ALUControl is
	port (
		ALUOp       : in  std_logic_vector(2 downto 0);
		Funct       : in  std_logic_vector(5 downto 0);
		ALUCont_out : out std_logic_vector(3 downto 0));
END component;



constant period: time := 100 ns;

begin
DUT : ALUControl
	  port map(
	  ALUOp => ALUOp_TB,
	  Funct => Funct_TB,
	  ALUCont_out => ALUCont_out_TB
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


--		ALUControl_func <=
--			"0001" when "100000",
--			"0010" when "100100",
--			"0011" when "100101",
--			"0100" when "100111",
--			"0101" when "001100",
--			"0110" when "001101",
--			"0111" when "000000",
--			"1000" when "000010",
--			"1100" when "101010",
--			"1111" when others;
--

Funct_TB <="100000";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "0001")
report "ALUControl_func Test 1 failed" severity error;


Funct_TB <="100100";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "0010")
report "ALUControl_func Test 2 failed" severity error;


Funct_TB <="100101";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "0011")
report "ALUControl_func Test 3 failed" severity error;




Funct_TB <="100111";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "0100")
report "ALUControl_func Test 4 failed" severity error;


Funct_TB <="001100";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "0101")
report "ALUControl_func Test 5 failed" severity error;


Funct_TB <="001101";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "0110")
report "ALUControl_func Test 6 failed" severity error;


Funct_TB <="000000";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "0111")
report "ALUControl_func Test 7 failed" severity error;

Funct_TB <="000010";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "1000")
report "ALUControl_func Test 8 failed" severity error;


Funct_TB <="101010";
ALUOp_TB <="000";

wait for period;
assert(ALUCont_out_TB = "1100")
report "ALUControl_func Test 9 failed" severity error;


--		ALUControl_op <=
--			"0001" when "001",
--			"1010" when "010",
--			"1011" when "011",
--			"1101" when "100",
--			"1111" when others;
--
--

Funct_TB <="000000";
ALUOp_TB <="001";

wait for period;
assert(ALUCont_out_TB = "0001")
report "ALUControl_op Test 1 failed" severity error;
Funct_TB <="000000";
ALUOp_TB <="010";

wait for period;
assert(ALUCont_out_TB = "1010")
report "ALUControl_op Test 2 failed" severity error;

Funct_TB <="000000";
ALUOp_TB <="011";

wait for period;
assert(ALUCont_out_TB = "1011")
report "ALUControl_op Test 3 failed" severity error;


Funct_TB <="000000";
ALUOp_TB <="100";

wait for period;
assert(ALUCont_out_TB = "1101")
report "ALUControl_op Test 4 failed" severity error;

sim_end <= true; -- signal the end of the stimuli
wait;

end process;



END testbench;
