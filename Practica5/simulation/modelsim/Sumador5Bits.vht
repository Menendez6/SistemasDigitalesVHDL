LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
ENTITY Sumador5Bits_vhd_tst IS
END Sumador5Bits_vhd_tst;
ARCHITECTURE Sumador5Bits_arch OF Sumador5Bits_vhd_tst IS
 -- constants
 -- signals
	 SIGNAL a : STD_LOGIC_VECTOR(4 DOWNTO 0);
	 SIGNAL b : STD_LOGIC_VECTOR(4 DOWNTO 0);
	 SIGNAL c_out : STD_LOGIC;
	 SIGNAL s : STD_LOGIC_VECTOR(4 DOWNTO 0);
	 COMPONENT Sumador5Bits
	 PORT (
		 a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 c_out : OUT STD_LOGIC;
		 s : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	 );
END COMPONENT;
BEGIN
i1 : Sumador5Bits
	 PORT MAP (
		 -- list connections between master ports and signals
		 a => a,
		 b => b,
		 c_out => c_out,
		 s => s
	 );
init : PROCESS
-- variable declarations
BEGIN
-- code that executes only once
WAIT;
END PROCESS init;
always : PROCESS
BEGIN
 -- code executes for every event on sensitivity list
	 for i in 0 to 31 loop
		 a <= std_logic_vector(to_unsigned(i, 5));
		 for j in 0 to 31 loop
			 b <= std_logic_vector(to_unsigned(j, 5));
			 wait for 100 ns;
			 assert unsigned(c_out&s) = i+j
			 report "fallo en la suma"
			 severity failure;
		 end loop;
	 end loop;
 WAIT;
END PROCESS always;
END Sumador5Bits_arch;