library IEEE;
use IEEE.std_logic_1164.all;
entity Bit_32_Mux is port (
	x,y: in std_logic_vector(31 downto 0);
	sel	: in std_logic;
	f: out std_logic_vector(31 downto 0));


end Bit_32_Mux;

architecture behv of Bit_32_Mux is

signal temp: std_logic_vector(31 downto 0);
begin


gen: for i in 0 to 31 generate
     temp(i) <= sel;
    end generate;

f <= (x AND (temp)) or (y AND (not temp));

end behv;
