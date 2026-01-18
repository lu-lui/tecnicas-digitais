library verilog;
use verilog.vl_types.all;
entity menor_vlg_check_tst is
    port(
        menor           : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end menor_vlg_check_tst;
