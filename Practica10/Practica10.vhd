library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Practica10 is
    port(
        p1          : in std_logic;
        p2          : in std_logic;
        reset_n     : in std_logic;
        clk         : in std_logic;
        max_coches  : in std_logic_vector(7 downto 0);
        libre       : out std_logic;
        ocupado     : out std_logic;
        salida1     : out std_logic_vector(6 downto 0);
        salida2     : out std_logic_vector(6 downto 0)
    );
end Practica10;

architecture structural of Practica10 is
    signal num_coches: std_logic_vector(7 downto 0);
    signal entra_coche, sale_coche: std_logic;

    component DetectorFlancoBajada
    port(
		e			: in std_logic;
		reset_n	: in std_logic;
		clk		: in std_logic;
		s			: out std_logic
    );
    end component;

    component ControlAparcamiento
    port(
        max_coches :    in std_logic_vector(7 downto 0);
        clk :           in std_logic;
        reset_n :       in std_logic;
        entra_coche :   in std_logic;
        sale_coche:     in std_logic;
        num_coches:     out std_logic_vector(7 downto 0);
        libre:          out std_logic;
        ocupado :       out std_logic
    );
    end component;

    component BinA7Seg
    port( 
		E			:in std_logic_vector(3 downto 0);
		salida	:out std_logic_vector(6 downto 0)
    );
    end component;

begin

    i1_DetectorFlanco: DetectorFlancoBajada
    port map(
        e		=> p1,
		reset_n	=> reset_n,
		clk		=> clk,
		s		=> entra_coche
    );

    i2_DetectorFlanco: DetectorFlancoBajada
    port map(
        e		=> p2,
		reset_n	=> reset_n,
		clk		=> clk,
		s		=> sale_coche
    );

    i_ControlAparcamiento: ControlAparcamiento
    port map(
        max_coches  => max_coches,
        clk         => clk,
        reset_n     => reset_n,
        entra_coche => entra_coche,
        sale_coche  => sale_coche,
        num_coches  => num_coches,
        libre       => libre,
        ocupado     => ocupado
    );

    i1_BinA7Seg: BinA7Seg
    port map(
        E		=> num_coches(7 downto 4),
		salida	=> salida1
    );

    i2_BinA7Seg: BinA7Seg
    port map(
        E		=> num_coches(3 downto 0),
		salida	=> salida2
    );
end structural;