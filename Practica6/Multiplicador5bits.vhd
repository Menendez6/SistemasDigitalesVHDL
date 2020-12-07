library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Multiplicador5bits is
	port(
		a , b : in std_logic_vector(4 downto 0);
		s		: out std_logic_vector(9 downto 0)
	);
end Multiplicador5bits

architecture behavioral of Multiplicador5bits is
	signal pp0, pp1, pp2, pp3, pp4 : unsigned(9 downto 0);
begin
	pp0 <= "00000" & (a(4) and b(0)) & (a(3) and b(0)) & (a(2) and b(0)) & (a(1) and b(0)) & (a(0) and b(0));
	pp1 <= "0000" & (a(4) and b(1)) & (a(3) and b(1)) & (a(2) and b(1)) & (a(1) and b(1)) & (a(0) and b(1)) & '0';
	pp2 <= "000" & (a(4) and b(2)) & (a(3) and b(2)) & (a(2) and b(2)) & (a(1) and b(2)) & (a(0) and b(2)) & "00";
	pp3 <= "00" & (a(4) and b(3)) & (a(3) and b(3)) & (a(2) and b(3)) & (a(1) and b(3)) & (a(0) and b(3)) & "000";
	pp4 <= '0' & (a(4) and b(4)) & (a(3) and b(4)) & (a(2) and b(4)) & (a(1) and b(4)) & (a(0) and b(4)) & "0000";
	
	p <= std_logic_vector((pp0+pp1)+(pp2+pp3)+pp4);
end behavioral;