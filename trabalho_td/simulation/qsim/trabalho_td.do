onerror {quit -f}
vlib work
vlog -work work trabalho_td.vo
vlog -work work trabalho_td.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.display_7seg_vlg_vec_tst
vcd file -direction trabalho_td.msim.vcd
vcd add -internal display_7seg_vlg_vec_tst/*
vcd add -internal display_7seg_vlg_vec_tst/i1/*
add wave /*
run -all
