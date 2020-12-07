library ieee;
use ieee.std_logic_1164. all;

entity Sumador_Restador is
	port(
		a,b	: in std_logic_vector(4 downto 0); --Entrada
		s		: out std_logic_vector(4 downto 0); --Salida
		s_r	: in std_logic;
		ov		: out std_logic); --Acarreo de salida
end Sumador_Restador;

architecture structural of Sumador_Restador is
	signal c: std_logic_vector(5 downto 0); --Acarreos intermedios
	signal b_aux : std_logic_vector(4 downto 0); -- Señal para cambiar la b si sr=1
	component Sumador1Bit
	port(
		a_i		: in std_logic; --bit de entrada
		b_i		: in std_logic; --bit de entrada
		c_i		: in std_logic; --acarreo de entrada
		s_i		: out std_logic;--Salida
		c_i_mas_1: out std_logic --Acarreo de salida
		);
	end component;
begin
	c(0) <= s_r; -- Inicialemte el acarreo es el s_r
	ov <= c(5) xor c(4); -- el acarreo final es el xor de los dos últimos acarreos
	
	GenSum : for i in 0 to 4 generate
		b_aux(i) <= b(i) xor s_r;
		
		i_Sumador1Bit : Sumador1Bit
		port map(
			a_i		 => a(i),
			b_i		 => b_aux(i),
			c_i		 => c(i),
			s_i		 => s(i),
			c_i_mas_1 => c(i+1));
	end generate GenSum;
end structural;