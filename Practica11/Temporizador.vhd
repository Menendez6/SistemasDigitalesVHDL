library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Temporizador is
    port(
        decenas     : in std_logic_vector(2 downto 0);
        unidades    : in std_logic_vector(3 downto 0);
        carga_seg   : in std_logic;
        carga_min   : in std_logic;
        en_cnt      : in std_logic;
        clk         : in std_logic;
        reset_n     : in std_logic;
        d_d         : out std_logic_vector(6 downto 0);
        d_c         : out std_logic_vector(6 downto 0);
        d_b         : out std_logic_vector(6 downto 0);
        d_a         : out std_logic_vector(6 downto 0);
        fin_cuenta  : out std_logic
    );
end Temporizador;

architecture structural of Temporizador is
    signal cnt_seg, cnt_min : std_logic_vector (6 downto 0);
    signal enable : std_logic_vector(3 downto 0);
    signal d_min, d_seg     : std_logic_vector(3 downto 0);

    component Contadormod50M
    port(
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        co      : out std_logic
    );
    end component;

    component Contadormod10
    port(
        e_p     : in std_logic_vector(3 downto 0);
        carga   : in std_logic; --donde meto la carga??
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        s       : out std_logic_vector(3 downto 0);
        co      : out std_logic
    );
    end component;

    component Contadormod6
    port(
        e_p     : in std_logic_vector(2 downto 0);
        carga   : in std_logic; --donde meto la carga?? -- y si e_p es mayor que 5??
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        s       : out std_logic_vector(2 downto 0);
        co      : out std_logic
    );
    end component;

    component BinA7Seg
    port( 
		E			:in std_logic_vector(3 downto 0);
		salida	:out std_logic_vector(6 downto 0)
    );
    end component;

begin

    i1_50M: Contadormod50M
    port map(
        reset_n => reset_n,
        clk     => clk,
        en      => en_cnt,
        co      => enable(3)
    );

    Unidades_segundos : Contadormod10
    port map(
        e_p     => unidades,
        carga   => carga_seg,
        reset_n => reset_n,
        clk     => clk,
        en      => enable(3),
        s       => cnt_seg(3 downto 0),
        co      => enable(2)
    );

    Decenas_segundos : Contadormod6
    port map(
        e_p     => decenas,
        carga   => carga_seg,
        reset_n => reset_n,
        clk     => clk,
        en      => enable(2),
        s       => cnt_seg(6 downto 4),
        co      => enable(1)
    );

    Unidades_minutos : Contadormod10
    port map(
        e_p     => unidades,
        carga   => carga_min,
        reset_n => reset_n,
        clk     => clk,
        en      => enable(1),
        s       => cnt_min(3 downto 0),
        co      => enable(0)
    );

    Decenas_minutos : Contadormod6
    port map(
        e_p     => decenas,
        carga   => carga_min,
        reset_n => reset_n,
        clk     => clk,
        en      => enable(0),
        s       => cnt_min(6 downto 4),
        co      => fin_cuenta
    );

    d_min<='0' & cnt_min(6 downto 4);
    d_seg<='0' & cnt_seg(6 downto 4);

    Display_decenas_minutos: BinA7Seg
    port map( 
		E		=> d_min,
		salida	=> d_d
    );

    Display_unidades_minutos: BinA7Seg
    port map( 
		E		=> cnt_min(3 downto 0),
		salida	=> d_c
    );

    Display_decenas_segundos: BinA7Seg
    port map( 
		E		=> d_seg,
		salida	=> d_b
    );

    Display_unidades_segundos: BinA7Seg
    port map( 
		E		=> cnt_seg(3 downto 0),
		salida	=> d_a
    );
end structural;