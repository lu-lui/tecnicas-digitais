LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY a_xor_b IS
	PORT( 
		a, b : in std_logic_vector(3 downto 0);
		s :out std_logic_vector(13 downto 0)
		);
end a_xor_b;

architecture arq_a_xor_b of a_xor_b is 
begin
	s(13 downto 4) <= "0000000000";
	s(0) <= a(0) xor b(0);
	s(1) <= a(1) xor b(1);
	s(2) <= a(2) xor b(2);
	s(3) <= a(3) xor b(3);
		
end arq_a_xor_b;

--fazer bit para s=0