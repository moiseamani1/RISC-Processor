library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity IR is
	Port ( 	readAddr  : in  std_logic_vector(31 downto 0);
				Instr : out std_logic_vector(31 downto 0));
end IR;

ARCHITECTURE RTL of IR is

signal output : std_logic_vector(31 downto 0);

component IR8Bits 
	PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
END component;

BEGIN

L1: IR8Bits port map (readAddr(7 DOWNTO 0), '1', output);

Instr <= output;

END RTL;