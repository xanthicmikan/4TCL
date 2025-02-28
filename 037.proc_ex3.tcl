proc global_test {} {
    global x
    puts "Inside global_test procedure x is $x"
    proc nested {} {
        global x
        puts "Inside nested x is $x"
    }
}
set x 1
global_test
#=>Inside global_test procedure x is 1
nested
#=>Inside nested x is 1
puts "Outside x is $x"
#=>Outside x is 1
#============================
proc test {{log 0}} {
    global LOG_DEBUG
    if {$log == $LOG_DEBUG} {
        puts "log"
    } else {
        puts "no log"
    }
}
set LOG_DEBUG 1
test
#=>no log
test 1
#=>log
#============================
proc change_global {} {
    upvar X y
    puts "Inside procedure"
    puts "y is $y"
    incr y 2
    puts "y is $y"
}
set X 3
puts "Outside procedure"
#=>Outside procedure
puts "X is $X"
#=>X is 3
change_global
#=>Inside procedure
#=>y is 3
#=>y is 5
#============================
proc sum {a b} {
    set s [expr {$a + $b}]
    return $s
}
set x 3
set y 4
sum $x $y
#=>7
#============================
proc sum_up {a b} {
    upvar $a m
    upvar $b n
    set s [expr {$m + $n}]
    return $s
}
set x 3
set y 4
sum_up x y
#=>7