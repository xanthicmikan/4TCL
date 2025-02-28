string is alpha xyz
#=>1
string is ascii 32
#=>1
string is boolean on
#=>1
string is digital 1314
#=>1
string is double 3.1415
#=>1
string is false off
#=>1
string is true yes
#=>1
string is lower abc
#=>1
string is upper ABC
#=>1
string is punct
#=>1
string is space ""
#=>1
string is wordchar hello_tcl
#=>1
string is xdigit 5ff
#=>1
#============================
set str "Hello TCL"
string length $str
#=>9
string index $str 0
#=>H
string index $str end
#=>L
string index $str end-1
#=>C
set i 2
string index $str end-$i
#=>T
string index $str end-7
#=>e
string index $str end - 7
#=>wrong # args: should be "string index string charIndex"
#============================
set str "Hello TCL"
#=>Hello TCL
string range $str 0 4
#=>Hello
string range $str end-2 end
#=>TCL
string range $str 0 0
#=>H
string length [string range $str 4 0]
#=>0
#============================
set str Hello
set v " TCL"
set str_new $str$v
append str $v
puts $str
#=>Hello TCL
