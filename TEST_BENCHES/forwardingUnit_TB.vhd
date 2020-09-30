library ieee;
use ieee.std_logic_1164.all;

entity forwardingUnit_TB is   
  	 
end forwardingUnit_TB;

architecture test_bench of forwardingUnit_TB is

signal IdExRS_TB, IdExRT_TB, ExMemRD_TB, MemWbRD_TB :  std_logic_vector(31 downto 0); 
signal MemWBRegWrite_TB,ExMemRegWrite_TB:  std_logic;
signal ForwardA_TB, ForwardB_TB :  std_logic_vector(1 downto 0);




signal sim_end : boolean := false;

--


component forwardingUnit is   
  	  port(
	IdExRS, IdExRT, ExMemRD, MemWbRD : in std_logic_vector(31 downto 0);
	 
	MemWBRegWrite,ExMemRegWrite: in std_logic;
 	ForwardA, ForwardB : out std_logic_vector(1 downto 0)
		
	 );
end component;


constant period: time := 50 ns;

begin

DUT : forwardingUnit
	  port map(
		IdExRS=>IdExRS_TB,
		IdExRT=>IdExRT_TB,
		ExMemRD=>ExMemRD_TB,
		MemWbRD=>MemWbRD_TB,
		ExMemRegWrite=>ExMemRegWrite_TB,
		MemWBRegWrite=>MemWBRegWrite_TB,ForwardA=>ForwardA_TB,
		ForwardB=>ForwardB_TB);



clock_process : process
begin
	while (not sim_end) loop
		wait for period;
		end loop;
	wait;
end process;

testbench_process : process
begin




IdExRS_TB<="00000000000000000100000000000000";
IdExRT_TB<="00000000000000000100000000000000";
ExMemRD_TB<="00000000000000000100000000000000";
MemWbRD_TB<="00000000000000000000000000000000";
ExMemRegWrite_TB<='1';
MemWBRegWrite_TB<='0';


wait for period;
assert(ForwardA_TB = "10")
report "Test 1-01 failed" severity error;

assert(ForwardB_TB = "10")
report "Test 2-01 failed" severity error;




IdExRS_TB<="00000000000000000100000000000000";
IdExRT_TB<="00000000000000000100000000000000";
ExMemRD_TB<="00000000000000000000000000000000";
MemWbRD_TB<="00000000000000000100000000000000";
ExMemRegWrite_TB<='0';
MemWBRegWrite_TB<='1';


wait for period;
assert(ForwardA_TB = "01")
report "Test 1-10 failed" severity error;

assert(ForwardB_TB = "01")
report "Test 2-10 failed" severity error;




IdExRS_TB<="00000000000000000100000000000000";
IdExRT_TB<="00000000000000000100000000000000";
ExMemRD_TB<="00000000000000000000000000000000";
MemWbRD_TB<="00000000000000000100000000000000";
ExMemRegWrite_TB<='0';
MemWBRegWrite_TB<='0';


wait for period;
assert(ForwardA_TB = "00")
report "Test 1- 00 failed" severity error;

assert(ForwardB_TB = "00")
report "Test 2-00 failed" severity error;


sim_end <= true; -- signal the end of the stimuli
wait;

end process;


end test_bench;