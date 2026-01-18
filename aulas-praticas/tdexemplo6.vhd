LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo6 IS
	PORT( 
		a :in std_logic_vector(2 downto 0);
		S :out std_logic
		);
end tdexemplo6;
architecture arq_tdexemplo6 of tdexemplo6 is
	signal fio : std_logic_vector(2 downto 0); begin
	fio(0) <= a(2) and a(1);
	fio(1) <= not a(0);
	fio(2) <= not fio(0);
	S <= fio(1) or fio(2);
end arq_tdexemplo6;