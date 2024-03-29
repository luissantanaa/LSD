onerror {exit -code 1}
vlib work
vlog -work work parking_phase2.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.parking_Phase2_vlg_vec_tst -voptargs="+acc"
vcd file -direction parking_phase2.msim.vcd
vcd add -internal parking_Phase2_vlg_vec_tst/*
vcd add -internal parking_Phase2_vlg_vec_tst/i1/*
run -all
quit -f
