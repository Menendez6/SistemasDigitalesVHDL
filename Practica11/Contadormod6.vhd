library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contadormod6 is
    port(
        e_p     : in std_logic_vector(2 downto 0);
        carga   : in std_logic; --donde meto la carga?? -- y si e_p es mayor que 5??
        reset_n : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        s       : out std_logic_vector(2 downto 0);
        co      : out std_logic
    );
end Contadormod6;

architecture behavioral of Contadormod6 is
    signal contador : unsigned(2 downto 0);
    --signal maximo   : std_logic_vector(2 downto 0);
    --signal a        : std_logic;
begin
    --a <= carga or a;
    --maximo <= e_p when a='1' and e_p < "110" else "000";

    process(reset_n,clk)
    begin
        if reset_n = '0' then
            contador <= (others => '0');
            --a <= '0';
        else
            if rising_edge(clk) then
					if carga='1' and e_p < "110" then
						contador <= unsigned(e_p);
					elsif en='1' then
						 if contador= "000" then
								contador <= unsigned(e_p);
						 else
								contador <=contador-1;
						 end if;
					end if; 
				end if;
        end if;
    end process;

    s <= std_logic_vector(contador);
    co<= '1' when contador ="000" and en='1' else '0';
end behavioral;