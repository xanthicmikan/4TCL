set height(Tom) 168
set height(Nina) 170
puts [array exists height]
#=>1
puts [array size height]
#=>2
#============================
array set height {
    Tom 168
    Jerry 175
    Nina 150
}
set n [array size height]
puts "array has $n elements"
#=>array has 3 elements
#============================
array set x {}
puts [array size x]
#=>0