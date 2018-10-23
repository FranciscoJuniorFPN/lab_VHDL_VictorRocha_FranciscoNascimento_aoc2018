onerror {exit -code 1}
vlib work
vcom -work work AND_port.vho
vcom -work work XOR_wf.vwf.vht
vsim -novopt -c -t 1ps -L arriaii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.XOR_port_vhd_vec_tst
vcd file -direction AND_port.msim.vcd
vcd add -internal XOR_port_vhd_vec_tst/*
vcd add -internal XOR_port_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
