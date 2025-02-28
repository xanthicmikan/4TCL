array set height {
    Tom 168
    Jerry 175
    Nina 150
}
set elmt_name [array names height]
foreach i_elmt_name $elmt_name {
    puts "$i_elmt_name -> $height($i_elmt_name)"
}
#=>Jerry -> 175
#=>Tom -> 168
#=>Nina -> 150
#============================
array set height {
    Tom 168
    Jerry 175
    Nina 150
}
set pair [array get height]
foreach {key value} $pair {
    puts "$key -> $value"
}
array set heightx [array get height]
parray heightx
#=>Jerry -> 175
#=>Tom -> 168
#=>Nina -> 150
#=>heightx(Jerry) = 175
#=>heightx(Nina)  = 150
#=>heightx(Tom)   = 168
