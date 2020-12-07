library ieee;
use ieee.std_logic_1164. all;

entity Mux_B is
	port(
	b 		: in std_logic_vector(4 downto 0);
	sel_b	: in std_logic;
	s		: out std_logic_vector(4 downto 0)
	);
end Mux_B;	

architecture behavioral of Mux_B is
begin
with sel_b select
	s <=
	"00001" when '1',
	b when '0',
	"00000" when others;

end behavioral;