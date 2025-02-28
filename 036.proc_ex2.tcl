proc get_last_value {a b} {
    set x [expr {$a + $b}]
    set y [expr {$a - $b}]
}
get_last_value 1 2
#=>-1
#============================
proc get_last_value {a b} {
    set x [expr {$a + $b}]
    set y [expr {$a - $b}]
    puts "x is $x"
}
get_last_value 1 2
#=>x is 3
#============================
proc circle_property {r} {
    set pi 3.1415
    set length [expr {2 * $pi * $r}]
    set area [expr {$pi * $r ** 2}]
    return [list $length $area]
}
circle_property 8
#=>50.264 201.056
#============================
proc opt_inc_by {inc args} {
    set res {}
    foreach i_args $args {
        lappend res [expr {$i_args + $inc}]
    }
    return $res
}
opt_inc_by 100 1 2 3 4
#=>101 102 103 104