puts [info tclversion]
puts &tcl_version
puts [info patchlevel]
puts &tcl_patchlevel
#============================
set run [get_runs synth_1]
join [list_property_value STEPS.SYNTH_DESIGN.ARGS.DIRECTIVE $run]
#============================
set steps [list opt place phy_opt route]
set run [get_runs impl_1]
array set directive {}
foreach s $steps {
    puts "${s}_design Directives:"
    set drtv [list_property_value STEPS.${s}_DESIGN.ARGS.DIRECTIVE $run]
    set directive($s) $drtv
    set drtv [regsub -all {\s} $drtv \n]
    puts "$drtv\n"
}
#============================
set_param general.maxThreads 4
#============================
get_param general.maxThreads