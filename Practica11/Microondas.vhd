library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Microondas is
    port(
        decenas     : in std_logic_vector(2 downto 0);
        unidades    : in std_logic_vector(3 downto 0);
        p1          : in std_logic;
        puerta      : in std_logic;
        reset_n     : in std_logic;
        clk         : in std_logic;
        fin         : out std_logic;
        horno_on    : out std_logic;
        abierta     : out std_logic;
        d_d         : out std_logic_vector(6 downto 0);
        d_c         : out std_logic_vector(6 downto 0);
        d_b         : out std_logic_vector(6 downto 0);
        d_a         : out std_logic_vector(6 downto 0)
    );
end Microondas;

architecture structural of Microondas is
    signal en_cnt,carga_seg,carga_min,fin_cuenta : std_logic;

    component Temporizador
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
    end component;

    component UnidadControl
    port(
      p1        : in std_logic;
      puerta    : in std_logic;
      reset_n   : in std_logic;
      fin_cuenta: in std_logic;
      clk       : in std_logic;
      en_cnt    : out std_logic;
      carga_min : out std_logic;
      carga_seg : out std_logic;
      abierta   : out std_logic;
      horno_on  : out std_logic;
      fin       : out std_logic 
    );
    end component;

begin
    i_unidadcontrol: UnidadControl
    port map(
      p1        => p1,
      puerta    => puerta,
      reset_n   => reset_n,
      fin_cuenta=> fin_cuenta,
      clk       => clk,
      en_cnt    => en_cnt,
      carga_min => carga_min,
      carga_seg => carga_seg,
      abierta   => abierta,
      horno_on  => horno_on,
      fin       => fin
    );
    
    i_temporizador: Temporizador
    port map(
        decenas     => decenas,
        unidades    => unidades,
        carga_seg   => carga_seg,
        carga_min   => carga_min,
        en_cnt      => en_cnt,
        clk         => clk,
        reset_n     => reset_n,
        d_d         => d_d,
        d_c         => d_c,
        d_b         => d_b,
        d_a         => d_a,
        fin_cuenta  =>fin_cuenta
    );
end structural;