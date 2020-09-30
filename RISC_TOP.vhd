library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;


entity RISC_TOP is
	port (
		GClock : in STD_LOGIC;                            -- Global clock needed to synchronize the circuitry
      GReset  : in STD_LOGIC;                           -- Global reset needed to bring the internals to known states
		ValueSelect : in STD_LOGIC_VECTOR(2 downto 0);    -- Selector for MuxOut[7..0]
		MuxOut: out STD_LOGIC_VECTOR(7 downto 0);         -- Multiplexer output controlled by ValueSelect[2..0]
		InstructionOut: out STD_LOGIC_VECTOR(31 downto 0);-- The current instruction being executed
		BranchOut : out STD_LOGIC; 							  -- The branch control signal
		ZeroOut: out STD_LOGIC; 								  -- The zero status signal
		MemWriteOut: out STD_LOGIC; 							  -- The memory write control signal
		RegWriteOut: out STD_LOGIC); 							  -- The register write control signal
end RISC_TOP;


ARCHITECTURE RISC_TOP_ARCH of RISC_TOP  is

component PC
Port (
		NextAddr : in  STD_LOGIC_VECTOR (31 downto 0);
      CurrAddr : out  STD_LOGIC_VECTOR (31 downto 0);
		Rst   : in  std_logic;
		CLK : in STD_LOGIC);
end component;

component Control_Unit
	port (
		CLK      : in std_logic;
		OPCode    : in  std_logic_vector(5 downto 0);
		RegisterWrite : out std_logic;
		ALUSource   : out std_logic;
		ALUOp    : out std_logic_vector(2 downto 0);
		MemWrite : out std_logic;
		MemRead  : out std_logic;
		RegisterDestination   : out std_logic;
		MemToReg : out std_logic;
		Jump     : out std_logic;
		Branch   : out std_logic);
end component;

component RegDstMux  port (
		x,y: in std_logic_vector(4 downto 0);
		sel	: in std_logic;
		f: out std_logic_vector(4 downto 0));
end component;

component MainALU
	port (
		x      : in  std_logic_vector(31 downto 0);
		y      : in  std_logic_vector(31 downto 0);
		op     : in  std_logic_vector(3 downto 0);
		ALUOut : out std_logic_vector(31 downto 0);
		Zero   : out std_logic);
END component;

component Bit_32_Mux  port (
		x,y: in std_logic_vector(31 downto 0);
		sel	: in std_logic;
		f: out std_logic_vector(31 downto 0));
end component;

Component IR is
	Port (
		readAddr  : in  std_logic_vector(31 downto 0);
		Instr : out std_logic_vector(31 downto 0));
end Component;

Component SignExtended 	port (
		SignExtendInput  :  in  std_logic_vector(15 downto 0);
		SignExtendOutput :  out std_logic_vector(31 downto 0));
END Component;

Component RegBox is
	port (
		Clk			: in   std_logic;
		RegIn1      : in   std_logic_vector(4 downto 0);
		RegIn2      : in   std_logic_vector(4 downto 0);
		RegWriteIn  : in   std_logic_vector(4 downto 0);
		DataWriteIn : in   std_logic_vector(31 downto 0);
		RegWrite    : in   std_logic;
		RegOut1     : out  std_logic_vector(31 downto 0);
		RegOut2     : out  std_logic_vector(31 downto 0));
END Component;

Component  Memory IS
	port (
		CLK			: in   std_logic;
		Address     : in  std_logic_vector(31 downto 0);
		WriteData : in  std_logic_vector(31 downto 0); 
		MemWrite  : in  std_logic;                     
		MemRead   : in  std_logic;                     
		ReadData    : out std_logic_vector(31 downto 0);
		reset     : in  std_logic);
END Component;

component Ripple_Adder32 is
Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
B : in STD_LOGIC_VECTOR (31 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (31 downto 0);
Cout : out STD_LOGIC);
end component;

Component ALUControl port (
		ALUOp       : in  std_logic_vector(2 downto 0);
		Funct       : in  std_logic_vector(5 downto 0);
		ALUCont_out : out std_logic_vector(3 downto 0));
END Component;
	Signal PCout,PCPlus4,PCPlus4Adder, PCOutIR,SignExtendedOutput,ALUOut : std_logic_vector(31 downto 0);
	Signal	RegWrite :  std_logic;
	Signal 	RAMOutput    :  std_logic_vector(31 downto 0);-- the output if is a read operation
	Signal	ALUSrc   :  std_logic;
	Signal	ALUOp    : std_logic_vector(2 downto 0);
	Signal   RegDstMuxOutput : std_logic_vector(4 downto 0);
	Signal   ALUCont_out :std_logic_vector(3 downto 0);
	Signal	MemWrite :  std_logic;
	Signal	MemRead  :  std_logic;
	Signal	RegDst   :  std_logic;
	Signal	MemToReg :  std_logic;
	Signal 	Jump     :  std_logic;
	Signal   ZeroAluSig : std_logic;
	Signal 	Branch ,BranchAnd  :  std_logic;
	Signal 	RegOut1Sig,MuxOut32,MuxOutRegOut, Shift2SignExOutputSig,BranchOut1, MuxOutBranch   :   std_logic_vector(31 downto 0);
	Signal	RegOut2Sig,ShiftJumpMux ,PCOutput1  :   std_logic_vector(31 downto 0);
begin
	-- Port Mapping Of Components.
	-- Put Everything Together.
	ShiftJumpMux <= PCPlus4Adder(31 downto 28) & PCOutIR(25 downto 0) & "00";
	PCPlus4 <= std_logic_vector(to_unsigned(4,32));
	PCOutput1 <= ShiftJumpMux;
	L0    : IR Port map (PCOUT,PCOutIR);
	FAPC1 : Ripple_Adder32 Port map(PCOutIR,PCPlus4,'0',PCPlus4Adder);
	L1    : Control_Unit port map (GClock,PCOUTIR(31 downto 26),RegWrite,ALUSrc,ALUOp,MemWrite,MemRead,RegDst,MemToReg,Jump,Branch);
	L2    : RegDstMux port map(PCOUTIR(20 downto 16), PCOUTIR(15 downto 11),RegDst,RegDstMuxOutput);
	L3    : SignExtended port map(PCOUTIR(15 downto 0),SignExtendedOutput);
	L4    : RegBox port map(Gclock,PCOUTIR(25 downto 21),PCOUTIR(20 downto 16),RegDstMuxOutput, MuxOutRegOut,RegWrite,RegOut1Sig,RegOut2Sig);
	L5		: Bit_32_Mux port map(RegOut2Sig,SignExtendedOutput,ALUSrc,MuxOut32);
	L6		: ALUControl port map(ALUOp,PCOUTIR(5 downto 0),ALUCont_out); --determines which type of ALU operation should take place
	L7    : MainALU port map(RegOut1Sig,MuxOut32,ALUCont_out,ALUOut,ZeroAluSig);
	L8    : Memory port map (GCLOCK,ALUOut,RegOut2Sig,MemWrite,MemRead,RAMOutput,GReset);
	L9    : Bit_32_Mux port map(RAMOutput,ALUOut,MemToReg,MuxOutRegOut);
	Shift2SignExOutputSig<= SignExtendedOutput(29 downto 0 )& "00"; --shift left 2
	BranchAnd <= Branch and ZeroAluSig;
	L10 	 : Ripple_Adder32 Port map(PCPlus4Adder,Shift2SignExOutputSig,'0',BranchOut1);
	L11    : Bit_32_Mux port map(PCPlus4Adder,BranchOut1,BranchAnd,MuxOutBranch);
end RISC_TOP_ARCH;
