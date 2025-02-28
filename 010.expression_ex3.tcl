expr {23 > 45}
#=>0
set a Java
#=>Java
set b TCL
#=>TCL
expr {$a < $b}
#=>1
expr {$b > 23}
#=>1
expr {8 == 010}
#=>1
#============================
expr {23 && true}
#=>1
expr {on && yes}
#=>1
expr {no || off}
#=>0
expr {true || 2.5}
#=>1
#============================
expr {0xF & 0x9}
#=>9
expr {0xF | 0x9}
#=>15
expr {0xF ^ 0x9}
#=>6
expr {~0xA}
#=>-11
expr { 2 << 4}
#=>32
expr { 8 >> 2}
#=>2
expr {-8 >> 2}
#=>-2
#============================
set a 26
set b 19
expr {($a > $b) ? $a :$b}
#=>26
expr {($a > $b) ? ($a-$b) : ($b-$a)}
#=>7
set x -4
expr {($x > 0) ? $x : -$x}
#=>4
expr {($a > $b) ? [puts "Max: $a"] : [puts "Max: $b"]}
#=>26