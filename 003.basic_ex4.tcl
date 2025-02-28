set a-b-c Hello
#=> Hello
set str $a-b-c
#can't read "a"
set str ${a-b-c}
#=> Hello
#============================
set a 5
set b 6
set c $a$b
#=> 56
append a $b
#============================
set x Hello
set y TCL
set x ${x}_${y}
#=> Hello_TCL
set x $x_$y
#=> #can't read "x_"
set x LUT
set y ${x}6
#=> LUT6
set y $x6
#=> #can't read "x6"
