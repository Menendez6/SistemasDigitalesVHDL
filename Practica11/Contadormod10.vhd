library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contadormod10 is
    port(
        e_p     : in std_logic_vector(3 downto 0);
        carga   : in std_logic; --donde meto la carga??
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        s       : out std_logic_vector(3 downto 0);
        co      : out std_logic
    );
end Contadormod10;

architecture behavioral of Contadormod10 is
    signal contador : unsigned(3 downto 0);

begin

    process(reset_n,clk)
    begin
        if reset_n = '0' then
            contador <= (others => '0');

        else
            if rising_edge(clk) then
					if carga='1' and e_p < "1010" then
						contador <= unsigned(e_p);
					elsif en='1' then
						  if contador= "0000" then
								contador <= "1001";
						  else
								contador <=contador-1; 
						  end if;
					end if;
            end if; 
        end if;
    end process;

    s <= std_logic_vector(contador);
    co<= '1' when contador ="0000" and en='1' else '0';
end behavioral;

