library ieee;
use ieee.std_logic_1164. all;

entity Practica7 is
	port(
		a,b	: in std_logic_vector(4 downto 0);
		sel 	: in std_logic_vector(2 downto 0);
		ov		: out std_logic;
		s1,s2	: out std_logic_vector(6 downto 0)
	);
end Practica7;

architecture structural of Practica7 is 
	signal s : std_logic_vector(4 downto 0);
	signal e1,e2: std_logic_vector(3 downto 0);
	
	component ALU5Bits
	port(
		a,b	: in std_logic_vector(4 downto 0);
		sel 	: in std_logic_vector(2 downto 0);
		ov		: out std_logic;
		s		: out std_logic_vector(4 downto 0)
	);
	end component;
	
	component BinA7Seg
	port( 
		E			:in std_logic_vector(3 downto 0);
		salida	:out std_logic_vector(6 downto 0)
	);
	end component;
	
begin

	i_alu:ALU5Bits
	port map(
		a		=> a,
		b		=> b,
		sel 	=> sel,
		ov		=> ov,
		s		=> s
	);
	
e1 <= "000" & s(4);
e2 <= s(3 downto 0);

	i1_BinA7: BinA7Seg
	port map(
		E 			=>	e1,
		salida	=> s1
	);
	
	i2_BinA7: BinA7Seg
	port map(
		E 			=>	e2,
		salida	=> s2
	);
	
end structural;
	
