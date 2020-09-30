library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY MainALU_TB IS
	
END MainALU_TB;

ARCHITECTURE testbench of MainALU_TB is

	signal x_TB      :   std_logic_vector(31 downto 0);
	signal y_TB:   std_logic_vector(31 downto 0);
	signal op_TB     :   std_logic_vector(3 downto 0);
	signal outALU_TB :  std_logic_vector(31 downto 0);
	signal Zero_TB   :  std_logic;
	signal Overflow_TB: std_logic;



signal sim_end : boolean := false;	
component MainALU IS
	port (
		x      : in  std_logic_vector(31 downto 0);
		y      : in  std_logic_vector(31 downto 0);
		op     : in  std_logic_vector(3 downto 0);
		outALU : out std_logic_vector(31 downto 0);
		Zero   : out std_logic;
		Overflow:out std_logic);
END component;

constant period: time := 100 ns;

begin
DUT : MainALU
	  port map(
	  x => x_TB,
	  y => y_TB,
	  op => op_TB,
	  outALU => outALU_TB,
	  Zero => Zero_TB,
	Overflow=>Overflow_TB);

clock_process : process
begin
	while (not sim_end) loop
		wait for period;
		end loop;
	wait;
end process;


testbench_process : process

--	op_shifter	<=
--		'0' when op="0111" else
--		'1' when op="1000" else
--		'X';
--

begin


--OutALU tests


x_TB <="11111111111111111111111111111111";
y_TB <="11111111111111111111111111111111";
op_TB<="0001";


wait for period;
assert(Overflow_TB = '1')
report "Test FAOut Overflow sum failed" severity error;




x_TB <="10000000000000000000000000000000";
y_TB <="00000000000111100011000000000000";
op_TB<="0001";


wait for period;
assert(outALU_TB = "10000000000111100011000000000000")
report "Test FAOut sum failed" severity error;



x_TB <="10000000000000000000000000000000";
y_TB <="00000000000111100011000000000000";
op_TB<="0010";


wait for period;
assert(outALU_TB = "00000000000000000000000000000000")
report "Test x and y failed" severity error;

x_TB <="10000000000000000000000000000000";
y_TB <="10000000000111100011000000000000";
op_TB<="0011";


wait for period;
assert(outALU_TB = "10000000000111100011000000000000")
report "Test x or y failed" severity error;

x_TB <="10000000000000000000000000000000";
y_TB <="10000000000111100011000000000000";
op_TB<="0100";


wait for period;
assert(outALU_TB = (x_TB nor y_TB))
report "Test x nor y failed" severity error;

x_TB <="10000000000000000000000000000000";
y_TB <="10000000000111100011000000000000";
op_TB<="0101";

wait for period;
assert(outALU_TB = "10000000000000000000000000000000")
report "Test x and y failed" severity error;


x_TB <="10000000000000000000000000000000";
y_TB <="10000000000111100011000000000000";
op_TB<="0110";

wait for period;
assert(outALU_TB = "10000000000111100011000000000000")
report "Test x or y failed" severity error;

x_TB <="10000000000000000000000000000000";
y_TB <="00000000000111100011000000000000";
op_TB<="1101";

wait for period;
assert(outALU_TB = "10000000000111100011000000000000")
report "Test FAOut addi failed" severity error;

--		outALU <=
--			-- sum:
--			FAOut when "0001",
--			-- and:
--			x and y when "0010",
--			-- or:
--			x or y when "0011",
--			-- nor:
--			x nor y when "0100",
--			-- and immediate:
--			x and y when "0101",
--			-- or immediate:
--			x or y when "0110",
--			-- shift left:
--			outShift  when "0111",
--			-- shift right
--			outShift  when "1000",
--			-- slt
--			outShift when "1100",
--			-- addi
--			FAOut when "1101",
--			x when others;



--Zero test
x_TB <="10000000000000000000000000000000";
y_TB <="10000000000000000000000000000000";
op_TB<="1010";

wait for period;
assert(Zero_TB = '1')
report "Test beq failed" severity error;

x_TB <="10000000000000000000000000000000";
y_TB <="10000000000111100011000000000000";
op_TB<="1011";
wait for period;
assert(Zero_TB = '1')
report "Test bne failed" severity error;


--	Zero <=
--		-- beq
--		'1' when ((x = y) and (op = "1010")) else
--		-- bne
--		'1' when ((x /= y) and (op = "1011")) else
--		'0';

sim_end <= true; -- signal the end of the stimuli
wait;

end process;

END testbench;
