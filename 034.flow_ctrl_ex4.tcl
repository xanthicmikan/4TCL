=========================     ==================
| prog.ctl              |     | start.tcl      |
|                       |     |                |
|  source start.tcl     |     |  set a 1       |
|  source end.tcl       |     |                |
=========================     ==================

#start.tcl
set a 1

#end.tcl
if {$a < 1} {
    puts "a is less than 1"
} else {
    puts "a is greater than 1"
}

#prog.ctl
source start.tcl
source end.tcl
#=> a is greater than 1