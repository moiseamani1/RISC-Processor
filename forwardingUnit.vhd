library ieee;
use ieee.std_logic_1164.all;

entity forwardingUnit is   
  	  port(
	IdExRS, IdExRT, ExMemRD, MemWbRD : in std_logic_vector(31 downto 0);
	 
	MemWBRegWrite,ExMemRegWrite: in std_logic;
 	ForwardA, ForwardB : out std_logic_vector(1 downto 0)
		
	 );
end forwardingUnit;

architecture archForwarding of forwardingUnit is
signal tempClauseForwardA1,tempClauseForwardA2,tempClauseForwardAOther:std_logic;
signal tempClauseForwardB1,tempClauseForwardB2,tempClauseForwardBOther:std_logic;

signal not_zero_signal_ExMemRd,not_zero_signal_MemWbRd: std_logic;

signal equality_signal_ExMemRD_IdExRs, equality_signal_ExMemRD_IdExRt,
equality_signal_MemWbRD_IdExRs, equality_signal_MemWbRD_IdExRt : std_logic;
signal equal_signal_0,equal_signal_1,equal_signal_2, equal_signal_3 :std_logic_vector(31 downto 0); 

begin

	equality_check: for i in 0 to 31 generate
	equal_signal_0(i) <= MemWbRD(i) xnor IdExRs(i);
	equal_signal_1(i) <= MemWbRD(i) xnor IdExRt(i);
	equal_signal_2(i) <= ExMemRD(i) xnor IdExRs(i);
	equal_signal_3(i) <= ExMemRD(i) xnor IdExRt(i);
    	end generate;
	
equality_signal_MemWbRD_IdExRs<=  equal_signal_0(31) and equal_signal_0(30) and equal_signal_0(29) and equal_signal_0(28) and equal_signal_0(27) and equal_signal_0(26) and equal_signal_0(25) and equal_signal_0(24) and equal_signal_0(23) and equal_signal_0(22) and equal_signal_0(21) and equal_signal_0(20) and equal_signal_0(19) and equal_signal_0(18) and equal_signal_0(17) and equal_signal_0(16) and equal_signal_0(15) and equal_signal_0(14) and equal_signal_0(13) and equal_signal_0(12) and equal_signal_0(11) and equal_signal_0(10) and equal_signal_0(9) and equal_signal_0(8) and equal_signal_0(7) and equal_signal_0(6) and equal_signal_0(5) and equal_signal_0(4) and equal_signal_0(3) and equal_signal_0(2) and equal_signal_0(1) and equal_signal_0(0);
equality_signal_MemWbRD_IdExRt<=  equal_signal_1(31) and equal_signal_1(30) and equal_signal_1(29) and equal_signal_1(28) and equal_signal_1(27) and equal_signal_1(26) and equal_signal_1(25) and equal_signal_1(24) and equal_signal_1(23) and equal_signal_1(22) and equal_signal_1(21) and equal_signal_1(20) and equal_signal_1(19) and equal_signal_1(18) and equal_signal_1(17) and equal_signal_1(16) and equal_signal_1(15) and equal_signal_1(14) and equal_signal_1(13) and equal_signal_1(12) and equal_signal_1(11) and equal_signal_1(10) and equal_signal_1(9) and equal_signal_1(8) and equal_signal_1(7) and equal_signal_1(6) and equal_signal_1(5) and equal_signal_1(4) and equal_signal_1(3) and equal_signal_1(2) and equal_signal_1(1) and equal_signal_1(0);
equality_signal_ExMemRD_IdExRs<=  equal_signal_2(31) and equal_signal_2(30) and equal_signal_2(29) and equal_signal_2(28) and equal_signal_2(27) and equal_signal_2(26) and equal_signal_2(25) and equal_signal_2(24) and equal_signal_2(23) and equal_signal_2(22) and equal_signal_2(21) and equal_signal_2(20) and equal_signal_2(19) and equal_signal_2(18) and equal_signal_2(17) and equal_signal_2(16) and equal_signal_2(15) and equal_signal_2(14) and equal_signal_2(13) and equal_signal_2(12) and equal_signal_2(11) and equal_signal_2(10) and equal_signal_2(9) and equal_signal_2(8) and equal_signal_2(7) and equal_signal_2(6) and equal_signal_2(5) and equal_signal_2(4) and equal_signal_2(3) and equal_signal_2(2) and equal_signal_2(1) and equal_signal_2(0);
equality_signal_ExMemRD_IdExRt<=  equal_signal_3(31) and equal_signal_3(30) and equal_signal_3(29) and equal_signal_3(28) and equal_signal_3(27) and equal_signal_3(26) and equal_signal_3(25) and equal_signal_3(24) and equal_signal_3(23) and equal_signal_3(22) and equal_signal_3(21) and equal_signal_3(20) and equal_signal_3(19) and equal_signal_3(18) and equal_signal_3(17) and equal_signal_3(16) and equal_signal_3(15) and equal_signal_3(14) and equal_signal_3(13) and equal_signal_3(12) and equal_signal_3(11) and equal_signal_3(10) and equal_signal_3(9) and equal_signal_3(8) and equal_signal_3(7) and equal_signal_3(6) and equal_signal_3(5) and equal_signal_3(4) and equal_signal_3(3) and equal_signal_3(2) and equal_signal_3(1) and equal_signal_3(0);



not_zero_signal_ExMemRd<=ExMemRd(31) or ExMemRd(30) or ExMemRd(29) or ExMemRd(28) or ExMemRd(27) or ExMemRd(26) or ExMemRd(25) or ExMemRd(24) or ExMemRd(23) or ExMemRd(22) or ExMemRd(21) or ExMemRd(20) or ExMemRd(19) or ExMemRd(18) or ExMemRd(17) or ExMemRd(16) or ExMemRd(15) or ExMemRd(14) or ExMemRd(13) or ExMemRd(12) or ExMemRd(11) or ExMemRd(10) or ExMemRd(9) or ExMemRd(8) or ExMemRd(7) or ExMemRd(6) or ExMemRd(5) or ExMemRd(4) or ExMemRd(3) or ExMemRd(2) or ExMemRd(1) or ExMemRd(0);
not_zero_signal_MemWbRd<=MemWbRD(31) or MemWbRD(30) or MemWbRD(29) or MemWbRD(28) or MemWbRD(27) or MemWbRD(26) or MemWbRD(25) or MemWbRD(24) or MemWbRD(23) or MemWbRD(22) or MemWbRD(21) or MemWbRD(20) or MemWbRD(19) or MemWbRD(18) or MemWbRD(17) or MemWbRD(16) or MemWbRD(15) or MemWbRD(14) or MemWbRD(13) or MemWbRD(12) or MemWbRD(11) or MemWbRD(10) or MemWbRD(9) or MemWbRD(8) or MemWbRD(7) or MemWbRD(6) or MemWbRD(5) or MemWbRD(4) or MemWbRD(3) or MemWbRD(2) or MemWbRD(1) or MemWbRD(0);



tempClauseForwardA1<= ExMemRegWrite and equality_signal_ExMemRD_IdExRs and not_zero_signal_ExMemRd;

tempClauseForwardB1<= ExMemRegWrite and equality_signal_ExMemRD_IdExRt and not_zero_signal_ExMemRd;

tempClauseForwardA2<= MemWBRegWrite and equality_signal_MemWbRD_IdExRs and not_zero_signal_MemWbRd;

tempClauseForwardB2<= MemWBRegWrite and equality_signal_MemWbRD_IdExRs and not_zero_signal_MemWbRd;

tempClauseForwardAOther<= (not tempClauseForwardA1) and (not tempClauseForwardA2); 

tempClauseForwardBOther<= (not tempClauseForwardB1) and (not tempClauseForwardB2); 

ForwardA<= ((tempClauseForwardA1 & tempClauseForwardA1) and "10") or ((tempClauseForwardA2 & tempClauseForwardA2) and "01")
or ((tempClauseForwardAOther & tempClauseForwardAOther) and "00");

ForwardB<= ((tempClauseForwardB1 & tempClauseForwardB1) and "10") or ((tempClauseForwardB2 & tempClauseForwardB2) and "01")
or ((tempClauseForwardBOther & tempClauseForwardBOther) and "00");


end archForwarding;