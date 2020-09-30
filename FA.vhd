library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity FA is
port (a: in std_logic;
	  b,c: in std_logic;
	  sum, carry: out std_logic
	  );
	end FA;

architecture FA_Arch of FA is
	begin
		sum<= a xor b xor c;
		carry <= (b and not(a xor b)) or  ((a xor b) and c);
	end FA_Arch;
