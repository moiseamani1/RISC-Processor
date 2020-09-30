library IEEE;
use IEEE.std_logic_1164.all;
entity RegDstMux is port (
	x,y: in std_logic_vector(4 downto 0);
	sel	: in std_logic;
	f: out std_logic_vector(4 downto 0));


end RegDstMux;

architecture RegDstMux_arch of RegDstMux is

signal temp: std_logic_vector(4 downto 0);
begin

gen: for i in 0 to 4 generate
     temp(i) <= sel;
    end generate;

f <= (y AND (temp)) or (x AND (not temp));

end RegDstMux_arch;
