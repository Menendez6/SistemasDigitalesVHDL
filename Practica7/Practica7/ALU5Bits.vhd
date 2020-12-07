library ieee;
use ieee.std_logic_1164. all;

entity ALU5Bits is
	port(
		a,b	: in std_logic_vector(4 downto 0);
		sel 	: in std_logic_vector(2 downto 0);
		ov		: out std_logic;
		s		: out std_logic_vector(4 downto 0)
	);
end ALU5Bits;

architecture structural of ALU5Bits is
	signal medias 					: std_logic_vector(6 downto 0); --salidas del selector
	signal s_log,s_mult,s_sr	: std_logic_vector(4 downto 0); --salidas de cada componente
	signal over						: std_logic_vector(1 downto 0); --señal que contiene los dos acarreos
	signal b_out					: std_logic_vector(4 downto 0); --salida del mux_B
	
	component Unidad_control 
		port(
			sel 	: in std_logic_vector(2 downto 0);
			sel_s	: out std_logic_vector(1 downto 0);
			sel_ov: out std_logic;
			s_r	: out std_logic;
			sel_b	: out std_logic;
			sel_log: out std_logic_vector(1 downto 0)
		);
	end component;
	
	component Unidad_Logica 
	port(
		a,b		: in std_logic_vector(4 downto 0);
		sel_log 	: in std_logic_vector(1 downto 0);
		s			: out std_logic_vector(4 downto 0)
	);
	end component;
	
	component Multiplicador5Bits
	port(
		a , b : in std_logic_vector(4 downto 0);
		p		: out std_logic_vector(4 downto 0);
	   ov_p	: out std_logic
	);
	end component;
	
	component Sumador_Restador
	port(
		a,b	: in std_logic_vector(4 downto 0); --Entrada
		s		: out std_logic_vector(4 downto 0); --Salida
		s_r	: in std_logic;
		ov		: out std_logic); 
	end component;
	
	component Mux_B
	port(
		b 		: in std_logic_vector(4 downto 0);
		sel_b	: in std_logic;
		s		: out std_logic_vector(4 downto 0)
	);
	end component;
	
	component Mux_ov
	port(
		ov_m ,ov_sr 	: in std_logic;
		sel_ov			: in std_logic;
		ov					: out std_logic
	);
	end component;
	
	component Mux_salida
	port(
		e1,e2,e3 	: in std_logic_vector(4 downto 0);
		sel_s			: in std_logic_vector(1 downto 0);
		s				: out std_logic_vector(4 downto 0)
	);
	end component;
	
begin

	Control: Unidad_control
	port map(
			sel 		=> sel,
			sel_s		=> medias(6 downto 5),
			sel_ov	=> medias(4),
			s_r		=> medias(3),
			sel_b		=> medias(2),
			sel_log	=> medias(1 downto 0)
		);
		
	Logica: Unidad_Logica
	port map(
		a			=> a,
		b			=> b,
		sel_log 	=> medias(1 downto 0),
		s			=> s_log
	);
	
	Multiplicador : Multiplicador5Bits
	port map(
		a		=> a,
		b		=> b,
		p		=> s_mult,
	   ov_p	=> over(1)
	);
	
	i_Mux_B: Mux_B
	port map(
		b 		=> b,
		sel_b	=> medias(2),
		s		=> b_out
	);
	
	i_sum_rest: Sumador_Restador
	port map(
		a		=> a,
		b		=> b_out,
		s		=> s_sr,
		s_r	=> medias(3),
		ov		=> over(0)
		);
	
	i_salida: Mux_salida
	port map(
		e1			=> s_log,
		e2			=> s_mult,
		e3 		=> s_sr,
		sel_s		=> medias(6 downto 5),
		s			=> s
	);
	
	i_overflow: Mux_ov
	port map(
		ov_m		=> over(1),
		ov_sr 	=> over(0),
		sel_ov	=> medias(4),
		ov			=> ov
	);
	
end structural;
	
	
	
	
	
	
	