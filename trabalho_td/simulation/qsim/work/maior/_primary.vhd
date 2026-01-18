library verilog;
use verilog.vl_types.all;
entity maior is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        maior           : out    vl_logic_vector(13 downto 0)
    );
end maior;
