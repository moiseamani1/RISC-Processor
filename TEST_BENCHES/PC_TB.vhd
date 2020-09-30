library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity PC_TB is
end PC_TB;

ARCHITECTURE testbench of PC_TB is
signal inputAddr_TB, outputAddr_TB : std_logic_vector (31 downto 0);
signal Rst_TB, CLK_TB : std_logic;
signal sim_end : boolean := false;


component PC is
port ( 	  inputAddr : in  STD_LOGIC_VECTOR (31 downto 0);
           outputAddr : out  STD_LOGIC_VECTOR (31 downto 0);
			  Rst   : in  std_logic;
			  CLK : in STD_LOGIC);
end component;

constant period: time := 50 ns;

BEGIN

DUT: PC port map(
	inputAddr => inputAddr_TB,
	outputAddr => outputAddr_TB,
	Rst => Rst_TB,
	CLK => CLK_TB);

clock_process : process
begin
	while (not sim_end) loop
		wait for period;
		end loop;
	wait;
end process;

testbench_process : process
begin 

inputAddr_TB <= "10000000000000000000000000000000";
Rst_TB <= '0';
wait for period;
assert(outputAddr_TB = "10000000000000000000000000000000")
report "Test 1 failed" severity error;

inputAddr_TB <= "10000000000000000000000000000000";
Rst_TB <= '1';
wait for period;
assert(outputAddr_TB = "00000000000000000000000000000000")
report "Test 2 failed" severity error;

sim_end <= true; -- signal the end of the stimuli
wait;

end process;
end testbench;