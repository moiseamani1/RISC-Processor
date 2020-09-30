library IEEE;
use IEEE.std_logic_1164.all;
entity Cause_register is port (
	cause_in: in std_logic_vector(31 downto 0);
	exception_type: in std_logic_vector(4 downto 0);
	arithmetic_overflow,undefined_instr: in std_logic;
	cause_out: out std_logic_vector(31 downto 0));


end Cause_register;

architecture arch_cause of Cause_register is

signal arithmetic_overflow_out: std_logic_vector(31 downto 0):="10000000000000000000000110000000";--8000018 hex
signal undefined_instr_out: std_logic_vector(31 downto 0):="10000000000000000000000000000000";--8000000 hex;
signal arithSignal,undefSignal: std_logic;
begin

arithSignal<=(not exception_type(4)) and exception_type(3) and exception_type(2) and (not exception_type(1)) and ( not exception_type(0));
undefSignal<=(not exception_type(4)) and exception_type(3) and (not exception_type(2)) and  exception_type(1) and (not exception_type(0));

cause_out<=((arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&
arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&
arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal&arithSignal) and 
arithmetic_overflow_out)or (
(undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&
undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&
undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal&undefSignal)
and undefined_instr_out);



end arch_cause;
