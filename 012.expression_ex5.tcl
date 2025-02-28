for {set i 0} {$i < 4} {incr i 1} {
    puts "[expr {rand()}]"
}
#=>0.40327278543416073
#=>0.8057047919396799
#=>0.4804381302001132
#=>0.7236542733030646
#============================
set x 0.1
expr {bool($x > 0)}
#=>1
expr {double(1)/3}
#=>0.3333333333333333
expr {int(3.14)}
#=>3
expr {wide(7.9)}
#=>7
#============================
set x apple
set y orange
expr {$x eq $y}
#=>0
expr {$x ne $y}
#=>1
expr {"New Zealand" ne "New York"}
#=>1