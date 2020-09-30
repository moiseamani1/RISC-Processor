-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/06/2020 15:47:14"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RegBoxTest IS
    PORT (
	address_a : IN std_logic_vector(4 DOWNTO 0);
	address_b : IN std_logic_vector(4 DOWNTO 0);
	clock : IN std_logic;
	data_a : IN std_logic_vector(31 DOWNTO 0);
	data_b : IN std_logic_vector(31 DOWNTO 0);
	wren_a : IN std_logic;
	wren_b : IN std_logic;
	q_a : OUT std_logic_vector(31 DOWNTO 0);
	q_b : OUT std_logic_vector(31 DOWNTO 0)
	);
END RegBoxTest;

-- Design Ports Information
-- q_a[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[3]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[5]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[7]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[8]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[9]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[12]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[13]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[14]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[15]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[16]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[17]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[18]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[19]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[20]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[21]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[22]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[23]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[24]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[25]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[26]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[27]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[28]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[29]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[30]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_a[31]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[5]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[6]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[7]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[8]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[9]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[10]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[11]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[12]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[13]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[14]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[15]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[16]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[17]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[18]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[19]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[20]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[21]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[22]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[23]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[24]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[25]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[26]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[27]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[28]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[29]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[30]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_b[31]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_a	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_b	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_a[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_b[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[4]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[7]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[8]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[9]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[9]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[10]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[10]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[11]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[12]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[12]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[13]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[15]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[15]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[16]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[16]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[17]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[18]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[18]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[19]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[19]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[20]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[21]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[21]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[22]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[22]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[23]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[23]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[24]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[24]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[25]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[25]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[26]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[26]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[27]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[27]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[28]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[28]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[29]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[29]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[30]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[30]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_a[31]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_b[31]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegBoxTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_address_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wren_a : std_logic;
SIGNAL ww_wren_b : std_logic;
SIGNAL ww_q_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_q_b : std_logic_vector(31 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q_a[0]~output_o\ : std_logic;
SIGNAL \q_a[1]~output_o\ : std_logic;
SIGNAL \q_a[2]~output_o\ : std_logic;
SIGNAL \q_a[3]~output_o\ : std_logic;
SIGNAL \q_a[4]~output_o\ : std_logic;
SIGNAL \q_a[5]~output_o\ : std_logic;
SIGNAL \q_a[6]~output_o\ : std_logic;
SIGNAL \q_a[7]~output_o\ : std_logic;
SIGNAL \q_a[8]~output_o\ : std_logic;
SIGNAL \q_a[9]~output_o\ : std_logic;
SIGNAL \q_a[10]~output_o\ : std_logic;
SIGNAL \q_a[11]~output_o\ : std_logic;
SIGNAL \q_a[12]~output_o\ : std_logic;
SIGNAL \q_a[13]~output_o\ : std_logic;
SIGNAL \q_a[14]~output_o\ : std_logic;
SIGNAL \q_a[15]~output_o\ : std_logic;
SIGNAL \q_a[16]~output_o\ : std_logic;
SIGNAL \q_a[17]~output_o\ : std_logic;
SIGNAL \q_a[18]~output_o\ : std_logic;
SIGNAL \q_a[19]~output_o\ : std_logic;
SIGNAL \q_a[20]~output_o\ : std_logic;
SIGNAL \q_a[21]~output_o\ : std_logic;
SIGNAL \q_a[22]~output_o\ : std_logic;
SIGNAL \q_a[23]~output_o\ : std_logic;
SIGNAL \q_a[24]~output_o\ : std_logic;
SIGNAL \q_a[25]~output_o\ : std_logic;
SIGNAL \q_a[26]~output_o\ : std_logic;
SIGNAL \q_a[27]~output_o\ : std_logic;
SIGNAL \q_a[28]~output_o\ : std_logic;
SIGNAL \q_a[29]~output_o\ : std_logic;
SIGNAL \q_a[30]~output_o\ : std_logic;
SIGNAL \q_a[31]~output_o\ : std_logic;
SIGNAL \q_b[0]~output_o\ : std_logic;
SIGNAL \q_b[1]~output_o\ : std_logic;
SIGNAL \q_b[2]~output_o\ : std_logic;
SIGNAL \q_b[3]~output_o\ : std_logic;
SIGNAL \q_b[4]~output_o\ : std_logic;
SIGNAL \q_b[5]~output_o\ : std_logic;
SIGNAL \q_b[6]~output_o\ : std_logic;
SIGNAL \q_b[7]~output_o\ : std_logic;
SIGNAL \q_b[8]~output_o\ : std_logic;
SIGNAL \q_b[9]~output_o\ : std_logic;
SIGNAL \q_b[10]~output_o\ : std_logic;
SIGNAL \q_b[11]~output_o\ : std_logic;
SIGNAL \q_b[12]~output_o\ : std_logic;
SIGNAL \q_b[13]~output_o\ : std_logic;
SIGNAL \q_b[14]~output_o\ : std_logic;
SIGNAL \q_b[15]~output_o\ : std_logic;
SIGNAL \q_b[16]~output_o\ : std_logic;
SIGNAL \q_b[17]~output_o\ : std_logic;
SIGNAL \q_b[18]~output_o\ : std_logic;
SIGNAL \q_b[19]~output_o\ : std_logic;
SIGNAL \q_b[20]~output_o\ : std_logic;
SIGNAL \q_b[21]~output_o\ : std_logic;
SIGNAL \q_b[22]~output_o\ : std_logic;
SIGNAL \q_b[23]~output_o\ : std_logic;
SIGNAL \q_b[24]~output_o\ : std_logic;
SIGNAL \q_b[25]~output_o\ : std_logic;
SIGNAL \q_b[26]~output_o\ : std_logic;
SIGNAL \q_b[27]~output_o\ : std_logic;
SIGNAL \q_b[28]~output_o\ : std_logic;
SIGNAL \q_b[29]~output_o\ : std_logic;
SIGNAL \q_b[30]~output_o\ : std_logic;
SIGNAL \q_b[31]~output_o\ : std_logic;
SIGNAL \wren_a~input_o\ : std_logic;
SIGNAL \wren_b~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_a[0]~input_o\ : std_logic;
SIGNAL \address_a[0]~input_o\ : std_logic;
SIGNAL \address_a[1]~input_o\ : std_logic;
SIGNAL \address_a[2]~input_o\ : std_logic;
SIGNAL \address_a[3]~input_o\ : std_logic;
SIGNAL \address_a[4]~input_o\ : std_logic;
SIGNAL \data_b[0]~input_o\ : std_logic;
SIGNAL \address_b[0]~input_o\ : std_logic;
SIGNAL \address_b[1]~input_o\ : std_logic;
SIGNAL \address_b[2]~input_o\ : std_logic;
SIGNAL \address_b[3]~input_o\ : std_logic;
SIGNAL \address_b[4]~input_o\ : std_logic;
SIGNAL \data_a[1]~input_o\ : std_logic;
SIGNAL \data_a[2]~input_o\ : std_logic;
SIGNAL \data_a[3]~input_o\ : std_logic;
SIGNAL \data_a[4]~input_o\ : std_logic;
SIGNAL \data_a[5]~input_o\ : std_logic;
SIGNAL \data_a[6]~input_o\ : std_logic;
SIGNAL \data_a[7]~input_o\ : std_logic;
SIGNAL \data_a[8]~input_o\ : std_logic;
SIGNAL \data_a[9]~input_o\ : std_logic;
SIGNAL \data_a[10]~input_o\ : std_logic;
SIGNAL \data_a[11]~input_o\ : std_logic;
SIGNAL \data_a[12]~input_o\ : std_logic;
SIGNAL \data_a[13]~input_o\ : std_logic;
SIGNAL \data_a[14]~input_o\ : std_logic;
SIGNAL \data_a[15]~input_o\ : std_logic;
SIGNAL \data_a[16]~input_o\ : std_logic;
SIGNAL \data_a[17]~input_o\ : std_logic;
SIGNAL \data_b[1]~input_o\ : std_logic;
SIGNAL \data_b[2]~input_o\ : std_logic;
SIGNAL \data_b[3]~input_o\ : std_logic;
SIGNAL \data_b[4]~input_o\ : std_logic;
SIGNAL \data_b[5]~input_o\ : std_logic;
SIGNAL \data_b[6]~input_o\ : std_logic;
SIGNAL \data_b[7]~input_o\ : std_logic;
SIGNAL \data_b[8]~input_o\ : std_logic;
SIGNAL \data_b[9]~input_o\ : std_logic;
SIGNAL \data_b[10]~input_o\ : std_logic;
SIGNAL \data_b[11]~input_o\ : std_logic;
SIGNAL \data_b[12]~input_o\ : std_logic;
SIGNAL \data_b[13]~input_o\ : std_logic;
SIGNAL \data_b[14]~input_o\ : std_logic;
SIGNAL \data_b[15]~input_o\ : std_logic;
SIGNAL \data_b[16]~input_o\ : std_logic;
SIGNAL \data_b[17]~input_o\ : std_logic;
SIGNAL \data_a[18]~input_o\ : std_logic;
SIGNAL \data_b[18]~input_o\ : std_logic;
SIGNAL \data_a[19]~input_o\ : std_logic;
SIGNAL \data_a[20]~input_o\ : std_logic;
SIGNAL \data_a[21]~input_o\ : std_logic;
SIGNAL \data_a[22]~input_o\ : std_logic;
SIGNAL \data_a[23]~input_o\ : std_logic;
SIGNAL \data_a[24]~input_o\ : std_logic;
SIGNAL \data_a[25]~input_o\ : std_logic;
SIGNAL \data_a[26]~input_o\ : std_logic;
SIGNAL \data_a[27]~input_o\ : std_logic;
SIGNAL \data_a[28]~input_o\ : std_logic;
SIGNAL \data_a[29]~input_o\ : std_logic;
SIGNAL \data_a[30]~input_o\ : std_logic;
SIGNAL \data_a[31]~input_o\ : std_logic;
SIGNAL \data_b[19]~input_o\ : std_logic;
SIGNAL \data_b[20]~input_o\ : std_logic;
SIGNAL \data_b[21]~input_o\ : std_logic;
SIGNAL \data_b[22]~input_o\ : std_logic;
SIGNAL \data_b[23]~input_o\ : std_logic;
SIGNAL \data_b[24]~input_o\ : std_logic;
SIGNAL \data_b[25]~input_o\ : std_logic;
SIGNAL \data_b[26]~input_o\ : std_logic;
SIGNAL \data_b[27]~input_o\ : std_logic;
SIGNAL \data_b[28]~input_o\ : std_logic;
SIGNAL \data_b[29]~input_o\ : std_logic;
SIGNAL \data_b[30]~input_o\ : std_logic;
SIGNAL \data_b[31]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|q_b\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_address_a <= address_a;
ww_address_b <= address_b;
ww_clock <= clock;
ww_data_a <= data_a;
ww_data_b <= data_b;
ww_wren_a <= wren_a;
ww_wren_b <= wren_b;
q_a <= ww_q_a;
q_b <= ww_q_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\data_a[17]~input_o\ & \data_a[16]~input_o\ & \data_a[15]~input_o\ & \data_a[14]~input_o\ & \data_a[13]~input_o\ & \data_a[12]~input_o\ & \data_a[11]~input_o\ & \data_a[10]~input_o\ & 
\data_a[9]~input_o\ & \data_a[8]~input_o\ & \data_a[7]~input_o\ & \data_a[6]~input_o\ & \data_a[5]~input_o\ & \data_a[4]~input_o\ & \data_a[3]~input_o\ & \data_a[2]~input_o\ & \data_a[1]~input_o\ & \data_a[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\data_b[17]~input_o\ & \data_b[16]~input_o\ & \data_b[15]~input_o\ & \data_b[14]~input_o\ & \data_b[13]~input_o\ & \data_b[12]~input_o\ & \data_b[11]~input_o\ & \data_b[10]~input_o\ & 
\data_b[9]~input_o\ & \data_b[8]~input_o\ & \data_b[7]~input_o\ & \data_b[6]~input_o\ & \data_b[5]~input_o\ & \data_b[4]~input_o\ & \data_b[3]~input_o\ & \data_b[2]~input_o\ & \data_b[1]~input_o\ & \data_b[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address_a[4]~input_o\ & \address_a[3]~input_o\ & \address_a[2]~input_o\ & \address_a[1]~input_o\ & \address_a[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\address_b[4]~input_o\ & \address_b[3]~input_o\ & \address_b[2]~input_o\ & \address_b[1]~input_o\ & \address_b[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(4) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(5) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(6) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(7) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(8) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(9) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(10) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(11) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(12) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(13) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_a\(14) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_a\(15) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_a\(16) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_a\(17) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\altsyncram_component|auto_generated|q_b\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_b\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_b\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_b\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_b\(4) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_b\(5) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_b\(6) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_b\(7) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_b\(8) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_b\(9) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_b\(10) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_b\(11) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_b\(12) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_b\(13) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\altsyncram_component|auto_generated|q_b\(14) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\altsyncram_component|auto_generated|q_b\(15) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\altsyncram_component|auto_generated|q_b\(16) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\altsyncram_component|auto_generated|q_b\(17) <= \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);

\altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \data_a[31]~input_o\ & \data_a[30]~input_o\ & \data_a[29]~input_o\ & \data_a[28]~input_o\ & \data_a[27]~input_o\ & \data_a[26]~input_o\ & \data_a[25]~input_o\
& \data_a[24]~input_o\ & \data_a[23]~input_o\ & \data_a[22]~input_o\ & \data_a[21]~input_o\ & \data_a[20]~input_o\ & \data_a[19]~input_o\ & \data_a[18]~input_o\);

\altsyncram_component|auto_generated|ram_block1a18_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & \data_b[31]~input_o\ & \data_b[30]~input_o\ & \data_b[29]~input_o\ & \data_b[28]~input_o\ & \data_b[27]~input_o\ & \data_b[26]~input_o\ & \data_b[25]~input_o\
& \data_b[24]~input_o\ & \data_b[23]~input_o\ & \data_b[22]~input_o\ & \data_b[21]~input_o\ & \data_b[20]~input_o\ & \data_b[19]~input_o\ & \data_b[18]~input_o\);

\altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\address_a[4]~input_o\ & \address_a[3]~input_o\ & \address_a[2]~input_o\ & \address_a[1]~input_o\ & \address_a[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\address_b[4]~input_o\ & \address_b[3]~input_o\ & \address_b[2]~input_o\ & \address_b[1]~input_o\ & \address_b[0]~input_o\);

\altsyncram_component|auto_generated|q_a\(18) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(19) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(20) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(21) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(22) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_a\(23) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_a\(24) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_a\(25) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_a\(26) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_a\(27) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_a\(28) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_a\(29) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_a\(30) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_a\(31) <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);

\altsyncram_component|auto_generated|q_b\(18) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_b\(19) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_b\(20) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_b\(21) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_b\(22) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(4);
\altsyncram_component|auto_generated|q_b\(23) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(5);
\altsyncram_component|auto_generated|q_b\(24) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(6);
\altsyncram_component|auto_generated|q_b\(25) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(7);
\altsyncram_component|auto_generated|q_b\(26) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(8);
\altsyncram_component|auto_generated|q_b\(27) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(9);
\altsyncram_component|auto_generated|q_b\(28) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(10);
\altsyncram_component|auto_generated|q_b\(29) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(11);
\altsyncram_component|auto_generated|q_b\(30) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(12);
\altsyncram_component|auto_generated|q_b\(31) <= \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(13);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X47_Y0_N9
\q_a[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q_a[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\q_a[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q_a[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\q_a[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q_a[2]~output_o\);

-- Location: IOOBUF_X17_Y67_N9
\q_a[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \q_a[3]~output_o\);

-- Location: IOOBUF_X44_Y0_N9
\q_a[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \q_a[4]~output_o\);

-- Location: IOOBUF_X17_Y67_N23
\q_a[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \q_a[5]~output_o\);

-- Location: IOOBUF_X15_Y67_N9
\q_a[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \q_a[6]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\q_a[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \q_a[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N16
\q_a[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \q_a[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\q_a[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \q_a[9]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\q_a[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \q_a[10]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\q_a[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \q_a[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\q_a[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \q_a[12]~output_o\);

-- Location: IOOBUF_X31_Y67_N23
\q_a[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \q_a[13]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\q_a[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \q_a[14]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\q_a[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \q_a[15]~output_o\);

-- Location: IOOBUF_X19_Y67_N2
\q_a[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \q_a[16]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\q_a[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \q_a[17]~output_o\);

-- Location: IOOBUF_X81_Y59_N9
\q_a[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \q_a[18]~output_o\);

-- Location: IOOBUF_X49_Y67_N16
\q_a[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \q_a[19]~output_o\);

-- Location: IOOBUF_X49_Y67_N2
\q_a[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \q_a[20]~output_o\);

-- Location: IOOBUF_X54_Y67_N16
\q_a[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \q_a[21]~output_o\);

-- Location: IOOBUF_X81_Y59_N16
\q_a[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \q_a[22]~output_o\);

-- Location: IOOBUF_X58_Y67_N16
\q_a[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \q_a[23]~output_o\);

-- Location: IOOBUF_X65_Y67_N16
\q_a[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \q_a[24]~output_o\);

-- Location: IOOBUF_X70_Y67_N9
\q_a[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \q_a[25]~output_o\);

-- Location: IOOBUF_X56_Y67_N23
\q_a[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \q_a[26]~output_o\);

-- Location: IOOBUF_X63_Y67_N9
\q_a[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \q_a[27]~output_o\);

-- Location: IOOBUF_X81_Y55_N2
\q_a[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \q_a[28]~output_o\);

-- Location: IOOBUF_X81_Y58_N9
\q_a[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \q_a[29]~output_o\);

-- Location: IOOBUF_X63_Y67_N16
\q_a[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \q_a[30]~output_o\);

-- Location: IOOBUF_X81_Y62_N16
\q_a[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \q_a[31]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\q_b[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(0),
	devoe => ww_devoe,
	o => \q_b[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\q_b[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(1),
	devoe => ww_devoe,
	o => \q_b[1]~output_o\);

-- Location: IOOBUF_X17_Y67_N2
\q_b[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(2),
	devoe => ww_devoe,
	o => \q_b[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\q_b[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(3),
	devoe => ww_devoe,
	o => \q_b[3]~output_o\);

-- Location: IOOBUF_X10_Y0_N23
\q_b[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(4),
	devoe => ww_devoe,
	o => \q_b[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\q_b[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(5),
	devoe => ww_devoe,
	o => \q_b[5]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\q_b[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(6),
	devoe => ww_devoe,
	o => \q_b[6]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\q_b[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(7),
	devoe => ww_devoe,
	o => \q_b[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\q_b[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(8),
	devoe => ww_devoe,
	o => \q_b[8]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\q_b[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(9),
	devoe => ww_devoe,
	o => \q_b[9]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\q_b[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(10),
	devoe => ww_devoe,
	o => \q_b[10]~output_o\);

-- Location: IOOBUF_X19_Y67_N9
\q_b[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(11),
	devoe => ww_devoe,
	o => \q_b[11]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\q_b[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(12),
	devoe => ww_devoe,
	o => \q_b[12]~output_o\);

-- Location: IOOBUF_X44_Y0_N23
\q_b[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(13),
	devoe => ww_devoe,
	o => \q_b[13]~output_o\);

-- Location: IOOBUF_X19_Y67_N23
\q_b[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(14),
	devoe => ww_devoe,
	o => \q_b[14]~output_o\);

-- Location: IOOBUF_X24_Y67_N23
\q_b[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(15),
	devoe => ww_devoe,
	o => \q_b[15]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\q_b[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(16),
	devoe => ww_devoe,
	o => \q_b[16]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\q_b[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(17),
	devoe => ww_devoe,
	o => \q_b[17]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\q_b[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(18),
	devoe => ww_devoe,
	o => \q_b[18]~output_o\);

-- Location: IOOBUF_X52_Y67_N16
\q_b[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(19),
	devoe => ww_devoe,
	o => \q_b[19]~output_o\);

-- Location: IOOBUF_X81_Y52_N16
\q_b[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(20),
	devoe => ww_devoe,
	o => \q_b[20]~output_o\);

-- Location: IOOBUF_X54_Y67_N9
\q_b[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(21),
	devoe => ww_devoe,
	o => \q_b[21]~output_o\);

-- Location: IOOBUF_X81_Y59_N2
\q_b[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(22),
	devoe => ww_devoe,
	o => \q_b[22]~output_o\);

-- Location: IOOBUF_X81_Y61_N2
\q_b[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(23),
	devoe => ww_devoe,
	o => \q_b[23]~output_o\);

-- Location: IOOBUF_X58_Y67_N9
\q_b[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(24),
	devoe => ww_devoe,
	o => \q_b[24]~output_o\);

-- Location: IOOBUF_X58_Y67_N2
\q_b[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(25),
	devoe => ww_devoe,
	o => \q_b[25]~output_o\);

-- Location: IOOBUF_X47_Y67_N9
\q_b[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(26),
	devoe => ww_devoe,
	o => \q_b[26]~output_o\);

-- Location: IOOBUF_X54_Y67_N23
\q_b[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(27),
	devoe => ww_devoe,
	o => \q_b[27]~output_o\);

-- Location: IOOBUF_X81_Y62_N2
\q_b[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(28),
	devoe => ww_devoe,
	o => \q_b[28]~output_o\);

-- Location: IOOBUF_X81_Y58_N2
\q_b[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(29),
	devoe => ww_devoe,
	o => \q_b[29]~output_o\);

-- Location: IOOBUF_X52_Y67_N2
\q_b[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(30),
	devoe => ww_devoe,
	o => \q_b[30]~output_o\);

-- Location: IOOBUF_X56_Y67_N9
\q_b[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_b\(31),
	devoe => ww_devoe,
	o => \q_b[31]~output_o\);

-- Location: IOIBUF_X31_Y67_N1
\wren_a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren_a,
	o => \wren_a~input_o\);

-- Location: IOIBUF_X81_Y4_N15
\wren_b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren_b,
	o => \wren_b~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G29
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y0_N8
\data_a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(0),
	o => \data_a[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\address_a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(0),
	o => \address_a[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\address_a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(1),
	o => \address_a[1]~input_o\);

-- Location: IOIBUF_X31_Y67_N8
\address_a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(2),
	o => \address_a[2]~input_o\);

-- Location: IOIBUF_X44_Y67_N8
\address_a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(3),
	o => \address_a[3]~input_o\);

-- Location: IOIBUF_X47_Y67_N1
\address_a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_a(4),
	o => \address_a[4]~input_o\);

-- Location: IOIBUF_X22_Y67_N1
\data_b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(0),
	o => \data_b[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\address_b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(0),
	o => \address_b[0]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\address_b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(1),
	o => \address_b[1]~input_o\);

-- Location: IOIBUF_X33_Y67_N15
\address_b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(2),
	o => \address_b[2]~input_o\);

-- Location: IOIBUF_X42_Y67_N1
\address_b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(3),
	o => \address_b[3]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\address_b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_b(4),
	o => \address_b[4]~input_o\);

-- Location: IOIBUF_X17_Y0_N8
\data_a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(1),
	o => \data_a[1]~input_o\);

-- Location: IOIBUF_X17_Y0_N1
\data_a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(2),
	o => \data_a[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\data_a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(3),
	o => \data_a[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\data_a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(4),
	o => \data_a[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\data_a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(5),
	o => \data_a[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\data_a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(6),
	o => \data_a[6]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\data_a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(7),
	o => \data_a[7]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\data_a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(8),
	o => \data_a[8]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\data_a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(9),
	o => \data_a[9]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\data_a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(10),
	o => \data_a[10]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\data_a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(11),
	o => \data_a[11]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\data_a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(12),
	o => \data_a[12]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\data_a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(13),
	o => \data_a[13]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\data_a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(14),
	o => \data_a[14]~input_o\);

-- Location: IOIBUF_X38_Y67_N8
\data_a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(15),
	o => \data_a[15]~input_o\);

-- Location: IOIBUF_X81_Y7_N15
\data_a[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(16),
	o => \data_a[16]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\data_a[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(17),
	o => \data_a[17]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\data_b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(1),
	o => \data_b[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\data_b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(2),
	o => \data_b[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\data_b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(3),
	o => \data_b[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N22
\data_b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(4),
	o => \data_b[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\data_b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(5),
	o => \data_b[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N1
\data_b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(6),
	o => \data_b[6]~input_o\);

-- Location: IOIBUF_X22_Y67_N8
\data_b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(7),
	o => \data_b[7]~input_o\);

-- Location: IOIBUF_X26_Y67_N1
\data_b[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(8),
	o => \data_b[8]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\data_b[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(9),
	o => \data_b[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\data_b[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(10),
	o => \data_b[10]~input_o\);

-- Location: IOIBUF_X42_Y0_N1
\data_b[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(11),
	o => \data_b[11]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\data_b[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(12),
	o => \data_b[12]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\data_b[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(13),
	o => \data_b[13]~input_o\);

-- Location: IOIBUF_X38_Y67_N1
\data_b[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(14),
	o => \data_b[14]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\data_b[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(15),
	o => \data_b[15]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\data_b[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(16),
	o => \data_b[16]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\data_b[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(17),
	o => \data_b[17]~input_o\);

-- Location: M9K_X35_Y2_N0
\altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_q1g2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_a~input_o\,
	portare => VCC,
	portbwe => \wren_b~input_o\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X61_Y67_N8
\data_a[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(18),
	o => \data_a[18]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\data_b[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(18),
	o => \data_b[18]~input_o\);

-- Location: IOIBUF_X81_Y61_N15
\data_a[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(19),
	o => \data_a[19]~input_o\);

-- Location: IOIBUF_X52_Y67_N8
\data_a[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(20),
	o => \data_a[20]~input_o\);

-- Location: IOIBUF_X61_Y67_N1
\data_a[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(21),
	o => \data_a[21]~input_o\);

-- Location: IOIBUF_X54_Y67_N1
\data_a[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(22),
	o => \data_a[22]~input_o\);

-- Location: IOIBUF_X49_Y67_N8
\data_a[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(23),
	o => \data_a[23]~input_o\);

-- Location: IOIBUF_X65_Y67_N1
\data_a[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(24),
	o => \data_a[24]~input_o\);

-- Location: IOIBUF_X52_Y67_N22
\data_a[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(25),
	o => \data_a[25]~input_o\);

-- Location: IOIBUF_X81_Y63_N1
\data_a[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(26),
	o => \data_a[26]~input_o\);

-- Location: IOIBUF_X70_Y67_N22
\data_a[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(27),
	o => \data_a[27]~input_o\);

-- Location: IOIBUF_X81_Y64_N1
\data_a[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(28),
	o => \data_a[28]~input_o\);

-- Location: IOIBUF_X81_Y52_N1
\data_a[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(29),
	o => \data_a[29]~input_o\);

-- Location: IOIBUF_X81_Y55_N8
\data_a[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(30),
	o => \data_a[30]~input_o\);

-- Location: IOIBUF_X81_Y56_N1
\data_a[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_a(31),
	o => \data_a[31]~input_o\);

-- Location: IOIBUF_X58_Y67_N22
\data_b[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(19),
	o => \data_b[19]~input_o\);

-- Location: IOIBUF_X44_Y67_N22
\data_b[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(20),
	o => \data_b[20]~input_o\);

-- Location: IOIBUF_X63_Y67_N1
\data_b[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(21),
	o => \data_b[21]~input_o\);

-- Location: IOIBUF_X81_Y53_N8
\data_b[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(22),
	o => \data_b[22]~input_o\);

-- Location: IOIBUF_X44_Y67_N1
\data_b[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(23),
	o => \data_b[23]~input_o\);

-- Location: IOIBUF_X70_Y67_N1
\data_b[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(24),
	o => \data_b[24]~input_o\);

-- Location: IOIBUF_X65_Y67_N8
\data_b[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(25),
	o => \data_b[25]~input_o\);

-- Location: IOIBUF_X56_Y67_N1
\data_b[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(26),
	o => \data_b[26]~input_o\);

-- Location: IOIBUF_X81_Y61_N8
\data_b[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(27),
	o => \data_b[27]~input_o\);

-- Location: IOIBUF_X68_Y67_N1
\data_b[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(28),
	o => \data_b[28]~input_o\);

-- Location: IOIBUF_X81_Y56_N8
\data_b[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(29),
	o => \data_b[29]~input_o\);

-- Location: IOIBUF_X56_Y67_N15
\data_b[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(30),
	o => \data_b[30]~input_o\);

-- Location: IOIBUF_X70_Y67_N15
\data_b[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_b(31),
	o => \data_b[31]~input_o\);

-- Location: M9K_X60_Y63_N0
\altsyncram_component|auto_generated|ram_block1a18\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_q1g2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_a~input_o\,
	portare => VCC,
	portbwe => \wren_b~input_o\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portbdatain => \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\,
	portbdataout => \altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

ww_q_a(0) <= \q_a[0]~output_o\;

ww_q_a(1) <= \q_a[1]~output_o\;

ww_q_a(2) <= \q_a[2]~output_o\;

ww_q_a(3) <= \q_a[3]~output_o\;

ww_q_a(4) <= \q_a[4]~output_o\;

ww_q_a(5) <= \q_a[5]~output_o\;

ww_q_a(6) <= \q_a[6]~output_o\;

ww_q_a(7) <= \q_a[7]~output_o\;

ww_q_a(8) <= \q_a[8]~output_o\;

ww_q_a(9) <= \q_a[9]~output_o\;

ww_q_a(10) <= \q_a[10]~output_o\;

ww_q_a(11) <= \q_a[11]~output_o\;

ww_q_a(12) <= \q_a[12]~output_o\;

ww_q_a(13) <= \q_a[13]~output_o\;

ww_q_a(14) <= \q_a[14]~output_o\;

ww_q_a(15) <= \q_a[15]~output_o\;

ww_q_a(16) <= \q_a[16]~output_o\;

ww_q_a(17) <= \q_a[17]~output_o\;

ww_q_a(18) <= \q_a[18]~output_o\;

ww_q_a(19) <= \q_a[19]~output_o\;

ww_q_a(20) <= \q_a[20]~output_o\;

ww_q_a(21) <= \q_a[21]~output_o\;

ww_q_a(22) <= \q_a[22]~output_o\;

ww_q_a(23) <= \q_a[23]~output_o\;

ww_q_a(24) <= \q_a[24]~output_o\;

ww_q_a(25) <= \q_a[25]~output_o\;

ww_q_a(26) <= \q_a[26]~output_o\;

ww_q_a(27) <= \q_a[27]~output_o\;

ww_q_a(28) <= \q_a[28]~output_o\;

ww_q_a(29) <= \q_a[29]~output_o\;

ww_q_a(30) <= \q_a[30]~output_o\;

ww_q_a(31) <= \q_a[31]~output_o\;

ww_q_b(0) <= \q_b[0]~output_o\;

ww_q_b(1) <= \q_b[1]~output_o\;

ww_q_b(2) <= \q_b[2]~output_o\;

ww_q_b(3) <= \q_b[3]~output_o\;

ww_q_b(4) <= \q_b[4]~output_o\;

ww_q_b(5) <= \q_b[5]~output_o\;

ww_q_b(6) <= \q_b[6]~output_o\;

ww_q_b(7) <= \q_b[7]~output_o\;

ww_q_b(8) <= \q_b[8]~output_o\;

ww_q_b(9) <= \q_b[9]~output_o\;

ww_q_b(10) <= \q_b[10]~output_o\;

ww_q_b(11) <= \q_b[11]~output_o\;

ww_q_b(12) <= \q_b[12]~output_o\;

ww_q_b(13) <= \q_b[13]~output_o\;

ww_q_b(14) <= \q_b[14]~output_o\;

ww_q_b(15) <= \q_b[15]~output_o\;

ww_q_b(16) <= \q_b[16]~output_o\;

ww_q_b(17) <= \q_b[17]~output_o\;

ww_q_b(18) <= \q_b[18]~output_o\;

ww_q_b(19) <= \q_b[19]~output_o\;

ww_q_b(20) <= \q_b[20]~output_o\;

ww_q_b(21) <= \q_b[21]~output_o\;

ww_q_b(22) <= \q_b[22]~output_o\;

ww_q_b(23) <= \q_b[23]~output_o\;

ww_q_b(24) <= \q_b[24]~output_o\;

ww_q_b(25) <= \q_b[25]~output_o\;

ww_q_b(26) <= \q_b[26]~output_o\;

ww_q_b(27) <= \q_b[27]~output_o\;

ww_q_b(28) <= \q_b[28]~output_o\;

ww_q_b(29) <= \q_b[29]~output_o\;

ww_q_b(30) <= \q_b[30]~output_o\;

ww_q_b(31) <= \q_b[31]~output_o\;
END structure;


