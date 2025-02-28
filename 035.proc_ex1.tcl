proc get_max {num1 num2} {
    if {$num1 > $num2} {
        set res $num1
    } else {
        set res $num2
    }
    return $res
}
get_max 6 4
#=>6
#============================
proc c2f {c} {
    return [expr {$c * 9.0 / 5.0 +32}]
}
puts [c2f 37]
#=>98.6
#============================
proc mypower {a {b 2}} {
    if {$b == 2} {
        return [expr $a * $a]
    }
    set value 1
    for {set i 0} {$i < $b} {incr i} {
        set value [expr $value * $a]
    }
    return $value
}
puts [mypower 4 3]
#=>64
#============================
proc agr_test {a {b } args} {
    foreach param {a b args} {
        puts -nonewline "\t$param = [set $param]"
    }
}
set x one
set y two
set z three
puts [agr_test $x $y $z]
#=>a = one	b = two	args = three
