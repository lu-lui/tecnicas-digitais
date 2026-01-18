library verilog;
use verilog.vl_types.all;
entity mux2_1 is
    port(
        a               : in     vl_logic_vector(1 downto 0);
        f               : in     vl_logic;
        s               : out    vl_logic
    );
end mux2_1;
