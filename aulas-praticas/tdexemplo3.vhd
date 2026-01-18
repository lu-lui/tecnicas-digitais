ENTITY tdexemplo3 IS
	PORT( 
		a :in bit;
		b :in bit;
		c :in bit;
		S :out bit
		);
end tdexemplo3;
architecture arq_tdexemplo3 of tdexemplo3 is begin
	S <= not(a and b) or c;
end arq_tdexemplo3;
	