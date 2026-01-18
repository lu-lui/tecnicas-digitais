vlog -work work C:/trabalho_td-20260113T160901Z-3-001/trabalho_td/simulation/modelsim/wave_dis_mux.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.subtrator4bits_vlg_vec_tst
onerror {resume}
add wave {subtrator4bits_vlg_vec_tst/i1/a[3]}
add wave {subtrator4bits_vlg_vec_tst/i1/a[2]}
add wave {subtrator4bits_vlg_vec_tst/i1/a[1]}
add wave {subtrator4bits_vlg_vec_tst/i1/a[0]}
add wave {subtrator4bits_vlg_vec_tst/i1/b[3]}
add wave {subtrator4bits_vlg_vec_tst/i1/b[2]}
add wave {subtrator4bits_vlg_vec_tst/i1/b[1]}
add wave {subtrator4bits_vlg_vec_tst/i1/b[0]}
add wave {subtrator4bits_vlg_vec_tst/i1/sel[3]}
add wave {subtrator4bits_vlg_vec_tst/i1/sel[2]}
add wave {subtrator4bits_vlg_vec_tst/i1/sel[1]}
add wave {subtrator4bits_vlg_vec_tst/i1/sel[0]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_dezena}
add wave {subtrator4bits_vlg_vec_tst/i1/s_dezena[6]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_dezena[5]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_dezena[4]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_dezena[3]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_dezena[2]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_dezena[1]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_dezena[0]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_unidade}
add wave {subtrator4bits_vlg_vec_tst/i1/s_unidade[6]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_unidade[5]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_unidade[4]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_unidade[3]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_unidade[2]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_unidade[1]}
add wave {subtrator4bits_vlg_vec_tst/i1/s_unidade[0]}
run -all
