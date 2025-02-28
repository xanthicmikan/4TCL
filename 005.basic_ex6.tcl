set x 4
puts "Length: ${x}m"
#=>Length: 4m
set area [expr {$x * $x}]
puts "Area: [expr {$x * $x}]"
#=>Area: 16
#============================
set x 5
#=>5
set y [expr {$x +5}; set x]
#=>5
#============================
set x Hello
#=>Hello
set y TCL
#=>TCL
set len [expr {[string length $x] +  [string length $y]]
#=>8
#============================
set str1 Hello world
#=>wrong # args: should be "set varName ?newValue?"
set str2 $5
#=>can't read "5": no such variable
set str2 \$5
#=>$5
set net reg[x]
#=>invalid command name "x"
set net reg\[x]
#=>reg[x]
#============================
set str3 \\
#=> \
set str4 \b
#=>
set str4 \\b
#=>\b