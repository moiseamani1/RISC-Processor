library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Control_Unit is
	port (
		CLK      : in std_logic;
		OPCode    : in  std_logic_vector(5 downto 0);
		Overflow: in std_logic;
		RegisterWrite : out std_logic := '0';
		ALUSource   : out std_logic;
		ALUOp    : out std_logic_vector(2 downto 0);
		MemWrite : out std_logic;
		MemRead  : out std_logic;
		RegisterDestination   : out std_logic;
		MemToReg : out std_logic;
		Jump     : out std_logic;
		Branch   : out std_logic;
		EXFlush: out std_logic);
end Control_Unit;
ARCHITECTURE ControlUnitArch of Control_Unit is



signal RegisterWriteClause1,RegisterWriteClause2,RegisterWriteClause3,RegisterWriteClauseOthers:std_logic;
signal ALUSourceClause1,ALUSourceClause2,ALUSourceClause3,ALUSourceClauseOthers:std_logic;
signal ALUOpClause1,ALUOpClause2,ALUOpClause3,ALUOpClause4,ALUOpClause5,ALUOpClause6,ALUOpClauseOthers:std_logic;
signal ALUOpSignalClause1,ALUOpSignalClause2,ALUOpSignalClause3,ALUOpSignalClause4,ALUOpSignalClause5,ALUOpSignalClause6,ALUOpSignalClauseOthers:std_logic_vector(2 downto 0);
signal MemWriteClause1,MemWriteClauseOthers:std_logic;
signal MemReadClause1,MemReadClauseOthers:std_logic;
signal MemToRegClause1,MemToRegClauseOthers:std_logic;
signal RegisterDestinationClause1,RegisterDestinationClause2,RegisterDestinationClauseOthers:std_logic;
signal JumpClause1,JumpClauseOthers:std_logic;
signal BranchClause1,BranchClause2,BranchClauseOthers:std_logic;

begin


RegisterWriteClause1<= OPCode(5) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and OPCode(1) and OPCode(0);--"100011",--Load Word
RegisterWriteClause2<= (not OPCode(5)) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and (not OPCode(1)) and (not OPCode(0));--"000000",--arithmetic
RegisterWriteClause3<= (not OPCode(5)) and (not OPCode(4)) and OPCode(3) and (not OPCode(2)) and (not OPCode(1)) and (not OPCode(0));--"001000",-- addition
RegisterWriteClauseOthers<= (not RegisterWriteClause1) and (not RegisterWriteClause2) and (not RegisterWriteClause3);


RegisterWrite<=('1' and CLK and RegisterWriteClause1) or ('1' and CLK and RegisterWriteClause2) or ('1' and CLK and RegisterWriteClause3) or ('0' and CLK and RegisterWriteClauseOthers);

--		RegisterWrite <=
--			('1' and CLK) when "100011",--Load Word
--			('1' and CLK) when "000000",--arithmetic functions
--			('1' and CLK) when "001000",-- addition
--			'0' when others;
--


ALUSourceClause1<=  OPCode(5) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and OPCode(1) and OPCode(0); --"100011", -- load word
ALUSourceClause2<= OPCode(5) and (not OPCode(4)) and  OPCode(3) and (not OPCode(2)) and OPCode(1) and OPCode(0);--"101011", -- store word
ALUSourceClause3<= (not OPCode(5)) and (not OPCode(4)) and OPCode(3) and (not OPCode(2)) and (not OPCode(1)) and (not OPCode(0));--"001000", -- addition
ALUSourceClauseOthers<= (not ALUSourceClause1) and (not ALUSourceClause2) and (not ALUSourceClause3);

ALUSource <=  ('1' and ALUSourceClause1)or ('1' and ALUSourceClause2) or ('1' and ALUSourceClause3) or ('0' and ALUSourceClauseOthers) after 2 ns;

--		ALUSource <=
--			'1' after 2 ns when "100011", -- load word
--			'1' after 2 ns when "101011", -- store word
--			'1' after 2 ns when "001000", -- addition
--			'0' when others;
--


ALUOpClause1<= (not OPCode(5)) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and (not OPCode(1)) and (not OPCode(0)); --"000000", --arithmetic operation
ALUOpClause2<= OPCode(5) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and OPCode(1) and OPCode(0); --"100011", --load
ALUOpClause3<= OPCode(5) and (not OPCode(4)) and  OPCode(3) and (not OPCode(2)) and OPCode(1) and OPCode(0);--"101011", --store
ALUOpClause4<=(not OPCode(5)) and (not OPCode(4)) and (not OPCode(3)) and OPCode(2) and (not OPCode(1)) and (not OPCode(0)); --"000100", --branch
ALUOpClause5<=(not OPCode(5)) and (not OPCode(4)) and (not OPCode(3)) and OPCode(2) and (not OPCode(1)) and  OPCode(0); --"000101", --branch
ALUOpClause6<= (not OPCode(5)) and (not OPCode(4)) and OPCode(3) and (not OPCode(2)) and (not OPCode(1)) and (not OPCode(0));--"001000", --addition
ALUOpClauseOthers<= (not ALUOpClause1)and (not ALUOpClause2) and (not ALUOpClause3) and (not ALUOpClause4) and (not ALUOpClause5) and (not ALUOpClause6);


gen: for i in 0 to 2 generate
ALUOpSignalClause1(i) <= ALUOpClause1;
ALUOpSignalClause2(i) <= ALUOpClause2;
ALUOpSignalClause3(i) <= ALUOpClause3;
ALUOpSignalClause4(i) <= ALUOpClause4;
ALUOpSignalClause5(i) <= ALUOpClause5;
ALUOpSignalClause6(i) <= ALUOpClause6;
ALUOpSignalClauseOthers(i) <= ALUOpClauseOthers;
    end generate;

ALUOp<=("000" and ALUOpSignalClause1) or ("001" and ALUOpSignalClause2)
or ("001" and ALUOpSignalClause3) or ("010" and ALUOpSignalClause4)
or ("011" and ALUOpSignalClause5) or ("100" and ALUOpSignalClause6)
or ("111" and ALUOpSignalClauseOthers) after 2 ns;

--		ALUOp <=
--			"000" after 2 ns when "000000", --arithmetic operation
--			"001" after 2 ns when "100011", --load
--			"001" after 2 ns when "101011", --store
--			"010" after 2 ns when "000100", --branch
--			"011" after 2 ns when "000101", --branch
--			"100" after 2 ns when "001000", --addition
--			"111" when others;


MemWriteClause1<= OPCode(5) and (not OPCode(4)) and  OPCode(3) and (not OPCode(2)) and OPCode(1) and OPCode(0);--"101011"
MemWriteClauseOthers<= (not MemWriteClause1);

MemWrite <= ('1' and MemWriteClause1) or ('0' and MemWriteClauseOthers) after 10 ns;

--		MemWrite <=
--			'1' after 10 ns when "101011",
--			'0' when others;
--

MemReadClause1<= OPCode(5) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and OPCode(1) and OPCode(0); --"100011",
MemReadClauseOthers<= (not MemReadClause1);

MemRead <= ('1' and MemReadClause1) or ('0' and MemReadClauseOthers) after 2 ns;

--    	MemRead <=
--        	'1' after 2 ns when "100011",
--        	'0' when others;

MemToRegClause1<= OPCode(5) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and OPCode(1) and OPCode(0);--"100011"
MemToRegClauseOthers<= (not MemToRegClause1);

MemToReg <= ('1' and MemToRegClause1) or ('0' and MemToRegClauseOthers) after 2 ns;

--		MemToReg <=
--			'1' after 2 ns when "100011",
--			'0' when others;


RegisterDestinationClause1<=OPCode(5) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and OPCode(1) and OPCode(0);--"100011"
RegisterDestinationClause2<= (not OPCode(5)) and (not OPCode(4)) and OPCode(3) and (not OPCode(2)) and (not OPCode(1)) and (not OPCode(0));--"001000"
RegisterDestinationClauseOthers<= (not RegisterDestinationClause1) and (not RegisterDestinationClause2);


RegisterDestination<= ('0' and RegisterDestinationClause1) or ('0' and RegisterDestinationClause2) or ('1' and RegisterDestinationClauseOthers);

--		RegisterDestination <=
--			'0' when "100011",
--			'0' when "001000",
--			'1' when others;


JumpClause1<= (not OPCode(5)) and (not OPCode(4)) and (not OPCode(3)) and (not OPCode(2)) and  OPCode(1) and (not OPCode(0));--"000010"
JumpClauseOthers<= (not JumpClause1);
Jump<=('1' and JumpClause1) or ('0' and JumpClauseOthers);

--		Jump <=
--			'1' when "000010",
--			'0' when others;


BranchClause1<=(not OPCode(5)) and (not OPCode(4)) and (not OPCode(3)) and OPCode(2) and (not OPCode(1)) and (not OPCode(0));--"000100"
BranchClause2<=(not OPCode(5)) and (not OPCode(4)) and (not OPCode(3)) and OPCode(2) and (not OPCode(1)) and  OPCode(0);--"000101"
BranchClauseOthers<= (not BranchClause1) and (not BranchClause2);

Branch<= ('1' and BranchClause1) or ( '1' and BranchClause2) or ('0' and BranchClauseOthers);

--		Branch <=
--			'1' when "000100",
--			'1' when "000101",
--			'0' when others;

EXFlush<=Overflow;--serves as selector to the various muxes for activating control signals. 
		--when on all signals are 0.
end ControlUnitArch;
