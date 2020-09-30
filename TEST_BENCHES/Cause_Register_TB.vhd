library IEEE;
use IEEE.std_logic_1164.all;
entity Cause_Register_TB is
end Cause_Register_TB;



architecture testbench of Cause_register_TB is

signal cause_in_TB:  std_logic_vector(31 downto 0);
signal exception_type_TB:  std_logic_vector(4 downto 0);
signal arithmetic_overflow_TB,undefined_instr_TB:  std_logic;
signal cause_out_TB:  std_logic_vector(31 downto 0);

signal sim_end : boolean := false;


component Cause_register is port (
	cause_in: in std_logic_vector(31 downto 0);
	exception_type: in std_logic_vector(4 downto 0);
	arithmetic_overflow,undefined_instr: in std_logic;
	cause_out: out std_logic_vector(31 downto 0));


end component;


constant period: time := 50 ns;

begin

DUT : Cause_register
	  port map(
		cause_in=>cause_in_TB,
		exception_type=>exception_type_TB,
		arithmetic_overflow=>arithmetic_overflow_TB,
		undefined_instr=>undefined_instr_TB,
		cause_out=>cause_out_TB
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




cause_in_TB<="00000000000000000100000000000000";
exception_type_TB<="01100";
arithmetic_overflow_TB<='1';
undefined_instr_TB<='0';




wait for period;
assert(cause_out_TB = "10000000000000000000000110000000")
report " Test cause out arithmetic failed" severity error;


cause_in_TB<="00000000000000000100000000000000";
exception_type_TB<="01010";
arithmetic_overflow_TB<='0';
undefined_instr_TB<='1';

wait for period;
assert(cause_out_TB = "10000000000000000000000000000000")
report " Test cause out undefined failed" severity error;


sim_end <= true; -- signal the end of the stimuli
wait;

end process;
end testbench;







