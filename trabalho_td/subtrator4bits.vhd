LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY subtrator4bits IS
	PORT( 
		a, b :in std_logic_vector (3 downto 0);
		s:out std_logic_vector(13 downto 0);
		c3, negativo: out std_logic
		);
end subtrator4bits;
architecture arq_subtrator4bits of subtrator4bits is
	SIGNAL c: std_logic_vector(3 downto 0);
	SIGNAL s_sub, s_comp: std_logic_vector(13 downto 0);
	
	COMPONENT somador4bits
		PORT( 
		a, b :in std_logic_vector (3 downto 0);
		s:out std_logic_vector(13 downto 0);
		c3: out std_logic
		);
	END COMPONENT;
	
	COMPONENT somador_completo
		PORT( 
		a, b, c_in :in std_logic;
		s, c_out :out std_logic
		);
	END COMPONENT;
	
	begin
		soma1: somador_completo
			port map( a => a(0), b => not b(0), c_in => '1', s => s_sub(0), c_out => c(0));
	
		soma2: somador_completo
			port map( a => a(1), b => not b(1), c_in => c(0), s => s_sub(1), c_out => c(1));	
			
		soma3: somador_completo
			port map( a => a(2), b => not b(2), c_in => c(1), s => s_sub(2), c_out => c(2));
		
		soma4: somador_completo
			port map( a => a(3), b => not b(3), c_in => c(2), s => s_sub(3), c_out => c(3));
			
		c3 <= c(3);
			
		complemento2: somador4bits
			port map( a(0) => not s_sub(0),
						 a(1) => not s_sub(1),
						 a(2) => not s_sub(2),
						 a(3) => not s_sub(3),
						 b => "0001", s => s_comp);
			
		WITH c(3) SELECT
		s <=
			s_sub when '1',
			s_comp when '0';
		
			
		negativo <= not c(3);
		
		
end arq_subtrator4bits;