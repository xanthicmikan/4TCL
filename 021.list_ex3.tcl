set num [list 11 22 33]
lassign $num x y z
puts $x
#=>11
puts $y
#=>22
puts $z
#=>33
set x [lindex $num 0]
#=>11
set y [lindex $num 1]
#=>22
set z [lindex $num 2]
#=>33
#============================
set num [list 11 22 33]
lassign $num x y
puts $x
#=>11
puts $y
#=>22
lassign $num x y z p
puts $x
#=>11
puts $y
#=>22
puts $z
#=>33
puts [llength $p]
#=>0
#============================
set num [list 11 22 33]
set num [lassign $num x]
puts $num
#=>22 33
puts $x
#=>11
set num [lassign $num x]
puts $num
#=>33
puts $x
#=>22