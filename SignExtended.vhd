
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY SignExtended IS
	port (
		SignExtendInput  :  in  std_logic_vector(15 downto 0);
		SignExtendOuput :  out std_logic_vector(31 downto 0));
END SignExtended;

ARCHITECTURE SignExtend_arch of SignExtended is
--
	signal Checkone   : std_logic_vector(15 downto 0) := (others=>'1');
	signal Checkzero  : std_logic_vector(15 downto 0) := (others=>'0');

	signal temp: std_logic_vector(31 downto 0);

--
BEGIN

	gen: for i in 0 to 31 generate
	 temp(i) <= SignExtendInput(15);
   	 end generate;


	SignExtendOuput <= ((Checkone  & SignExtendInput)  AND temp) or
	            ((Checkzero & SignExtendInput)  AND (not temp));
END SignExtend_arch;
