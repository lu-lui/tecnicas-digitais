LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo13_ms IS
	PORT( 
		a, b :in std_logic;
		s, c_out :out std_logic
		);
end tdexemplo13_ms;
architecture arq_tdexemplo13_ms of tdexemplo13_ms is begin
	s<= (not(a) and b) or (a and not(b));
	c_out <= a and b;
end arq_tdexemplo13_ms;