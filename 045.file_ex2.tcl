cd ./test
file mkdir xdc
file delete pin.txt
file delete *.txt
file delete {*}[glob *.txt]
#============================
file copy ./src/top.sv ./src/top_old.sv 
#============================
file rename src source
file rename ./source/uart.vhd ./tb/uart.vhd
file rename -force ./source/uart.vhd ./tb/uart.vhd
glob -nocomplain ./source/*.vhd
#============================
proc move_to_dir {fn dir} {
    foreach i_fn $fn {
        file rename $i_fn [file join $dir [file tail $i_fn]]
    }
}
set fn [glob ./src/*.sv]
set dir ./tb
move_to_dir $fn $dir