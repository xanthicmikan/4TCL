set keys {Tom Mary Nina}
set values {168 150 174}
foreach i_keys $keys i_values $values {
    set height($i_keys) i_values
}
parray height
set pair {Tom 168 Mary 150 Nina 174}
foreach {keys values} $pair {
    set heightx($keys) $values
}
parray heightx
#=>height(Mary) = i_values
#=>height(Nina) = i_values
#=>height(Tom)  = i_values
#=>heightx(Mary) = 150
#=>heightx(Nina) = 174
#=>heightx(Tom)  = 168
#============================
set matrix(1,1) Tom
set matrix(1,2) Male
set matrix(2,1) Teacher
set matrix(2,2) 40
puts [array size matrix]
#=>4
set i 1
set j 2
set gender $matrix($i,$j)
#=>Male