LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo5 IS
	PORT( 
		a :in std_logic;
		b :in std_logic;
		c :in std_logic;
		S :out std_logic
		);
end tdexemplo5;
architecture arq_tdexemplo5 of tdexemplo5 is
	signal fio1, fio2, fio3 : std_logic; begin
	fio1 <= a and b;
	fio2 <= not c;
	fio3 <= not fio1;
	S <= fio2 or fio3;
end arq_tdexemplo5;