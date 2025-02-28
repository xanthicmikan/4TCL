set x 1
if {$x > 0} {
    set x -$x
}
puts $x
if yes {
    puts "This message is always shown"
}
if true {
    puts "This message is always shown"
}
if {no || false} {
    puts "This message is never shown"
}
#=>-1
#=>This message is always shown
#=>This message is always shown
#============================
set x 1
if {$x > 0} 
#=> wrong # args: no script following "$x > 0" argument
{
    set x -$x
}
#============================
set sex female
if {[string equal $sex male]} {
    puts "It is a boy"
} else {
    puts "It is a girl"
}
#=>It is a girl
if {[string equal $sex male]} {
    puts "It is a boy"
} 
else {
    puts "It is a girl"
}
#=>invalid command name "else"
#============================
set n 0
if {$n == 0} {
    set str zero
} elseif {$n == 1} {
    set str one
} elseif {$n == 2} {
    set str two
} else {
    set str hello
}
#=>zero