library ieee;
use ieee.std_logic_1164.all;

entity UnidadControl is
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
end UnidadControl;

architecture behavioral of UnidadControl is

    signal boton: std_logic;

    type t_estados is (Reposo,Minutos, Segundos, Encendido,Parado,Final);
    signal estado_act, estado_sig : t_estados;

    component DetectorFlancoBajada
    port(
		e			: in std_logic;
		reset_n	    : in std_logic;
		clk		    : in std_logic;
		s			: out std_logic
    );
    end component;

begin

  i1_Flanco: DetectorFlancoBajada
  port map(
    e		    => p1,
    reset_n	=> reset_n,
		clk		  => clk,
		s		    => boton
    );

  VarEstado: process(clk,reset_n)
  begin
    if reset_n = '0' then
      estado_act <= Reposo;
    elsif rising_edge(clk) then
      estado_act <= estado_sig;
    end if;
  end process VarEstado;

  TransicionEstados: process (estado_act,estado_sig,boton,puerta,fin_cuenta)
  begin
    estado_sig <= estado_act;
    case estado_act is
      when Reposo =>
        if boton = '1' then
          estado_sig <= Minutos;
        end if;
      when Minutos =>
        if boton = '1' then
          estado_sig <= Segundos;
        end if;
      when Segundos =>
        estado_sig <= Encendido;
      when Encendido => 
        if puerta = '1' then
          estado_sig <= Parado;
        elsif fin_cuenta = '1' then
          estado_sig <= Final;
        end if;
      when Parado =>
        if puerta = '0' then
          estado_sig <= Encendido;
        end if;
      when Fin =>
        if puerta = '1' then
          estado_sig <= Reposo;
        end if;
      when others =>
          estado_sig <= Reposo;
    end case;
  end process TransicionEstados;


  Salidas : process(estado_act)
  begin

    abierta 	 <= '1' when puerta = '1' else '0';
    en_cnt      <= '0';
    carga_min   <= '0';
    carga_seg   <= '0';
    abierta     <= '0';
    horno_on    <= '0';
    fin         <= '0';

    case estado_act is
      when Reposo =>
        null;
      when Minutos =>
        carga_min <='1';
      when Segundos =>
        carga_seg <='1';
      when Encendido =>
        horno_on <= '1';
        en_cnt <= '1';
      when Parado =>
        null;
      when Final =>
        fin <= '1';
    end case;
  end process Salidas;

end behavioral;   




