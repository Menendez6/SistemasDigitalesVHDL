transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Pract2.vho}

vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica2y3/simulation/modelsim/Pract2.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Pract2_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  pract2_vhd_tst

add wave *
view structure
view signals
run -all
