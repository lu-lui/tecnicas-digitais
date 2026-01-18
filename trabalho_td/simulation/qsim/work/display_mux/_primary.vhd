library verilog;
use verilog.vl_types.all;
entity display_mux is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        f               : in     vl_logic_vector(3 downto 0);
        desloca         : in     vl_logic;
        negativo        : out    vl_logic;
        zero            : out    vl_logic;
        s_dezena        : out    vl_logic_vector(6 downto 0);
        s_unidade       : out    vl_logic_vector(6 downto 0)
    );
end display_mux;
