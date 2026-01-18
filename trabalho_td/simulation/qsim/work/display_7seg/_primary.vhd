library verilog;
use verilog.vl_types.all;
entity display_7seg is
    port(
        entrada         : in     vl_logic_vector(13 downto 0);
        s_dezena        : out    vl_logic_vector(6 downto 0);
        s_unidade       : out    vl_logic_vector(6 downto 0)
    );
end display_7seg;
