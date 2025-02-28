set color {red blue green}
#=>red blue gree
set world1 {{hello world} {ice water} table}
#=>{hello world} {ice water} table
set world2 {"hello world" "ice water" table}
#=>"hello world" "ice water" table
#============================
set color [list red blue green]
#=>red blue gree
set world1 [list {hello world} {ice water} table]
#=>{hello world} {ice water} table
set world2 [list "hello world" "ice water" table]
#=>{hello world} {ice water} table
#============================
set color [list red blue green]
#=>red blue gree
set num [list 11 22 33]
#=>11 22 33
set mylist1 [list $color $num]
#=>{red blue green} {11 22 33}
set mylist2 [list [list red blue green] [list 11 22 33]]
#=>{red blue green} {11 22 33}
set mylist3 {{red blue green} {11 22 33}}
#=>{red blue green} {11 22 33}
#============================
set color [list red blue green]
#=>red blue gree
set num [list 11 22 33]
#=>11 22 33
set letter [list a b c]
#=>a b c
set mylist1 [concat $color $num]
#=>red blue green 11 22 33
set mylist2 [concat $color $num $letter]
#=>red blue green 11 22 33 a b c
concat $color
#=>red blue gree
#============================
set num [list 11 22 33]
#=>11 22 33
set mylist1 [lrepeat 2 $num]
#=>{11 22 33} {11 22 33}
set mylist1 [lrepeat 2 11 22 33]
#=>11 22 33 11 22 33
set a 11;set b 22;set c 33;
set mylist1 [lrepeat 2 $a $b $c]
#=>11 22 33 11 22 33
#============================
set x 1
set t1 [list \$x {$x} $x]
#=>{$x} {$x} 1
set t2 [list a b\ c d]
#=>a {b c} d
set t3 [list a "b }" "c\}" "d\ne" "f\]"]
#=>a b\ \} c\} {d
#=>e} f\]


