library verilog;
use verilog.vl_types.all;
entity display_7seg_vlg_check_tst is
    port(
        s_dezena        : in     vl_logic_vector(6 downto 0);
        s_unidade       : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end display_7seg_vlg_check_tst;
