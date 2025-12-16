LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY tdexemplo10 IS
	PORT( 
		a :in std_logic_vector(2 downto 0);
		s :out std_logic_vector (7 downto 0)
		);
end tdexemplo10;
architecture arq_tdexemplo10 of tdexemplo10 is begin
	WITH a SELECT
	s <=
		"00000001" when "000",
		"00000010" when "001",
		"00000100" when "010",
		"00001000" when "011",
		"00010000" when "100",
		"00100000" when "101",
		"01000000" when "110",
		"10000000" when "111",
		"00000000" when others;
end arq_tdexemplo10;