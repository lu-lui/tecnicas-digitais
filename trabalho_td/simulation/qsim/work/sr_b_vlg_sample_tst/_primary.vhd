library verilog;
use verilog.vl_types.all;
entity sr_b_vlg_sample_tst is
    port(
        b               : in     vl_logic_vector(3 downto 0);
        desloca         : in     vl_logic;
        entrada_serial  : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sr_b_vlg_sample_tst;
