set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) user_project_wrapper
set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

set ::env(CLOCK_PORT) "wb_clk_i"
#set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_TREE_SYNTH) 0

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 2700 3700"
set ::env(PL_TARGET_DENSITY) 0.001
set ::env(PL_OPENPHYSYN_OPTIMIZATIONS) 0

set ::env(GLB_RT_ALLOW_CONGESTION) 1
set ::env(GLB_RT_ADJUSTMENT) 0
set ::env(GLB_RT_TILES) 14

set ::env(VERILOG_FILES) "\
	$script_dir/../../verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/user_project_wrapper.v"

set ::env(VERILOG_FILES_BLACKBOX) "\
	$script_dir/../../verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/vdp_lite_user_proj/vdp_lite_user_proj.v"

set ::env(VERILOG_INCLUDE_DIRS) "$script_dir/../../vdp/"

set ::env(EXTRA_LEFS) "\
	$script_dir/../vdp_lite_user_proj/vdp_lite_user_proj.lef"

set ::env(EXTRA_GDS_FILES) "\
	$script_dir/../vdp_lite_user_proj/vdp_lite_user_proj.gds"
