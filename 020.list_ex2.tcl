set x [list 11 22 33]
llength $x
#=>3
lindex $x 0
#=>11
lindex $x 1
#=>22
lindex $x 2
#=>33
lindex $x end
#=>33
lindex $x end-1
#=>22
lindex $x end-2
#=>11
lindex $x end - 1
#=>bad index "-": must be integer?[+-]integer? or end?[+-]integer?
#============================
set x [list 11 22 33]
puts [lindex $x 3]
#=>
puts [lindex $x -1]
#=>
set epty1 {}
set epty2 [list]
lindex $epty1 0
llength $epty1
#=>0
llength $epty2
#=>0
#============================
set t {{a b} {c {d e f}} g}
llength $t
#=>3
lindex $t 0
#=>a b
lindex $t 0 1
#=>b
lindex $t 1 1 2
#=>f
lindex $t {1 1 2}
#=>f
lindex [lindex [lindex $t 1] 1] 2
#=>f
#============================
set t [list a "b }" c\} d\ne f\]]
#=>a b\ \} c\} {d
#=>e} f\]
lindex $t 1
#=>b }
lindex $t 2
#=>c}
lindex $t 3
#=>d
#=>e
lindex $t end
#=>f]