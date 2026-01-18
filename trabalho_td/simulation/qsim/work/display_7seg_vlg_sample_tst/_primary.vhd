library verilog;
use verilog.vl_types.all;
entity display_7seg_vlg_sample_tst is
    port(
        entrada         : in     vl_logic_vector(13 downto 0);
        sampler_tx      : out    vl_logic
    );
end display_7seg_vlg_sample_tst;
