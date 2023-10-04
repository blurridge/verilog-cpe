transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/College/3rd\ Year\ CpE/CPE\ 3101L/Lab\ #4/Lab\ #4A {G:/College/3rd Year CpE/CPE 3101L/Lab #4/Lab #4A/Comparator_4_bit.v}

vlog -vlog01compat -work work +incdir+G:/College/3rd\ Year\ CpE/CPE\ 3101L/Lab\ #4/Lab\ #4A {G:/College/3rd Year CpE/CPE 3101L/Lab #4/Lab #4A/tb_Comparator_4_bit.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_Comparator_4_bit

add wave *
view structure
view signals
run -all
