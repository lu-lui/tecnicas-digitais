LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo7 IS
	PORT( 
		a :in std_logic_vector(2 downto 0);
		S :out std_logic
		);
end tdexemplo7;
architecture arq_tdexemplo7 of tdexemplo7 is begin
	S <= a(2) xor a(1) xor a(0);
end arq_tdexemplo7;