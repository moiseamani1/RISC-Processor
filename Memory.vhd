library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY Memory IS
	port (  
		CLK  : in  std_logic;                     
		Address     : in  std_logic_vector(31 downto 0); 
		WriteData : in  std_logic_vector(31 downto 0); 
		MemWrite  : in  std_logic;                     
		MemRead   : in  std_logic;                    
		ReadData    : out std_logic_vector(31 downto 0);
		reset     : in  std_logic);
END Memory;

architecture RTL of memory is	 

signal output : STD_LOGIC_VECTOR(31 downto 0); 

component Memory8Bits
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		rden		: IN STD_LOGIC ;
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END component;

begin

L1: Memory8Bits port map (Address(7 downto 0), CLK, WriteData, MemRead, MemWrite, output);

ReadData <= output;

end RTL;