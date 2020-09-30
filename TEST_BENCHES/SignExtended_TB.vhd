
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY SignExtended_TB IS
	
END SignExtended_TB;

ARCHITECTURE testbench of SignExtended_TB is
--
	signal SignExtendInput_TB  :    std_logic_vector(15 downto 0);
	signal SignExtendOuput_TB :   std_logic_vector(31 downto 0);
	signal sim_end : boolean := false;

--


component SignExtended IS
	port (
		SignExtendInput  :  in  std_logic_vector(15 downto 0);
		SignExtendOuput :  out std_logic_vector(31 downto 0));
END component;


constant period: time := 50 ns;

begin
DUT : SignExtended
	  port map(
	  SignExtendInput => SignExtendInput_TB,
	  SignExtendOuput => SignExtendOuput_TB);



clock_process : process
begin
	while (not sim_end) loop
		wait for period;
		end loop;
	wait;
end process;


testbench_process : process
begin

SignExtendInput_TB <="0100000000000000";

wait for period;
assert(SignExtendOuput_TB = "00000000000000000100000000000000")
report "Test 1 failed" severity error;


SignExtendInput_TB <="1100000000000000";

wait for period;
assert(SignExtendOuput_TB = "11111111111111111100000000000000")
report "Test 2 failed" severity error;

sim_end <= true; -- signal the end of the stimuli
wait;

end process;
END testbench;
