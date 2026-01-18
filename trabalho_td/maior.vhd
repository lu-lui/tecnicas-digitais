LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY maior IS
	PORT( 
		a, b :in std_logic_vector (3 downto 0);
		maior:out std_logic_vector(13 downto 0)
		);
end maior;
architecture arq_maior of maior is
	SIGNAL sel: std_logic;
	
	COMPONENT subtrator4bits
		PORT( 
		a, b :in std_logic_vector (3 downto 0);
		s:out std_logic_vector(13 downto 0);
		c3, negativo: out std_logic
		);
	END COMPONENT;
	
	begin
		subtracao: subtrator4bits
			port map(a => a, b => b, negativo => sel);
			
		WITH sel SELECT
		maior(3 downto 0) <=
			b when '1',
			a when '0';
		
end arq_maior;