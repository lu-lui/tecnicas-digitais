LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo4 IS
	PORT( 
		a :in std_logic;
		b :in std_logic;
		c :in std_logic;
		S :out std_logic
		);
end tdexemplo4;
architecture arq_tdexemplo4 of tdexemplo4 is begin
	S <= not(a and b) or (not c);
end arq_tdexemplo4;