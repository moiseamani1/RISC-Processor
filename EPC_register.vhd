library IEEE;
use IEEE.std_logic_1164.all;
entity EPC_register is port (
	current_address: in std_logic_vector(31 downto 0);
	CLK,RESET:in std_logic;
	out_epc: out std_logic_vector(31 downto 0));


end EPC_register;

architecture arch_EPC of EPC_register is

signal temp_CLK,temp_RESET:  std_logic_vector(31 downto 0);

begin

temp_CLK<=CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK&CLK;
temp_RESET<=RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET&RESET;


out_epc<=current_address and temp_CLK and (not temp_RESET);

end arch_EPC;
