library verilog;
use verilog.vl_types.all;
entity sr_b_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end sr_b_vlg_check_tst;
