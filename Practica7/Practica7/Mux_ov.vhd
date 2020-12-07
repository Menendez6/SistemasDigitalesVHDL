library ieee;
use ieee.std_logic_1164. all;

entity Mux_ov is
	port(
	ov_m ,ov_sr 	: in std_logic;
	sel_ov			: in std_logic;
	ov					: out std_logic
	);
end Mux_ov;	

architecture behavioral of Mux_ov is
begin
with sel_ov select
	ov <=
	ov_m when '1',
	ov_sr when '0',
	'0' when others;
end behavioral;