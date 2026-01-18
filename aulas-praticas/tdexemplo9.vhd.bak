LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo8 IS
	PORT( 
		a :in std_logic_vector(3 downto 0);
		sel : in std_logic_vector(1 downto 0);
		S :out std_logic
		);
end tdexemplo8;
architecture arq_tdexemplo8 of tdexemplo8 is begin
	S <= (not sel(1) and not sel(0) and a(3)) or (not sel(1) and sel(0) and a(2)) or (sel(1) 
	and not sel(0) and a(1)) or (sel(1) and sel(0) and a(0));
end arq_tdexemplo8;