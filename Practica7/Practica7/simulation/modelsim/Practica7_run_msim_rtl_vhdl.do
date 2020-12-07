transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/Sumador1Bit.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/Sumador_Restador.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/Unidad_Logica.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/Mux_B.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/Mux_ov.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/Mux_salida.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/Unidad_control.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/BinA7Seg.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/Practica7.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/alu5bits.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/multiplicador5bits.vhd}

vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica7/Practica7/simulation/modelsim/ALU5Bits.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  ALU5Bits_vhd_tst

add wave *
view structure
view signals
run -all
