library verilog;
use verilog.vl_types.all;
entity sr_b is
    port(
        b               : in     vl_logic_vector(3 downto 0);
        entrada_serial  : in     vl_logic;
        desloca         : in     vl_logic;
        s               : out    vl_logic_vector(13 downto 0)
    );
end sr_b;
