library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity PC is
port ( 	  inputAddr : in  STD_LOGIC_VECTOR (31 downto 0);
           outputAddr : out  STD_LOGIC_VECTOR (31 downto 0);
			  Rst   : in  std_logic;
			  CLK : in STD_LOGIC);
	end PC;
ARCHITECTURE programcounter of PC is

BEGIN


outputAddr(31)<=('0' AND Rst) OR (inputAddr(31) AND NOT Rst);
outputAddr(30)<=('0' AND Rst) OR (inputAddr(30) AND NOT Rst);
outputAddr(29)<=('0' AND Rst) OR (inputAddr(29) AND NOT Rst);
outputAddr(28)<=('0' AND Rst) OR (inputAddr(28) AND NOT Rst);
outputAddr(27)<=('0' AND Rst) OR (inputAddr(27) AND NOT Rst);
outputAddr(26)<=('0' AND Rst) OR (inputAddr(26) AND NOT Rst);
outputAddr(25)<=('0' AND Rst) OR (inputAddr(25) AND NOT Rst);
outputAddr(24)<=('0' AND Rst) OR (inputAddr(24) AND NOT Rst);
outputAddr(23)<=('0' AND Rst) OR (inputAddr(23) AND NOT Rst);
outputAddr(22)<=('0' AND Rst) OR (inputAddr(22) AND NOT Rst);
outputAddr(21)<=('0' AND Rst) OR (inputAddr(21) AND NOT Rst);
outputAddr(20)<=('0' AND Rst) OR (inputAddr(20) AND NOT Rst);
outputAddr(19)<=('0' AND Rst) OR (inputAddr(19) AND NOT Rst);
outputAddr(18)<=('0' AND Rst) OR (inputAddr(18) AND NOT Rst);
outputAddr(17)<=('0' AND Rst) OR (inputAddr(17) AND NOT Rst);
outputAddr(16)<=('0' AND Rst) OR (inputAddr(16) AND NOT Rst);
outputAddr(15)<=('0' AND Rst) OR (inputAddr(15) AND NOT Rst);
outputAddr(14)<=('0' AND Rst) OR (inputAddr(14) AND NOT Rst);
outputAddr(13)<=('0' AND Rst) OR (inputAddr(13) AND NOT Rst);
outputAddr(12)<=('0' AND Rst) OR (inputAddr(12) AND NOT Rst);
outputAddr(11)<=('0' AND Rst) OR (inputAddr(11) AND NOT Rst);
outputAddr(10)<=('0' AND Rst) OR (inputAddr(10) AND NOT Rst);
outputAddr(9)<=('0' AND Rst) OR (inputAddr(9) AND NOT Rst);
outputAddr(8)<=('0' AND Rst) OR (inputAddr(8) AND NOT Rst);
outputAddr(7)<=('0' AND Rst) OR (inputAddr(7) AND NOT Rst);
outputAddr(6)<=('0' AND Rst) OR (inputAddr(6) AND NOT Rst);
outputAddr(5)<=('0' AND Rst) OR (inputAddr(5) AND NOT Rst);
outputAddr(4)<=('0' AND Rst) OR (inputAddr(4) AND NOT Rst);
outputAddr(3)<=('0' AND Rst) OR (inputAddr(3) AND NOT Rst);
outputAddr(2)<=('0' AND Rst) OR (inputAddr(2) AND NOT Rst);
outputAddr(1)<=('0' AND Rst) OR (inputAddr(1) AND NOT Rst);
outputAddr(0)<=('0' AND Rst) OR (inputAddr(0) AND NOT Rst);

END programcounter;