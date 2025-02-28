array set height {
    Tom 168
    Jerry 175
    Nina 150
}
puts "Before: [array size height]"
#=>3
unset height(Tom)
puts "After: [array size height]"
#=>2
unset height
puts [array exists height]
#=>0
#============================
array set height {
    Tom 168
    Jerry 175
    Nina 150
}

array unset height
puts [array exists height]
#=>0