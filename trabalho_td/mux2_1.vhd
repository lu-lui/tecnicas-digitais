LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY mux2_1 IS
	PORT( 
		a :in std_logic_vector(1 downto 0);
		f :in std_logic;
		s :out std_logic
		);
end mux2_1;

architecture arq_mux2_1 of mux2_1 is 
begin
	s <= (not f and a(1)) or (f and a(0));
end arq_mux2_1;