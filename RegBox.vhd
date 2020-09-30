library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY RegBox is
	port (
		CLK 			: in   std_logic;
		ReadReg1      : in   std_logic_vector(4 downto 0);
		ReadReg2      : in   std_logic_vector(4 downto 0);
		WriteReg  : in   std_logic_vector(4 downto 0);
		WriteData : in   std_logic_vector(31 downto 0);
		RegWrite    : in   std_logic;
		ReadData1     : out  std_logic_vector(31 downto 0);
		ReadData2     : out  std_logic_vector(31 downto 0));
END RegBox;

ARCHITECTURE RTL of RegBox is

signal output1, output2 : std_logic_vector (31 downto 0);

component RegBoxTest
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC;
		data_a		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren_a		: IN STD_LOGIC ;
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END component;



BEGIN

L1: RegBoxTest port map (ReadReg1, ReadReg2, CLK, WriteData, "00000000000000000000000000000000", RegWrite, '0', output1, output2);

ReadData1 <= output1;
ReadData2 <= output2;

END RTL;