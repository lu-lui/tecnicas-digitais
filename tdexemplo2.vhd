ENTITY tdexemplo2 IS
	PORT( 
		a :in bit;
		b :in bit;
		c :in bit;
		S :out bit
		);
end tdexemplo2;
architecture arq_tdexemplo2 of tdexemplo2 is begin
	S <= not(a and b) or (not c);
end arq_tdexemplo2;
	