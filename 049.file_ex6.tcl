set fn mycsv.csv
set fid [open $fn r]
while {[gets $fid line] >= 0} {
    puts $line
    puts [split $line ,]
}
close $fid
#============================
package require csv
set fn mycsv.csv
set fid [open $fn r]
while {[gets $fid line] >= 0} {
    puts [csv::split $line]
}
close $fid
#============================
package require csv
package require struck::queue
::struck::queue fdata
::fdata
set chan [open myfile.csv]
csv::read2queue $chan fdata
close $chan
while {[fdata size] > 0} {
    puts [fdata get]
}
#============================
package require csv
set title [list {Period(ns)} {Fmax(MHz)} {Clock Group}]
set value [list 3.33 300 tx_clk]
set fn mycsv.csv
set fid [open $fn w]
set fdata [list $title $value]
puts $fid [csv::joinlist $fdata]
close $fid