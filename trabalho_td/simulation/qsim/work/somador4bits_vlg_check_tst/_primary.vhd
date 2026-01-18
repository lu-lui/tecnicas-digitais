library verilog;
use verilog.vl_types.all;
entity somador4bits_vlg_check_tst is
    port(
        c3              : in     vl_logic;
        s               : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end somador4bits_vlg_check_tst;
