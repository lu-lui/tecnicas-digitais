library verilog;
use verilog.vl_types.all;
entity a_xor_b_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(13 downto 0);
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end a_xor_b_vlg_check_tst;
