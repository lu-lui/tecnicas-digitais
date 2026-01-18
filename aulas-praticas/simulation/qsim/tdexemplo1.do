onerror {quit -f}
vlib work
vlog -work work tdexemplo1.vo
vlog -work work tdexemplo1.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tdexemplo5_vlg_vec_tst
vcd file -direction tdexemplo1.msim.vcd
vcd add -internal tdexemplo5_vlg_vec_tst/*
vcd add -internal tdexemplo5_vlg_vec_tst/i1/*
add wave /*
run -all
