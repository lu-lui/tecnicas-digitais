library verilog;
use verilog.vl_types.all;
entity subtrator4bits_vlg_check_tst is
    port(
        c3              : in     vl_logic;
        negativo        : in     vl_logic;
        s               : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end subtrator4bits_vlg_check_tst;
