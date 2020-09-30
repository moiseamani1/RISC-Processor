library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ripple_Adder32 is
Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
B : in STD_LOGIC_VECTOR (31 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (31 downto 0);
Cout : out STD_LOGIC;
Overflow:out std_logic
);
end Ripple_Adder32;

architecture Ripple_Adder32_Arch of Ripple_Adder32 is

--inst full adder
component FA
Port ( a: in std_logic;
	  b,c: in std_logic;
	  sum, carry: out std_logic
	  );
end component;

-- Intermediate Carry declaration
signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32: STD_LOGIC;

signal temp_cout,temp_c31:std_logic;
begin


FA1: FA port map( A(0), B(0), Cin, S(0), c1);
FA2: FA port map( A(1), B(1), c1, S(1), c2);
FA3: FA port map( A(2), B(2), c2, S(2), c3);
FA4: FA port map( A(3), B(3), c3, S(3), c4);
FA5: FA port map( A(4), B(4), c4, S(4), c5);
FA6: FA port map( A(5), B(5), c5, S(5), c6);
FA7: FA port map( A(6), B(6), c6, S(6), c7);
FA8: FA port map( A(7), B(7), c7, S(7), c8);
FA9: FA port map( A(8), B(8), C8, S(8), c9);
FA10: FA port map( A(9), B(9), c9, S(9), c10);
FA11: FA port map( A(10), B(10), c10, S(10), c11);
FA12: FA port map( A(11), B(11), c11, S(11), c12);
FA13: FA port map( A(12), B(12), c12, S(12), c13);
FA14: FA port map( A(13), B(13), c13, S(13), c14);
FA15: FA port map( A(14), B(14), c14, S(14), c15);
FA16: FA port map( A(15), B(15), c15, S(15), c16);
FA17: FA port map( A(16), B(16), c16, S(16), c17);
FA18: FA port map( A(17), B(17), c17, S(17), c18);
FA19: FA port map( A(18), B(18), c18, S(18), c19);
FA20: FA port map( A(19), B(19), c19, S(19), c20);
FA21: FA port map( A(20), B(20), c20, S(20), c21);
FA22: FA port map( A(21), B(21), c21, S(21), c22);
FA23: FA port map( A(22), B(22), c22, S(22), c23);
FA24: FA port map( A(23), B(23), c23, S(23), c24);
FA25: FA port map( A(24), B(24), c24, S(24), c25);
FA26: FA port map( A(25), B(25), c25, S(25), c26);
FA27: FA port map( A(26), B(26), c26, S(26), c27);
FA28: FA port map( A(27), B(27), c27, S(27), c28);
FA29: FA port map( A(28), B(28), c28, S(28), c29);
FA30: FA port map( A(29), B(29), c29, S(29), c30);
FA31: FA port map( A(30), B(30), c30, S(30), c31);
FA32: FA port map( A(31), B(31), c31, temp_c31, temp_cout);

cout<=temp_cout;

Overflow<= temp_c31 xor temp_cout;


end Ripple_Adder32_Arch;
