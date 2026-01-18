library verilog;
use verilog.vl_types.all;
entity somador4bits is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(13 downto 0);
        c3              : out    vl_logic
    );
end somador4bits;
