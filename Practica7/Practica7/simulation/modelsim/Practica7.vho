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

-- DATE "11/16/2020 21:19:14"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practica7 IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	ov : OUT std_logic;
	s1 : OUT std_logic_vector(6 DOWNTO 0);
	s2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Practica7;

-- Design Ports Information
-- ov	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[0]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[1]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[4]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[5]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s1[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[2]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[4]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s2[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[4]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ov : std_logic;
SIGNAL ww_s1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_alu|Multiplicador|Add1~2_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~5\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~6_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~7\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~8_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~9\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~10_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~0_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~2_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~4_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~8_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~0_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~2_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~4_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~6_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~9\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~10_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~11\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~12_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[5]~0_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[7]~4_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[3][6]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[2][6]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[2][5]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[2][4]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[3][3]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[1][4]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[0][3]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[0][2]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[0][1]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[4][6]~combout\ : std_logic;
SIGNAL \i_alu|i_overflow|Selector0~0_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux2~0_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux1~0_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux1~1_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux4~3_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_alu|i_Mux_B|s[2]~1_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_alu|i_Mux_B|s[3]~0_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_alu|i_Mux_B|s[4]~2_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_alu|Control|Mux1~0_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[4][8]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[4][7]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[0][4]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[1][3]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[1][2]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[1][1]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~1\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~3\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~5\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~7\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~9\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~10_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[3][5]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[3][4]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[2][3]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~1\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~3\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~4_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add0~6_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add1~0_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[2][2]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~1\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~3\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~5\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~7\ : std_logic;
SIGNAL \i_alu|Multiplicador|Add2~8_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[4][5]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|pp[4][4]~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|p[4]~1\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[5]~1\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[6]~3\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[7]~5\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[8]~7\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[9]~8_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[6]~2_combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|p1[8]~6_combout\ : std_logic;
SIGNAL \i_alu|i_overflow|Selector0~1_combout\ : std_logic;
SIGNAL \i_alu|i_overflow|Selector0~2_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_alu|Multiplicador|p[4]~0_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux0~0_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux0~1_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux0~2_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux3~0_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux3~1_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux3~2_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux2~1_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux2~2_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux4~2_combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux4~4_combout\ : std_logic;
SIGNAL \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_alu|i_salida|Mux1~2_combout\ : std_logic;
SIGNAL \i2_BinA7|Mux6~0_combout\ : std_logic;
SIGNAL \i2_BinA7|Mux5~0_combout\ : std_logic;
SIGNAL \i2_BinA7|Mux4~0_combout\ : std_logic;
SIGNAL \i2_BinA7|Mux3~0_combout\ : std_logic;
SIGNAL \i2_BinA7|Mux2~0_combout\ : std_logic;
SIGNAL \i2_BinA7|Mux1~0_combout\ : std_logic;
SIGNAL \i2_BinA7|Mux0~0_combout\ : std_logic;
SIGNAL \sel~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_alu|i_sum_rest|b_aux\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i2_BinA7|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_sel <= sel;
ov <= ww_ov;
s1 <= ww_s1;
s2 <= ww_s2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i2_BinA7|ALT_INV_Mux6~0_combout\ <= NOT \i2_BinA7|Mux6~0_combout\;

-- Location: LCCOMB_X23_Y19_N20
\i_alu|Multiplicador|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add1~2_combout\ = (\i_alu|Multiplicador|pp[2][4]~combout\ & ((\i_alu|Multiplicador|pp[3][4]~combout\ & (\i_alu|Multiplicador|Add1~1\ & VCC)) # (!\i_alu|Multiplicador|pp[3][4]~combout\ & (!\i_alu|Multiplicador|Add1~1\)))) # 
-- (!\i_alu|Multiplicador|pp[2][4]~combout\ & ((\i_alu|Multiplicador|pp[3][4]~combout\ & (!\i_alu|Multiplicador|Add1~1\)) # (!\i_alu|Multiplicador|pp[3][4]~combout\ & ((\i_alu|Multiplicador|Add1~1\) # (GND)))))
-- \i_alu|Multiplicador|Add1~3\ = CARRY((\i_alu|Multiplicador|pp[2][4]~combout\ & (!\i_alu|Multiplicador|pp[3][4]~combout\ & !\i_alu|Multiplicador|Add1~1\)) # (!\i_alu|Multiplicador|pp[2][4]~combout\ & ((!\i_alu|Multiplicador|Add1~1\) # 
-- (!\i_alu|Multiplicador|pp[3][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[2][4]~combout\,
	datab => \i_alu|Multiplicador|pp[3][4]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add1~1\,
	combout => \i_alu|Multiplicador|Add1~2_combout\,
	cout => \i_alu|Multiplicador|Add1~3\);

-- Location: LCCOMB_X23_Y19_N22
\i_alu|Multiplicador|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add1~4_combout\ = ((\i_alu|Multiplicador|pp[2][5]~combout\ $ (\i_alu|Multiplicador|pp[3][5]~combout\ $ (!\i_alu|Multiplicador|Add1~3\)))) # (GND)
-- \i_alu|Multiplicador|Add1~5\ = CARRY((\i_alu|Multiplicador|pp[2][5]~combout\ & ((\i_alu|Multiplicador|pp[3][5]~combout\) # (!\i_alu|Multiplicador|Add1~3\))) # (!\i_alu|Multiplicador|pp[2][5]~combout\ & (\i_alu|Multiplicador|pp[3][5]~combout\ & 
-- !\i_alu|Multiplicador|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[2][5]~combout\,
	datab => \i_alu|Multiplicador|pp[3][5]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add1~3\,
	combout => \i_alu|Multiplicador|Add1~4_combout\,
	cout => \i_alu|Multiplicador|Add1~5\);

-- Location: LCCOMB_X23_Y19_N24
\i_alu|Multiplicador|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add1~6_combout\ = (\i_alu|Multiplicador|pp[3][6]~combout\ & ((\i_alu|Multiplicador|pp[2][6]~combout\ & (\i_alu|Multiplicador|Add1~5\ & VCC)) # (!\i_alu|Multiplicador|pp[2][6]~combout\ & (!\i_alu|Multiplicador|Add1~5\)))) # 
-- (!\i_alu|Multiplicador|pp[3][6]~combout\ & ((\i_alu|Multiplicador|pp[2][6]~combout\ & (!\i_alu|Multiplicador|Add1~5\)) # (!\i_alu|Multiplicador|pp[2][6]~combout\ & ((\i_alu|Multiplicador|Add1~5\) # (GND)))))
-- \i_alu|Multiplicador|Add1~7\ = CARRY((\i_alu|Multiplicador|pp[3][6]~combout\ & (!\i_alu|Multiplicador|pp[2][6]~combout\ & !\i_alu|Multiplicador|Add1~5\)) # (!\i_alu|Multiplicador|pp[3][6]~combout\ & ((!\i_alu|Multiplicador|Add1~5\) # 
-- (!\i_alu|Multiplicador|pp[2][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[3][6]~combout\,
	datab => \i_alu|Multiplicador|pp[2][6]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add1~5\,
	combout => \i_alu|Multiplicador|Add1~6_combout\,
	cout => \i_alu|Multiplicador|Add1~7\);

-- Location: LCCOMB_X23_Y19_N26
\i_alu|Multiplicador|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add1~8_combout\ = (\i_alu|Multiplicador|Add1~7\ & (\a~combout\(4) & (\b~combout\(3) & VCC))) # (!\i_alu|Multiplicador|Add1~7\ & ((((\a~combout\(4) & \b~combout\(3))))))
-- \i_alu|Multiplicador|Add1~9\ = CARRY((\a~combout\(4) & (\b~combout\(3) & !\i_alu|Multiplicador|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(3),
	datad => VCC,
	cin => \i_alu|Multiplicador|Add1~7\,
	combout => \i_alu|Multiplicador|Add1~8_combout\,
	cout => \i_alu|Multiplicador|Add1~9\);

-- Location: LCCOMB_X23_Y19_N28
\i_alu|Multiplicador|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add1~10_combout\ = \i_alu|Multiplicador|Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \i_alu|Multiplicador|Add1~9\,
	combout => \i_alu|Multiplicador|Add1~10_combout\);

-- Location: LCCOMB_X22_Y19_N18
\i_alu|Multiplicador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add0~0_combout\ = (\i_alu|Multiplicador|pp[0][1]~combout\ & (\i_alu|Multiplicador|pp[1][1]~combout\ $ (VCC))) # (!\i_alu|Multiplicador|pp[0][1]~combout\ & (\i_alu|Multiplicador|pp[1][1]~combout\ & VCC))
-- \i_alu|Multiplicador|Add0~1\ = CARRY((\i_alu|Multiplicador|pp[0][1]~combout\ & \i_alu|Multiplicador|pp[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[0][1]~combout\,
	datab => \i_alu|Multiplicador|pp[1][1]~combout\,
	datad => VCC,
	combout => \i_alu|Multiplicador|Add0~0_combout\,
	cout => \i_alu|Multiplicador|Add0~1\);

-- Location: LCCOMB_X22_Y19_N20
\i_alu|Multiplicador|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add0~2_combout\ = (\i_alu|Multiplicador|pp[0][2]~combout\ & ((\i_alu|Multiplicador|pp[1][2]~combout\ & (\i_alu|Multiplicador|Add0~1\ & VCC)) # (!\i_alu|Multiplicador|pp[1][2]~combout\ & (!\i_alu|Multiplicador|Add0~1\)))) # 
-- (!\i_alu|Multiplicador|pp[0][2]~combout\ & ((\i_alu|Multiplicador|pp[1][2]~combout\ & (!\i_alu|Multiplicador|Add0~1\)) # (!\i_alu|Multiplicador|pp[1][2]~combout\ & ((\i_alu|Multiplicador|Add0~1\) # (GND)))))
-- \i_alu|Multiplicador|Add0~3\ = CARRY((\i_alu|Multiplicador|pp[0][2]~combout\ & (!\i_alu|Multiplicador|pp[1][2]~combout\ & !\i_alu|Multiplicador|Add0~1\)) # (!\i_alu|Multiplicador|pp[0][2]~combout\ & ((!\i_alu|Multiplicador|Add0~1\) # 
-- (!\i_alu|Multiplicador|pp[1][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[0][2]~combout\,
	datab => \i_alu|Multiplicador|pp[1][2]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add0~1\,
	combout => \i_alu|Multiplicador|Add0~2_combout\,
	cout => \i_alu|Multiplicador|Add0~3\);

-- Location: LCCOMB_X22_Y19_N22
\i_alu|Multiplicador|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add0~4_combout\ = ((\i_alu|Multiplicador|pp[0][3]~combout\ $ (\i_alu|Multiplicador|pp[1][3]~combout\ $ (!\i_alu|Multiplicador|Add0~3\)))) # (GND)
-- \i_alu|Multiplicador|Add0~5\ = CARRY((\i_alu|Multiplicador|pp[0][3]~combout\ & ((\i_alu|Multiplicador|pp[1][3]~combout\) # (!\i_alu|Multiplicador|Add0~3\))) # (!\i_alu|Multiplicador|pp[0][3]~combout\ & (\i_alu|Multiplicador|pp[1][3]~combout\ & 
-- !\i_alu|Multiplicador|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[0][3]~combout\,
	datab => \i_alu|Multiplicador|pp[1][3]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add0~3\,
	combout => \i_alu|Multiplicador|Add0~4_combout\,
	cout => \i_alu|Multiplicador|Add0~5\);

-- Location: LCCOMB_X22_Y19_N26
\i_alu|Multiplicador|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add0~8_combout\ = (\i_alu|Multiplicador|Add0~7\ & (\a~combout\(4) & (\b~combout\(1) & VCC))) # (!\i_alu|Multiplicador|Add0~7\ & ((((\a~combout\(4) & \b~combout\(1))))))
-- \i_alu|Multiplicador|Add0~9\ = CARRY((\a~combout\(4) & (\b~combout\(1) & !\i_alu|Multiplicador|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(1),
	datad => VCC,
	cin => \i_alu|Multiplicador|Add0~7\,
	combout => \i_alu|Multiplicador|Add0~8_combout\,
	cout => \i_alu|Multiplicador|Add0~9\);

-- Location: LCCOMB_X23_Y19_N2
\i_alu|Multiplicador|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add2~0_combout\ = (\i_alu|Multiplicador|Add0~2_combout\ & (\i_alu|Multiplicador|pp[2][2]~combout\ $ (VCC))) # (!\i_alu|Multiplicador|Add0~2_combout\ & (\i_alu|Multiplicador|pp[2][2]~combout\ & VCC))
-- \i_alu|Multiplicador|Add2~1\ = CARRY((\i_alu|Multiplicador|Add0~2_combout\ & \i_alu|Multiplicador|pp[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add0~2_combout\,
	datab => \i_alu|Multiplicador|pp[2][2]~combout\,
	datad => VCC,
	combout => \i_alu|Multiplicador|Add2~0_combout\,
	cout => \i_alu|Multiplicador|Add2~1\);

-- Location: LCCOMB_X23_Y19_N4
\i_alu|Multiplicador|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add2~2_combout\ = (\i_alu|Multiplicador|Add0~4_combout\ & ((\i_alu|Multiplicador|Add1~0_combout\ & (\i_alu|Multiplicador|Add2~1\ & VCC)) # (!\i_alu|Multiplicador|Add1~0_combout\ & (!\i_alu|Multiplicador|Add2~1\)))) # 
-- (!\i_alu|Multiplicador|Add0~4_combout\ & ((\i_alu|Multiplicador|Add1~0_combout\ & (!\i_alu|Multiplicador|Add2~1\)) # (!\i_alu|Multiplicador|Add1~0_combout\ & ((\i_alu|Multiplicador|Add2~1\) # (GND)))))
-- \i_alu|Multiplicador|Add2~3\ = CARRY((\i_alu|Multiplicador|Add0~4_combout\ & (!\i_alu|Multiplicador|Add1~0_combout\ & !\i_alu|Multiplicador|Add2~1\)) # (!\i_alu|Multiplicador|Add0~4_combout\ & ((!\i_alu|Multiplicador|Add2~1\) # 
-- (!\i_alu|Multiplicador|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add0~4_combout\,
	datab => \i_alu|Multiplicador|Add1~0_combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add2~1\,
	combout => \i_alu|Multiplicador|Add2~2_combout\,
	cout => \i_alu|Multiplicador|Add2~3\);

-- Location: LCCOMB_X23_Y19_N6
\i_alu|Multiplicador|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add2~4_combout\ = ((\i_alu|Multiplicador|Add1~2_combout\ $ (\i_alu|Multiplicador|Add0~6_combout\ $ (!\i_alu|Multiplicador|Add2~3\)))) # (GND)
-- \i_alu|Multiplicador|Add2~5\ = CARRY((\i_alu|Multiplicador|Add1~2_combout\ & ((\i_alu|Multiplicador|Add0~6_combout\) # (!\i_alu|Multiplicador|Add2~3\))) # (!\i_alu|Multiplicador|Add1~2_combout\ & (\i_alu|Multiplicador|Add0~6_combout\ & 
-- !\i_alu|Multiplicador|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add1~2_combout\,
	datab => \i_alu|Multiplicador|Add0~6_combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add2~3\,
	combout => \i_alu|Multiplicador|Add2~4_combout\,
	cout => \i_alu|Multiplicador|Add2~5\);

-- Location: LCCOMB_X23_Y19_N8
\i_alu|Multiplicador|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add2~6_combout\ = (\i_alu|Multiplicador|Add0~8_combout\ & ((\i_alu|Multiplicador|Add1~4_combout\ & (\i_alu|Multiplicador|Add2~5\ & VCC)) # (!\i_alu|Multiplicador|Add1~4_combout\ & (!\i_alu|Multiplicador|Add2~5\)))) # 
-- (!\i_alu|Multiplicador|Add0~8_combout\ & ((\i_alu|Multiplicador|Add1~4_combout\ & (!\i_alu|Multiplicador|Add2~5\)) # (!\i_alu|Multiplicador|Add1~4_combout\ & ((\i_alu|Multiplicador|Add2~5\) # (GND)))))
-- \i_alu|Multiplicador|Add2~7\ = CARRY((\i_alu|Multiplicador|Add0~8_combout\ & (!\i_alu|Multiplicador|Add1~4_combout\ & !\i_alu|Multiplicador|Add2~5\)) # (!\i_alu|Multiplicador|Add0~8_combout\ & ((!\i_alu|Multiplicador|Add2~5\) # 
-- (!\i_alu|Multiplicador|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add0~8_combout\,
	datab => \i_alu|Multiplicador|Add1~4_combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add2~5\,
	combout => \i_alu|Multiplicador|Add2~6_combout\,
	cout => \i_alu|Multiplicador|Add2~7\);

-- Location: LCCOMB_X23_Y19_N10
\i_alu|Multiplicador|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add2~8_combout\ = ((\i_alu|Multiplicador|Add1~6_combout\ $ (\i_alu|Multiplicador|Add0~10_combout\ $ (!\i_alu|Multiplicador|Add2~7\)))) # (GND)
-- \i_alu|Multiplicador|Add2~9\ = CARRY((\i_alu|Multiplicador|Add1~6_combout\ & ((\i_alu|Multiplicador|Add0~10_combout\) # (!\i_alu|Multiplicador|Add2~7\))) # (!\i_alu|Multiplicador|Add1~6_combout\ & (\i_alu|Multiplicador|Add0~10_combout\ & 
-- !\i_alu|Multiplicador|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add1~6_combout\,
	datab => \i_alu|Multiplicador|Add0~10_combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add2~7\,
	combout => \i_alu|Multiplicador|Add2~8_combout\,
	cout => \i_alu|Multiplicador|Add2~9\);

-- Location: LCCOMB_X23_Y19_N12
\i_alu|Multiplicador|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add2~10_combout\ = (\i_alu|Multiplicador|Add1~8_combout\ & (!\i_alu|Multiplicador|Add2~9\)) # (!\i_alu|Multiplicador|Add1~8_combout\ & ((\i_alu|Multiplicador|Add2~9\) # (GND)))
-- \i_alu|Multiplicador|Add2~11\ = CARRY((!\i_alu|Multiplicador|Add2~9\) # (!\i_alu|Multiplicador|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_alu|Multiplicador|Add1~8_combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add2~9\,
	combout => \i_alu|Multiplicador|Add2~10_combout\,
	cout => \i_alu|Multiplicador|Add2~11\);

-- Location: LCCOMB_X23_Y19_N14
\i_alu|Multiplicador|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add2~12_combout\ = \i_alu|Multiplicador|Add2~11\ $ (!\i_alu|Multiplicador|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_alu|Multiplicador|Add1~10_combout\,
	cin => \i_alu|Multiplicador|Add2~11\,
	combout => \i_alu|Multiplicador|Add2~12_combout\);

-- Location: LCCOMB_X24_Y19_N20
\i_alu|Multiplicador|p1[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|p1[5]~0_combout\ = (\i_alu|Multiplicador|Add2~6_combout\ & ((\i_alu|Multiplicador|pp[4][5]~combout\ & (\i_alu|Multiplicador|p[4]~1\ & VCC)) # (!\i_alu|Multiplicador|pp[4][5]~combout\ & (!\i_alu|Multiplicador|p[4]~1\)))) # 
-- (!\i_alu|Multiplicador|Add2~6_combout\ & ((\i_alu|Multiplicador|pp[4][5]~combout\ & (!\i_alu|Multiplicador|p[4]~1\)) # (!\i_alu|Multiplicador|pp[4][5]~combout\ & ((\i_alu|Multiplicador|p[4]~1\) # (GND)))))
-- \i_alu|Multiplicador|p1[5]~1\ = CARRY((\i_alu|Multiplicador|Add2~6_combout\ & (!\i_alu|Multiplicador|pp[4][5]~combout\ & !\i_alu|Multiplicador|p[4]~1\)) # (!\i_alu|Multiplicador|Add2~6_combout\ & ((!\i_alu|Multiplicador|p[4]~1\) # 
-- (!\i_alu|Multiplicador|pp[4][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add2~6_combout\,
	datab => \i_alu|Multiplicador|pp[4][5]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|p[4]~1\,
	combout => \i_alu|Multiplicador|p1[5]~0_combout\,
	cout => \i_alu|Multiplicador|p1[5]~1\);

-- Location: LCCOMB_X24_Y19_N24
\i_alu|Multiplicador|p1[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|p1[7]~4_combout\ = (\i_alu|Multiplicador|Add2~10_combout\ & ((\i_alu|Multiplicador|pp[4][7]~combout\ & (\i_alu|Multiplicador|p1[6]~3\ & VCC)) # (!\i_alu|Multiplicador|pp[4][7]~combout\ & (!\i_alu|Multiplicador|p1[6]~3\)))) # 
-- (!\i_alu|Multiplicador|Add2~10_combout\ & ((\i_alu|Multiplicador|pp[4][7]~combout\ & (!\i_alu|Multiplicador|p1[6]~3\)) # (!\i_alu|Multiplicador|pp[4][7]~combout\ & ((\i_alu|Multiplicador|p1[6]~3\) # (GND)))))
-- \i_alu|Multiplicador|p1[7]~5\ = CARRY((\i_alu|Multiplicador|Add2~10_combout\ & (!\i_alu|Multiplicador|pp[4][7]~combout\ & !\i_alu|Multiplicador|p1[6]~3\)) # (!\i_alu|Multiplicador|Add2~10_combout\ & ((!\i_alu|Multiplicador|p1[6]~3\) # 
-- (!\i_alu|Multiplicador|pp[4][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add2~10_combout\,
	datab => \i_alu|Multiplicador|pp[4][7]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|p1[6]~3\,
	combout => \i_alu|Multiplicador|p1[7]~4_combout\,
	cout => \i_alu|Multiplicador|p1[7]~5\);

-- Location: LCCOMB_X22_Y20_N16
\i_alu|Multiplicador|pp[3][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[3][6]~combout\ = (\a~combout\(3) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \i_alu|Multiplicador|pp[3][6]~combout\);

-- Location: LCCOMB_X23_Y19_N0
\i_alu|Multiplicador|pp[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[2][6]~combout\ = (\a~combout\(4) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(4),
	datad => \b~combout\(2),
	combout => \i_alu|Multiplicador|pp[2][6]~combout\);

-- Location: LCCOMB_X22_Y20_N12
\i_alu|Multiplicador|pp[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[2][5]~combout\ = (\b~combout\(2) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(3),
	combout => \i_alu|Multiplicador|pp[2][5]~combout\);

-- Location: LCCOMB_X22_Y20_N0
\i_alu|Multiplicador|pp[2][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[2][4]~combout\ = (\b~combout\(2) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \i_alu|Multiplicador|pp[2][4]~combout\);

-- Location: LCCOMB_X23_Y19_N16
\i_alu|Multiplicador|pp[3][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[3][3]~combout\ = (\a~combout\(0) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datac => \b~combout\(3),
	combout => \i_alu|Multiplicador|pp[3][3]~combout\);

-- Location: LCCOMB_X22_Y19_N10
\i_alu|Multiplicador|pp[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[1][4]~combout\ = (\b~combout\(1) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datad => \a~combout\(3),
	combout => \i_alu|Multiplicador|pp[1][4]~combout\);

-- Location: LCCOMB_X22_Y19_N8
\i_alu|Multiplicador|pp[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[0][3]~combout\ = (\b~combout\(0) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \a~combout\(3),
	combout => \i_alu|Multiplicador|pp[0][3]~combout\);

-- Location: LCCOMB_X22_Y19_N12
\i_alu|Multiplicador|pp[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[0][2]~combout\ = (\b~combout\(0) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \a~combout\(2),
	combout => \i_alu|Multiplicador|pp[0][2]~combout\);

-- Location: LCCOMB_X22_Y19_N0
\i_alu|Multiplicador|pp[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[0][1]~combout\ = (\b~combout\(0) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	combout => \i_alu|Multiplicador|pp[0][1]~combout\);

-- Location: LCCOMB_X24_Y19_N12
\i_alu|Multiplicador|pp[4][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[4][6]~combout\ = (\b~combout\(4) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(4),
	datac => \a~combout\(2),
	combout => \i_alu|Multiplicador|pp[4][6]~combout\);

-- Location: LCCOMB_X24_Y19_N10
\i_alu|i_overflow|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_overflow|Selector0~0_combout\ = (\i_alu|Multiplicador|p1[5]~0_combout\ & (((!\i_alu|Multiplicador|p[4]~0_combout\) # (!\i_alu|Multiplicador|p1[7]~4_combout\)) # (!\i_alu|Multiplicador|p1[8]~6_combout\))) # (!\i_alu|Multiplicador|p1[5]~0_combout\ 
-- & ((\i_alu|Multiplicador|p1[8]~6_combout\) # ((\i_alu|Multiplicador|p1[7]~4_combout\) # (\i_alu|Multiplicador|p[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|p1[5]~0_combout\,
	datab => \i_alu|Multiplicador|p1[8]~6_combout\,
	datac => \i_alu|Multiplicador|p1[7]~4_combout\,
	datad => \i_alu|Multiplicador|p[4]~0_combout\,
	combout => \i_alu|i_overflow|Selector0~0_combout\);

-- Location: LCCOMB_X21_Y20_N10
\i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\sel~combout\(0) & (\a~combout\(0) $ (((!\sel~combout\(1) & !\b~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \b~combout\(0),
	combout => \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X22_Y20_N26
\i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|s_i~combout\ = \sel~combout\(0) $ (\i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\i_alu|i_Mux_B|s[2]~1_combout\ $ (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \i_alu|i_Mux_B|s[2]~1_combout\,
	datad => \a~combout\(2),
	combout => \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X20_Y20_N24
\i_alu|i_salida|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux2~0_combout\ = (\sel~combout\(2) & ((\i_alu|Control|Mux1~0_combout\ & ((\i_alu|Multiplicador|Add2~0_combout\))) # (!\i_alu|Control|Mux1~0_combout\ & (\i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|s_i~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|s_i~combout\,
	datab => \i_alu|Control|Mux1~0_combout\,
	datac => \sel~combout\(2),
	datad => \i_alu|Multiplicador|Add2~0_combout\,
	combout => \i_alu|i_salida|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y20_N6
\i_alu|i_salida|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux1~0_combout\ = (\sel~combout\(1) & (\a~combout\(3) $ (((\sel~combout\(0)) # (\b~combout\(3)))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\a~combout\(3)) # (\b~combout\(3)))) # (!\sel~combout\(0) & (\a~combout\(3) & 
-- \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(1),
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \i_alu|i_salida|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y20_N12
\i_alu|i_salida|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux1~1_combout\ = (\sel~combout\(2) & (((\i_alu|Control|Mux1~0_combout\ & \i_alu|Multiplicador|Add2~2_combout\)))) # (!\sel~combout\(2) & (\i_alu|i_salida|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux1~0_combout\,
	datab => \i_alu|Control|Mux1~0_combout\,
	datac => \sel~combout\(2),
	datad => \i_alu|Multiplicador|Add2~2_combout\,
	combout => \i_alu|i_salida|Mux1~1_combout\);

-- Location: LCCOMB_X21_Y20_N2
\i_alu|i_salida|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux4~3_combout\ = (\sel~combout\(1) & ((\a~combout\(0) & (\sel~combout\(0) & \b~combout\(0))) # (!\a~combout\(0) & (!\sel~combout\(0))))) # (!\sel~combout\(1) & (\a~combout\(0) $ (((\b~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \b~combout\(0),
	combout => \i_alu|i_salida|Mux4~3_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel(0),
	combout => \sel~combout\(0));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel(1),
	combout => \sel~combout\(1));

-- Location: LCCOMB_X21_Y20_N22
\i_alu|i_sum_rest|b_aux[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|b_aux\(1) = \sel~combout\(0) $ (((\b~combout\(1) & !\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	combout => \i_alu|i_sum_rest|b_aux\(1));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X21_Y20_N12
\i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\a~combout\(0) & (\sel~combout\(0) $ (((\sel~combout\(1)) # (\b~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \b~combout\(0),
	combout => \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X21_Y20_N16
\i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_alu|i_sum_rest|b_aux\(1) & ((\i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # ((\a~combout\(1)) # (\i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\)))) # 
-- (!\i_alu|i_sum_rest|b_aux\(1) & (\a~combout\(1) & ((\i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \i_alu|i_sum_rest|b_aux\(1),
	datac => \a~combout\(1),
	datad => \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	combout => \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X22_Y20_N4
\i_alu|i_Mux_B|s[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_Mux_B|s[2]~1_combout\ = (!\sel~combout\(1) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(1),
	datac => \b~combout\(2),
	combout => \i_alu|i_Mux_B|s[2]~1_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X22_Y20_N30
\i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\a~combout\(2)) # (\sel~combout\(0) $ (\i_alu|i_Mux_B|s[2]~1_combout\)))) # 
-- (!\i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\a~combout\(2) & (\sel~combout\(0) $ (\i_alu|i_Mux_B|s[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \i_alu|i_Mux_B|s[2]~1_combout\,
	datad => \a~combout\(2),
	combout => \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X22_Y20_N2
\i_alu|i_Mux_B|s[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_Mux_B|s[3]~0_combout\ = (!\sel~combout\(1) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(1),
	datad => \b~combout\(3),
	combout => \i_alu|i_Mux_B|s[3]~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\a~combout\(3)) # (\sel~combout\(0) $ (\i_alu|i_Mux_B|s[3]~0_combout\)))) # 
-- (!\i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\a~combout\(3) & (\sel~combout\(0) $ (\i_alu|i_Mux_B|s[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \a~combout\(3),
	datad => \i_alu|i_Mux_B|s[3]~0_combout\,
	combout => \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X21_Y20_N18
\i_alu|i_Mux_B|s[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_Mux_B|s[4]~2_combout\ = (!\sel~combout\(1) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(1),
	datad => \b~combout\(4),
	combout => \i_alu|i_Mux_B|s[4]~2_combout\);

-- Location: LCCOMB_X21_Y20_N28
\i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\a~combout\(4)) # (\sel~combout\(0) $ (\i_alu|i_Mux_B|s[4]~2_combout\)))) # 
-- (!\i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\a~combout\(4) & (\sel~combout\(0) $ (\i_alu|i_Mux_B|s[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \sel~combout\(0),
	datac => \a~combout\(4),
	datad => \i_alu|i_Mux_B|s[4]~2_combout\,
	combout => \i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X21_Y20_N0
\i_alu|Control|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Control|Mux1~0_combout\ = (\sel~combout\(0) & \sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	combout => \i_alu|Control|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y19_N8
\i_alu|Multiplicador|pp[4][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[4][8]~combout\ = (\a~combout\(4) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(4),
	datad => \b~combout\(4),
	combout => \i_alu|Multiplicador|pp[4][8]~combout\);

-- Location: LCCOMB_X24_Y19_N2
\i_alu|Multiplicador|pp[4][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[4][7]~combout\ = (\a~combout\(3) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(4),
	combout => \i_alu|Multiplicador|pp[4][7]~combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X22_Y19_N4
\i_alu|Multiplicador|pp[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[0][4]~combout\ = (\b~combout\(0) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \a~combout\(4),
	combout => \i_alu|Multiplicador|pp[0][4]~combout\);

-- Location: LCCOMB_X22_Y19_N14
\i_alu|Multiplicador|pp[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[1][3]~combout\ = (\b~combout\(1) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datad => \a~combout\(2),
	combout => \i_alu|Multiplicador|pp[1][3]~combout\);

-- Location: LCCOMB_X22_Y19_N2
\i_alu|Multiplicador|pp[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[1][2]~combout\ = (\a~combout\(1) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \i_alu|Multiplicador|pp[1][2]~combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X22_Y19_N30
\i_alu|Multiplicador|pp[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[1][1]~combout\ = (\a~combout\(0) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	datad => \b~combout\(1),
	combout => \i_alu|Multiplicador|pp[1][1]~combout\);

-- Location: LCCOMB_X22_Y19_N24
\i_alu|Multiplicador|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add0~6_combout\ = (\i_alu|Multiplicador|pp[1][4]~combout\ & ((\i_alu|Multiplicador|pp[0][4]~combout\ & (\i_alu|Multiplicador|Add0~5\ & VCC)) # (!\i_alu|Multiplicador|pp[0][4]~combout\ & (!\i_alu|Multiplicador|Add0~5\)))) # 
-- (!\i_alu|Multiplicador|pp[1][4]~combout\ & ((\i_alu|Multiplicador|pp[0][4]~combout\ & (!\i_alu|Multiplicador|Add0~5\)) # (!\i_alu|Multiplicador|pp[0][4]~combout\ & ((\i_alu|Multiplicador|Add0~5\) # (GND)))))
-- \i_alu|Multiplicador|Add0~7\ = CARRY((\i_alu|Multiplicador|pp[1][4]~combout\ & (!\i_alu|Multiplicador|pp[0][4]~combout\ & !\i_alu|Multiplicador|Add0~5\)) # (!\i_alu|Multiplicador|pp[1][4]~combout\ & ((!\i_alu|Multiplicador|Add0~5\) # 
-- (!\i_alu|Multiplicador|pp[0][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[1][4]~combout\,
	datab => \i_alu|Multiplicador|pp[0][4]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|Add0~5\,
	combout => \i_alu|Multiplicador|Add0~6_combout\,
	cout => \i_alu|Multiplicador|Add0~7\);

-- Location: LCCOMB_X22_Y19_N28
\i_alu|Multiplicador|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add0~10_combout\ = \i_alu|Multiplicador|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \i_alu|Multiplicador|Add0~9\,
	combout => \i_alu|Multiplicador|Add0~10_combout\);

-- Location: LCCOMB_X22_Y20_N18
\i_alu|Multiplicador|pp[3][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[3][5]~combout\ = (\b~combout\(3) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(2),
	combout => \i_alu|Multiplicador|pp[3][5]~combout\);

-- Location: LCCOMB_X22_Y20_N22
\i_alu|Multiplicador|pp[3][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[3][4]~combout\ = (\a~combout\(1) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(3),
	combout => \i_alu|Multiplicador|pp[3][4]~combout\);

-- Location: LCCOMB_X22_Y19_N16
\i_alu|Multiplicador|pp[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[2][3]~combout\ = (\b~combout\(2) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datac => \a~combout\(1),
	combout => \i_alu|Multiplicador|pp[2][3]~combout\);

-- Location: LCCOMB_X23_Y19_N18
\i_alu|Multiplicador|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|Add1~0_combout\ = (\i_alu|Multiplicador|pp[3][3]~combout\ & (\i_alu|Multiplicador|pp[2][3]~combout\ $ (VCC))) # (!\i_alu|Multiplicador|pp[3][3]~combout\ & (\i_alu|Multiplicador|pp[2][3]~combout\ & VCC))
-- \i_alu|Multiplicador|Add1~1\ = CARRY((\i_alu|Multiplicador|pp[3][3]~combout\ & \i_alu|Multiplicador|pp[2][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[3][3]~combout\,
	datab => \i_alu|Multiplicador|pp[2][3]~combout\,
	datad => VCC,
	combout => \i_alu|Multiplicador|Add1~0_combout\,
	cout => \i_alu|Multiplicador|Add1~1\);

-- Location: LCCOMB_X23_Y19_N30
\i_alu|Multiplicador|pp[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[2][2]~combout\ = (\a~combout\(0) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datad => \b~combout\(2),
	combout => \i_alu|Multiplicador|pp[2][2]~combout\);

-- Location: LCCOMB_X24_Y19_N14
\i_alu|Multiplicador|pp[4][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[4][5]~combout\ = (\b~combout\(4) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(4),
	datad => \a~combout\(1),
	combout => \i_alu|Multiplicador|pp[4][5]~combout\);

-- Location: LCCOMB_X24_Y19_N0
\i_alu|Multiplicador|pp[4][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|pp[4][4]~combout\ = (\a~combout\(0) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	datad => \b~combout\(4),
	combout => \i_alu|Multiplicador|pp[4][4]~combout\);

-- Location: LCCOMB_X24_Y19_N18
\i_alu|Multiplicador|p[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|p[4]~0_combout\ = (\i_alu|Multiplicador|Add2~4_combout\ & (\i_alu|Multiplicador|pp[4][4]~combout\ $ (VCC))) # (!\i_alu|Multiplicador|Add2~4_combout\ & (\i_alu|Multiplicador|pp[4][4]~combout\ & VCC))
-- \i_alu|Multiplicador|p[4]~1\ = CARRY((\i_alu|Multiplicador|Add2~4_combout\ & \i_alu|Multiplicador|pp[4][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add2~4_combout\,
	datab => \i_alu|Multiplicador|pp[4][4]~combout\,
	datad => VCC,
	combout => \i_alu|Multiplicador|p[4]~0_combout\,
	cout => \i_alu|Multiplicador|p[4]~1\);

-- Location: LCCOMB_X24_Y19_N22
\i_alu|Multiplicador|p1[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|p1[6]~2_combout\ = ((\i_alu|Multiplicador|pp[4][6]~combout\ $ (\i_alu|Multiplicador|Add2~8_combout\ $ (!\i_alu|Multiplicador|p1[5]~1\)))) # (GND)
-- \i_alu|Multiplicador|p1[6]~3\ = CARRY((\i_alu|Multiplicador|pp[4][6]~combout\ & ((\i_alu|Multiplicador|Add2~8_combout\) # (!\i_alu|Multiplicador|p1[5]~1\))) # (!\i_alu|Multiplicador|pp[4][6]~combout\ & (\i_alu|Multiplicador|Add2~8_combout\ & 
-- !\i_alu|Multiplicador|p1[5]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|pp[4][6]~combout\,
	datab => \i_alu|Multiplicador|Add2~8_combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|p1[5]~1\,
	combout => \i_alu|Multiplicador|p1[6]~2_combout\,
	cout => \i_alu|Multiplicador|p1[6]~3\);

-- Location: LCCOMB_X24_Y19_N26
\i_alu|Multiplicador|p1[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|p1[8]~6_combout\ = ((\i_alu|Multiplicador|Add2~12_combout\ $ (\i_alu|Multiplicador|pp[4][8]~combout\ $ (!\i_alu|Multiplicador|p1[7]~5\)))) # (GND)
-- \i_alu|Multiplicador|p1[8]~7\ = CARRY((\i_alu|Multiplicador|Add2~12_combout\ & ((\i_alu|Multiplicador|pp[4][8]~combout\) # (!\i_alu|Multiplicador|p1[7]~5\))) # (!\i_alu|Multiplicador|Add2~12_combout\ & (\i_alu|Multiplicador|pp[4][8]~combout\ & 
-- !\i_alu|Multiplicador|p1[7]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add2~12_combout\,
	datab => \i_alu|Multiplicador|pp[4][8]~combout\,
	datad => VCC,
	cin => \i_alu|Multiplicador|p1[7]~5\,
	combout => \i_alu|Multiplicador|p1[8]~6_combout\,
	cout => \i_alu|Multiplicador|p1[8]~7\);

-- Location: LCCOMB_X24_Y19_N28
\i_alu|Multiplicador|p1[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|Multiplicador|p1[9]~8_combout\ = \i_alu|Multiplicador|p1[8]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \i_alu|Multiplicador|p1[8]~7\,
	combout => \i_alu|Multiplicador|p1[9]~8_combout\);

-- Location: LCCOMB_X24_Y19_N4
\i_alu|i_overflow|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_overflow|Selector0~1_combout\ = (\i_alu|i_overflow|Selector0~0_combout\) # ((\i_alu|Multiplicador|p1[9]~8_combout\ & ((!\i_alu|Multiplicador|p1[8]~6_combout\) # (!\i_alu|Multiplicador|p1[6]~2_combout\))) # (!\i_alu|Multiplicador|p1[9]~8_combout\ 
-- & ((\i_alu|Multiplicador|p1[6]~2_combout\) # (\i_alu|Multiplicador|p1[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_overflow|Selector0~0_combout\,
	datab => \i_alu|Multiplicador|p1[9]~8_combout\,
	datac => \i_alu|Multiplicador|p1[6]~2_combout\,
	datad => \i_alu|Multiplicador|p1[8]~6_combout\,
	combout => \i_alu|i_overflow|Selector0~1_combout\);

-- Location: LCCOMB_X21_Y20_N6
\i_alu|i_overflow|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_overflow|Selector0~2_combout\ = (\i_alu|Control|Mux1~0_combout\ & (((\i_alu|i_overflow|Selector0~1_combout\)))) # (!\i_alu|Control|Mux1~0_combout\ & (\i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ $ 
-- ((\i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \i_alu|Control|Mux1~0_combout\,
	datad => \i_alu|i_overflow|Selector0~1_combout\,
	combout => \i_alu|i_overflow|Selector0~2_combout\);

-- Location: LCCOMB_X21_Y20_N26
\i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|s_i~combout\ = \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\sel~combout\(0) $ (\a~combout\(4) $ (\i_alu|i_Mux_B|s[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \sel~combout\(0),
	datac => \a~combout\(4),
	datad => \i_alu|i_Mux_B|s[4]~2_combout\,
	combout => \i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X21_Y20_N8
\i_alu|i_salida|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux0~0_combout\ = (\sel~combout\(1) & (\a~combout\(4) $ (((\sel~combout\(0)) # (\b~combout\(4)))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\a~combout\(4)) # (\b~combout\(4)))) # (!\sel~combout\(0) & (\a~combout\(4) & 
-- \b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(0),
	datac => \a~combout\(4),
	datad => \b~combout\(4),
	combout => \i_alu|i_salida|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y20_N8
\i_alu|i_salida|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux0~1_combout\ = (\sel~combout\(2) & (\i_alu|Multiplicador|p[4]~0_combout\ & (\i_alu|Control|Mux1~0_combout\))) # (!\sel~combout\(2) & (((\i_alu|i_salida|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \i_alu|Multiplicador|p[4]~0_combout\,
	datac => \i_alu|Control|Mux1~0_combout\,
	datad => \i_alu|i_salida|Mux0~0_combout\,
	combout => \i_alu|i_salida|Mux0~1_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel(2),
	combout => \sel~combout\(2));

-- Location: LCCOMB_X20_Y20_N18
\i_alu|i_salida|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux0~2_combout\ = (\i_alu|i_salida|Mux0~1_combout\) # ((\i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|s_i~combout\ & (!\i_alu|Control|Mux1~0_combout\ & \sel~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_sum_rest|GenSum:4:i_Sumador1Bit|s_i~combout\,
	datab => \i_alu|i_salida|Mux0~1_combout\,
	datac => \i_alu|Control|Mux1~0_combout\,
	datad => \sel~combout\(2),
	combout => \i_alu|i_salida|Mux0~2_combout\);

-- Location: LCCOMB_X21_Y20_N20
\i_alu|i_salida|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux3~0_combout\ = (\a~combout\(1) & (\sel~combout\(1) $ (((\b~combout\(1)) # (\sel~combout\(0)))))) # (!\a~combout\(1) & ((\b~combout\(1) & ((\sel~combout\(1)) # (\sel~combout\(0)))) # (!\b~combout\(1) & (\sel~combout\(1) & 
-- \sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \sel~combout\(1),
	datad => \sel~combout\(0),
	combout => \i_alu|i_salida|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y20_N28
\i_alu|i_salida|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux3~1_combout\ = (\sel~combout\(2) & (\i_alu|Multiplicador|Add0~0_combout\ & (\i_alu|Control|Mux1~0_combout\))) # (!\sel~combout\(2) & (((\i_alu|i_salida|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|Multiplicador|Add0~0_combout\,
	datab => \i_alu|Control|Mux1~0_combout\,
	datac => \sel~combout\(2),
	datad => \i_alu|i_salida|Mux3~0_combout\,
	combout => \i_alu|i_salida|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y20_N30
\i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|s_i~combout\ = \i_alu|i_sum_rest|b_aux\(1) $ (\a~combout\(1) $ (((\i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \i_alu|i_sum_rest|b_aux\(1),
	datac => \a~combout\(1),
	datad => \i_alu|i_sum_rest|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	combout => \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X20_Y20_N30
\i_alu|i_salida|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux3~2_combout\ = (\i_alu|i_salida|Mux3~1_combout\) # ((\sel~combout\(2) & (!\i_alu|Control|Mux1~0_combout\ & \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|s_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \i_alu|i_salida|Mux3~1_combout\,
	datac => \i_alu|Control|Mux1~0_combout\,
	datad => \i_alu|i_sum_rest|GenSum:1:i_Sumador1Bit|s_i~combout\,
	combout => \i_alu|i_salida|Mux3~2_combout\);

-- Location: LCCOMB_X22_Y20_N20
\i_alu|i_salida|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux2~1_combout\ = (\sel~combout\(1) & (\a~combout\(2) $ (((\sel~combout\(0)) # (\b~combout\(2)))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\b~combout\(2)) # (\a~combout\(2)))) # (!\sel~combout\(0) & (\b~combout\(2) & 
-- \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(1),
	datac => \b~combout\(2),
	datad => \a~combout\(2),
	combout => \i_alu|i_salida|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y20_N26
\i_alu|i_salida|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux2~2_combout\ = (\i_alu|i_salida|Mux2~0_combout\) # ((!\sel~combout\(2) & \i_alu|i_salida|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux2~0_combout\,
	datac => \sel~combout\(2),
	datad => \i_alu|i_salida|Mux2~1_combout\,
	combout => \i_alu|i_salida|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y20_N24
\i_alu|i_salida|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux4~2_combout\ = (\a~combout\(0) & (\sel~combout\(1) $ (((\sel~combout\(0)) # (\b~combout\(0)))))) # (!\a~combout\(0) & ((\sel~combout\(0) & ((\sel~combout\(1)) # (\b~combout\(0)))) # (!\sel~combout\(0) & (\sel~combout\(1) & 
-- \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \b~combout\(0),
	combout => \i_alu|i_salida|Mux4~2_combout\);

-- Location: LCCOMB_X20_Y20_N14
\i_alu|i_salida|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux4~4_combout\ = (\sel~combout\(2) & (\i_alu|i_salida|Mux4~3_combout\)) # (!\sel~combout\(2) & ((\i_alu|i_salida|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux4~3_combout\,
	datac => \sel~combout\(2),
	datad => \i_alu|i_salida|Mux4~2_combout\,
	combout => \i_alu|i_salida|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y20_N8
\i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|s_i~combout\ = \sel~combout\(0) $ (\i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\a~combout\(3) $ (\i_alu|i_Mux_B|s[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \i_alu|i_sum_rest|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \a~combout\(3),
	datad => \i_alu|i_Mux_B|s[3]~0_combout\,
	combout => \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X20_Y20_N22
\i_alu|i_salida|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_alu|i_salida|Mux1~2_combout\ = (\i_alu|i_salida|Mux1~1_combout\) # ((!\i_alu|Control|Mux1~0_combout\ & (\sel~combout\(2) & \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|s_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux1~1_combout\,
	datab => \i_alu|Control|Mux1~0_combout\,
	datac => \sel~combout\(2),
	datad => \i_alu|i_sum_rest|GenSum:3:i_Sumador1Bit|s_i~combout\,
	combout => \i_alu|i_salida|Mux1~2_combout\);

-- Location: LCCOMB_X20_Y20_N0
\i2_BinA7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7|Mux6~0_combout\ = (\i_alu|i_salida|Mux4~4_combout\ & ((\i_alu|i_salida|Mux1~2_combout\) # (\i_alu|i_salida|Mux3~2_combout\ $ (\i_alu|i_salida|Mux2~2_combout\)))) # (!\i_alu|i_salida|Mux4~4_combout\ & ((\i_alu|i_salida|Mux3~2_combout\) # 
-- (\i_alu|i_salida|Mux2~2_combout\ $ (\i_alu|i_salida|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux3~2_combout\,
	datab => \i_alu|i_salida|Mux2~2_combout\,
	datac => \i_alu|i_salida|Mux4~4_combout\,
	datad => \i_alu|i_salida|Mux1~2_combout\,
	combout => \i2_BinA7|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y20_N2
\i2_BinA7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7|Mux5~0_combout\ = (\i_alu|i_salida|Mux3~2_combout\ & (!\i_alu|i_salida|Mux1~2_combout\ & ((\i_alu|i_salida|Mux4~4_combout\) # (!\i_alu|i_salida|Mux2~2_combout\)))) # (!\i_alu|i_salida|Mux3~2_combout\ & (\i_alu|i_salida|Mux4~4_combout\ & 
-- (\i_alu|i_salida|Mux2~2_combout\ $ (!\i_alu|i_salida|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux3~2_combout\,
	datab => \i_alu|i_salida|Mux2~2_combout\,
	datac => \i_alu|i_salida|Mux4~4_combout\,
	datad => \i_alu|i_salida|Mux1~2_combout\,
	combout => \i2_BinA7|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y20_N20
\i2_BinA7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7|Mux4~0_combout\ = (\i_alu|i_salida|Mux3~2_combout\ & (((\i_alu|i_salida|Mux4~4_combout\ & !\i_alu|i_salida|Mux1~2_combout\)))) # (!\i_alu|i_salida|Mux3~2_combout\ & ((\i_alu|i_salida|Mux2~2_combout\ & ((!\i_alu|i_salida|Mux1~2_combout\))) # 
-- (!\i_alu|i_salida|Mux2~2_combout\ & (\i_alu|i_salida|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux3~2_combout\,
	datab => \i_alu|i_salida|Mux2~2_combout\,
	datac => \i_alu|i_salida|Mux4~4_combout\,
	datad => \i_alu|i_salida|Mux1~2_combout\,
	combout => \i2_BinA7|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y20_N6
\i2_BinA7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7|Mux3~0_combout\ = (\i_alu|i_salida|Mux4~4_combout\ & (\i_alu|i_salida|Mux3~2_combout\ $ ((!\i_alu|i_salida|Mux2~2_combout\)))) # (!\i_alu|i_salida|Mux4~4_combout\ & ((\i_alu|i_salida|Mux3~2_combout\ & (!\i_alu|i_salida|Mux2~2_combout\ & 
-- \i_alu|i_salida|Mux1~2_combout\)) # (!\i_alu|i_salida|Mux3~2_combout\ & (\i_alu|i_salida|Mux2~2_combout\ & !\i_alu|i_salida|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux3~2_combout\,
	datab => \i_alu|i_salida|Mux2~2_combout\,
	datac => \i_alu|i_salida|Mux4~4_combout\,
	datad => \i_alu|i_salida|Mux1~2_combout\,
	combout => \i2_BinA7|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y20_N16
\i2_BinA7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7|Mux2~0_combout\ = (\i_alu|i_salida|Mux2~2_combout\ & (\i_alu|i_salida|Mux1~2_combout\ & ((\i_alu|i_salida|Mux3~2_combout\) # (!\i_alu|i_salida|Mux4~4_combout\)))) # (!\i_alu|i_salida|Mux2~2_combout\ & (\i_alu|i_salida|Mux3~2_combout\ & 
-- (!\i_alu|i_salida|Mux4~4_combout\ & !\i_alu|i_salida|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux3~2_combout\,
	datab => \i_alu|i_salida|Mux2~2_combout\,
	datac => \i_alu|i_salida|Mux4~4_combout\,
	datad => \i_alu|i_salida|Mux1~2_combout\,
	combout => \i2_BinA7|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y20_N10
\i2_BinA7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7|Mux1~0_combout\ = (\i_alu|i_salida|Mux3~2_combout\ & ((\i_alu|i_salida|Mux4~4_combout\ & ((\i_alu|i_salida|Mux1~2_combout\))) # (!\i_alu|i_salida|Mux4~4_combout\ & (\i_alu|i_salida|Mux2~2_combout\)))) # (!\i_alu|i_salida|Mux3~2_combout\ & 
-- (\i_alu|i_salida|Mux2~2_combout\ & (\i_alu|i_salida|Mux4~4_combout\ $ (\i_alu|i_salida|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux3~2_combout\,
	datab => \i_alu|i_salida|Mux2~2_combout\,
	datac => \i_alu|i_salida|Mux4~4_combout\,
	datad => \i_alu|i_salida|Mux1~2_combout\,
	combout => \i2_BinA7|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y20_N4
\i2_BinA7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7|Mux0~0_combout\ = (\i_alu|i_salida|Mux2~2_combout\ & (!\i_alu|i_salida|Mux3~2_combout\ & (\i_alu|i_salida|Mux4~4_combout\ $ (!\i_alu|i_salida|Mux1~2_combout\)))) # (!\i_alu|i_salida|Mux2~2_combout\ & (\i_alu|i_salida|Mux4~4_combout\ & 
-- (\i_alu|i_salida|Mux3~2_combout\ $ (!\i_alu|i_salida|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_alu|i_salida|Mux3~2_combout\,
	datab => \i_alu|i_salida|Mux2~2_combout\,
	datac => \i_alu|i_salida|Mux4~4_combout\,
	datad => \i_alu|i_salida|Mux1~2_combout\,
	combout => \i2_BinA7|Mux0~0_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ov~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_alu|i_overflow|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ov);

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(0));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_alu|i_salida|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_alu|i_salida|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_alu|i_salida|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(3));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(4));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_alu|i_salida|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s1(6));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2_BinA7|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2_BinA7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(1));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2_BinA7|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2_BinA7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2_BinA7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2_BinA7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(5));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i2_BinA7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s2(6));
END structure;


