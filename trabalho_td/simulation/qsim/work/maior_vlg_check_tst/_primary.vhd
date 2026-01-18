library verilog;
use verilog.vl_types.all;
entity maior_vlg_check_tst is
    port(
        maior           : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end maior_vlg_check_tst;
