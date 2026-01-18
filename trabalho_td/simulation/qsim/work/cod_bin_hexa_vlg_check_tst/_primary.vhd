library verilog;
use verilog.vl_types.all;
entity cod_bin_hexa_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end cod_bin_hexa_vlg_check_tst;
