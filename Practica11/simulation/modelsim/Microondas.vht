library ieee;
use ieee.std_logic_1164.all;
entity Microondas_vhd_tst is
end Microondas_vhd_tst;
architecture Microondas_arch of Microondas_vhd_tst is
    signal clk: STD_LOGIC:='0';
    signal e_p    :std_logic_vector(6 downto 0);
    signal    boton          :std_logic;
    signal   puerta      :std_logic;
    signal    reset_n     :std_logic;
    signal    fin         :std_logic;
    signal    horno_on    :std_logic;
    signal     abierta     :std_logic;
    signal    d_d         :std_logic_vector(6 downto 0);
    signal    d_c         :std_logic_vector(6 downto 0);
    signal    d_b         :std_logic_vector(6 downto 0);
    signal    d_a         :std_logic_vector(6 downto 0);

    Component Microondas
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
    end component;

begin
    i1: Microondas
    port map(
        decenas     => e_p(6 downto 4),
        unidades    => e_p(3 downto 0),
        p1          => boton,
        puerta      => puerta,
        reset_n     => reset_n,
        clk         => clk,
        fin         => fin,
        horno_on    => fin,
        abierta     => abierta,
        d_d         => d_d,
        d_c         => d_c,
        d_b         => d_b,
        d_a         => d_a
    );

    init :PROCESS-- variable declarations                                     
    BEGIN-- code that executes only once                      
    WAIT;
    END PROCESS init;
    clk <=not clk after 10 ns;
    
    always :PROCESS-- optional sensitivity list                                  -- (        )                                                 -- variable declarations                                      
    
    BEGIN-- code executes for every event on sensitivity list      
    reset_n <='0';    
    puerta <='0';    
    boton <='1';-- Activo a nivel bajo    
    e_p <="0000010";
    wait for 31 ns;    
    reset_n <='1';wait for 100 ns;    
    boton <='0';wait for 20 ns;    
    boton <='1';wait for 100 ns;    
    e_p <="0000011";    
    boton <='0';wait for 20 ns;    
    boton <='1';wait for 100 ns;
    assert horno_on ='1'     
    report"Error, el horno no se enciende despues de la segunda  pulsacion"       
    severity failure;wait for 50000 ns;    
    puerta <='1';-- Se abre la puerta
    wait for 100 ns;
    assert horno_on ='0' 
        report"Error, el horno no se apaga al abrir la puerta"
    severity failure;        
    puerta <='0';-- Se cierra la puerta 
    wait for 100 ns;
    assert horno_on ='1'          
        report"Error, el horno no se enciende al cerrar la puerta"
        severity failure;
    wait for 73000 ns;
    wait for 100 ns;
    assert horno_on ='0' report"Error, el horno no se apaga al finalizar el tiempo"          
    severity failure;
    assert fin ='1'          
        report"Error, la señal de fin no se enciende al finalizar el tiempo"          
        severity failure;
        assert false report"Fin de la simulacion."
        severity failure; 
    END PROCESS always;
    END Microondas_arch;