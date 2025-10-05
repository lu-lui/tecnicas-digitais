ENTITY tdexemplo1 IS
	PORT( 
		a :in bit;
		b :out bit
		);
end tdexemplo1;
architecture arq_tdexemplo1 of tdexemplo1 is begin
	b <= a;
end arq_tdexemplo1;
	