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

-- DATE "12/10/2020 08:45:41"

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

ENTITY 	Temporizador IS
    PORT (
	decenas : IN std_logic_vector(2 DOWNTO 0);
	unidades : IN std_logic_vector(3 DOWNTO 0);
	carga_seg : IN std_logic;
	carga_min : IN std_logic;
	en_cnt : IN std_logic;
	clk : IN std_logic;
	reset_n : IN std_logic;
	d_d : OUT std_logic_vector(6 DOWNTO 0);
	d_c : OUT std_logic_vector(6 DOWNTO 0);
	d_b : OUT std_logic_vector(6 DOWNTO 0);
	d_a : OUT std_logic_vector(6 DOWNTO 0);
	fin_cuenta : OUT std_logic
	);
END Temporizador;

-- Design Ports Information
-- d_d[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[4]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_d[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[1]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[3]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[4]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_c[6]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[0]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[4]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[5]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_b[6]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[2]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[4]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_a[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fin_cuenta	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- en_cnt	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- decenas[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- carga_min	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- decenas[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- decenas[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- unidades[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- unidades[1]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- unidades[2]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- unidades[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- carga_seg	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Temporizador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_decenas : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_unidades : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carga_seg : std_logic;
SIGNAL ww_carga_min : std_logic;
SIGNAL ww_en_cnt : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_d_d : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_c : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_b : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_a : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fin_cuenta : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i1_50M|Add0~0_combout\ : std_logic;
SIGNAL \i1_50M|Add0~6_combout\ : std_logic;
SIGNAL \i1_50M|Add0~18_combout\ : std_logic;
SIGNAL \i1_50M|Add0~28_combout\ : std_logic;
SIGNAL \i1_50M|Add0~36_combout\ : std_logic;
SIGNAL \i1_50M|Add0~40_combout\ : std_logic;
SIGNAL \i1_50M|Add0~42_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~1_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~7_combout\ : std_logic;
SIGNAL \Decenas_segundos|process_0~0_combout\ : std_logic;
SIGNAL \Unidades_segundos|Add0~0_combout\ : std_logic;
SIGNAL \i1_50M|contador~3_combout\ : std_logic;
SIGNAL \i1_50M|contador~4_combout\ : std_logic;
SIGNAL \i1_50M|contador~8_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Display_decenas_minutos|Mux3~1_combout\ : std_logic;
SIGNAL \Decenas_minutos|contador~3_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \carga_min~combout\ : std_logic;
SIGNAL \Decenas_minutos|process_0~0_combout\ : std_logic;
SIGNAL \i1_50M|Add0~1\ : std_logic;
SIGNAL \i1_50M|Add0~2_combout\ : std_logic;
SIGNAL \en_cnt~combout\ : std_logic;
SIGNAL \i1_50M|Add0~3\ : std_logic;
SIGNAL \i1_50M|Add0~5\ : std_logic;
SIGNAL \i1_50M|Add0~7\ : std_logic;
SIGNAL \i1_50M|Add0~8_combout\ : std_logic;
SIGNAL \i1_50M|Add0~9\ : std_logic;
SIGNAL \i1_50M|Add0~10_combout\ : std_logic;
SIGNAL \i1_50M|Add0~4_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~6_combout\ : std_logic;
SIGNAL \i1_50M|Add0~11\ : std_logic;
SIGNAL \i1_50M|Add0~12_combout\ : std_logic;
SIGNAL \i1_50M|Add0~13\ : std_logic;
SIGNAL \i1_50M|Add0~15\ : std_logic;
SIGNAL \i1_50M|Add0~16_combout\ : std_logic;
SIGNAL \i1_50M|Add0~14_combout\ : std_logic;
SIGNAL \i1_50M|contador~11_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~5_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~8_combout\ : std_logic;
SIGNAL \i1_50M|Add0~17\ : std_logic;
SIGNAL \i1_50M|Add0~19\ : std_logic;
SIGNAL \i1_50M|Add0~20_combout\ : std_logic;
SIGNAL \i1_50M|Add0~21\ : std_logic;
SIGNAL \i1_50M|Add0~22_combout\ : std_logic;
SIGNAL \i1_50M|Add0~23\ : std_logic;
SIGNAL \i1_50M|Add0~24_combout\ : std_logic;
SIGNAL \i1_50M|contador~10_combout\ : std_logic;
SIGNAL \i1_50M|Add0~25\ : std_logic;
SIGNAL \i1_50M|Add0~27\ : std_logic;
SIGNAL \i1_50M|Add0~29\ : std_logic;
SIGNAL \i1_50M|Add0~31\ : std_logic;
SIGNAL \i1_50M|Add0~33\ : std_logic;
SIGNAL \i1_50M|Add0~34_combout\ : std_logic;
SIGNAL \i1_50M|contador~6_combout\ : std_logic;
SIGNAL \i1_50M|Add0~30_combout\ : std_logic;
SIGNAL \i1_50M|contador~7_combout\ : std_logic;
SIGNAL \i1_50M|Add0~32_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~2_combout\ : std_logic;
SIGNAL \i1_50M|Add0~35\ : std_logic;
SIGNAL \i1_50M|Add0~37\ : std_logic;
SIGNAL \i1_50M|Add0~38_combout\ : std_logic;
SIGNAL \i1_50M|contador~5_combout\ : std_logic;
SIGNAL \i1_50M|Add0~39\ : std_logic;
SIGNAL \i1_50M|Add0~41\ : std_logic;
SIGNAL \i1_50M|Add0~43\ : std_logic;
SIGNAL \i1_50M|Add0~44_combout\ : std_logic;
SIGNAL \i1_50M|contador~2_combout\ : std_logic;
SIGNAL \i1_50M|Add0~45\ : std_logic;
SIGNAL \i1_50M|Add0~46_combout\ : std_logic;
SIGNAL \i1_50M|contador~1_combout\ : std_logic;
SIGNAL \i1_50M|Add0~47\ : std_logic;
SIGNAL \i1_50M|Add0~48_combout\ : std_logic;
SIGNAL \i1_50M|Add0~49\ : std_logic;
SIGNAL \i1_50M|Add0~50_combout\ : std_logic;
SIGNAL \i1_50M|contador~0_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~0_combout\ : std_logic;
SIGNAL \i1_50M|Add0~26_combout\ : std_logic;
SIGNAL \i1_50M|contador~9_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~3_combout\ : std_logic;
SIGNAL \i1_50M|Equal0~4_combout\ : std_logic;
SIGNAL \carga_seg~combout\ : std_logic;
SIGNAL \Unidades_segundos|process_0~0_combout\ : std_logic;
SIGNAL \Unidades_segundos|contador~0_combout\ : std_logic;
SIGNAL \Unidades_segundos|contador[3]~1_combout\ : std_logic;
SIGNAL \Unidades_segundos|contador~2_combout\ : std_logic;
SIGNAL \Unidades_segundos|Add0~1_combout\ : std_logic;
SIGNAL \Unidades_segundos|contador~3_combout\ : std_logic;
SIGNAL \Unidades_segundos|Equal0~0_combout\ : std_logic;
SIGNAL \Unidades_minutos|co~0_combout\ : std_logic;
SIGNAL \Unidades_minutos|co~1_combout\ : std_logic;
SIGNAL \Decenas_minutos|contador[0]~1_combout\ : std_logic;
SIGNAL \Decenas_minutos|co~0_combout\ : std_logic;
SIGNAL \Decenas_minutos|contador~0_combout\ : std_logic;
SIGNAL \Decenas_minutos|Add0~0_combout\ : std_logic;
SIGNAL \Decenas_minutos|contador~2_combout\ : std_logic;
SIGNAL \Display_decenas_minutos|Mux6~0_combout\ : std_logic;
SIGNAL \Display_decenas_minutos|Mux5~0_combout\ : std_logic;
SIGNAL \Display_decenas_minutos|Mux4~0_combout\ : std_logic;
SIGNAL \Display_decenas_minutos|Mux3~0_combout\ : std_logic;
SIGNAL \Display_decenas_minutos|Mux2~0_combout\ : std_logic;
SIGNAL \Display_decenas_minutos|Mux1~0_combout\ : std_logic;
SIGNAL \Display_decenas_minutos|Mux0~0_combout\ : std_logic;
SIGNAL \Unidades_minutos|Equal0~0_combout\ : std_logic;
SIGNAL \Unidades_minutos|contador~0_combout\ : std_logic;
SIGNAL \Unidades_minutos|contador[3]~1_combout\ : std_logic;
SIGNAL \Unidades_minutos|Add0~1_combout\ : std_logic;
SIGNAL \Unidades_minutos|process_0~0_combout\ : std_logic;
SIGNAL \Unidades_minutos|contador~3_combout\ : std_logic;
SIGNAL \Unidades_minutos|Add0~2_combout\ : std_logic;
SIGNAL \Unidades_minutos|contador~4_combout\ : std_logic;
SIGNAL \Unidades_minutos|Add0~0_combout\ : std_logic;
SIGNAL \Unidades_minutos|contador~2_combout\ : std_logic;
SIGNAL \Display_unidades_minutos|Mux6~0_combout\ : std_logic;
SIGNAL \Display_unidades_minutos|Mux5~0_combout\ : std_logic;
SIGNAL \Display_unidades_minutos|Mux4~0_combout\ : std_logic;
SIGNAL \Display_unidades_minutos|Mux3~0_combout\ : std_logic;
SIGNAL \Display_unidades_minutos|Mux2~0_combout\ : std_logic;
SIGNAL \Display_unidades_minutos|Mux1~0_combout\ : std_logic;
SIGNAL \Display_unidades_minutos|Mux0~0_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|Mux3~1_combout\ : std_logic;
SIGNAL \Decenas_segundos|contador~3_combout\ : std_logic;
SIGNAL \Decenas_segundos|contador[0]~1_combout\ : std_logic;
SIGNAL \Decenas_segundos|Equal0~0_combout\ : std_logic;
SIGNAL \Decenas_segundos|contador~0_combout\ : std_logic;
SIGNAL \Decenas_segundos|Add0~0_combout\ : std_logic;
SIGNAL \Decenas_segundos|contador~2_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|Mux6~0_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|Mux5~0_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|Mux4~0_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|Mux3~0_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|Mux2~0_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|Mux1~0_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|Mux0~0_combout\ : std_logic;
SIGNAL \Unidades_segundos|Add0~2_combout\ : std_logic;
SIGNAL \Unidades_segundos|contador~4_combout\ : std_logic;
SIGNAL \Display_unidades_segundos|Mux6~0_combout\ : std_logic;
SIGNAL \Display_unidades_segundos|Mux5~0_combout\ : std_logic;
SIGNAL \Display_unidades_segundos|Mux4~0_combout\ : std_logic;
SIGNAL \Display_unidades_segundos|Mux3~0_combout\ : std_logic;
SIGNAL \Display_unidades_segundos|Mux2~0_combout\ : std_logic;
SIGNAL \Display_unidades_segundos|Mux1~0_combout\ : std_logic;
SIGNAL \Display_unidades_segundos|Mux0~0_combout\ : std_logic;
SIGNAL \Decenas_minutos|co~1_combout\ : std_logic;
SIGNAL \i1_50M|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Unidades_segundos|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decenas_segundos|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \unidades~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decenas~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Unidades_minutos|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decenas_minutos|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \Display_decenas_minutos|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Display_unidades_segundos|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Display_decenas_segundos|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Display_unidades_minutos|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_decenas <= decenas;
ww_unidades <= unidades;
ww_carga_seg <= carga_seg;
ww_carga_min <= carga_min;
ww_en_cnt <= en_cnt;
ww_clk <= clk;
ww_reset_n <= reset_n;
d_d <= ww_d_d;
d_c <= ww_d_c;
d_b <= ww_d_b;
d_a <= ww_d_a;
fin_cuenta <= ww_fin_cuenta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;
\Display_decenas_minutos|ALT_INV_Mux1~0_combout\ <= NOT \Display_decenas_minutos|Mux1~0_combout\;
\Display_unidades_segundos|ALT_INV_Mux6~0_combout\ <= NOT \Display_unidades_segundos|Mux6~0_combout\;
\Display_decenas_segundos|ALT_INV_Mux1~0_combout\ <= NOT \Display_decenas_segundos|Mux1~0_combout\;
\Display_unidades_minutos|ALT_INV_Mux6~0_combout\ <= NOT \Display_unidades_minutos|Mux6~0_combout\;

-- Location: LCCOMB_X35_Y26_N6
\i1_50M|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~0_combout\ = \i1_50M|contador\(0) $ (VCC)
-- \i1_50M|Add0~1\ = CARRY(\i1_50M|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(0),
	datad => VCC,
	combout => \i1_50M|Add0~0_combout\,
	cout => \i1_50M|Add0~1\);

-- Location: LCCOMB_X35_Y26_N12
\i1_50M|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~6_combout\ = (\i1_50M|contador\(3) & (!\i1_50M|Add0~5\)) # (!\i1_50M|contador\(3) & ((\i1_50M|Add0~5\) # (GND)))
-- \i1_50M|Add0~7\ = CARRY((!\i1_50M|Add0~5\) # (!\i1_50M|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(3),
	datad => VCC,
	cin => \i1_50M|Add0~5\,
	combout => \i1_50M|Add0~6_combout\,
	cout => \i1_50M|Add0~7\);

-- Location: LCCOMB_X35_Y26_N24
\i1_50M|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~18_combout\ = (\i1_50M|contador\(9) & (!\i1_50M|Add0~17\)) # (!\i1_50M|contador\(9) & ((\i1_50M|Add0~17\) # (GND)))
-- \i1_50M|Add0~19\ = CARRY((!\i1_50M|Add0~17\) # (!\i1_50M|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(9),
	datad => VCC,
	cin => \i1_50M|Add0~17\,
	combout => \i1_50M|Add0~18_combout\,
	cout => \i1_50M|Add0~19\);

-- Location: LCCOMB_X35_Y25_N2
\i1_50M|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~28_combout\ = (\i1_50M|contador\(14) & (\i1_50M|Add0~27\ $ (GND))) # (!\i1_50M|contador\(14) & (!\i1_50M|Add0~27\ & VCC))
-- \i1_50M|Add0~29\ = CARRY((\i1_50M|contador\(14) & !\i1_50M|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(14),
	datad => VCC,
	cin => \i1_50M|Add0~27\,
	combout => \i1_50M|Add0~28_combout\,
	cout => \i1_50M|Add0~29\);

-- Location: LCCOMB_X35_Y25_N10
\i1_50M|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~36_combout\ = (\i1_50M|contador\(18) & (\i1_50M|Add0~35\ $ (GND))) # (!\i1_50M|contador\(18) & (!\i1_50M|Add0~35\ & VCC))
-- \i1_50M|Add0~37\ = CARRY((\i1_50M|contador\(18) & !\i1_50M|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(18),
	datad => VCC,
	cin => \i1_50M|Add0~35\,
	combout => \i1_50M|Add0~36_combout\,
	cout => \i1_50M|Add0~37\);

-- Location: LCCOMB_X35_Y25_N14
\i1_50M|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~40_combout\ = (\i1_50M|contador\(20) & (\i1_50M|Add0~39\ $ (GND))) # (!\i1_50M|contador\(20) & (!\i1_50M|Add0~39\ & VCC))
-- \i1_50M|Add0~41\ = CARRY((\i1_50M|contador\(20) & !\i1_50M|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(20),
	datad => VCC,
	cin => \i1_50M|Add0~39\,
	combout => \i1_50M|Add0~40_combout\,
	cout => \i1_50M|Add0~41\);

-- Location: LCCOMB_X35_Y25_N16
\i1_50M|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~42_combout\ = (\i1_50M|contador\(21) & (!\i1_50M|Add0~41\)) # (!\i1_50M|contador\(21) & ((\i1_50M|Add0~41\) # (GND)))
-- \i1_50M|Add0~43\ = CARRY((!\i1_50M|Add0~41\) # (!\i1_50M|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(21),
	datad => VCC,
	cin => \i1_50M|Add0~41\,
	combout => \i1_50M|Add0~42_combout\,
	cout => \i1_50M|Add0~43\);

-- Location: LCFF_X34_Y25_N3
\i1_50M|contador[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(21));

-- Location: LCFF_X34_Y25_N21
\i1_50M|contador[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(20));

-- Location: LCFF_X35_Y25_N11
\i1_50M|contador[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~36_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(18));

-- Location: LCCOMB_X34_Y25_N24
\i1_50M|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~1_combout\ = (\i1_50M|contador\(20) & (\i1_50M|contador\(19) & (!\i1_50M|contador\(18) & \i1_50M|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(20),
	datab => \i1_50M|contador\(19),
	datac => \i1_50M|contador\(18),
	datad => \i1_50M|contador\(21),
	combout => \i1_50M|Equal0~1_combout\);

-- Location: LCFF_X34_Y25_N13
\i1_50M|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~8_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(14));

-- Location: LCFF_X35_Y26_N25
\i1_50M|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~18_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(9));

-- Location: LCFF_X35_Y26_N13
\i1_50M|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(3));

-- Location: LCFF_X35_Y26_N7
\i1_50M|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(0));

-- Location: LCCOMB_X35_Y26_N0
\i1_50M|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~7_combout\ = (\i1_50M|contador\(1) & \i1_50M|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|contador\(1),
	datad => \i1_50M|contador\(0),
	combout => \i1_50M|Equal0~7_combout\);

-- Location: LCCOMB_X32_Y25_N26
\Decenas_segundos|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_segundos|process_0~0_combout\ = (\carga_seg~combout\ & ((!\decenas~combout\(2)) # (!\decenas~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decenas~combout\(1),
	datac => \carga_seg~combout\,
	datad => \decenas~combout\(2),
	combout => \Decenas_segundos|process_0~0_combout\);

-- Location: LCCOMB_X31_Y25_N6
\Unidades_segundos|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|Add0~0_combout\ = \Unidades_segundos|contador\(1) $ (\Unidades_segundos|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unidades_segundos|contador\(1),
	datad => \Unidades_segundos|contador\(0),
	combout => \Unidades_segundos|Add0~0_combout\);

-- Location: LCCOMB_X34_Y25_N2
\i1_50M|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~3_combout\ = (\i1_50M|Add0~42_combout\ & !\i1_50M|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|Add0~42_combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \i1_50M|contador~3_combout\);

-- Location: LCCOMB_X34_Y25_N20
\i1_50M|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~4_combout\ = (\i1_50M|Add0~40_combout\ & !\i1_50M|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|Add0~40_combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \i1_50M|contador~4_combout\);

-- Location: LCCOMB_X34_Y25_N12
\i1_50M|contador~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~8_combout\ = (!\i1_50M|Equal0~8_combout\ & \i1_50M|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|Equal0~8_combout\,
	datad => \i1_50M|Add0~28_combout\,
	combout => \i1_50M|contador~8_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\decenas[0]~I\ : cycloneii_io
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
	padio => ww_decenas(0),
	combout => \decenas~combout\(0));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\decenas[1]~I\ : cycloneii_io
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
	padio => ww_decenas(1),
	combout => \decenas~combout\(1));

-- Location: LCCOMB_X32_Y25_N6
\Display_decenas_minutos|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_minutos|Mux3~1_combout\ = \Decenas_minutos|contador\(0) $ (\Decenas_minutos|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decenas_minutos|contador\(0),
	datad => \Decenas_minutos|contador\(1),
	combout => \Display_decenas_minutos|Mux3~1_combout\);

-- Location: LCCOMB_X32_Y25_N4
\Decenas_minutos|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_minutos|contador~3_combout\ = (\Decenas_minutos|process_0~0_combout\ & (\decenas~combout\(1))) # (!\Decenas_minutos|process_0~0_combout\ & ((\Decenas_minutos|co~0_combout\ & (\decenas~combout\(1))) # (!\Decenas_minutos|co~0_combout\ & 
-- ((!\Display_decenas_minutos|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_minutos|process_0~0_combout\,
	datab => \decenas~combout\(1),
	datac => \Decenas_minutos|co~0_combout\,
	datad => \Display_decenas_minutos|Mux3~1_combout\,
	combout => \Decenas_minutos|contador~3_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\carga_min~I\ : cycloneii_io
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
	padio => ww_carga_min,
	combout => \carga_min~combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\decenas[2]~I\ : cycloneii_io
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
	padio => ww_decenas(2),
	combout => \decenas~combout\(2));

-- Location: LCCOMB_X32_Y25_N16
\Decenas_minutos|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_minutos|process_0~0_combout\ = (\carga_min~combout\ & ((!\decenas~combout\(2)) # (!\decenas~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decenas~combout\(1),
	datac => \carga_min~combout\,
	datad => \decenas~combout\(2),
	combout => \Decenas_minutos|process_0~0_combout\);

-- Location: LCCOMB_X35_Y26_N8
\i1_50M|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~2_combout\ = (\i1_50M|contador\(1) & (!\i1_50M|Add0~1\)) # (!\i1_50M|contador\(1) & ((\i1_50M|Add0~1\) # (GND)))
-- \i1_50M|Add0~3\ = CARRY((!\i1_50M|Add0~1\) # (!\i1_50M|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(1),
	datad => VCC,
	cin => \i1_50M|Add0~1\,
	combout => \i1_50M|Add0~2_combout\,
	cout => \i1_50M|Add0~3\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en_cnt~I\ : cycloneii_io
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
	padio => ww_en_cnt,
	combout => \en_cnt~combout\);

-- Location: LCFF_X35_Y26_N9
\i1_50M|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(1));

-- Location: LCCOMB_X35_Y26_N10
\i1_50M|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~4_combout\ = (\i1_50M|contador\(2) & (\i1_50M|Add0~3\ $ (GND))) # (!\i1_50M|contador\(2) & (!\i1_50M|Add0~3\ & VCC))
-- \i1_50M|Add0~5\ = CARRY((\i1_50M|contador\(2) & !\i1_50M|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(2),
	datad => VCC,
	cin => \i1_50M|Add0~3\,
	combout => \i1_50M|Add0~4_combout\,
	cout => \i1_50M|Add0~5\);

-- Location: LCCOMB_X35_Y26_N14
\i1_50M|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~8_combout\ = (\i1_50M|contador\(4) & (\i1_50M|Add0~7\ $ (GND))) # (!\i1_50M|contador\(4) & (!\i1_50M|Add0~7\ & VCC))
-- \i1_50M|Add0~9\ = CARRY((\i1_50M|contador\(4) & !\i1_50M|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(4),
	datad => VCC,
	cin => \i1_50M|Add0~7\,
	combout => \i1_50M|Add0~8_combout\,
	cout => \i1_50M|Add0~9\);

-- Location: LCFF_X35_Y26_N15
\i1_50M|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~8_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(4));

-- Location: LCCOMB_X35_Y26_N16
\i1_50M|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~10_combout\ = (\i1_50M|contador\(5) & (!\i1_50M|Add0~9\)) # (!\i1_50M|contador\(5) & ((\i1_50M|Add0~9\) # (GND)))
-- \i1_50M|Add0~11\ = CARRY((!\i1_50M|Add0~9\) # (!\i1_50M|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(5),
	datad => VCC,
	cin => \i1_50M|Add0~9\,
	combout => \i1_50M|Add0~10_combout\,
	cout => \i1_50M|Add0~11\);

-- Location: LCFF_X35_Y26_N17
\i1_50M|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(5));

-- Location: LCFF_X35_Y26_N11
\i1_50M|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(2));

-- Location: LCCOMB_X35_Y26_N2
\i1_50M|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~6_combout\ = (\i1_50M|contador\(3) & (\i1_50M|contador\(4) & (\i1_50M|contador\(5) & \i1_50M|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(3),
	datab => \i1_50M|contador\(4),
	datac => \i1_50M|contador\(5),
	datad => \i1_50M|contador\(2),
	combout => \i1_50M|Equal0~6_combout\);

-- Location: LCCOMB_X35_Y26_N18
\i1_50M|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~12_combout\ = (\i1_50M|contador\(6) & (\i1_50M|Add0~11\ $ (GND))) # (!\i1_50M|contador\(6) & (!\i1_50M|Add0~11\ & VCC))
-- \i1_50M|Add0~13\ = CARRY((\i1_50M|contador\(6) & !\i1_50M|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(6),
	datad => VCC,
	cin => \i1_50M|Add0~11\,
	combout => \i1_50M|Add0~12_combout\,
	cout => \i1_50M|Add0~13\);

-- Location: LCFF_X35_Y26_N19
\i1_50M|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~12_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(6));

-- Location: LCCOMB_X35_Y26_N20
\i1_50M|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~14_combout\ = (\i1_50M|contador\(7) & (!\i1_50M|Add0~13\)) # (!\i1_50M|contador\(7) & ((\i1_50M|Add0~13\) # (GND)))
-- \i1_50M|Add0~15\ = CARRY((!\i1_50M|Add0~13\) # (!\i1_50M|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(7),
	datad => VCC,
	cin => \i1_50M|Add0~13\,
	combout => \i1_50M|Add0~14_combout\,
	cout => \i1_50M|Add0~15\);

-- Location: LCCOMB_X35_Y26_N22
\i1_50M|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~16_combout\ = (\i1_50M|contador\(8) & (\i1_50M|Add0~15\ $ (GND))) # (!\i1_50M|contador\(8) & (!\i1_50M|Add0~15\ & VCC))
-- \i1_50M|Add0~17\ = CARRY((\i1_50M|contador\(8) & !\i1_50M|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(8),
	datad => VCC,
	cin => \i1_50M|Add0~15\,
	combout => \i1_50M|Add0~16_combout\,
	cout => \i1_50M|Add0~17\);

-- Location: LCFF_X35_Y26_N23
\i1_50M|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~16_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(8));

-- Location: LCCOMB_X34_Y26_N30
\i1_50M|contador~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~11_combout\ = (!\i1_50M|Equal0~8_combout\ & \i1_50M|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|Equal0~8_combout\,
	datac => \i1_50M|Add0~14_combout\,
	combout => \i1_50M|contador~11_combout\);

-- Location: LCFF_X34_Y26_N31
\i1_50M|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~11_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(7));

-- Location: LCCOMB_X35_Y26_N4
\i1_50M|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~5_combout\ = (!\i1_50M|contador\(9) & (!\i1_50M|contador\(8) & (!\i1_50M|contador\(7) & \i1_50M|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(9),
	datab => \i1_50M|contador\(8),
	datac => \i1_50M|contador\(7),
	datad => \i1_50M|contador\(6),
	combout => \i1_50M|Equal0~5_combout\);

-- Location: LCCOMB_X34_Y25_N22
\i1_50M|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~8_combout\ = (\i1_50M|Equal0~7_combout\ & (\i1_50M|Equal0~6_combout\ & (\i1_50M|Equal0~5_combout\ & \i1_50M|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|Equal0~7_combout\,
	datab => \i1_50M|Equal0~6_combout\,
	datac => \i1_50M|Equal0~5_combout\,
	datad => \i1_50M|Equal0~4_combout\,
	combout => \i1_50M|Equal0~8_combout\);

-- Location: LCCOMB_X35_Y26_N26
\i1_50M|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~20_combout\ = (\i1_50M|contador\(10) & (\i1_50M|Add0~19\ $ (GND))) # (!\i1_50M|contador\(10) & (!\i1_50M|Add0~19\ & VCC))
-- \i1_50M|Add0~21\ = CARRY((\i1_50M|contador\(10) & !\i1_50M|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(10),
	datad => VCC,
	cin => \i1_50M|Add0~19\,
	combout => \i1_50M|Add0~20_combout\,
	cout => \i1_50M|Add0~21\);

-- Location: LCFF_X35_Y26_N27
\i1_50M|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~20_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(10));

-- Location: LCCOMB_X35_Y26_N28
\i1_50M|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~22_combout\ = (\i1_50M|contador\(11) & (!\i1_50M|Add0~21\)) # (!\i1_50M|contador\(11) & ((\i1_50M|Add0~21\) # (GND)))
-- \i1_50M|Add0~23\ = CARRY((!\i1_50M|Add0~21\) # (!\i1_50M|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(11),
	datad => VCC,
	cin => \i1_50M|Add0~21\,
	combout => \i1_50M|Add0~22_combout\,
	cout => \i1_50M|Add0~23\);

-- Location: LCFF_X35_Y26_N29
\i1_50M|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~22_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(11));

-- Location: LCCOMB_X35_Y26_N30
\i1_50M|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~24_combout\ = (\i1_50M|contador\(12) & (\i1_50M|Add0~23\ $ (GND))) # (!\i1_50M|contador\(12) & (!\i1_50M|Add0~23\ & VCC))
-- \i1_50M|Add0~25\ = CARRY((\i1_50M|contador\(12) & !\i1_50M|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(12),
	datad => VCC,
	cin => \i1_50M|Add0~23\,
	combout => \i1_50M|Add0~24_combout\,
	cout => \i1_50M|Add0~25\);

-- Location: LCCOMB_X34_Y26_N16
\i1_50M|contador~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~10_combout\ = (!\i1_50M|Equal0~8_combout\ & \i1_50M|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|Equal0~8_combout\,
	datad => \i1_50M|Add0~24_combout\,
	combout => \i1_50M|contador~10_combout\);

-- Location: LCFF_X34_Y26_N17
\i1_50M|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(12));

-- Location: LCCOMB_X35_Y25_N0
\i1_50M|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~26_combout\ = (\i1_50M|contador\(13) & (!\i1_50M|Add0~25\)) # (!\i1_50M|contador\(13) & ((\i1_50M|Add0~25\) # (GND)))
-- \i1_50M|Add0~27\ = CARRY((!\i1_50M|Add0~25\) # (!\i1_50M|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(13),
	datad => VCC,
	cin => \i1_50M|Add0~25\,
	combout => \i1_50M|Add0~26_combout\,
	cout => \i1_50M|Add0~27\);

-- Location: LCCOMB_X35_Y25_N4
\i1_50M|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~30_combout\ = (\i1_50M|contador\(15) & (!\i1_50M|Add0~29\)) # (!\i1_50M|contador\(15) & ((\i1_50M|Add0~29\) # (GND)))
-- \i1_50M|Add0~31\ = CARRY((!\i1_50M|Add0~29\) # (!\i1_50M|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(15),
	datad => VCC,
	cin => \i1_50M|Add0~29\,
	combout => \i1_50M|Add0~30_combout\,
	cout => \i1_50M|Add0~31\);

-- Location: LCCOMB_X35_Y25_N6
\i1_50M|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~32_combout\ = (\i1_50M|contador\(16) & (\i1_50M|Add0~31\ $ (GND))) # (!\i1_50M|contador\(16) & (!\i1_50M|Add0~31\ & VCC))
-- \i1_50M|Add0~33\ = CARRY((\i1_50M|contador\(16) & !\i1_50M|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(16),
	datad => VCC,
	cin => \i1_50M|Add0~31\,
	combout => \i1_50M|Add0~32_combout\,
	cout => \i1_50M|Add0~33\);

-- Location: LCCOMB_X35_Y25_N8
\i1_50M|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~34_combout\ = (\i1_50M|contador\(17) & (!\i1_50M|Add0~33\)) # (!\i1_50M|contador\(17) & ((\i1_50M|Add0~33\) # (GND)))
-- \i1_50M|Add0~35\ = CARRY((!\i1_50M|Add0~33\) # (!\i1_50M|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(17),
	datad => VCC,
	cin => \i1_50M|Add0~33\,
	combout => \i1_50M|Add0~34_combout\,
	cout => \i1_50M|Add0~35\);

-- Location: LCCOMB_X34_Y25_N6
\i1_50M|contador~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~6_combout\ = (!\i1_50M|Equal0~8_combout\ & \i1_50M|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|Equal0~8_combout\,
	datad => \i1_50M|Add0~34_combout\,
	combout => \i1_50M|contador~6_combout\);

-- Location: LCFF_X34_Y25_N7
\i1_50M|contador[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(17));

-- Location: LCCOMB_X36_Y25_N26
\i1_50M|contador~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~7_combout\ = (\i1_50M|Add0~30_combout\ & !\i1_50M|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|Add0~30_combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \i1_50M|contador~7_combout\);

-- Location: LCFF_X36_Y25_N27
\i1_50M|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~7_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(15));

-- Location: LCFF_X35_Y25_N7
\i1_50M|contador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~32_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(16));

-- Location: LCCOMB_X34_Y25_N18
\i1_50M|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~2_combout\ = (\i1_50M|contador\(14) & (\i1_50M|contador\(17) & (\i1_50M|contador\(15) & !\i1_50M|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(14),
	datab => \i1_50M|contador\(17),
	datac => \i1_50M|contador\(15),
	datad => \i1_50M|contador\(16),
	combout => \i1_50M|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y25_N12
\i1_50M|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~38_combout\ = (\i1_50M|contador\(19) & (!\i1_50M|Add0~37\)) # (!\i1_50M|contador\(19) & ((\i1_50M|Add0~37\) # (GND)))
-- \i1_50M|Add0~39\ = CARRY((!\i1_50M|Add0~37\) # (!\i1_50M|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(19),
	datad => VCC,
	cin => \i1_50M|Add0~37\,
	combout => \i1_50M|Add0~38_combout\,
	cout => \i1_50M|Add0~39\);

-- Location: LCCOMB_X34_Y25_N26
\i1_50M|contador~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~5_combout\ = (\i1_50M|Add0~38_combout\ & !\i1_50M|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|Add0~38_combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \i1_50M|contador~5_combout\);

-- Location: LCFF_X34_Y25_N27
\i1_50M|contador[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(19));

-- Location: LCCOMB_X35_Y25_N18
\i1_50M|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~44_combout\ = (\i1_50M|contador\(22) & (\i1_50M|Add0~43\ $ (GND))) # (!\i1_50M|contador\(22) & (!\i1_50M|Add0~43\ & VCC))
-- \i1_50M|Add0~45\ = CARRY((\i1_50M|contador\(22) & !\i1_50M|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(22),
	datad => VCC,
	cin => \i1_50M|Add0~43\,
	combout => \i1_50M|Add0~44_combout\,
	cout => \i1_50M|Add0~45\);

-- Location: LCCOMB_X35_Y25_N26
\i1_50M|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~2_combout\ = (!\i1_50M|Equal0~8_combout\ & \i1_50M|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|Equal0~8_combout\,
	datad => \i1_50M|Add0~44_combout\,
	combout => \i1_50M|contador~2_combout\);

-- Location: LCFF_X35_Y25_N27
\i1_50M|contador[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(22));

-- Location: LCCOMB_X35_Y25_N20
\i1_50M|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~46_combout\ = (\i1_50M|contador\(23) & (!\i1_50M|Add0~45\)) # (!\i1_50M|contador\(23) & ((\i1_50M|Add0~45\) # (GND)))
-- \i1_50M|Add0~47\ = CARRY((!\i1_50M|Add0~45\) # (!\i1_50M|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(23),
	datad => VCC,
	cin => \i1_50M|Add0~45\,
	combout => \i1_50M|Add0~46_combout\,
	cout => \i1_50M|Add0~47\);

-- Location: LCCOMB_X35_Y25_N28
\i1_50M|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~1_combout\ = (\i1_50M|Add0~46_combout\ & !\i1_50M|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|Add0~46_combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \i1_50M|contador~1_combout\);

-- Location: LCFF_X35_Y25_N29
\i1_50M|contador[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(23));

-- Location: LCCOMB_X35_Y25_N22
\i1_50M|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~48_combout\ = (\i1_50M|contador\(24) & (\i1_50M|Add0~47\ $ (GND))) # (!\i1_50M|contador\(24) & (!\i1_50M|Add0~47\ & VCC))
-- \i1_50M|Add0~49\ = CARRY((\i1_50M|contador\(24) & !\i1_50M|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1_50M|contador\(24),
	datad => VCC,
	cin => \i1_50M|Add0~47\,
	combout => \i1_50M|Add0~48_combout\,
	cout => \i1_50M|Add0~49\);

-- Location: LCFF_X35_Y25_N23
\i1_50M|contador[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|Add0~48_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(24));

-- Location: LCCOMB_X35_Y25_N24
\i1_50M|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Add0~50_combout\ = \i1_50M|Add0~49\ $ (\i1_50M|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i1_50M|contador\(25),
	cin => \i1_50M|Add0~49\,
	combout => \i1_50M|Add0~50_combout\);

-- Location: LCCOMB_X35_Y25_N30
\i1_50M|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~0_combout\ = (\i1_50M|Add0~50_combout\ & !\i1_50M|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|Add0~50_combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \i1_50M|contador~0_combout\);

-- Location: LCFF_X35_Y25_N31
\i1_50M|contador[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(25));

-- Location: LCCOMB_X34_Y25_N4
\i1_50M|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~0_combout\ = (\i1_50M|contador\(22) & (\i1_50M|contador\(25) & (!\i1_50M|contador\(24) & \i1_50M|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(22),
	datab => \i1_50M|contador\(25),
	datac => \i1_50M|contador\(24),
	datad => \i1_50M|contador\(23),
	combout => \i1_50M|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y25_N8
\i1_50M|contador~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|contador~9_combout\ = (\i1_50M|Add0~26_combout\ & !\i1_50M|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1_50M|Add0~26_combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \i1_50M|contador~9_combout\);

-- Location: LCFF_X34_Y25_N9
\i1_50M|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_50M|contador~9_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \en_cnt~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_50M|contador\(13));

-- Location: LCCOMB_X34_Y25_N30
\i1_50M|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~3_combout\ = (\i1_50M|contador\(12) & (\i1_50M|contador\(13) & (!\i1_50M|contador\(11) & !\i1_50M|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|contador\(12),
	datab => \i1_50M|contador\(13),
	datac => \i1_50M|contador\(11),
	datad => \i1_50M|contador\(10),
	combout => \i1_50M|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y25_N0
\i1_50M|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_50M|Equal0~4_combout\ = (\i1_50M|Equal0~1_combout\ & (\i1_50M|Equal0~2_combout\ & (\i1_50M|Equal0~0_combout\ & \i1_50M|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|Equal0~1_combout\,
	datab => \i1_50M|Equal0~2_combout\,
	datac => \i1_50M|Equal0~0_combout\,
	datad => \i1_50M|Equal0~3_combout\,
	combout => \i1_50M|Equal0~4_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\carga_seg~I\ : cycloneii_io
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
	padio => ww_carga_seg,
	combout => \carga_seg~combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\unidades[1]~I\ : cycloneii_io
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
	padio => ww_unidades(1),
	combout => \unidades~combout\(1));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\unidades[3]~I\ : cycloneii_io
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
	padio => ww_unidades(3),
	combout => \unidades~combout\(3));

-- Location: LCCOMB_X31_Y25_N2
\Unidades_segundos|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|process_0~0_combout\ = (\carga_seg~combout\ & (((!\unidades~combout\(2) & !\unidades~combout\(1))) # (!\unidades~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~combout\(2),
	datab => \carga_seg~combout\,
	datac => \unidades~combout\(1),
	datad => \unidades~combout\(3),
	combout => \Unidades_segundos|process_0~0_combout\);

-- Location: LCCOMB_X31_Y25_N28
\Unidades_segundos|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|contador~0_combout\ = (\Unidades_segundos|process_0~0_combout\ & (\unidades~combout\(0))) # (!\Unidades_segundos|process_0~0_combout\ & ((\Unidades_segundos|Equal0~0_combout\ & (\unidades~combout\(0))) # 
-- (!\Unidades_segundos|Equal0~0_combout\ & ((!\Unidades_segundos|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~combout\(0),
	datab => \Unidades_segundos|process_0~0_combout\,
	datac => \Unidades_segundos|contador\(0),
	datad => \Unidades_segundos|Equal0~0_combout\,
	combout => \Unidades_segundos|contador~0_combout\);

-- Location: LCCOMB_X31_Y25_N24
\Unidades_segundos|contador[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|contador[3]~1_combout\ = (\Unidades_segundos|process_0~0_combout\) # ((\en_cnt~combout\ & \i1_50M|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unidades_segundos|process_0~0_combout\,
	datac => \en_cnt~combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \Unidades_segundos|contador[3]~1_combout\);

-- Location: LCFF_X31_Y25_N29
\Unidades_segundos|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Unidades_segundos|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Unidades_segundos|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Unidades_segundos|contador\(0));

-- Location: LCCOMB_X31_Y25_N18
\Unidades_segundos|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|contador~2_combout\ = (\Unidades_segundos|process_0~0_combout\ & (((\unidades~combout\(1))))) # (!\Unidades_segundos|process_0~0_combout\ & ((\Unidades_segundos|Equal0~0_combout\ & ((\unidades~combout\(1)))) # 
-- (!\Unidades_segundos|Equal0~0_combout\ & (!\Unidades_segundos|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|Add0~0_combout\,
	datab => \Unidades_segundos|process_0~0_combout\,
	datac => \unidades~combout\(1),
	datad => \Unidades_segundos|Equal0~0_combout\,
	combout => \Unidades_segundos|contador~2_combout\);

-- Location: LCFF_X31_Y25_N19
\Unidades_segundos|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Unidades_segundos|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Unidades_segundos|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Unidades_segundos|contador\(1));

-- Location: LCCOMB_X31_Y25_N4
\Unidades_segundos|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|Add0~1_combout\ = \Unidades_segundos|contador\(2) $ (((\Unidades_segundos|contador\(1)) # (\Unidades_segundos|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unidades_segundos|contador\(1),
	datac => \Unidades_segundos|contador\(2),
	datad => \Unidades_segundos|contador\(0),
	combout => \Unidades_segundos|Add0~1_combout\);

-- Location: LCCOMB_X31_Y25_N8
\Unidades_segundos|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|contador~3_combout\ = (\Unidades_segundos|process_0~0_combout\ & (\unidades~combout\(2))) # (!\Unidades_segundos|process_0~0_combout\ & ((\Unidades_segundos|Equal0~0_combout\ & (\unidades~combout\(2))) # 
-- (!\Unidades_segundos|Equal0~0_combout\ & ((!\Unidades_segundos|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~combout\(2),
	datab => \Unidades_segundos|process_0~0_combout\,
	datac => \Unidades_segundos|Add0~1_combout\,
	datad => \Unidades_segundos|Equal0~0_combout\,
	combout => \Unidades_segundos|contador~3_combout\);

-- Location: LCFF_X31_Y25_N9
\Unidades_segundos|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Unidades_segundos|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Unidades_segundos|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Unidades_segundos|contador\(2));

-- Location: LCCOMB_X31_Y25_N0
\Unidades_segundos|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|Equal0~0_combout\ = (!\Unidades_segundos|contador\(3) & (!\Unidades_segundos|contador\(0) & (!\Unidades_segundos|contador\(2) & !\Unidades_segundos|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(2),
	datad => \Unidades_segundos|contador\(1),
	combout => \Unidades_segundos|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y25_N10
\Unidades_minutos|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|co~0_combout\ = (\i1_50M|Equal0~7_combout\ & (\en_cnt~combout\ & (\i1_50M|Equal0~5_combout\ & \i1_50M|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1_50M|Equal0~7_combout\,
	datab => \en_cnt~combout\,
	datac => \i1_50M|Equal0~5_combout\,
	datad => \i1_50M|Equal0~6_combout\,
	combout => \Unidades_minutos|co~0_combout\);

-- Location: LCCOMB_X34_Y25_N28
\Unidades_minutos|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|co~1_combout\ = (\Decenas_segundos|Equal0~0_combout\ & (\i1_50M|Equal0~4_combout\ & (\Unidades_segundos|Equal0~0_combout\ & \Unidades_minutos|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_segundos|Equal0~0_combout\,
	datab => \i1_50M|Equal0~4_combout\,
	datac => \Unidades_segundos|Equal0~0_combout\,
	datad => \Unidades_minutos|co~0_combout\,
	combout => \Unidades_minutos|co~1_combout\);

-- Location: LCCOMB_X33_Y25_N30
\Decenas_minutos|contador[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_minutos|contador[0]~1_combout\ = (\Decenas_minutos|process_0~0_combout\) # ((\Unidades_minutos|Equal0~0_combout\ & \Unidades_minutos|co~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|Equal0~0_combout\,
	datab => \Decenas_minutos|process_0~0_combout\,
	datad => \Unidades_minutos|co~1_combout\,
	combout => \Decenas_minutos|contador[0]~1_combout\);

-- Location: LCFF_X33_Y25_N29
\Decenas_minutos|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Decenas_minutos|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Decenas_minutos|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Decenas_minutos|contador\(1));

-- Location: LCCOMB_X33_Y25_N28
\Decenas_minutos|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_minutos|co~0_combout\ = (!\Decenas_minutos|contador\(2) & (!\Decenas_minutos|contador\(1) & !\Decenas_minutos|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_minutos|contador\(2),
	datac => \Decenas_minutos|contador\(1),
	datad => \Decenas_minutos|contador\(0),
	combout => \Decenas_minutos|co~0_combout\);

-- Location: LCCOMB_X33_Y25_N16
\Decenas_minutos|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_minutos|contador~0_combout\ = (\Decenas_minutos|process_0~0_combout\ & (\decenas~combout\(0))) # (!\Decenas_minutos|process_0~0_combout\ & ((\Decenas_minutos|co~0_combout\ & (\decenas~combout\(0))) # (!\Decenas_minutos|co~0_combout\ & 
-- ((!\Decenas_minutos|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_minutos|process_0~0_combout\,
	datab => \decenas~combout\(0),
	datac => \Decenas_minutos|contador\(0),
	datad => \Decenas_minutos|co~0_combout\,
	combout => \Decenas_minutos|contador~0_combout\);

-- Location: LCFF_X33_Y25_N17
\Decenas_minutos|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Decenas_minutos|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Decenas_minutos|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Decenas_minutos|contador\(0));

-- Location: LCCOMB_X32_Y25_N22
\Decenas_minutos|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_minutos|Add0~0_combout\ = \Decenas_minutos|contador\(2) $ (((\Decenas_minutos|contador\(0)) # (\Decenas_minutos|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_minutos|contador\(2),
	datac => \Decenas_minutos|contador\(0),
	datad => \Decenas_minutos|contador\(1),
	combout => \Decenas_minutos|Add0~0_combout\);

-- Location: LCCOMB_X32_Y25_N0
\Decenas_minutos|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_minutos|contador~2_combout\ = (\Decenas_minutos|process_0~0_combout\ & (\decenas~combout\(2))) # (!\Decenas_minutos|process_0~0_combout\ & ((\Decenas_minutos|co~0_combout\ & (\decenas~combout\(2))) # (!\Decenas_minutos|co~0_combout\ & 
-- ((!\Decenas_minutos|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_minutos|process_0~0_combout\,
	datab => \decenas~combout\(2),
	datac => \Decenas_minutos|co~0_combout\,
	datad => \Decenas_minutos|Add0~0_combout\,
	combout => \Decenas_minutos|contador~2_combout\);

-- Location: LCFF_X33_Y25_N31
\Decenas_minutos|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Decenas_minutos|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Decenas_minutos|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Decenas_minutos|contador\(2));

-- Location: LCCOMB_X33_Y25_N10
\Display_decenas_minutos|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_minutos|Mux6~0_combout\ = (\Decenas_minutos|contador\(1) & (\Decenas_minutos|contador\(0) & \Decenas_minutos|contador\(2))) # (!\Decenas_minutos|contador\(1) & ((!\Decenas_minutos|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_minutos|contador\(0),
	datab => \Decenas_minutos|contador\(1),
	datac => \Decenas_minutos|contador\(2),
	combout => \Display_decenas_minutos|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y25_N8
\Display_decenas_minutos|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_minutos|Mux5~0_combout\ = (\Decenas_minutos|contador\(0) & ((\Decenas_minutos|contador\(1)) # (!\Decenas_minutos|contador\(2)))) # (!\Decenas_minutos|contador\(0) & (\Decenas_minutos|contador\(1) & !\Decenas_minutos|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_minutos|contador\(0),
	datab => \Decenas_minutos|contador\(1),
	datac => \Decenas_minutos|contador\(2),
	combout => \Display_decenas_minutos|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y25_N24
\Display_decenas_minutos|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_minutos|Mux4~0_combout\ = (\Decenas_minutos|contador\(0)) # ((\Decenas_minutos|contador\(2) & !\Decenas_minutos|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_minutos|contador\(2),
	datac => \Decenas_minutos|contador\(0),
	datad => \Decenas_minutos|contador\(1),
	combout => \Display_decenas_minutos|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y25_N2
\Display_decenas_minutos|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_minutos|Mux3~0_combout\ = (\Decenas_minutos|contador\(0) & (\Decenas_minutos|contador\(1) $ (!\Decenas_minutos|contador\(2)))) # (!\Decenas_minutos|contador\(0) & (!\Decenas_minutos|contador\(1) & \Decenas_minutos|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_minutos|contador\(0),
	datab => \Decenas_minutos|contador\(1),
	datac => \Decenas_minutos|contador\(2),
	combout => \Display_decenas_minutos|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y25_N2
\Display_decenas_minutos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_minutos|Mux2~0_combout\ = (!\Decenas_minutos|contador\(2) & (!\Decenas_minutos|contador\(0) & \Decenas_minutos|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_minutos|contador\(2),
	datac => \Decenas_minutos|contador\(0),
	datad => \Decenas_minutos|contador\(1),
	combout => \Display_decenas_minutos|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y25_N8
\Display_decenas_minutos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_minutos|Mux1~0_combout\ = (\Decenas_minutos|contador\(0) $ (!\Decenas_minutos|contador\(1))) # (!\Decenas_minutos|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_minutos|contador\(2),
	datac => \Decenas_minutos|contador\(0),
	datad => \Decenas_minutos|contador\(1),
	combout => \Display_decenas_minutos|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y25_N18
\Display_decenas_minutos|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_minutos|Mux0~0_combout\ = (!\Decenas_minutos|contador\(1) & (\Decenas_minutos|contador\(2) $ (\Decenas_minutos|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_minutos|contador\(2),
	datac => \Decenas_minutos|contador\(0),
	datad => \Decenas_minutos|contador\(1),
	combout => \Display_decenas_minutos|Mux0~0_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\unidades[0]~I\ : cycloneii_io
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
	padio => ww_unidades(0),
	combout => \unidades~combout\(0));

-- Location: LCCOMB_X33_Y25_N20
\Unidades_minutos|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|Equal0~0_combout\ = (!\Unidades_minutos|contador\(1) & (!\Unidades_minutos|contador\(2) & (!\Unidades_minutos|contador\(0) & !\Unidades_minutos|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(1),
	datab => \Unidades_minutos|contador\(2),
	datac => \Unidades_minutos|contador\(0),
	datad => \Unidades_minutos|contador\(3),
	combout => \Unidades_minutos|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y25_N16
\Unidades_minutos|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|contador~0_combout\ = (\Unidades_minutos|process_0~0_combout\ & (\unidades~combout\(0))) # (!\Unidades_minutos|process_0~0_combout\ & ((\Unidades_minutos|Equal0~0_combout\ & (\unidades~combout\(0))) # 
-- (!\Unidades_minutos|Equal0~0_combout\ & ((!\Unidades_minutos|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|process_0~0_combout\,
	datab => \unidades~combout\(0),
	datac => \Unidades_minutos|contador\(0),
	datad => \Unidades_minutos|Equal0~0_combout\,
	combout => \Unidades_minutos|contador~0_combout\);

-- Location: LCCOMB_X34_Y25_N14
\Unidades_minutos|contador[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|contador[3]~1_combout\ = (\Unidades_minutos|process_0~0_combout\) # (\Unidades_minutos|co~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|process_0~0_combout\,
	datad => \Unidades_minutos|co~1_combout\,
	combout => \Unidades_minutos|contador[3]~1_combout\);

-- Location: LCFF_X34_Y25_N17
\Unidades_minutos|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Unidades_minutos|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Unidades_minutos|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Unidades_minutos|contador\(0));

-- Location: LCCOMB_X33_Y25_N0
\Unidades_minutos|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|Add0~1_combout\ = \Unidades_minutos|contador\(2) $ (((\Unidades_minutos|contador\(1)) # (\Unidades_minutos|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(1),
	datac => \Unidades_minutos|contador\(0),
	datad => \Unidades_minutos|contador\(2),
	combout => \Unidades_minutos|Add0~1_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\unidades[2]~I\ : cycloneii_io
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
	padio => ww_unidades(2),
	combout => \unidades~combout\(2));

-- Location: LCCOMB_X33_Y25_N12
\Unidades_minutos|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|process_0~0_combout\ = (\carga_min~combout\ & (((!\unidades~combout\(2) & !\unidades~combout\(1))) # (!\unidades~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~combout\(2),
	datab => \carga_min~combout\,
	datac => \unidades~combout\(1),
	datad => \unidades~combout\(3),
	combout => \Unidades_minutos|process_0~0_combout\);

-- Location: LCCOMB_X33_Y25_N18
\Unidades_minutos|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|contador~3_combout\ = (\Unidades_minutos|Equal0~0_combout\ & (((\unidades~combout\(2))))) # (!\Unidades_minutos|Equal0~0_combout\ & ((\Unidades_minutos|process_0~0_combout\ & ((\unidades~combout\(2)))) # 
-- (!\Unidades_minutos|process_0~0_combout\ & (!\Unidades_minutos|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|Equal0~0_combout\,
	datab => \Unidades_minutos|Add0~1_combout\,
	datac => \unidades~combout\(2),
	datad => \Unidades_minutos|process_0~0_combout\,
	combout => \Unidades_minutos|contador~3_combout\);

-- Location: LCFF_X33_Y25_N19
\Unidades_minutos|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Unidades_minutos|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Unidades_minutos|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Unidades_minutos|contador\(2));

-- Location: LCCOMB_X33_Y25_N22
\Unidades_minutos|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|Add0~2_combout\ = \Unidades_minutos|contador\(3) $ (((\Unidades_minutos|contador\(1)) # ((\Unidades_minutos|contador\(2)) # (\Unidades_minutos|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(1),
	datab => \Unidades_minutos|contador\(2),
	datac => \Unidades_minutos|contador\(0),
	datad => \Unidades_minutos|contador\(3),
	combout => \Unidades_minutos|Add0~2_combout\);

-- Location: LCCOMB_X33_Y25_N4
\Unidades_minutos|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|contador~4_combout\ = (\Unidades_minutos|Equal0~0_combout\ & (\unidades~combout\(3))) # (!\Unidades_minutos|Equal0~0_combout\ & ((\Unidades_minutos|process_0~0_combout\ & (\unidades~combout\(3))) # 
-- (!\Unidades_minutos|process_0~0_combout\ & ((!\Unidades_minutos|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~combout\(3),
	datab => \Unidades_minutos|Add0~2_combout\,
	datac => \Unidades_minutos|Equal0~0_combout\,
	datad => \Unidades_minutos|process_0~0_combout\,
	combout => \Unidades_minutos|contador~4_combout\);

-- Location: LCFF_X34_Y25_N15
\Unidades_minutos|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Unidades_minutos|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \Unidades_minutos|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Unidades_minutos|contador\(3));

-- Location: LCCOMB_X33_Y25_N14
\Unidades_minutos|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|Add0~0_combout\ = \Unidades_minutos|contador\(0) $ (\Unidades_minutos|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(0),
	datac => \Unidades_minutos|contador\(1),
	combout => \Unidades_minutos|Add0~0_combout\);

-- Location: LCCOMB_X33_Y25_N24
\Unidades_minutos|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_minutos|contador~2_combout\ = (\Unidades_minutos|Equal0~0_combout\ & (((\unidades~combout\(1))))) # (!\Unidades_minutos|Equal0~0_combout\ & ((\Unidades_minutos|process_0~0_combout\ & ((\unidades~combout\(1)))) # 
-- (!\Unidades_minutos|process_0~0_combout\ & (!\Unidades_minutos|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|Equal0~0_combout\,
	datab => \Unidades_minutos|Add0~0_combout\,
	datac => \unidades~combout\(1),
	datad => \Unidades_minutos|process_0~0_combout\,
	combout => \Unidades_minutos|contador~2_combout\);

-- Location: LCFF_X33_Y25_N25
\Unidades_minutos|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Unidades_minutos|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Unidades_minutos|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Unidades_minutos|contador\(1));

-- Location: LCCOMB_X27_Y25_N8
\Display_unidades_minutos|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_minutos|Mux6~0_combout\ = (\Unidades_minutos|contador\(0) & ((\Unidades_minutos|contador\(3)) # (\Unidades_minutos|contador\(1) $ (\Unidades_minutos|contador\(2))))) # (!\Unidades_minutos|contador\(0) & ((\Unidades_minutos|contador\(1)) 
-- # (\Unidades_minutos|contador\(3) $ (\Unidades_minutos|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(3),
	datab => \Unidades_minutos|contador\(1),
	datac => \Unidades_minutos|contador\(2),
	datad => \Unidades_minutos|contador\(0),
	combout => \Display_unidades_minutos|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y25_N10
\Display_unidades_minutos|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_minutos|Mux5~0_combout\ = (\Unidades_minutos|contador\(1) & (!\Unidades_minutos|contador\(3) & ((\Unidades_minutos|contador\(0)) # (!\Unidades_minutos|contador\(2))))) # (!\Unidades_minutos|contador\(1) & (\Unidades_minutos|contador\(0) 
-- & (\Unidades_minutos|contador\(3) $ (!\Unidades_minutos|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(3),
	datab => \Unidades_minutos|contador\(1),
	datac => \Unidades_minutos|contador\(2),
	datad => \Unidades_minutos|contador\(0),
	combout => \Display_unidades_minutos|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y25_N0
\Display_unidades_minutos|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_minutos|Mux4~0_combout\ = (\Unidades_minutos|contador\(1) & (!\Unidades_minutos|contador\(3) & ((\Unidades_minutos|contador\(0))))) # (!\Unidades_minutos|contador\(1) & ((\Unidades_minutos|contador\(2) & 
-- (!\Unidades_minutos|contador\(3))) # (!\Unidades_minutos|contador\(2) & ((\Unidades_minutos|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(3),
	datab => \Unidades_minutos|contador\(1),
	datac => \Unidades_minutos|contador\(2),
	datad => \Unidades_minutos|contador\(0),
	combout => \Display_unidades_minutos|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y25_N2
\Display_unidades_minutos|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_minutos|Mux3~0_combout\ = (\Unidades_minutos|contador\(0) & ((\Unidades_minutos|contador\(1) $ (!\Unidades_minutos|contador\(2))))) # (!\Unidades_minutos|contador\(0) & ((\Unidades_minutos|contador\(3) & (\Unidades_minutos|contador\(1) & 
-- !\Unidades_minutos|contador\(2))) # (!\Unidades_minutos|contador\(3) & (!\Unidades_minutos|contador\(1) & \Unidades_minutos|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(3),
	datab => \Unidades_minutos|contador\(1),
	datac => \Unidades_minutos|contador\(2),
	datad => \Unidades_minutos|contador\(0),
	combout => \Display_unidades_minutos|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y25_N28
\Display_unidades_minutos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_minutos|Mux2~0_combout\ = (\Unidades_minutos|contador\(3) & (\Unidades_minutos|contador\(2) & ((\Unidades_minutos|contador\(1)) # (!\Unidades_minutos|contador\(0))))) # (!\Unidades_minutos|contador\(3) & (\Unidades_minutos|contador\(1) & 
-- (!\Unidades_minutos|contador\(2) & !\Unidades_minutos|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(3),
	datab => \Unidades_minutos|contador\(1),
	datac => \Unidades_minutos|contador\(2),
	datad => \Unidades_minutos|contador\(0),
	combout => \Display_unidades_minutos|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y25_N22
\Display_unidades_minutos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_minutos|Mux1~0_combout\ = (\Unidades_minutos|contador\(3) & ((\Unidades_minutos|contador\(0) & (\Unidades_minutos|contador\(1))) # (!\Unidades_minutos|contador\(0) & ((\Unidades_minutos|contador\(2)))))) # 
-- (!\Unidades_minutos|contador\(3) & (\Unidades_minutos|contador\(2) & (\Unidades_minutos|contador\(1) $ (\Unidades_minutos|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(3),
	datab => \Unidades_minutos|contador\(1),
	datac => \Unidades_minutos|contador\(2),
	datad => \Unidades_minutos|contador\(0),
	combout => \Display_unidades_minutos|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\Display_unidades_minutos|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_minutos|Mux0~0_combout\ = (\Unidades_minutos|contador\(3) & (\Unidades_minutos|contador\(0) & (\Unidades_minutos|contador\(1) $ (\Unidades_minutos|contador\(2))))) # (!\Unidades_minutos|contador\(3) & (!\Unidades_minutos|contador\(1) & 
-- (\Unidades_minutos|contador\(2) $ (\Unidades_minutos|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|contador\(3),
	datab => \Unidades_minutos|contador\(1),
	datac => \Unidades_minutos|contador\(2),
	datad => \Unidades_minutos|contador\(0),
	combout => \Display_unidades_minutos|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y25_N28
\Display_decenas_segundos|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_segundos|Mux3~1_combout\ = \Decenas_segundos|contador\(1) $ (\Decenas_segundos|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(1),
	datac => \Decenas_segundos|contador\(0),
	combout => \Display_decenas_segundos|Mux3~1_combout\);

-- Location: LCCOMB_X36_Y25_N0
\Decenas_segundos|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_segundos|contador~3_combout\ = (\Decenas_segundos|process_0~0_combout\ & (((\decenas~combout\(1))))) # (!\Decenas_segundos|process_0~0_combout\ & ((\Decenas_segundos|Equal0~0_combout\ & ((\decenas~combout\(1)))) # 
-- (!\Decenas_segundos|Equal0~0_combout\ & (!\Display_decenas_segundos|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_segundos|process_0~0_combout\,
	datab => \Display_decenas_segundos|Mux3~1_combout\,
	datac => \Decenas_segundos|Equal0~0_combout\,
	datad => \decenas~combout\(1),
	combout => \Decenas_segundos|contador~3_combout\);

-- Location: LCCOMB_X36_Y25_N20
\Decenas_segundos|contador[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_segundos|contador[0]~1_combout\ = (\Decenas_segundos|process_0~0_combout\) # ((\en_cnt~combout\ & (\Unidades_segundos|Equal0~0_combout\ & \i1_50M|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_segundos|process_0~0_combout\,
	datab => \en_cnt~combout\,
	datac => \Unidades_segundos|Equal0~0_combout\,
	datad => \i1_50M|Equal0~8_combout\,
	combout => \Decenas_segundos|contador[0]~1_combout\);

-- Location: LCFF_X36_Y25_N1
\Decenas_segundos|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Decenas_segundos|contador~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Decenas_segundos|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Decenas_segundos|contador\(1));

-- Location: LCCOMB_X36_Y25_N8
\Decenas_segundos|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_segundos|Equal0~0_combout\ = (!\Decenas_segundos|contador\(2) & (!\Decenas_segundos|contador\(0) & !\Decenas_segundos|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Decenas_segundos|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y25_N4
\Decenas_segundos|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_segundos|contador~0_combout\ = (\Decenas_segundos|process_0~0_combout\ & (((\decenas~combout\(0))))) # (!\Decenas_segundos|process_0~0_combout\ & ((\Decenas_segundos|Equal0~0_combout\ & ((\decenas~combout\(0)))) # 
-- (!\Decenas_segundos|Equal0~0_combout\ & (!\Decenas_segundos|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_segundos|process_0~0_combout\,
	datab => \Decenas_segundos|Equal0~0_combout\,
	datac => \Decenas_segundos|contador\(0),
	datad => \decenas~combout\(0),
	combout => \Decenas_segundos|contador~0_combout\);

-- Location: LCFF_X36_Y25_N5
\Decenas_segundos|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Decenas_segundos|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Decenas_segundos|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Decenas_segundos|contador\(0));

-- Location: LCCOMB_X36_Y25_N14
\Decenas_segundos|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_segundos|Add0~0_combout\ = \Decenas_segundos|contador\(2) $ (((\Decenas_segundos|contador\(0)) # (\Decenas_segundos|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Decenas_segundos|Add0~0_combout\);

-- Location: LCCOMB_X36_Y25_N22
\Decenas_segundos|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_segundos|contador~2_combout\ = (\Decenas_segundos|process_0~0_combout\ & (((\decenas~combout\(2))))) # (!\Decenas_segundos|process_0~0_combout\ & ((\Decenas_segundos|Equal0~0_combout\ & ((\decenas~combout\(2)))) # 
-- (!\Decenas_segundos|Equal0~0_combout\ & (!\Decenas_segundos|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decenas_segundos|process_0~0_combout\,
	datab => \Decenas_segundos|Add0~0_combout\,
	datac => \Decenas_segundos|Equal0~0_combout\,
	datad => \decenas~combout\(2),
	combout => \Decenas_segundos|contador~2_combout\);

-- Location: LCFF_X36_Y25_N23
\Decenas_segundos|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Decenas_segundos|contador~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Decenas_segundos|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Decenas_segundos|contador\(2));

-- Location: LCCOMB_X36_Y25_N10
\Display_decenas_segundos|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_segundos|Mux6~0_combout\ = (\Decenas_segundos|contador\(2) & (\Decenas_segundos|contador\(0) & \Decenas_segundos|contador\(1))) # (!\Decenas_segundos|contador\(2) & ((!\Decenas_segundos|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Display_decenas_segundos|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y25_N16
\Display_decenas_segundos|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_segundos|Mux5~0_combout\ = (\Decenas_segundos|contador\(2) & (\Decenas_segundos|contador\(0) & \Decenas_segundos|contador\(1))) # (!\Decenas_segundos|contador\(2) & ((\Decenas_segundos|contador\(0)) # (\Decenas_segundos|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Display_decenas_segundos|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y25_N18
\Display_decenas_segundos|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_segundos|Mux4~0_combout\ = (\Decenas_segundos|contador\(0)) # ((\Decenas_segundos|contador\(2) & !\Decenas_segundos|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Display_decenas_segundos|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y25_N12
\Display_decenas_segundos|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_segundos|Mux3~0_combout\ = (\Decenas_segundos|contador\(2) & (\Decenas_segundos|contador\(0) $ (!\Decenas_segundos|contador\(1)))) # (!\Decenas_segundos|contador\(2) & (\Decenas_segundos|contador\(0) & !\Decenas_segundos|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Display_decenas_segundos|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y25_N2
\Display_decenas_segundos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_segundos|Mux2~0_combout\ = (!\Decenas_segundos|contador\(2) & (!\Decenas_segundos|contador\(0) & \Decenas_segundos|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Display_decenas_segundos|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y25_N24
\Display_decenas_segundos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_segundos|Mux1~0_combout\ = (\Decenas_segundos|contador\(0) $ (!\Decenas_segundos|contador\(1))) # (!\Decenas_segundos|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Display_decenas_segundos|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y25_N30
\Display_decenas_segundos|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_decenas_segundos|Mux0~0_combout\ = (!\Decenas_segundos|contador\(1) & (\Decenas_segundos|contador\(2) $ (\Decenas_segundos|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decenas_segundos|contador\(2),
	datac => \Decenas_segundos|contador\(0),
	datad => \Decenas_segundos|contador\(1),
	combout => \Display_decenas_segundos|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y25_N14
\Unidades_segundos|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|Add0~2_combout\ = \Unidades_segundos|contador\(3) $ (((\Unidades_segundos|contador\(0)) # ((\Unidades_segundos|contador\(2)) # (\Unidades_segundos|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(2),
	datad => \Unidades_segundos|contador\(1),
	combout => \Unidades_segundos|Add0~2_combout\);

-- Location: LCCOMB_X31_Y25_N10
\Unidades_segundos|contador~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Unidades_segundos|contador~4_combout\ = (\Unidades_segundos|Equal0~0_combout\ & (((\unidades~combout\(3))))) # (!\Unidades_segundos|Equal0~0_combout\ & ((\Unidades_segundos|process_0~0_combout\ & ((\unidades~combout\(3)))) # 
-- (!\Unidades_segundos|process_0~0_combout\ & (!\Unidades_segundos|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|Equal0~0_combout\,
	datab => \Unidades_segundos|process_0~0_combout\,
	datac => \Unidades_segundos|Add0~2_combout\,
	datad => \unidades~combout\(3),
	combout => \Unidades_segundos|contador~4_combout\);

-- Location: LCFF_X31_Y25_N11
\Unidades_segundos|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Unidades_segundos|contador~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \Unidades_segundos|contador[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Unidades_segundos|contador\(3));

-- Location: LCCOMB_X23_Y25_N28
\Display_unidades_segundos|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_segundos|Mux6~0_combout\ = (\Unidades_segundos|contador\(0) & ((\Unidades_segundos|contador\(3)) # (\Unidades_segundos|contador\(1) $ (\Unidades_segundos|contador\(2))))) # (!\Unidades_segundos|contador\(0) & 
-- ((\Unidades_segundos|contador\(1)) # (\Unidades_segundos|contador\(3) $ (\Unidades_segundos|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(1),
	datad => \Unidades_segundos|contador\(2),
	combout => \Display_unidades_segundos|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y25_N26
\Display_unidades_segundos|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_segundos|Mux5~0_combout\ = (\Unidades_segundos|contador\(0) & (\Unidades_segundos|contador\(3) $ (((\Unidades_segundos|contador\(1)) # (!\Unidades_segundos|contador\(2)))))) # (!\Unidades_segundos|contador\(0) & 
-- (!\Unidades_segundos|contador\(3) & (\Unidades_segundos|contador\(1) & !\Unidades_segundos|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(1),
	datad => \Unidades_segundos|contador\(2),
	combout => \Display_unidades_segundos|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y25_N8
\Display_unidades_segundos|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_segundos|Mux4~0_combout\ = (\Unidades_segundos|contador\(1) & (!\Unidades_segundos|contador\(3) & (\Unidades_segundos|contador\(0)))) # (!\Unidades_segundos|contador\(1) & ((\Unidades_segundos|contador\(2) & 
-- (!\Unidades_segundos|contador\(3))) # (!\Unidades_segundos|contador\(2) & ((\Unidades_segundos|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(1),
	datad => \Unidades_segundos|contador\(2),
	combout => \Display_unidades_segundos|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y25_N18
\Display_unidades_segundos|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_segundos|Mux3~0_combout\ = (\Unidades_segundos|contador\(0) & ((\Unidades_segundos|contador\(1) $ (!\Unidades_segundos|contador\(2))))) # (!\Unidades_segundos|contador\(0) & ((\Unidades_segundos|contador\(3) & 
-- (\Unidades_segundos|contador\(1) & !\Unidades_segundos|contador\(2))) # (!\Unidades_segundos|contador\(3) & (!\Unidades_segundos|contador\(1) & \Unidades_segundos|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(1),
	datad => \Unidades_segundos|contador\(2),
	combout => \Display_unidades_segundos|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y25_N4
\Display_unidades_segundos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_segundos|Mux2~0_combout\ = (\Unidades_segundos|contador\(3) & (\Unidades_segundos|contador\(2) & ((\Unidades_segundos|contador\(1)) # (!\Unidades_segundos|contador\(0))))) # (!\Unidades_segundos|contador\(3) & 
-- (!\Unidades_segundos|contador\(0) & (\Unidades_segundos|contador\(1) & !\Unidades_segundos|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(1),
	datad => \Unidades_segundos|contador\(2),
	combout => \Display_unidades_segundos|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y25_N10
\Display_unidades_segundos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_segundos|Mux1~0_combout\ = (\Unidades_segundos|contador\(3) & ((\Unidades_segundos|contador\(0) & (\Unidades_segundos|contador\(1))) # (!\Unidades_segundos|contador\(0) & ((\Unidades_segundos|contador\(2)))))) # 
-- (!\Unidades_segundos|contador\(3) & (\Unidades_segundos|contador\(2) & (\Unidades_segundos|contador\(0) $ (\Unidades_segundos|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(1),
	datad => \Unidades_segundos|contador\(2),
	combout => \Display_unidades_segundos|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y25_N12
\Display_unidades_segundos|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display_unidades_segundos|Mux0~0_combout\ = (\Unidades_segundos|contador\(3) & (\Unidades_segundos|contador\(0) & (\Unidades_segundos|contador\(1) $ (\Unidades_segundos|contador\(2))))) # (!\Unidades_segundos|contador\(3) & 
-- (!\Unidades_segundos|contador\(1) & (\Unidades_segundos|contador\(0) $ (\Unidades_segundos|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_segundos|contador\(3),
	datab => \Unidades_segundos|contador\(0),
	datac => \Unidades_segundos|contador\(1),
	datad => \Unidades_segundos|contador\(2),
	combout => \Display_unidades_segundos|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y25_N26
\Decenas_minutos|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decenas_minutos|co~1_combout\ = (\Unidades_minutos|Equal0~0_combout\ & (\Unidades_minutos|co~1_combout\ & \Decenas_minutos|co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidades_minutos|Equal0~0_combout\,
	datac => \Unidades_minutos|co~1_combout\,
	datad => \Decenas_minutos|co~0_combout\,
	combout => \Decenas_minutos|co~1_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[0]~I\ : cycloneii_io
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
	datain => \Display_decenas_minutos|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[1]~I\ : cycloneii_io
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
	datain => \Display_decenas_minutos|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[2]~I\ : cycloneii_io
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
	datain => \Display_decenas_minutos|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[3]~I\ : cycloneii_io
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
	datain => \Display_decenas_minutos|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(3));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[4]~I\ : cycloneii_io
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
	datain => \Display_decenas_minutos|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(4));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[5]~I\ : cycloneii_io
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
	datain => \Display_decenas_minutos|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_d[6]~I\ : cycloneii_io
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
	datain => \Display_decenas_minutos|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_d(6));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[0]~I\ : cycloneii_io
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
	datain => \Display_unidades_minutos|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(0));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[1]~I\ : cycloneii_io
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
	datain => \Display_unidades_minutos|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[2]~I\ : cycloneii_io
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
	datain => \Display_unidades_minutos|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(2));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[3]~I\ : cycloneii_io
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
	datain => \Display_unidades_minutos|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[4]~I\ : cycloneii_io
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
	datain => \Display_unidades_minutos|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(4));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[5]~I\ : cycloneii_io
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
	datain => \Display_unidades_minutos|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(5));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_c[6]~I\ : cycloneii_io
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
	datain => \Display_unidades_minutos|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_c(6));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[0]~I\ : cycloneii_io
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
	datain => \Display_decenas_segundos|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[1]~I\ : cycloneii_io
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
	datain => \Display_decenas_segundos|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[2]~I\ : cycloneii_io
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
	datain => \Display_decenas_segundos|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(2));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[3]~I\ : cycloneii_io
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
	datain => \Display_decenas_segundos|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(3));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[4]~I\ : cycloneii_io
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
	datain => \Display_decenas_segundos|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(4));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[5]~I\ : cycloneii_io
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
	datain => \Display_decenas_segundos|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(5));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_b[6]~I\ : cycloneii_io
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
	datain => \Display_decenas_segundos|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_b(6));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[0]~I\ : cycloneii_io
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
	datain => \Display_unidades_segundos|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(0));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[1]~I\ : cycloneii_io
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
	datain => \Display_unidades_segundos|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(1));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[2]~I\ : cycloneii_io
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
	datain => \Display_unidades_segundos|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[3]~I\ : cycloneii_io
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
	datain => \Display_unidades_segundos|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(3));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[4]~I\ : cycloneii_io
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
	datain => \Display_unidades_segundos|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(4));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[5]~I\ : cycloneii_io
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
	datain => \Display_unidades_segundos|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(5));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_a[6]~I\ : cycloneii_io
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
	datain => \Display_unidades_segundos|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_a(6));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fin_cuenta~I\ : cycloneii_io
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
	datain => \Decenas_minutos|co~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fin_cuenta);
END structure;


