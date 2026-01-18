LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo13_sc IS
	PORT( 
		a, b, c_in :in std_logic;
		s, c_out :out std_logic
		);
end tdexemplo13_sc;
architecture arq_tdexemplo13_sc of tdexemplo13_sc is begin
	s<= c_in xor a xor b;
	c_out <= (a and b) or (a and c_in) or (b and c_in) ;
end arq_tdexemplo13_sc;