library IEEE;
use IEEE.std_logic_1164.all;
entity RegDstMux_TB is 
end RegDstMux_TB;

architecture testbench of RegDstMux_TB is
signal x_TB, y_TB : std_logic_vector(4 downto 0);
signal sel_TB : std_logic;
signal f_TB : std_logic_vector(4 downto 0);
signal sim_end : boolean := false;

component RegDstMux is port (
	x,y: in std_logic_vector(4 downto 0);
	sel	: in std_logic;
	f: out std_logic_vector(4 downto 0));
end component;
constant period: time := 50 ns;

begin
DUT : RegDstMux
	  port map(
	  x => x_TB,
	  y => y_TB,
	  sel => sel_TB,
	  f => f_TB);

clock_process : process
begin
	while (not sim_end) loop
		wait for period;
		end loop;
	wait;
end process;


testbench_process : process
begin

x_TB <="10000";
y_TB <="10111";
sel_TB <= '0';
wait for period;
assert(f_TB = "10000")
report "Test 1 failed" severity error;

---

x_TB <="10000";
y_TB <="10111";
sel_TB <= '1';
wait for period;
assert(f_TB = "10111")
report "Test 2 failed" severity error;

sim_end <= true; -- signal the end of the stimuli
wait;

end process;
end testbench;
