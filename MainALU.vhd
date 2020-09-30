library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY MainALU IS
	port (
		x      : in  std_logic_vector(31 downto 0);
		y      : in  std_logic_vector(31 downto 0);
		op     : in  std_logic_vector(3 downto 0);
		outALU : out std_logic_vector(31 downto 0);
		Zero   : out std_logic;
		Overflow:out std_logic);
END MainALU;

ARCHITECTURE MainALU_arch of MainALU is

	component Ripple_Adder32
		port (
				A : in STD_LOGIC_VECTOR (31 downto 0);
				B : in STD_LOGIC_VECTOR (31 downto 0);
			 Cin : in STD_LOGIC;
				S : out STD_LOGIC_VECTOR (31 downto 0);
			Cout : out STD_LOGIC;
			Overflow:out std_logic
			);
	end component;



	signal op_shifter: std_logic;
	signal CarryOut:   std_logic;
	signal FAOut:     std_logic_vector(31 downto 0);
	signal outShift:     std_logic_vector(31 downto 0);


	signal op_shifter_clause1,op_shifter_clause2,op_shifter_clauseOther:std_logic;

	signal outALU_clause1,outALU_clause2,outALU_clause3,outALU_clause4,outALU_clause5,outALU_clause6,outALU_clause7,outALU_clause8,outALU_clause9,outALU_clause10,outALU_clauseOther:std_logic;
	signal outALUSignal_clause1,outALUSignal_clause2,outALUSignal_clause3,outALUSignal_clause4,outALUSignal_clause5,outALUSignal_clause6,outALUSignal_clause7,outALUSignal_clause8,outALUSignal_clause9,outALUSignal_clause10,outALUSignal_clauseOther:std_logic_vector(31 downto 0);

	signal zero_clause1,zero_clause2,zero_clauseOther:std_logic;
	signal beq,bneq:std_logic;
	signal temp_beq,temp_bneq:std_logic_vector(31 downto 0);

BEGIN

op_shifter_clause1<= (not op(3)) and op(2) and op(1) and op(0);
op_shifter_clause2<=  op(3) and (not op(2)) and (not op(1)) and (not op(0));
op_shifter_clauseOther<= (not op_shifter_clause1) and (not op_shifter_clause2);

	op_shifter<= ('0' and op_shifter_clause1) or ('1' and op_shifter_clause2) or (op_shifter_clauseOther);

--	op_shifter	<=
--		'0' when op="0111" else
--		'1' when op="1000" else
--		'X';
--

	FA_ALU: Ripple_Adder32 port map(x, y, '0', FAOut,CarryOut, Overflow);

--with op
outALU_clause1<= (not op(3)) and (not op(2)) and (not op(1)) and op(0);
outALU_clause2<= (not op(3)) and (not op(2)) and op(1) and (not op(0));
outALU_clause3<=(not op(3)) and (not op(2)) and op(1) and  op(0);
outALU_clause4<= (not op(3)) and  op(2) and (not op(1)) and (not op(0));
outALU_clause5<=(not op(3)) and  op(2) and (not op(1)) and op(0);
outALU_clause6<=(not op(3)) and  op(2) and op(1) and (not op(0));
outALU_clause7<=(not op(3)) and  op(2) and op(1) and op(0);
outALU_clause8<= op(3) and (not op(2)) and (not op(1)) and (not op(0));
outALU_clause9<=op(3) and op(2) and (not op(1)) and (not op(0));
outALU_clause10<=op(3) and op(2) and (not op(1)) and  op(0);
outALU_clauseOther<= (not outALU_clause1) and (not outALU_clause2) and (not outALU_clause3) and (not outALU_clause4) and (not outALU_clause5)and (not outALU_clause6) and (not outALU_clause7)and (not outALU_clause8) and (not outALU_clause9)and (not outALU_clause10);

gen: for i in 0 to 31 generate
outALUSignal_clause1(i) <= outALU_clause1;
outALUSignal_clause2(i) <= outALU_clause2;
outALUSignal_clause3(i) <= outALU_clause3;
outALUSignal_clause4(i) <= outALU_clause4;
outALUSignal_clause5(i) <= outALU_clause5;
outALUSignal_clause6(i) <= outALU_clause6;
outALUSignal_clause7(i) <= outALU_clause7;
outALUSignal_clause8(i) <= outALU_clause8;
outALUSignal_clause9(i) <= outALU_clause9;
outALUSignal_clause10(i) <= outALU_clause10;
outALUSignal_clauseOther(i) <= outALU_clauseOther;
    end generate;

outALU<= (FAOut and outALUSignal_clause1)
or ((x and y)and outALUSignal_clause2)
or ((x or y) and outALUSignal_clause3)
or ((x nor y)and outALUSignal_clause4)
or ((x and y)and outALUSignal_clause5)
or ((x or y) and outALUSignal_clause6)
or (outShift and outALUSignal_clause7)
or (outShift and outALUSignal_clause8)
or  (outShift and outALUSignal_clause9)
or ( FAOut and outALUSignal_clause10)
or (x and outALUSignal_clauseOther);

--		outALU <=
--			-- sum:
--			FAOut when "0001",
--			-- and:
--			x and y when "0010",
--			-- or:
--			x or y when "0011",
--			-- nor:
--			x nor y when "0100",
--			-- and immediate:
--			x and y when "0101",
--			-- or immediate:
--			x or y when "0110",
--			-- shift left:
--			outShift  when "0111",
--			-- shift right
--			outShift  when "1000",
--			-- slt
--			outShift when "1100",
--			-- addi
--			FAOut when "1101",
--			x when others;

zero_clause1<= op(3) and (not op(2)) and op(1) and (not op(0));
zero_clause2<= op(3) and (not op(2)) and op(1) and op(0);
zero_clauseOther<= (not zero_clause1) and (not zero_clause2);



gen2: for i in 0 to 31 generate
temp_beq(i) <= x(i) xnor y(i);
temp_bneq(i)<= (not temp_beq(i));

    end generate;

beq<=  temp_beq(31) and temp_beq(30) and temp_beq(29) and temp_beq(28) and temp_beq(27) and temp_beq(26) and temp_beq(25) and temp_beq(24) and temp_beq(23) and temp_beq(22) and temp_beq(21) and temp_beq(20) and temp_beq(19) and temp_beq(18) and temp_beq(17) and temp_beq(16) and temp_beq(15) and temp_beq(14) and temp_beq(13) and temp_beq(12) and temp_beq(11) and temp_beq(10) and temp_beq(9) and temp_beq(8) and temp_beq(7) and temp_beq(6) and temp_beq(5) and temp_beq(4) and temp_beq(3) and temp_beq(2) and temp_beq(1) and temp_beq(0);
bneq<=  temp_bneq(31) or temp_bneq(30) or temp_bneq(29) or temp_bneq(28) or temp_bneq(27) or temp_bneq(26) or temp_bneq(25) or temp_bneq(24) or temp_bneq(23) or temp_bneq(22) or temp_bneq(21) or temp_bneq(20) or temp_bneq(19) or temp_bneq(18) or temp_bneq(17) or temp_bneq(16)or temp_bneq(15) or temp_bneq(14) or temp_bneq(13) or temp_bneq(12) or temp_bneq(11) or temp_bneq(10) or temp_bneq(9) or temp_bneq(8)or temp_bneq(7) or temp_bneq(6) or temp_bneq(5) or temp_bneq(4) or temp_bneq(3) or temp_bneq(2) or temp_bneq(1) or temp_bneq(0);




Zero<= ('1'  and beq and zero_clause1) or ('1' and bneq and zero_clause2) or ('0' and zero_clauseOther);

--	Zero <=
--		-- beq
--		'1' when ((x = y) and (op = "1010")) else
--		-- bne
--		'1' when ((x /= y) and (op = "1011")) else
--		'0';



END MainALU_arch;
