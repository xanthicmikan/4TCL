set device               xxxxxx
set package              fbg676
set speed                -1
set part                 $device$package$speed
set prjName              wave_gen
set prjDir               ./$prjName
set srcDir               ./Sources
create_project $prjName $prjDir -part $part

add_files    [glob $srcDir/hdl/*.v]
add_files    [glob $srcDir/hdl/*.vh]
add_files    [glob $srcDir/ip/*.xcix]
update_compile_order -fileset sources_1

add_files    -fileset constrs_1 [glob $srcDir/xdc/*.xdc]
add_files    -fileset sim_1 [glob $srcDir/tb/*.v]
update_compile_order -fileset sim_1

set_property strategy Flow_AreaOptimized_high [get_runs synth_1]
set_property strategy Performance_Explore [get_runs impl_1]

launch_runs synth_1
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

start_gui