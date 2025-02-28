set color [list red green yellow]
set c1 red
set c2 black
expr {$c1 in $color}
#=>1
expr {$c2 in $color}
#=>0
expr {$c1 ni $color}
#=>0
expr {$c2 ni $color}
#=>1

lsearch -exact $color $c1
#=>0
#============================
set color [list red green yellow]
set c1 red
if {$c1 in $color} {
    puts "Right"
} else {
    puts "Wrong"
}