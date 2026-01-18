library verilog;
use verilog.vl_types.all;
entity multiplicador4bits_vlg_check_tst is
    port(
        m               : in     vl_logic_vector(13 downto 0);
        sampler_rx      : in     vl_logic
    );
end multiplicador4bits_vlg_check_tst;
