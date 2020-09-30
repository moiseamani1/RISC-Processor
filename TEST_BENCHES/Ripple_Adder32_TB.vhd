library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Adder32_TB is
end Ripple_Adder32_TB;

architecture testbench of Ripple_Adder32_TB is



signal a_TB,b_TB :  std_logic_vector(31 downto 0);
signal  cin_TB :  std_logic;
signal  s_TB :  std_logic_vector(31 downto 0);
signal  cout_TB :  std_logic;
signal  overflow_TB :  std_logic;

signal sim_end : boolean := false;

--inst full adder
component Ripple_Adder32 is
Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
B : in STD_LOGIC_VECTOR (31 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (31 downto 0);
Cout : out STD_LOGIC;
Overflow : out STD_LOGIC);
end component;

constant period: time := 50 ns;

BEGIN

DUT: Ripple_Adder32
port map( a=>a_TB, b=>b_TB,cin=>cin_TB,s=>s_TB,cout=>cout_TB,Overflow=>overflow_TB);

clock_process : process
begin
	while (not sim_end) loop
		wait for period;
		end loop;
	wait;
end process;




testbench_process : process
begin

a_TB <="00000000000000000000000000000111";
b_TB <="00000000000000000000000000000001";
cin_TB<='0';

wait for period;
assert(s_TB = "00000000000000000000000000001000")
report "Test for addition operation no cin;" severity error;

assert(cout_TB = '0')
report "Test for count 0 ;" severity error;

a_TB <="00000000000000000000000000000111";
b_TB <="00000000000000000000000000000001";
cin_TB<='1';

wait for period;
assert(s_TB = "00000000000000000000000000001001")
report "Test for addition operation w/ cin;" severity error;

assert(cout_TB = '0')
report "Test for cout 0;" severity error;



a_TB <="11111111111111111111111111111111";
b_TB <="11111111111111111111111111111111";
cin_TB<='1';

wait for period;
assert(s_TB = "11111111111111111111111111111111")
report "Test for addition operation w/ cin & overflow;" severity error;

assert(cout_TB = '1')
report "Test for cout 1;" severity error;



a_TB <="00000000000000000000000000000000";
b_TB <="00000000000000000000000000000000";
cin_TB<='0';

wait for period;
assert(s_TB = "00000000000000000000000000000000")
report "Test for zero" severity error;

assert(cout_TB ='0')
report "Test for ;" severity error;

sim_end <= true; -- signal the end of the stimuli
wait;

end process;
end testbench;
