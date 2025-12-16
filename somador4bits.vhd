LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY somador4bits IS
	PORT( 
		a, b :in std_logic_vector (3 downto 0);
		s:out std_logic_vector(3 downto 0);
		c4: out std_logic
		);
end somador4bits;
architecture arq_somador4bits of somador4bits is
	SIGNAL c: std_logic_vector(2 downto 0);
	
	COMPONENT tdexemplo13_ms
		PORT( 
		a, b :in std_logic;
		s, c_out :out std_logic
		);
	END COMPONENT;
	
	COMPONENT tdexemplo13_sc
		PORT( 
		a, b, c_in :in std_logic;
		s, c_out :out std_logic
		);
	END COMPONENT;
	
	begin
		soma1: tdexemplo13_ms
			port map( a => a(0), b => b(0), s => s(0), c_out => c(0));
	
		soma2: tdexemplo13_sc
			port map( a => a(1), b => b(1), c_in => c(0), s => s(1), c_out => c(1));	
			
		soma3: tdexemplo13_sc
			port map( a => a(2), b => b(2), c_in => c(1), s => s(2), c_out => c(2));
		
		soma4: tdexemplo13_sc
			port map( a => a(3), b => b(3), c_in => c(2), s => s(3), c_out => c4);
		
end arq_somador4bits;