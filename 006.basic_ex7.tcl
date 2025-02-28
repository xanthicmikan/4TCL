set x 10
set a x
set b $$a
#=>$x
#============================
set a Hello
set b world
set str_len [expr {[string length $a] + [string length $b] }]
#=>10
#============================
set a Hello
set b world
set alen [string length $a]
#=>5
set blen [string length $b]
#=>5
set str_len [expr {$alen + $blen}]
#=>10
#============================
set s "Hello TCL"
puts "Length of $s: [string length $s]"
#=>Length of Hello TCL: 9
puts {Length of $s: [string length $s]}
#=>Length of $s: [string length $s]
#============================
set s {Apple: $5\kg}
puts "Length of $s: [string length $s]"
#=>Length of Apple: $5\kg: 12
#============================
