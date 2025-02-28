set n 0
switch -exact -- $n {
    0 {
    set str zero
    }
    1 {
    set str one
    }
    2 {
    set str two
    }
    default {
    set str hello
    }
}
#=>zero
#============================
set x one
set y 1
set z one
switch -exact -- $x {
    $z {
    set v [expr {$y + 1}]
    puts "Match \$z. $y+$z is $v"
    }
    one {
    set v [expr {$y + 1}]
    puts "Match one. $y+$z is $v"
    }
    default {
    puts "$x is NOT A MA"
    }
}
#=>Match one. 1+one is 2
#============================
set x one
set y 1
set z one
switch -exact -- $x \
    $z {
    set v [expr {$y + 1}]
    puts "Match \$z. $y+$z is $v"
    } \
    one {
    set v [expr {$y + 1}]
    puts "Match one. $y+$z is $v"
    } \
    default {
    puts "$x is NOT A MA"
    }
#=>Match $z. 1+one is 2
#============================
set n cat
switch -exact -- $n {
    cat {
    puts pet
    }
    table {
    puts funiture
    }
    default {
    unknow
    }
}
#=>pet