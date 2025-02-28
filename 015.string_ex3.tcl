set str "Hello TCL"
string replace $str 0 4
#=> TCL
puts $str
#=>Hello TCL
string replace $str end-2 end
#=>Hello
puts $str
#=>Hello TCL
string replace $str 5 5
#=>HelloTCL
puts $str
#=>Hello TCL
#============================
set str "Hello TCL"
string length $str
#=>9
set str1 [string replace $str 0 4 Great]
#=>Great TCL
string length $str1
#=>9
set str2 [string replace $str 0 4 My]
#=>My TCL
string length $str2
#=>6
set str3 [string replace $str 0 4 "I like"]
#=>I like TCL
string length $str3
#=>10
set str4 [string replace $str 0 4 "You like"]
#=>You like TCL
string length $str4
#=>12
#============================
set str1 grey
set str2 green
string compare $str1 $str2
#=>1
string compare $str2 $str1
#=>-1
string compare Green green
#=>-1
string compare -nocase Green green
#=>0
string compare -length 3 $str1 $str2
#=>0
#============================
string equal grey green
#=>0
string equal grey grey
#=>1
string equal Green green
#=>0
string equal -nocase Green green
#=>1
string equal -length 3 green grey
#=>1
#============================
string equal -length 3 green grey
#=>1
string equal green grey -length 3
#=>bad option "green": must be -nocase or -length
#============================
set str1 grey
set str2 green
time {expr {$str1 == $str2}} 1000
#=>0.335 microseconds per iteration
time {expr {$str1 eq $str2}} 1000
#=>0.284 microseconds per iteration
time {string equal $str1 $str2} 1000
#=>0.268 microseconds per iteration