LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY display_7seg IS
	PORT( 
		entrada :in std_logic_vector(13 downto 0);
		s_dezena, s_unidade :out std_logic_vector (6 downto 0)
		);
end display_7seg;
architecture arq_display_7seg of display_7seg is
	SIGNAL valor: integer range 0 to 99;
	SIGNAL dezena, unidade: integer range 0 to 9;
	
	begin
	valor <= to_integer(unsigned(entrada));
	dezena <= valor / 10;
	unidade <= valor mod 10;
	
	WITH dezena SELECT
	s_dezena <=
		"1000000" when 0,
		"1111001" when 1,
		"0100100" when 2,
		"0110000" when 3,
		"0011001" when 4,
		"0010010" when 5,
		"0000010" when 6,
		"1111000" when 7,
		"0000000" when 8,
		"0010000" when 9,
		"0111111" when others;
		
	WITH unidade SELECT
	s_unidade <=
		"1000000" when 0,
		"1111001" when 1,
		"0100100" when 2,
		"0110000" when 3,
		"0011001" when 4,
		"0010010" when 5,
		"0000010" when 6,
		"1111000" when 7,
		"0000000" when 8,
		"0010000" when 9,
		"0111111" when others;
end arq_display_7seg;