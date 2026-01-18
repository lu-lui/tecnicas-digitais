library verilog;
use verilog.vl_types.all;
entity display_mux_vlg_check_tst is
    port(
        negativo        : in     vl_logic;
        s_dezena        : in     vl_logic_vector(6 downto 0);
        s_unidade       : in     vl_logic_vector(6 downto 0);
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end display_mux_vlg_check_tst;
