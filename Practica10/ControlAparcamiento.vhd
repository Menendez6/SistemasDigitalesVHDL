library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlAparcamiento is
	port(
	max_coches :    in std_logic_vector(7 downto 0);
	clk :           in std_logic;
	reset_n :       in std_logic;
    entra_coche :   in std_logic;
    sale_coche:     in std_logic;
    num_coches:     out std_logic_vector(7 downto 0);
    libre:          out std_logic;
    ocupado :       out std_logic);
end ControlAparcamiento;

architecture behavioral of ControlAparcamiento is
    signal contador : unsigned(7 downto 0);
    signal entra,sale: std_logic;
    
    component DetectorFlancoSubida
    port(
		e			: in std_logic;
		reset_n	    : in std_logic;
		clk		    : in std_logic;
		s			: out std_logic
    );
    end component;
    
begin

    i1_DetectorFlanco: DetectorFlancoSubida
    port map(
        e		=> entra_coche,
		reset_n	=> reset_n,
		clk		=> clk,
		s		=> entra
    );

    i2_DetectorFlanco: DetectorFlancoSubida
    port map(
        e		=> sale_coche,
		reset_n	=> reset_n,
		clk		=> clk,
		s		=> sale
    );

    process(clk,reset_n)
    begin
        if reset_n='0' then
            contador <= (others =>'0');
        else
            if rising_edge(clk) then
                if contador < unsigned(max_coches) and contador >"00000000"  then
                    if entra='1' then
                        contador <= contador+1;
                    end if;
                    if sale='1' then
                        contador <= contador-1;
                    end if;
                elsif contador = "00000000" and entra='1' then
                    contador <= contador+1;
                elsif contador = unsigned(max_coches) and sale='1' then
                    contador <= contador-1;
                end if;
            end if;
        end if;
    end process;
    
    num_coches <= std_logic_vector(contador);

    libre <= '0' when contador=unsigned(max_coches) else '1';
    ocupado <= '1' when contador=unsigned(max_coches) else '0';
    	
end behavioral;