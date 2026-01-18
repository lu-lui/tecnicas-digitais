LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY display_mux IS
	PORT( 
		a, b, f : in std_logic_vector (3 downto 0);
		desloca : in std_logic;
		negativo, zero: out std_logic;
		s_dezena, s_unidade: out std_logic_vector(6 downto 0)
		);
end display_mux;
architecture arq_display_mux of display_mux is
	SIGNAL resultado_mostrado, res_soma, res_sub, res_mult, res_cod, res_xor, res_sl, res_sr,
			 res_maior, res_menor: std_logic_vector(13 downto 0);
	SIGNAL negativo_sub: std_logic;
	
	COMPONENT somador4bits
		PORT( 
		a, b :in std_logic_vector (3 downto 0);
		s:out std_logic_vector(13 downto 0);
		c3: out std_logic
		);
	END COMPONENT;
	
	COMPONENT subtrator4bits
		PORT( 
		a, b :in std_logic_vector (3 downto 0);
		s:out std_logic_vector(13 downto 0);
		c3, negativo: out std_logic
		);
	END COMPONENT;	
	
	COMPONENT multiplicador4bits
		PORT( 
		a, b :in std_logic_vector (3 downto 0);
		m:out std_logic_vector(13 downto 0)
		);
	END COMPONENT;
	
	COMPONENT cod_bin_hexa
		PORT( 
		a, b :in std_logic_vector(3 downto 0);
		s :out std_logic_vector (13 downto 0)
		);
	END COMPONENT;
	
	COMPONENT display_7seg
		PORT( 
		entrada :in std_logic_vector(13 downto 0);
		s_dezena, s_unidade :out std_logic_vector (6 downto 0)
		);
	END COMPONENT;	
	
	COMPONENT a_xor_b
		PORT( 
		a, b : in std_logic_vector(3 downto 0);
		s :out std_logic_vector(13 downto 0)
		);
	END COMPONENT;
	
	COMPONENT sl_a
		PORT( 
		a :in std_logic_vector(3 downto 0);
		entrada_serial, desloca : in std_logic;
		s :out std_logic_vector(13 downto 0)
		);
	END COMPONENT;
	
	COMPONENT sr_b
		PORT( 
		b :in std_logic_vector(3 downto 0);
		entrada_serial, desloca : in std_logic;
		s :out std_logic_vector(13 downto 0)
		);
	END COMPONENT;
	
	COMPONENT maior
		PORT( 
		a, b :in std_logic_vector (3 downto 0);
		maior:out std_logic_vector(13 downto 0)
		);
	END COMPONENT;
	
	COMPONENT menor
		PORT( 
		a, b :in std_logic_vector (3 downto 0);
		menor:out std_logic_vector(13 downto 0)
		);
	END COMPONENT;
	
	begin 
		somador: somador4bits
			port map (a => a, b => b, s => res_soma);
		
		subtrator: subtrator4bits
			port map (a => a, b => b, s => res_sub, negativo => negativo_sub);
	
		multiplicador: multiplicador4bits
			port map (a => a, b => b, m => res_mult);
			
		codificador: cod_bin_hexa
			port map (a => a, b => b, s => res_cod);
			
		xor_ab: a_xor_b
			port map (a => a, b => b, s => res_xor);
			
		shift_esquerda: sl_a
			port map (a => a, entrada_serial => '0', desloca => desloca, s => res_sl);
			
		shift_direita: sr_b
			port map (b => b, entrada_serial => '0', desloca => desloca, s => res_sr);
			
		comparar_maior: maior
			port map (a => a, b => b, maior => res_maior);
			
		comparar_menor: menor
			port map (a => a, b => b, menor => res_menor);
			
		WITH f SELECT
		resultado_mostrado <=
			res_soma when "0001",
			res_sub when "0010",
			res_mult when "0011",
			res_cod when "0100",
			res_xor when "0101",
			res_sl when "0110",
			res_sr when "0111",
			res_maior when "1000",
			res_menor when "1001",
			"00000000000000" when others;
			
		WITH f SELECT
		negativo <=
			negativo_sub when "0010",
			'0' when others;	
			
		WITH resultado_mostrado SELECT
		zero <=
			'1' when "00000000000000",
			'0' when others;
		
		display: display_7seg
			port map (entrada => resultado_mostrado, s_dezena => s_dezena, s_unidade => s_unidade);
		
			
	end arq_display_mux;