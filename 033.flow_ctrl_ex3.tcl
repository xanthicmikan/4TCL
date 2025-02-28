set n 1
while {$n < 3} {
    puts "n is $n"
    incr n
}
puts "Exited loop with n equal to $n"
#=>n is 1
#=>n is 2
#=>Exited loop with n equal to 3
#============================
set n 1
while "$n < 3" {
    incr n
    if {$n > 4} break
    if "$n > 3" continue
    puts "n is $n"
}
puts "Exited loop with n equal to $n"
#=>n is 2
#=>n is 3
#=>Exited loop with n equal to 5
#============================
set n 4
for {set i 0} {$i < $n} {incr i} {
    puts "i is $i"
}
#=>i is 0
#=>i is 1
#=>i is 2
#=>i is 3
#============================
set a [list red yellow green black orange white]
set row 3
set col 2
for {set i 0} {$i < $row} {incr i} {
    for {set j 0} {$j < $col} {incr j} {
        set n [expr {$i * $col + $j}]
        set color($i.$j) [lindex $a $n]
    }
}
parray color
#=>color(0.0) = red
#=>color(0.1) = yellow
#=>color(1.0) = green
#=>color(1.1) = black
#=>color(2.0) = orange
#=>color(2.1) = white