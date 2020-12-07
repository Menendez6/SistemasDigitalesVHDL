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

-- DATE "10/27/2020 08:07:31"

-- 
-- Device: Altera EP2C35F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practica5 IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	c_out : OUT std_logic;
	salida1 : OUT std_logic_vector(6 DOWNTO 0);
	salida2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Practica5;

-- Design Ports Information
-- c_out	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[0]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[1]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[2]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[4]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[5]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[6]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[1]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[3]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[4]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[5]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[6]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica5 IS
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
SIGNAL ww_c_out : std_logic;
SIGNAL ww_salida1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\ : std_logic;
SIGNAL \i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i1|GenSum:3:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i2|Mux6~0_combout\ : std_logic;
SIGNAL \i2|Mux5~0_combout\ : std_logic;
SIGNAL \i2|Mux4~0_combout\ : std_logic;
SIGNAL \i2|Mux3~0_combout\ : std_logic;
SIGNAL \i2|Mux2~0_combout\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \i1|GenSum:4:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i2|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
c_out <= ww_c_out;
salida1 <= ww_salida1;
salida2 <= ww_salida2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i2|ALT_INV_Mux6~0_combout\ <= NOT \i2|Mux6~0_combout\;

-- Location: LCCOMB_X1_Y16_N12
\i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\b~combout\(1) & ((\a~combout\(1)) # ((\a~combout\(0) & \b~combout\(0))))) # (!\b~combout\(1) & (\a~combout\(0) & (\b~combout\(0) & \a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y16_N8
\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\b~combout\(3) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(3),
	combout => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y16_N18
\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\b~combout\(3)) # (\a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(3),
	combout => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X1_Y16_N30
\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\ = (\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\ & ((\i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\b~combout\(2)) # (\a~combout\(2)))) # (!\i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & 
-- (\b~combout\(2) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\,
	combout => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\);

-- Location: LCCOMB_X1_Y14_N0
\i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\b~combout\(4) & ((\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\) # ((\a~combout\(4)) # (\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\)))) # (!\b~combout\(4) & (\a~combout\(4) & 
-- ((\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \a~combout\(4),
	datad => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\,
	combout => \i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y16_N6
\i1|GenSum:3:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\ = \a~combout\(3) $ (((\i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\b~combout\(2)) # (\a~combout\(2)))) # (!\i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\b~combout\(2) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	combout => \i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X1_Y16_N16
\i1|GenSum:3:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:3:i_Sumador1Bit|s_i~combout\ = \b~combout\(3) $ (\i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\,
	combout => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y16_N2
\i1|GenSum:1:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ = \b~combout\(1) $ (\a~combout\(1) $ (((\a~combout\(0) & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X1_Y16_N4
\i1|GenSum:2:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\ = \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\b~combout\(2) $ (\a~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	combout => \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y16_N0
\i1|GenSum:0:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ = \b~combout\(0) $ (\a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X1_Y16_N26
\i2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux6~0_combout\ = (\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ & ((\i1|GenSum:3:i_Sumador1Bit|s_i~combout\) # (\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ $ (\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\)))) # (!\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ & 
-- ((\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\) # (\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ $ (\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\,
	datac => \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\,
	datad => \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\,
	combout => \i2|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y16_N28
\i2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux5~0_combout\ = (\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & (!\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & ((\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\) # (!\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\)))) # (!\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & 
-- (\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ & (\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ $ (!\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\,
	datac => \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\,
	datad => \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\,
	combout => \i2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y16_N14
\i2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux4~0_combout\ = (\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & (!\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & ((\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\)))) # (!\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & ((\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\ & 
-- (!\i1|GenSum:3:i_Sumador1Bit|s_i~combout\)) # (!\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\ & ((\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\,
	datac => \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\,
	datad => \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\,
	combout => \i2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y16_N24
\i2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux3~0_combout\ = (\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ & ((\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ $ (!\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\)))) # (!\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ & ((\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & 
-- (\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & !\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\)) # (!\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & (!\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\,
	datac => \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\,
	datad => \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\,
	combout => \i2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y16_N10
\i2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux2~0_combout\ = (\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & (\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\ & ((\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\) # (!\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\)))) # (!\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & 
-- (\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & (!\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\ & !\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\,
	datac => \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\,
	datad => \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\,
	combout => \i2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y16_N20
\i2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = (\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & ((\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ & (\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\)) # (!\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ & ((\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\))))) # 
-- (!\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & (\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\ & (\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ $ (\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\,
	datac => \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\,
	datad => \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\,
	combout => \i2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y16_N22
\i2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = (\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & (\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\ & (\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ $ (\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\)))) # (!\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & 
-- (!\i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & (\i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\ $ (\i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\,
	datac => \i1|GenSum:2:i_Sumador1Bit|s_i~0_combout\,
	datad => \i1|GenSum:0:i_Sumador1Bit|s_i~0_combout\,
	combout => \i2|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y14_N18
\i1|GenSum:4:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:4:i_Sumador1Bit|s_i~combout\ = \b~combout\(4) $ (\a~combout\(4) $ (((\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \a~combout\(4),
	datad => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\,
	combout => \i1|GenSum:4:i_Sumador1Bit|s_i~combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_out~I\ : cycloneii_io
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
	datain => \i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c_out);

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida1[0]~I\ : cycloneii_io
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
	datain => \i2|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(0));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida1[1]~I\ : cycloneii_io
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
	datain => \i2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(1));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida1[2]~I\ : cycloneii_io
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
	datain => \i2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(2));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida1[3]~I\ : cycloneii_io
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
	datain => \i2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(3));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida1[4]~I\ : cycloneii_io
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
	datain => \i2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(4));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida1[5]~I\ : cycloneii_io
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
	datain => \i2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(5));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida1[6]~I\ : cycloneii_io
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
	datain => \i2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(6));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida2[0]~I\ : cycloneii_io
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
	padio => ww_salida2(0));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida2[1]~I\ : cycloneii_io
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
	datain => \i1|GenSum:4:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida2[2]~I\ : cycloneii_io
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
	datain => \i1|GenSum:4:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(2));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida2[3]~I\ : cycloneii_io
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
	datain => \i1|GenSum:4:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(3));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida2[4]~I\ : cycloneii_io
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
	padio => ww_salida2(4));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida2[5]~I\ : cycloneii_io
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
	padio => ww_salida2(5));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida2[6]~I\ : cycloneii_io
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
	datain => \i1|GenSum:4:i_Sumador1Bit|s_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(6));
END structure;


