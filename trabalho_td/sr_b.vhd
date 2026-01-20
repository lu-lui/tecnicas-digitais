LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY sr_b IS
	PORT( 
		b :in std_logic_vector(3 downto 0);
		entrada_serial, desloca : in std_logic;
		s :out std_logic_vector(13 downto 0)
		);
end sr_b;

architecture arq_sr_b of sr_b is 
	
	COMPONENT mux2_1
		PORT( 
			a :in std_logic_vector(1 downto 0);
			f :in std_logic;
			s :out std_logic
			);
	END COMPONENT;

begin
	s(13 downto 4) <= "0000000000";

	mux3: mux2_1
		port map (a(1) => b(3), a(0) => entrada_serial, f => desloca, s => s(3));
		
	mux2: mux2_1
		port map (a(1) => b(2), a(0) => b(3), f => desloca, s => s(2));
		
	mux1: mux2_1
		port map (a(1) => b(1), a(0) => b(2), f => desloca, s => s(1));
		
	mux0: mux2_1
		port map (a(1) => b(0), a(0) => b(1), f => desloca, s => s(0));
		
end arq_sr_b;

--perguntar se precisa deslocar todos os números ou só os 4 da entrada 