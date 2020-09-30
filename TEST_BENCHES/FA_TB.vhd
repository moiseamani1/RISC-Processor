library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity FA_TB is
end FA_TB;

architecture testbench of FA_TB is




signal a_TB,b_TB,c_TB : std_logic;
signal sum_TB,carry_TB : std_logic;
signal sim_end : boolean := false;

component FA is
port(a,b,c : in std_logic; 
	  sum,carry : out std_logic
	  );
end component;

constant period: time := 50 ns;

begin

DUT: FA port map(
	a => a_TB,
	b => b_TB,
	c => c_TB,
	sum => sum_TB,
	carry => carry_TB);
	
clock_process : process
begin
	while (not sim_end) loop
		wait for period;
		end loop;
	wait;
end process;

testbench_process : process
begin

a_TB <= '0';
b_TB <= '0';
c_TB <= '0';
wait for period;
assert(sum_TB='0')
report "Test 1 s failed" severity error;
assert(carry_TB='0')
report "Test 1 carry failed" severity error;

--

a_TB <= '0';
b_TB <= '0';
c_TB <= '1';
wait for period;
assert(sum_TB='1')
report "Test 2 s failed" severity error;
assert(carry_TB='0')
report "Test 2 carry failed" severity error;

--

a_TB <= '0';
b_TB <= '1';
c_TB <= '0';
wait for period;
assert(sum_TB='1')
report "Test 3 s failed" severity error;
assert(carry_TB='0')
report "Test 3 carry failed" severity error;

--

a_TB <= '0';
b_TB <= '1';
c_TB <= '1';
wait for period;
assert(sum_TB='0')
report "Test 4 s failed" severity error;
assert(carry_TB='1')
report "Test 4 carry failed" severity error;

--

a_TB <= '1';
b_TB <= '0';
c_TB <= '0';
wait for period;
assert(sum_TB='1')
report "Test 5 s failed" severity error;
assert(carry_TB='0')
report "Test 5 carry failed" severity error;

--

a_TB <= '1';
b_TB <= '0';
c_TB <= '1';
wait for period;
assert(sum_TB='0')
report "Test 6 s failed" severity error;
assert(carry_TB='1')
report "Test 6 carry failed" severity error;

--

a_TB <= '1';
b_TB <= '1';
c_TB <= '0';
wait for period;
assert(sum_TB='0')
report "Test 7 s failed" severity error;
assert(carry_TB='1')
report "Test 7 carry failed" severity error;

--

a_TB <= '1';
b_TB <= '1';
c_TB <= '1';
wait for period;
assert(sum_TB='1')
report "Test 8 s failed" severity error;
assert(carry_TB='1')
report "Test 8 carry failed" severity error;

sim_end <= true; -- signal the end of the stimuli
wait;

end process;
end testbench;
