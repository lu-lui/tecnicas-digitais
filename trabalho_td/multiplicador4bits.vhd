LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY multiplicador4bits IS
	PORT( 
		a, b :in std_logic_vector (3 downto 0);
		m:out std_logic_vector(13 downto 0)
		);
end multiplicador4bits;
architecture arq_multiplicador4bits of multiplicador4bits is
	SIGNAL c1, c2: std_logic_vector(2 downto 0);
	SIGNAL c_out: std_logic_vector(1 downto 0);
	

	COMPONENT somador4bits
		PORT( 
		a, b :in std_logic_vector (3 downto 0);
		s:out std_logic_vector(13 downto 0);
		c3: out std_logic
		);
	END COMPONENT;
	
	
begin
		m(0) <= a(0) and b(0);
		
		soma1: somador4bits
			port map( 
			a(0) => a(0) and b(1), 
			a(1) => a(0) and b(2), 
			a(2) => a(0) and b(3),
			a(3) => '0',
			b(0) => a(1) and b(0), 
			b(1) => a(1) and b(1), 
			b(2) => a(1) and b(2),
			b(3) => a(1) and b(3),
			s(0) => m(1), 
			s(1) => c1(0), 
			s(2) => c1(1), 
			s(3) => c1(2),
			c3 => c_out(0));
			
		soma2: somador4bits
			port map( 
			a(0) => c1(0), 
			a(1) => c1(1), 
			a(2) => c1(2),
			a(3) => c_out(0), 
			b(0) => a(2) and b(0), 
			b(1) => a(2) and b(1), 
			b(2) => a(2) and b(2),
			b(3) => a(2) and b(3),
			s(0) => m(2), 
			s(1) => c2(0), 
			s(2) => c2(1), 
			s(3) => c2(2),
			c3 => c_out(1));
			
		soma3: somador4bits
			port map( 
			a(0) => c2(0), 
			a(1) => c2(1), 
			a(2) => c2(2),
			a(3) => c_out(1),
			b(0) => a(3) and b(0), 
			b(1) => a(3) and b(1), 
			b(2) => a(3) and b(2),
			b(3) => a(3) and b(3),
			s(0) => m(3), 
			s(1) => m(4), 
			s(2) => m(5),
			s(3) => m(6),
			c3 => m(7));

end arq_multiplicador4bits;