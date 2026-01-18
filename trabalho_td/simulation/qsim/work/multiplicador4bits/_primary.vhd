library verilog;
use verilog.vl_types.all;
entity multiplicador4bits is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        m               : out    vl_logic_vector(13 downto 0)
    );
end multiplicador4bits;
