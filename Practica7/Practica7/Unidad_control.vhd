library ieee;
use ieee.std_logic_1164. all;

entity Unidad_Control is
	port(
	sel 	: in std_logic_vector(2 downto 0);
	sel_s	: out std_logic_vector(1 downto 0);
	sel_ov: out std_logic;
	s_r	: out std_logic;
	sel_b	: out std_logic;
	sel_log: out std_logic_vector(1 downto 0)
	);
end Unidad_Control;

architecture behavioral of Unidad_Control is
	signal salidas : std_logic_vector(6 downto 0);
begin
with sel select
	salidas <=
	"00---00" when "000",
	"00---01" when "001",
	"00---10" when "010",
	"00---11" when "011",
	"10000--" when "100",
	"10010--" when "101",
	"10001--" when "110",
	"011----" when "111",
	"-------" when others;
	
sel_s <= salidas(6 downto 5);
sel_ov <= salidas(4);
s_r <= salidas(3);
sel_b <= salidas(2);
sel_log <= salidas(1 downto 0);

end behavioral;
	