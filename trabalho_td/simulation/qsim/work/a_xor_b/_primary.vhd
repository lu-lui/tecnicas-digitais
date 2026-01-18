library verilog;
use verilog.vl_types.all;
entity a_xor_b is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(13 downto 0);
        zero            : out    vl_logic
    );
end a_xor_b;
