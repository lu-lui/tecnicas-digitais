LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo11 IS
	PORT( 
		a :in std_logic_vector(3 downto 0);
		sel : in std_logic_vector(1 downto 0);
		S :out std_logic
		);
end tdexemplo11;
architecture arq_tdexemplo11 of tdexemplo11 is begin
	WITH sel SELECT
	S <=
		a(0) when "00",
		a(1) when "01",
		a(2) when "10",
		a(3) when "11",
		'X'  when others;
end arq_tdexemplo11;