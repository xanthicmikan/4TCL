proc bottom {b} {
    puts "Bottom: $b, level is [info level]"
}
proc top {a} {
    puts "Top: $a, level is [info level]"
    bottom b
}
puts "Outside procedure, level is [info level]"
#=>Outside procedure, level is 0
top a
#=>Top: a, level is 1
#=>Bottom: b, level is 2
#============================
proc bottom {x} {
    upvar 2 m mym
    upvar 1 k myk
    puts "$mym $myk"
}
proc top {y} {
    upvar 1 n myn
    set k 11
    bottom x
}
set m 22
set n 00
top y
#=>22 11
#============================
proc good_example {x y m} {
    upvar 1 $x myx
    upvar 1 $y myy
    upvar 1 $m mym
    if {$myx > $myy} {set mym 1} else {set mym 0}
}
set a 2
set b 1
good_example a b k
#=>1
#============================
proc array_values {array_name} {
    upvar 1 $array_name a
    set values {}
    foreach {key value} [array get a] {
        lappend values $value
    }
    return $values
}
array set myarray {
    0 TCL
    1 C++
    2 Java
    3 Python
}
set v [array_values myarray]
#=>TCL C++ Java Python
#============================
set a 11
set x a
puts "$x = [set $x]"
#=>a = 11
upvar 0 $x y
puts "$x - $y"
#=>a = 11
#============================
proc agr_test {a {b foo} args} {
    foreach param {a b args} {
        upvar 0 $param x
        puts -nonewline "\t$param = $x"
    }
}
set x one
set y two
set z three
puts [agr_test $x]
#=>a = one	b = foo	args =
puts [agr_test $x $y]
#=>a = one	b = two	args = 
puts [agr_test $x $y $z]
#=>a = one	b = two	args = three