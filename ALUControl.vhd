library ieee;
use ieee.std_logic_1164.all;

ENTITY ALUControl is
	port (
		ALUOp       : in  std_logic_vector(2 downto 0);
		Funct       : in  std_logic_vector(5 downto 0);
		ALUCont_out : out std_logic_vector(3 downto 0));
END ALUControl;

ARCHITECTURE ALUControlArch of ALUControl is
--
	signal ALUControl_func: std_logic_vector(3 downto 0) := (others=>'0');
	signal ALUControl_op:   std_logic_vector(3 downto 0) := (others=>'0');

	signal tempALUControlClauseOther,tempALUControlClause1,tempALUControlClause2,tempALUControlClause3,tempALUControlClause4,tempALUControlClause5,tempALUControlClause6,tempALUControlClause7,tempALUControlClause8,tempALUControlClause9: std_logic;
	signal tempSignalALUControlClauseOther,tempSignalALUControlClause1,tempSignalALUControlClause2,tempSignalALUControlClause3,tempSignalALUControlClause4,tempSignalALUControlClause5,tempSignalALUControlClause6,tempSignalALUControlClause7,tempSignalALUControlClause8,tempSignalALUControlClause9: std_logic_vector(3 downto 0);

	signal tempALUControlClauseOther_op,tempALUControlClause1_op,tempALUControlClause2_op,tempALUControlClause3_op,tempALUControlClause4_op: std_logic;
	signal tempSignalALUControlClauseOther_op,tempSignalALUControlClause1_op,tempSignalALUControlClause2_op,tempSignalALUControlClause3_op,tempSignalALUControlClause4_op: std_logic_vector(3 downto 0);

	signal tempSignalALUClauseCont_out,tempSignalALUClauseOtherCont_out: std_logic_vector(3 downto 0);
	signal tempALUClauseCont_out,tempALUClauseOtherCont_out: std_logic;



--
BEGIN
--with Funct
tempALUControlClause1<=Funct(5)AND (not Funct(4)) AND (not Funct(3)) AND (not Funct(2)) AND (not Funct(1))AND (not Funct(0));--"100000"
tempALUControlClause2<=Funct(5)AND (not Funct(4)) AND (not Funct(3))AND Funct(2)AND (not Funct(1))AND (not Funct(0));--"100100"
tempALUControlClause3<=Funct(5)AND (not Funct(4)) AND (not Funct(3))AND Funct(2)AND(not Funct(1))AND Funct(0);--"100101"

tempALUControlClause4<=Funct(5)AND not (Funct(4))AND not (Funct(3)) AND Funct(2)AND Funct(1)AND Funct(0);--"100111"

tempALUControlClause5<=(not Funct(5))AND (not Funct(4)) AND Funct(3)AND Funct(2)AND (not Funct(1))AND(not Funct(0));--"001100"

tempALUControlClause6<=(not Funct(5))AND (not Funct(4) )AND Funct(3)AND Funct(2)AND(not Funct(1))AND Funct(0);--"001101"

tempALUControlClause7<=(not Funct(5))AND (not Funct(4)) AND (not Funct(3))AND (not Funct(2)) AND (not Funct(1))AND (not Funct(0));--"000000"

tempALUControlClause8<=(not Funct(5))AND (not Funct(4)) AND(not Funct(3))AND(not Funct(2))AND Funct(1) AND (not Funct(0));--"000010"

tempALUControlClause9<=Funct(5)AND (not Funct(4)) AND Funct(3)AND (not Funct(2))AND Funct(1)AND not(Funct(0));--"101010"

tempALUControlClauseOther<= (not tempALUControlClause1) AND (not tempALUControlClause2) AND (not tempALUControlClause3) AND (not tempALUControlClause4) AND (not tempALUControlClause5) AND (not tempALUControlClause6) AND (not tempALUControlClause7) AND (not tempALUControlClause8) AND (not tempALUControlClause9);


gen: for i in 0 to 3 generate
	tempSignalALUControlClauseOther(i) <= tempALUControlClauseOther;
	tempSignalALUControlClause1(i)<= tempALUControlClause1;
	tempSignalALUControlClause2(i)<= tempALUControlClause2;
	tempSignalALUControlClause3(i)<= tempALUControlClause3;
	tempSignalALUControlClause4(i)<= tempALUControlClause4;
	tempSignalALUControlClause5(i)<= tempALUControlClause5;
	tempSignalALUControlClause6(i)<= tempALUControlClause6;
	tempSignalALUControlClause7(i)<= tempALUControlClause7;
	tempSignalALUControlClause8(i)<= tempALUControlClause8;
	tempSignalALUControlClause9(i)<= tempALUControlClause9;
    end generate;

ALUControl_func <= ("0001" AND tempSignalALUControlClause1) or ("0010" AND tempSignalALUControlClause2) or ("0011" AND tempSignalALUControlClause3) or ("0100" AND tempSignalALUControlClause4) or ("0101" AND tempSignalALUControlClause5) or ("0110" AND tempSignalALUControlClause6) or ("0111" AND tempSignalALUControlClause7) or ("1000" AND tempSignalALUControlClause8) or ("1100" AND tempSignalALUControlClause9) or  ("1111" AND tempSignalALUControlClauseOther);

--		ALUControl_func <=
--			"0001" when "100000",
--			"0010" when "100100",
--			"0011" when "100101",
--			"0100" when "100111",
--			"0101" when "001100",
--			"0110" when "001101",
--			"0111" when "000000",
--			"1000" when "000010",
--			"1100" when "101010",
--			"1111" when others;
--

--with ALUOp
tempALUControlClause1_op<= (not ALUOp(2))AND (not ALUOp(1)) AND (ALUOp(0));--"001"
tempALUControlClause2_op<= not(ALUOp(2))  AND  ALUOp(1) AND not(ALUOp(0));--"010"
tempALUControlClause3_op<= not ALUOp(2) AND  ALUOp(1)  AND (ALUOp(0));--"011"
tempALUControlClause4_op<=  ALUOp(2) AND not ALUOp(1) AND not ALUOp(0);--"100"
tempALUControlClauseOther_op<=(not tempALUControlClause1_op) AND (not tempALUControlClause2_op) AND (not tempALUControlClause3_op) AND (not tempALUControlClause4_op);


gen2: for i in 0 to 3 generate
	tempSignalALUControlClauseOther_op(i) <= tempALUControlClauseOther_op;
	tempSignalALUControlClause1_op(i)<= tempALUControlClause1_op;
	tempSignalALUControlClause2_op(i)<= tempALUControlClause2_op;
	tempSignalALUControlClause3_op(i)<= tempALUControlClause3_op;
	tempSignalALUControlClause4_op(i)<= tempALUControlClause4_op;
    end generate;




ALUControl_op<= ("0001" AND tempSignalALUControlClause1_op) or ("1010" AND tempSignalALUControlClause2_op) or ("1011" AND tempSignalALUControlClause3_op) or ("1101" AND tempSignalALUControlClause4_op) or ("1111" AND tempSignalALUControlClauseOther_op);


--		ALUControl_op <=
--			"0001" when "001",
--			"1010" when "010",
--			"1011" when "011",
--			"1101" when "100",
--			"1111" when others;
--
--

--with ALUOp
tempALUClauseCont_out<=  (not ALUOp(2))AND (not ALUOp(1)) AND (not (ALUOp(0)));--"000"
tempALUClauseOtherCont_out<= not(tempALUClauseCont_out);

gen3: for i in 0 to 3 generate
	tempSignalALUClauseOtherCont_out(i) <= tempALUClauseOtherCont_out;
	tempSignalALUClauseCont_out(i)<= tempALUClauseCont_out;

    end generate;


--		ALUCont_out <=
--			ALUControl_func when "000",
--			ALUControl_op   when others;
----

ALUCont_out <= (ALUControl_func AND tempSignalALUClauseCont_out) or (ALUControl_op AND tempSignalALUClauseOtherCont_out);

END ALUControlArch;
