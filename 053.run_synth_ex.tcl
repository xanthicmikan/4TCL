synth_ip [get_ips]
synth_design -top $top -part $part -directive default
write_checkpoint -force $SynOutputDir/post_synth_timing_summary.rpt
report_utilization -file $SynOutputDir/post_synth_util.rpt