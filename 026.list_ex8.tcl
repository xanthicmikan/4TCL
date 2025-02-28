set num [list 1 2 3 4]
foreach i_num $num {
    lappend even [expr {2 * $i_num}]
}
puts $even
#=>2 4 6 8
#============================
set color {red green yellow}
foreach {x y z} $color {break}
puts $x
#=>red
puts $y
#=>green
puts $z
#=>yellow
#============================
set num {11 22}
set i 0
foreach {x y z} $num {
    puts "$i: x=$x, y=$y, z=$z"
    incr i
}
#=>0: x=11, y=22, z=
#============================
set course {Math Science English Physics}
set score {98 97 86 88}
foreach i_course $course i_score $score {
    puts "$i_course: $i_score"
}
#=>Math: 98
#=>Science: 97
#=>English: 86
#=>Physics: 88
#============================
set course {Math Science English Physics}
set score {98 97 86}
foreach i_course $course i_score $score {
    puts "$i_course: $i_score"
}
#=>Math: 98
#=>Science: 97
#=>English: 86
#=>Physics: 