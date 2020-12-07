library ieee;
use ieee.std_logic_1164. all;

entity Unidad_Logica is
	port(
		a,b		: in std_logic_vector(4 downto 0);
		sel_log 	: in std_logic_vector(1 downto 0);
		s			: out std_logic_vector(4 downto 0)
	);
end Unidad_logica;

architecture behavioral of Unidad_Logica is
begin
	Gen_log: for i in 0 to 4 generate
		with sel_log select
			s(i) <=
			a(i) and b(i) when "00",
			a(i) or b(i) when "01",
			a(i) xor b(i) when "10",
			not a(i) when "11",
			'0' when others;
	end generate Gen_log;
		
end behavioral;