set num [list 11 22 33]
lappend num 44
puts $num
#=>11 22 33 44
lappend num {55 66}
puts $num
#=>11 22 33 44 {55 66}
#============================
set num [list 11 22 33]
linsert $num 0 44
#=>44 11 22 33
puts $num
#=>11 22 33
linsert $num 1 55
#=>11 55 22 33
puts $num
#=>11 22 33
linsert $num end 66
#=>11 22 33 66
#============================
set num [list 11 22 33 44 55 66]
lreplace $num 0 2
#=>44 55 66
puts $num
#=>11 22 33 44 55 66
lreplace $num 1 1
#=>11 33 44 55 66
puts $num
#=>11 22 33 44 55 66
#============================
set num [list 11 22 33 44]
lreplace $num 1 2 77 88
#=>11 77 88 44
puts $num
#=>11 22 33 44
lreplace $num 1 1 99
#=>11 99 33 44
#============================
set person {{Tom 32} Male}
#=>{Tom 32} Male
lset person {0 1} 28
#=>{Tom 28} Male
puts $person
#=>{Tom 28} Male