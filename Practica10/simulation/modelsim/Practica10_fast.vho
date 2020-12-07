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

-- DATE "12/06/2020 15:08:14"

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

ENTITY 	Practica10 IS
    PORT (
	p1 : IN std_logic;
	p2 : IN std_logic;
	reset_n : IN std_logic;
	clk : IN std_logic;
	max_coches : IN std_logic_vector(7 DOWNTO 0);
	libre : OUT std_logic;
	ocupado : OUT std_logic;
	salida1 : OUT std_logic_vector(6 DOWNTO 0);
	salida2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Practica10;

-- Design Ports Information
-- libre	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ocupado	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[4]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[5]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[3]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[4]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida2[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- max_coches[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coches[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coches[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coches[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coches[4]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coches[5]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coches[6]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_coches[7]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p2	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_p1 : std_logic;
SIGNAL ww_p2 : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_max_coches : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_libre : std_logic;
SIGNAL ww_ocupado : std_logic;
SIGNAL ww_salida1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_salida2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i2_DetectorFlanco|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~regout\ : std_logic;
SIGNAL \i_ControlAparcamiento|i2_DetectorFlanco|Selector1~0_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~regout\ : std_logic;
SIGNAL \i2_DetectorFlanco|estado_act.Esp0~regout\ : std_logic;
SIGNAL \i2_DetectorFlanco|Selector1~0_combout\ : std_logic;
SIGNAL \i2_DetectorFlanco|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \p2~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~feeder_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~feeder_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[0]~8_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \p1~combout\ : std_logic;
SIGNAL \i1_DetectorFlanco|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \i1_DetectorFlanco|estado_act.Esp0~regout\ : std_logic;
SIGNAL \i1_DetectorFlanco|Selector1~0_combout\ : std_logic;
SIGNAL \i1_DetectorFlanco|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i_ControlAparcamiento|i1_DetectorFlanco|Selector1~0_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[0]~9\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[1]~11\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[2]~15\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[3]~17\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[4]~19\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[5]~21\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[6]~22_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[5]~20_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[6]~23\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[7]~24_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|process_0~1_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|process_0~2_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[4]~18_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[2]~14_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|LessThan0~1_cout\ : std_logic;
SIGNAL \i_ControlAparcamiento|LessThan0~3_cout\ : std_logic;
SIGNAL \i_ControlAparcamiento|LessThan0~5_cout\ : std_logic;
SIGNAL \i_ControlAparcamiento|LessThan0~7_cout\ : std_logic;
SIGNAL \i_ControlAparcamiento|LessThan0~9_cout\ : std_logic;
SIGNAL \i_ControlAparcamiento|LessThan0~11_cout\ : std_logic;
SIGNAL \i_ControlAparcamiento|LessThan0~13_cout\ : std_logic;
SIGNAL \i_ControlAparcamiento|LessThan0~14_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|Add0~0_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[1]~10_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[3]~16_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|process_0~0_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[7]~12_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador[7]~13_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|Equal1~0_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|Equal1~3_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|Equal1~2_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|Equal1~1_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|Equal1~4_combout\ : std_logic;
SIGNAL \i1_BinA7Seg|Mux6~0_combout\ : std_logic;
SIGNAL \i1_BinA7Seg|Mux5~0_combout\ : std_logic;
SIGNAL \i1_BinA7Seg|Mux4~0_combout\ : std_logic;
SIGNAL \i1_BinA7Seg|Mux3~0_combout\ : std_logic;
SIGNAL \i1_BinA7Seg|Mux2~0_combout\ : std_logic;
SIGNAL \i1_BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \i1_BinA7Seg|Mux0~0_combout\ : std_logic;
SIGNAL \i2_BinA7Seg|Mux6~0_combout\ : std_logic;
SIGNAL \i2_BinA7Seg|Mux5~0_combout\ : std_logic;
SIGNAL \i2_BinA7Seg|Mux4~0_combout\ : std_logic;
SIGNAL \i2_BinA7Seg|Mux3~0_combout\ : std_logic;
SIGNAL \i2_BinA7Seg|Mux2~0_combout\ : std_logic;
SIGNAL \i2_BinA7Seg|Mux1~0_combout\ : std_logic;
SIGNAL \i2_BinA7Seg|Mux0~0_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|contador\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \max_coches~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1_BinA7Seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i_ControlAparcamiento|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \i2_BinA7Seg|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_p1 <= p1;
ww_p2 <= p2;
ww_reset_n <= reset_n;
ww_clk <= clk;
ww_max_coches <= max_coches;
libre <= ww_libre;
ocupado <= ww_ocupado;
salida1 <= ww_salida1;
salida2 <= ww_salida2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\i1_BinA7Seg|ALT_INV_Mux6~0_combout\ <= NOT \i1_BinA7Seg|Mux6~0_combout\;
\i_ControlAparcamiento|ALT_INV_Equal1~4_combout\ <= NOT \i_ControlAparcamiento|Equal1~4_combout\;
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;
\i2_BinA7Seg|ALT_INV_Mux6~0_combout\ <= NOT \i2_BinA7Seg|Mux6~0_combout\;

-- Location: LCFF_X36_Y25_N5
\i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|i2_DetectorFlanco|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Pulso~regout\);

-- Location: LCFF_X36_Y25_N1
\i2_DetectorFlanco|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2_DetectorFlanco|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2_DetectorFlanco|estado_act.Pulso~regout\);

-- Location: LCFF_X36_Y25_N3
\i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~regout\);

-- Location: LCCOMB_X36_Y25_N4
\i_ControlAparcamiento|i2_DetectorFlanco|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|i2_DetectorFlanco|Selector1~0_combout\ = (!\i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~regout\ & \i2_DetectorFlanco|estado_act.Pulso~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~regout\,
	datad => \i2_DetectorFlanco|estado_act.Pulso~regout\,
	combout => \i_ControlAparcamiento|i2_DetectorFlanco|Selector1~0_combout\);

-- Location: LCFF_X36_Y25_N13
\i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~regout\);

-- Location: LCFF_X36_Y25_N19
\i2_DetectorFlanco|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2_DetectorFlanco|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2_DetectorFlanco|estado_act.Esp0~regout\);

-- Location: LCCOMB_X36_Y25_N0
\i2_DetectorFlanco|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_DetectorFlanco|Selector1~0_combout\ = (!\i2_DetectorFlanco|estado_act.Esp0~regout\ & !\p2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2_DetectorFlanco|estado_act.Esp0~regout\,
	datad => \p2~combout\,
	combout => \i2_DetectorFlanco|Selector1~0_combout\);

-- Location: LCCOMB_X36_Y25_N18
\i2_DetectorFlanco|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_DetectorFlanco|estado_act.Esp0~0_combout\ = !\p2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2~combout\,
	combout => \i2_DetectorFlanco|estado_act.Esp0~0_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coches[1]~I\ : cycloneii_io
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
	padio => ww_max_coches(1),
	combout => \max_coches~combout\(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coches[4]~I\ : cycloneii_io
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
	padio => ww_max_coches(4),
	combout => \max_coches~combout\(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coches[6]~I\ : cycloneii_io
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
	padio => ww_max_coches(6),
	combout => \max_coches~combout\(6));

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

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p2~I\ : cycloneii_io
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
	padio => ww_p2,
	combout => \p2~combout\);

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

-- Location: LCCOMB_X36_Y25_N2
\i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~feeder_combout\ = \i2_DetectorFlanco|estado_act.Pulso~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2_DetectorFlanco|estado_act.Pulso~regout\,
	combout => \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Esp1~feeder_combout\);

-- Location: LCCOMB_X36_Y25_N12
\i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~feeder_combout\ = \i1_DetectorFlanco|estado_act.Pulso~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i1_DetectorFlanco|estado_act.Pulso~regout\,
	combout => \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~feeder_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coches[0]~I\ : cycloneii_io
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
	padio => ww_max_coches(0),
	combout => \max_coches~combout\(0));

-- Location: LCCOMB_X35_Y25_N16
\i_ControlAparcamiento|contador[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[0]~8_combout\ = \i_ControlAparcamiento|contador\(0) $ (VCC)
-- \i_ControlAparcamiento|contador[0]~9\ = CARRY(\i_ControlAparcamiento|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(0),
	datad => VCC,
	combout => \i_ControlAparcamiento|contador[0]~8_combout\,
	cout => \i_ControlAparcamiento|contador[0]~9\);

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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p1~I\ : cycloneii_io
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
	padio => ww_p1,
	combout => \p1~combout\);

-- Location: LCCOMB_X37_Y25_N2
\i1_DetectorFlanco|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_DetectorFlanco|estado_act.Esp0~0_combout\ = !\p1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\,
	combout => \i1_DetectorFlanco|estado_act.Esp0~0_combout\);

-- Location: LCFF_X37_Y25_N3
\i1_DetectorFlanco|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_DetectorFlanco|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_DetectorFlanco|estado_act.Esp0~regout\);

-- Location: LCCOMB_X37_Y25_N4
\i1_DetectorFlanco|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_DetectorFlanco|Selector1~0_combout\ = (!\i1_DetectorFlanco|estado_act.Esp0~regout\ & !\p1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1_DetectorFlanco|estado_act.Esp0~regout\,
	datad => \p1~combout\,
	combout => \i1_DetectorFlanco|Selector1~0_combout\);

-- Location: LCFF_X37_Y25_N5
\i1_DetectorFlanco|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1_DetectorFlanco|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1_DetectorFlanco|estado_act.Pulso~regout\);

-- Location: LCCOMB_X36_Y25_N30
\i_ControlAparcamiento|i1_DetectorFlanco|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|i1_DetectorFlanco|Selector1~0_combout\ = (!\i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~regout\ & \i1_DetectorFlanco|estado_act.Pulso~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Esp1~regout\,
	datad => \i1_DetectorFlanco|estado_act.Pulso~regout\,
	combout => \i_ControlAparcamiento|i1_DetectorFlanco|Selector1~0_combout\);

-- Location: LCFF_X36_Y25_N31
\i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|i1_DetectorFlanco|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso~regout\);

-- Location: LCCOMB_X35_Y25_N18
\i_ControlAparcamiento|contador[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[1]~10_combout\ = (\i_ControlAparcamiento|contador\(1) & ((\i_ControlAparcamiento|Add0~0_combout\ & (\i_ControlAparcamiento|contador[0]~9\ & VCC)) # (!\i_ControlAparcamiento|Add0~0_combout\ & 
-- (!\i_ControlAparcamiento|contador[0]~9\)))) # (!\i_ControlAparcamiento|contador\(1) & ((\i_ControlAparcamiento|Add0~0_combout\ & (!\i_ControlAparcamiento|contador[0]~9\)) # (!\i_ControlAparcamiento|Add0~0_combout\ & 
-- ((\i_ControlAparcamiento|contador[0]~9\) # (GND)))))
-- \i_ControlAparcamiento|contador[1]~11\ = CARRY((\i_ControlAparcamiento|contador\(1) & (!\i_ControlAparcamiento|Add0~0_combout\ & !\i_ControlAparcamiento|contador[0]~9\)) # (!\i_ControlAparcamiento|contador\(1) & ((!\i_ControlAparcamiento|contador[0]~9\) # 
-- (!\i_ControlAparcamiento|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(1),
	datab => \i_ControlAparcamiento|Add0~0_combout\,
	datad => VCC,
	cin => \i_ControlAparcamiento|contador[0]~9\,
	combout => \i_ControlAparcamiento|contador[1]~10_combout\,
	cout => \i_ControlAparcamiento|contador[1]~11\);

-- Location: LCCOMB_X35_Y25_N20
\i_ControlAparcamiento|contador[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[2]~14_combout\ = ((\i_ControlAparcamiento|contador\(2) $ (\i_ControlAparcamiento|Add0~0_combout\ $ (!\i_ControlAparcamiento|contador[1]~11\)))) # (GND)
-- \i_ControlAparcamiento|contador[2]~15\ = CARRY((\i_ControlAparcamiento|contador\(2) & ((\i_ControlAparcamiento|Add0~0_combout\) # (!\i_ControlAparcamiento|contador[1]~11\))) # (!\i_ControlAparcamiento|contador\(2) & (\i_ControlAparcamiento|Add0~0_combout\ 
-- & !\i_ControlAparcamiento|contador[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(2),
	datab => \i_ControlAparcamiento|Add0~0_combout\,
	datad => VCC,
	cin => \i_ControlAparcamiento|contador[1]~11\,
	combout => \i_ControlAparcamiento|contador[2]~14_combout\,
	cout => \i_ControlAparcamiento|contador[2]~15\);

-- Location: LCCOMB_X35_Y25_N22
\i_ControlAparcamiento|contador[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[3]~16_combout\ = (\i_ControlAparcamiento|contador\(3) & ((\i_ControlAparcamiento|Add0~0_combout\ & (\i_ControlAparcamiento|contador[2]~15\ & VCC)) # (!\i_ControlAparcamiento|Add0~0_combout\ & 
-- (!\i_ControlAparcamiento|contador[2]~15\)))) # (!\i_ControlAparcamiento|contador\(3) & ((\i_ControlAparcamiento|Add0~0_combout\ & (!\i_ControlAparcamiento|contador[2]~15\)) # (!\i_ControlAparcamiento|Add0~0_combout\ & 
-- ((\i_ControlAparcamiento|contador[2]~15\) # (GND)))))
-- \i_ControlAparcamiento|contador[3]~17\ = CARRY((\i_ControlAparcamiento|contador\(3) & (!\i_ControlAparcamiento|Add0~0_combout\ & !\i_ControlAparcamiento|contador[2]~15\)) # (!\i_ControlAparcamiento|contador\(3) & ((!\i_ControlAparcamiento|contador[2]~15\) 
-- # (!\i_ControlAparcamiento|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(3),
	datab => \i_ControlAparcamiento|Add0~0_combout\,
	datad => VCC,
	cin => \i_ControlAparcamiento|contador[2]~15\,
	combout => \i_ControlAparcamiento|contador[3]~16_combout\,
	cout => \i_ControlAparcamiento|contador[3]~17\);

-- Location: LCCOMB_X35_Y25_N24
\i_ControlAparcamiento|contador[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[4]~18_combout\ = ((\i_ControlAparcamiento|contador\(4) $ (\i_ControlAparcamiento|Add0~0_combout\ $ (!\i_ControlAparcamiento|contador[3]~17\)))) # (GND)
-- \i_ControlAparcamiento|contador[4]~19\ = CARRY((\i_ControlAparcamiento|contador\(4) & ((\i_ControlAparcamiento|Add0~0_combout\) # (!\i_ControlAparcamiento|contador[3]~17\))) # (!\i_ControlAparcamiento|contador\(4) & (\i_ControlAparcamiento|Add0~0_combout\ 
-- & !\i_ControlAparcamiento|contador[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(4),
	datab => \i_ControlAparcamiento|Add0~0_combout\,
	datad => VCC,
	cin => \i_ControlAparcamiento|contador[3]~17\,
	combout => \i_ControlAparcamiento|contador[4]~18_combout\,
	cout => \i_ControlAparcamiento|contador[4]~19\);

-- Location: LCCOMB_X35_Y25_N26
\i_ControlAparcamiento|contador[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[5]~20_combout\ = (\i_ControlAparcamiento|contador\(5) & ((\i_ControlAparcamiento|Add0~0_combout\ & (\i_ControlAparcamiento|contador[4]~19\ & VCC)) # (!\i_ControlAparcamiento|Add0~0_combout\ & 
-- (!\i_ControlAparcamiento|contador[4]~19\)))) # (!\i_ControlAparcamiento|contador\(5) & ((\i_ControlAparcamiento|Add0~0_combout\ & (!\i_ControlAparcamiento|contador[4]~19\)) # (!\i_ControlAparcamiento|Add0~0_combout\ & 
-- ((\i_ControlAparcamiento|contador[4]~19\) # (GND)))))
-- \i_ControlAparcamiento|contador[5]~21\ = CARRY((\i_ControlAparcamiento|contador\(5) & (!\i_ControlAparcamiento|Add0~0_combout\ & !\i_ControlAparcamiento|contador[4]~19\)) # (!\i_ControlAparcamiento|contador\(5) & ((!\i_ControlAparcamiento|contador[4]~19\) 
-- # (!\i_ControlAparcamiento|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(5),
	datab => \i_ControlAparcamiento|Add0~0_combout\,
	datad => VCC,
	cin => \i_ControlAparcamiento|contador[4]~19\,
	combout => \i_ControlAparcamiento|contador[5]~20_combout\,
	cout => \i_ControlAparcamiento|contador[5]~21\);

-- Location: LCCOMB_X35_Y25_N28
\i_ControlAparcamiento|contador[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[6]~22_combout\ = ((\i_ControlAparcamiento|contador\(6) $ (\i_ControlAparcamiento|Add0~0_combout\ $ (!\i_ControlAparcamiento|contador[5]~21\)))) # (GND)
-- \i_ControlAparcamiento|contador[6]~23\ = CARRY((\i_ControlAparcamiento|contador\(6) & ((\i_ControlAparcamiento|Add0~0_combout\) # (!\i_ControlAparcamiento|contador[5]~21\))) # (!\i_ControlAparcamiento|contador\(6) & (\i_ControlAparcamiento|Add0~0_combout\ 
-- & !\i_ControlAparcamiento|contador[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(6),
	datab => \i_ControlAparcamiento|Add0~0_combout\,
	datad => VCC,
	cin => \i_ControlAparcamiento|contador[5]~21\,
	combout => \i_ControlAparcamiento|contador[6]~22_combout\,
	cout => \i_ControlAparcamiento|contador[6]~23\);

-- Location: LCFF_X35_Y25_N29
\i_ControlAparcamiento|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|contador[6]~22_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_ControlAparcamiento|contador[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|contador\(6));

-- Location: LCFF_X35_Y25_N27
\i_ControlAparcamiento|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|contador[5]~20_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_ControlAparcamiento|contador[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|contador\(5));

-- Location: LCCOMB_X35_Y25_N30
\i_ControlAparcamiento|contador[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[7]~24_combout\ = \i_ControlAparcamiento|contador\(7) $ (\i_ControlAparcamiento|contador[6]~23\ $ (\i_ControlAparcamiento|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_ControlAparcamiento|contador\(7),
	datad => \i_ControlAparcamiento|Add0~0_combout\,
	cin => \i_ControlAparcamiento|contador[6]~23\,
	combout => \i_ControlAparcamiento|contador[7]~24_combout\);

-- Location: LCFF_X35_Y25_N31
\i_ControlAparcamiento|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|contador[7]~24_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_ControlAparcamiento|contador[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|contador\(7));

-- Location: LCCOMB_X35_Y25_N6
\i_ControlAparcamiento|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|process_0~1_combout\ = (!\i_ControlAparcamiento|contador\(4) & (!\i_ControlAparcamiento|contador\(6) & (!\i_ControlAparcamiento|contador\(5) & !\i_ControlAparcamiento|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(4),
	datab => \i_ControlAparcamiento|contador\(6),
	datac => \i_ControlAparcamiento|contador\(5),
	datad => \i_ControlAparcamiento|contador\(7),
	combout => \i_ControlAparcamiento|process_0~1_combout\);

-- Location: LCCOMB_X35_Y25_N4
\i_ControlAparcamiento|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|process_0~2_combout\ = (\i_ControlAparcamiento|process_0~0_combout\ & \i_ControlAparcamiento|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ControlAparcamiento|process_0~0_combout\,
	datad => \i_ControlAparcamiento|process_0~1_combout\,
	combout => \i_ControlAparcamiento|process_0~2_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coches[7]~I\ : cycloneii_io
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
	padio => ww_max_coches(7),
	combout => \max_coches~combout\(7));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coches[5]~I\ : cycloneii_io
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
	padio => ww_max_coches(5),
	combout => \max_coches~combout\(5));

-- Location: LCFF_X35_Y25_N25
\i_ControlAparcamiento|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|contador[4]~18_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_ControlAparcamiento|contador[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|contador\(4));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coches[3]~I\ : cycloneii_io
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
	padio => ww_max_coches(3),
	combout => \max_coches~combout\(3));

-- Location: LCFF_X35_Y25_N21
\i_ControlAparcamiento|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|contador[2]~14_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_ControlAparcamiento|contador[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|contador\(2));

-- Location: LCCOMB_X34_Y25_N4
\i_ControlAparcamiento|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|LessThan0~1_cout\ = CARRY((!\i_ControlAparcamiento|contador\(0) & \max_coches~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(0),
	datab => \max_coches~combout\(0),
	datad => VCC,
	cout => \i_ControlAparcamiento|LessThan0~1_cout\);

-- Location: LCCOMB_X34_Y25_N6
\i_ControlAparcamiento|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|LessThan0~3_cout\ = CARRY((\max_coches~combout\(1) & (\i_ControlAparcamiento|contador\(1) & !\i_ControlAparcamiento|LessThan0~1_cout\)) # (!\max_coches~combout\(1) & ((\i_ControlAparcamiento|contador\(1)) # 
-- (!\i_ControlAparcamiento|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coches~combout\(1),
	datab => \i_ControlAparcamiento|contador\(1),
	datad => VCC,
	cin => \i_ControlAparcamiento|LessThan0~1_cout\,
	cout => \i_ControlAparcamiento|LessThan0~3_cout\);

-- Location: LCCOMB_X34_Y25_N8
\i_ControlAparcamiento|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|LessThan0~5_cout\ = CARRY((\max_coches~combout\(2) & ((!\i_ControlAparcamiento|LessThan0~3_cout\) # (!\i_ControlAparcamiento|contador\(2)))) # (!\max_coches~combout\(2) & (!\i_ControlAparcamiento|contador\(2) & 
-- !\i_ControlAparcamiento|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coches~combout\(2),
	datab => \i_ControlAparcamiento|contador\(2),
	datad => VCC,
	cin => \i_ControlAparcamiento|LessThan0~3_cout\,
	cout => \i_ControlAparcamiento|LessThan0~5_cout\);

-- Location: LCCOMB_X34_Y25_N10
\i_ControlAparcamiento|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|LessThan0~7_cout\ = CARRY((\i_ControlAparcamiento|contador\(3) & ((!\i_ControlAparcamiento|LessThan0~5_cout\) # (!\max_coches~combout\(3)))) # (!\i_ControlAparcamiento|contador\(3) & (!\max_coches~combout\(3) & 
-- !\i_ControlAparcamiento|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(3),
	datab => \max_coches~combout\(3),
	datad => VCC,
	cin => \i_ControlAparcamiento|LessThan0~5_cout\,
	cout => \i_ControlAparcamiento|LessThan0~7_cout\);

-- Location: LCCOMB_X34_Y25_N12
\i_ControlAparcamiento|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|LessThan0~9_cout\ = CARRY((\max_coches~combout\(4) & ((!\i_ControlAparcamiento|LessThan0~7_cout\) # (!\i_ControlAparcamiento|contador\(4)))) # (!\max_coches~combout\(4) & (!\i_ControlAparcamiento|contador\(4) & 
-- !\i_ControlAparcamiento|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coches~combout\(4),
	datab => \i_ControlAparcamiento|contador\(4),
	datad => VCC,
	cin => \i_ControlAparcamiento|LessThan0~7_cout\,
	cout => \i_ControlAparcamiento|LessThan0~9_cout\);

-- Location: LCCOMB_X34_Y25_N14
\i_ControlAparcamiento|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|LessThan0~11_cout\ = CARRY((\i_ControlAparcamiento|contador\(5) & ((!\i_ControlAparcamiento|LessThan0~9_cout\) # (!\max_coches~combout\(5)))) # (!\i_ControlAparcamiento|contador\(5) & (!\max_coches~combout\(5) & 
-- !\i_ControlAparcamiento|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(5),
	datab => \max_coches~combout\(5),
	datad => VCC,
	cin => \i_ControlAparcamiento|LessThan0~9_cout\,
	cout => \i_ControlAparcamiento|LessThan0~11_cout\);

-- Location: LCCOMB_X34_Y25_N16
\i_ControlAparcamiento|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|LessThan0~13_cout\ = CARRY((\max_coches~combout\(6) & ((!\i_ControlAparcamiento|LessThan0~11_cout\) # (!\i_ControlAparcamiento|contador\(6)))) # (!\max_coches~combout\(6) & (!\i_ControlAparcamiento|contador\(6) & 
-- !\i_ControlAparcamiento|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \max_coches~combout\(6),
	datab => \i_ControlAparcamiento|contador\(6),
	datad => VCC,
	cin => \i_ControlAparcamiento|LessThan0~11_cout\,
	cout => \i_ControlAparcamiento|LessThan0~13_cout\);

-- Location: LCCOMB_X34_Y25_N18
\i_ControlAparcamiento|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|LessThan0~14_combout\ = (\max_coches~combout\(7) & ((\i_ControlAparcamiento|LessThan0~13_cout\) # (!\i_ControlAparcamiento|contador\(7)))) # (!\max_coches~combout\(7) & (\i_ControlAparcamiento|LessThan0~13_cout\ & 
-- !\i_ControlAparcamiento|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \max_coches~combout\(7),
	datad => \i_ControlAparcamiento|contador\(7),
	cin => \i_ControlAparcamiento|LessThan0~13_cout\,
	combout => \i_ControlAparcamiento|LessThan0~14_combout\);

-- Location: LCCOMB_X35_Y25_N2
\i_ControlAparcamiento|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|Add0~0_combout\ = (\i_ControlAparcamiento|process_0~2_combout\ & (((!\i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso~regout\)))) # (!\i_ControlAparcamiento|process_0~2_combout\ & 
-- ((\i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Pulso~regout\) # ((!\i_ControlAparcamiento|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Pulso~regout\,
	datab => \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso~regout\,
	datac => \i_ControlAparcamiento|process_0~2_combout\,
	datad => \i_ControlAparcamiento|LessThan0~14_combout\,
	combout => \i_ControlAparcamiento|Add0~0_combout\);

-- Location: LCFF_X35_Y25_N19
\i_ControlAparcamiento|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|contador[1]~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_ControlAparcamiento|contador[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|contador\(1));

-- Location: LCFF_X35_Y25_N23
\i_ControlAparcamiento|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|contador[3]~16_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_ControlAparcamiento|contador[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|contador\(3));

-- Location: LCCOMB_X35_Y25_N8
\i_ControlAparcamiento|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|process_0~0_combout\ = (!\i_ControlAparcamiento|contador\(0) & (!\i_ControlAparcamiento|contador\(1) & (!\i_ControlAparcamiento|contador\(2) & !\i_ControlAparcamiento|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(0),
	datab => \i_ControlAparcamiento|contador\(1),
	datac => \i_ControlAparcamiento|contador\(2),
	datad => \i_ControlAparcamiento|contador\(3),
	combout => \i_ControlAparcamiento|process_0~0_combout\);

-- Location: LCCOMB_X35_Y25_N0
\i_ControlAparcamiento|contador[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[7]~12_combout\ = (\i_ControlAparcamiento|process_0~1_combout\ & ((\i_ControlAparcamiento|process_0~0_combout\ & (\i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso~regout\)) # 
-- (!\i_ControlAparcamiento|process_0~0_combout\ & ((\i_ControlAparcamiento|LessThan0~14_combout\))))) # (!\i_ControlAparcamiento|process_0~1_combout\ & (((\i_ControlAparcamiento|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|process_0~1_combout\,
	datab => \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso~regout\,
	datac => \i_ControlAparcamiento|process_0~0_combout\,
	datad => \i_ControlAparcamiento|LessThan0~14_combout\,
	combout => \i_ControlAparcamiento|contador[7]~12_combout\);

-- Location: LCCOMB_X35_Y25_N10
\i_ControlAparcamiento|contador[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|contador[7]~13_combout\ = (\i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Pulso~regout\ & (((\i_ControlAparcamiento|Equal1~4_combout\) # (\i_ControlAparcamiento|contador[7]~12_combout\)))) # 
-- (!\i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Pulso~regout\ & (\i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso~regout\ & ((\i_ControlAparcamiento|contador[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|i2_DetectorFlanco|estado_act.Pulso~regout\,
	datab => \i_ControlAparcamiento|i1_DetectorFlanco|estado_act.Pulso~regout\,
	datac => \i_ControlAparcamiento|Equal1~4_combout\,
	datad => \i_ControlAparcamiento|contador[7]~12_combout\,
	combout => \i_ControlAparcamiento|contador[7]~13_combout\);

-- Location: LCFF_X35_Y25_N17
\i_ControlAparcamiento|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ControlAparcamiento|contador[0]~8_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i_ControlAparcamiento|contador[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_ControlAparcamiento|contador\(0));

-- Location: LCCOMB_X34_Y25_N20
\i_ControlAparcamiento|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|Equal1~0_combout\ = (\max_coches~combout\(1) & (\i_ControlAparcamiento|contador\(1) & (\max_coches~combout\(0) $ (!\i_ControlAparcamiento|contador\(0))))) # (!\max_coches~combout\(1) & (!\i_ControlAparcamiento|contador\(1) & 
-- (\max_coches~combout\(0) $ (!\i_ControlAparcamiento|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_coches~combout\(1),
	datab => \max_coches~combout\(0),
	datac => \i_ControlAparcamiento|contador\(0),
	datad => \i_ControlAparcamiento|contador\(1),
	combout => \i_ControlAparcamiento|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y25_N22
\i_ControlAparcamiento|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|Equal1~3_combout\ = (\max_coches~combout\(6) & (\i_ControlAparcamiento|contador\(6) & (\i_ControlAparcamiento|contador\(7) $ (!\max_coches~combout\(7))))) # (!\max_coches~combout\(6) & (!\i_ControlAparcamiento|contador\(6) & 
-- (\i_ControlAparcamiento|contador\(7) $ (!\max_coches~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_coches~combout\(6),
	datab => \i_ControlAparcamiento|contador\(7),
	datac => \max_coches~combout\(7),
	datad => \i_ControlAparcamiento|contador\(6),
	combout => \i_ControlAparcamiento|Equal1~3_combout\);

-- Location: LCCOMB_X34_Y25_N24
\i_ControlAparcamiento|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|Equal1~2_combout\ = (\max_coches~combout\(4) & (\i_ControlAparcamiento|contador\(4) & (\max_coches~combout\(5) $ (!\i_ControlAparcamiento|contador\(5))))) # (!\max_coches~combout\(4) & (!\i_ControlAparcamiento|contador\(4) & 
-- (\max_coches~combout\(5) $ (!\i_ControlAparcamiento|contador\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_coches~combout\(4),
	datab => \max_coches~combout\(5),
	datac => \i_ControlAparcamiento|contador\(5),
	datad => \i_ControlAparcamiento|contador\(4),
	combout => \i_ControlAparcamiento|Equal1~2_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_coches[2]~I\ : cycloneii_io
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
	padio => ww_max_coches(2),
	combout => \max_coches~combout\(2));

-- Location: LCCOMB_X34_Y25_N26
\i_ControlAparcamiento|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|Equal1~1_combout\ = (\max_coches~combout\(3) & (\i_ControlAparcamiento|contador\(3) & (\i_ControlAparcamiento|contador\(2) $ (!\max_coches~combout\(2))))) # (!\max_coches~combout\(3) & (!\i_ControlAparcamiento|contador\(3) & 
-- (\i_ControlAparcamiento|contador\(2) $ (!\max_coches~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_coches~combout\(3),
	datab => \i_ControlAparcamiento|contador\(2),
	datac => \i_ControlAparcamiento|contador\(3),
	datad => \max_coches~combout\(2),
	combout => \i_ControlAparcamiento|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y25_N0
\i_ControlAparcamiento|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ControlAparcamiento|Equal1~4_combout\ = (\i_ControlAparcamiento|Equal1~0_combout\ & (\i_ControlAparcamiento|Equal1~3_combout\ & (\i_ControlAparcamiento|Equal1~2_combout\ & \i_ControlAparcamiento|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|Equal1~0_combout\,
	datab => \i_ControlAparcamiento|Equal1~3_combout\,
	datac => \i_ControlAparcamiento|Equal1~2_combout\,
	datad => \i_ControlAparcamiento|Equal1~1_combout\,
	combout => \i_ControlAparcamiento|Equal1~4_combout\);

-- Location: LCCOMB_X38_Y25_N24
\i1_BinA7Seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_BinA7Seg|Mux6~0_combout\ = (\i_ControlAparcamiento|contador\(4) & ((\i_ControlAparcamiento|contador\(7)) # (\i_ControlAparcamiento|contador\(5) $ (\i_ControlAparcamiento|contador\(6))))) # (!\i_ControlAparcamiento|contador\(4) & 
-- ((\i_ControlAparcamiento|contador\(5)) # (\i_ControlAparcamiento|contador\(7) $ (\i_ControlAparcamiento|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(7),
	datab => \i_ControlAparcamiento|contador\(5),
	datac => \i_ControlAparcamiento|contador\(4),
	datad => \i_ControlAparcamiento|contador\(6),
	combout => \i1_BinA7Seg|Mux6~0_combout\);

-- Location: LCCOMB_X38_Y25_N10
\i1_BinA7Seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_BinA7Seg|Mux5~0_combout\ = (\i_ControlAparcamiento|contador\(5) & (!\i_ControlAparcamiento|contador\(7) & ((\i_ControlAparcamiento|contador\(4)) # (!\i_ControlAparcamiento|contador\(6))))) # (!\i_ControlAparcamiento|contador\(5) & 
-- (\i_ControlAparcamiento|contador\(4) & (\i_ControlAparcamiento|contador\(7) $ (!\i_ControlAparcamiento|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(7),
	datab => \i_ControlAparcamiento|contador\(5),
	datac => \i_ControlAparcamiento|contador\(4),
	datad => \i_ControlAparcamiento|contador\(6),
	combout => \i1_BinA7Seg|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y25_N20
\i1_BinA7Seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_BinA7Seg|Mux4~0_combout\ = (\i_ControlAparcamiento|contador\(5) & (!\i_ControlAparcamiento|contador\(7) & (\i_ControlAparcamiento|contador\(4)))) # (!\i_ControlAparcamiento|contador\(5) & ((\i_ControlAparcamiento|contador\(6) & 
-- (!\i_ControlAparcamiento|contador\(7))) # (!\i_ControlAparcamiento|contador\(6) & ((\i_ControlAparcamiento|contador\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(7),
	datab => \i_ControlAparcamiento|contador\(5),
	datac => \i_ControlAparcamiento|contador\(4),
	datad => \i_ControlAparcamiento|contador\(6),
	combout => \i1_BinA7Seg|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y25_N18
\i1_BinA7Seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_BinA7Seg|Mux3~0_combout\ = (\i_ControlAparcamiento|contador\(4) & ((\i_ControlAparcamiento|contador\(5) $ (!\i_ControlAparcamiento|contador\(6))))) # (!\i_ControlAparcamiento|contador\(4) & ((\i_ControlAparcamiento|contador\(7) & 
-- (\i_ControlAparcamiento|contador\(5) & !\i_ControlAparcamiento|contador\(6))) # (!\i_ControlAparcamiento|contador\(7) & (!\i_ControlAparcamiento|contador\(5) & \i_ControlAparcamiento|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(7),
	datab => \i_ControlAparcamiento|contador\(5),
	datac => \i_ControlAparcamiento|contador\(4),
	datad => \i_ControlAparcamiento|contador\(6),
	combout => \i1_BinA7Seg|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y25_N12
\i1_BinA7Seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_BinA7Seg|Mux2~0_combout\ = (\i_ControlAparcamiento|contador\(7) & (\i_ControlAparcamiento|contador\(6) & ((\i_ControlAparcamiento|contador\(5)) # (!\i_ControlAparcamiento|contador\(4))))) # (!\i_ControlAparcamiento|contador\(7) & 
-- (\i_ControlAparcamiento|contador\(5) & (!\i_ControlAparcamiento|contador\(4) & !\i_ControlAparcamiento|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(7),
	datab => \i_ControlAparcamiento|contador\(5),
	datac => \i_ControlAparcamiento|contador\(4),
	datad => \i_ControlAparcamiento|contador\(6),
	combout => \i1_BinA7Seg|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y25_N6
\i1_BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_BinA7Seg|Mux1~0_combout\ = (\i_ControlAparcamiento|contador\(7) & ((\i_ControlAparcamiento|contador\(4) & (\i_ControlAparcamiento|contador\(5))) # (!\i_ControlAparcamiento|contador\(4) & ((\i_ControlAparcamiento|contador\(6)))))) # 
-- (!\i_ControlAparcamiento|contador\(7) & (\i_ControlAparcamiento|contador\(6) & (\i_ControlAparcamiento|contador\(5) $ (\i_ControlAparcamiento|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(7),
	datab => \i_ControlAparcamiento|contador\(5),
	datac => \i_ControlAparcamiento|contador\(4),
	datad => \i_ControlAparcamiento|contador\(6),
	combout => \i1_BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y25_N4
\i1_BinA7Seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1_BinA7Seg|Mux0~0_combout\ = (\i_ControlAparcamiento|contador\(7) & (\i_ControlAparcamiento|contador\(4) & (\i_ControlAparcamiento|contador\(5) $ (\i_ControlAparcamiento|contador\(6))))) # (!\i_ControlAparcamiento|contador\(7) & 
-- (!\i_ControlAparcamiento|contador\(5) & (\i_ControlAparcamiento|contador\(4) $ (\i_ControlAparcamiento|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(7),
	datab => \i_ControlAparcamiento|contador\(5),
	datac => \i_ControlAparcamiento|contador\(4),
	datad => \i_ControlAparcamiento|contador\(6),
	combout => \i1_BinA7Seg|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y25_N12
\i2_BinA7Seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7Seg|Mux6~0_combout\ = (\i_ControlAparcamiento|contador\(0) & ((\i_ControlAparcamiento|contador\(3)) # (\i_ControlAparcamiento|contador\(2) $ (\i_ControlAparcamiento|contador\(1))))) # (!\i_ControlAparcamiento|contador\(0) & 
-- ((\i_ControlAparcamiento|contador\(1)) # (\i_ControlAparcamiento|contador\(2) $ (\i_ControlAparcamiento|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(2),
	datab => \i_ControlAparcamiento|contador\(3),
	datac => \i_ControlAparcamiento|contador\(1),
	datad => \i_ControlAparcamiento|contador\(0),
	combout => \i2_BinA7Seg|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y25_N10
\i2_BinA7Seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7Seg|Mux5~0_combout\ = (\i_ControlAparcamiento|contador\(2) & (\i_ControlAparcamiento|contador\(0) & (\i_ControlAparcamiento|contador\(3) $ (\i_ControlAparcamiento|contador\(1))))) # (!\i_ControlAparcamiento|contador\(2) & 
-- (!\i_ControlAparcamiento|contador\(3) & ((\i_ControlAparcamiento|contador\(1)) # (\i_ControlAparcamiento|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(2),
	datab => \i_ControlAparcamiento|contador\(3),
	datac => \i_ControlAparcamiento|contador\(1),
	datad => \i_ControlAparcamiento|contador\(0),
	combout => \i2_BinA7Seg|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y25_N4
\i2_BinA7Seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7Seg|Mux4~0_combout\ = (\i_ControlAparcamiento|contador\(1) & (((!\i_ControlAparcamiento|contador\(3) & \i_ControlAparcamiento|contador\(0))))) # (!\i_ControlAparcamiento|contador\(1) & ((\i_ControlAparcamiento|contador\(2) & 
-- (!\i_ControlAparcamiento|contador\(3))) # (!\i_ControlAparcamiento|contador\(2) & ((\i_ControlAparcamiento|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(2),
	datab => \i_ControlAparcamiento|contador\(3),
	datac => \i_ControlAparcamiento|contador\(1),
	datad => \i_ControlAparcamiento|contador\(0),
	combout => \i2_BinA7Seg|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y25_N2
\i2_BinA7Seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7Seg|Mux3~0_combout\ = (\i_ControlAparcamiento|contador\(0) & ((\i_ControlAparcamiento|contador\(1) $ (!\i_ControlAparcamiento|contador\(2))))) # (!\i_ControlAparcamiento|contador\(0) & ((\i_ControlAparcamiento|contador\(3) & 
-- (\i_ControlAparcamiento|contador\(1) & !\i_ControlAparcamiento|contador\(2))) # (!\i_ControlAparcamiento|contador\(3) & (!\i_ControlAparcamiento|contador\(1) & \i_ControlAparcamiento|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(3),
	datab => \i_ControlAparcamiento|contador\(1),
	datac => \i_ControlAparcamiento|contador\(2),
	datad => \i_ControlAparcamiento|contador\(0),
	combout => \i2_BinA7Seg|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y25_N18
\i2_BinA7Seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7Seg|Mux2~0_combout\ = (\i_ControlAparcamiento|contador\(2) & (\i_ControlAparcamiento|contador\(3) & ((\i_ControlAparcamiento|contador\(1)) # (!\i_ControlAparcamiento|contador\(0))))) # (!\i_ControlAparcamiento|contador\(2) & 
-- (!\i_ControlAparcamiento|contador\(3) & (\i_ControlAparcamiento|contador\(1) & !\i_ControlAparcamiento|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(2),
	datab => \i_ControlAparcamiento|contador\(3),
	datac => \i_ControlAparcamiento|contador\(1),
	datad => \i_ControlAparcamiento|contador\(0),
	combout => \i2_BinA7Seg|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y25_N24
\i2_BinA7Seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7Seg|Mux1~0_combout\ = (\i_ControlAparcamiento|contador\(3) & ((\i_ControlAparcamiento|contador\(0) & ((\i_ControlAparcamiento|contador\(1)))) # (!\i_ControlAparcamiento|contador\(0) & (\i_ControlAparcamiento|contador\(2))))) # 
-- (!\i_ControlAparcamiento|contador\(3) & (\i_ControlAparcamiento|contador\(2) & (\i_ControlAparcamiento|contador\(1) $ (\i_ControlAparcamiento|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(2),
	datab => \i_ControlAparcamiento|contador\(3),
	datac => \i_ControlAparcamiento|contador\(1),
	datad => \i_ControlAparcamiento|contador\(0),
	combout => \i2_BinA7Seg|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y25_N26
\i2_BinA7Seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2_BinA7Seg|Mux0~0_combout\ = (\i_ControlAparcamiento|contador\(2) & (!\i_ControlAparcamiento|contador\(1) & (\i_ControlAparcamiento|contador\(3) $ (!\i_ControlAparcamiento|contador\(0))))) # (!\i_ControlAparcamiento|contador\(2) & 
-- (\i_ControlAparcamiento|contador\(0) & (\i_ControlAparcamiento|contador\(3) $ (!\i_ControlAparcamiento|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ControlAparcamiento|contador\(2),
	datab => \i_ControlAparcamiento|contador\(3),
	datac => \i_ControlAparcamiento|contador\(1),
	datad => \i_ControlAparcamiento|contador\(0),
	combout => \i2_BinA7Seg|Mux0~0_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\libre~I\ : cycloneii_io
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
	datain => \i_ControlAparcamiento|ALT_INV_Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_libre);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ocupado~I\ : cycloneii_io
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
	datain => \i_ControlAparcamiento|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ocupado);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_BinA7Seg|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_BinA7Seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(1));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_BinA7Seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_BinA7Seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(3));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_BinA7Seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(4));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(5));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i1_BinA7Seg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida1(6));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2_BinA7Seg|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2_BinA7Seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2_BinA7Seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(2));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2_BinA7Seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(3));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2_BinA7Seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(4));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2_BinA7Seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(5));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i2_BinA7Seg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida2(6));
END structure;


