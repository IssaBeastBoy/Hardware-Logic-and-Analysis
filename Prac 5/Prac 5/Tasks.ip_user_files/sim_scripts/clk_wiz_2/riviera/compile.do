vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"D:/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../Tasks.srcs/sources_1/ip/clk_wiz_2/clk_wiz_2_clk_wiz.v" \
"../../../../Tasks.srcs/sources_1/ip/clk_wiz_2/clk_wiz_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

