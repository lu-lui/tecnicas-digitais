LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY menor IS
	PORT( 
		a, b :in std_logic_vector (3 downto 0);
		menor:out std_logic_vector(13 downto 0)
		);
end menor;
architecture arq_menor of menor is
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
		menor(3 downto 0) <=
			a when '1',
			b when '0';
		
end arq_menor;