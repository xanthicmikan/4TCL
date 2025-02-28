proc array_sum_v1 {array_name} {
    upvar $array_name a
    set sum 0
    foreach {key value} [array get a] {
        set sum [expr {$sum + $value}]
    }
    return $sum
}
array set x {
    0 10
    1 20
    2 30
    3 40
}
array_sum_v1 x
#=>100
#============================
proc array_sum_v2 {array_list} {
    set sum 0
    foreach {key value} $array_list {
        set sum [expr {$sum + $value}]
    }
    return $sum
}
array set x {
    0 10
    1 20
    2 30
    3 40
}
array_sum_v2 [array get x]
#=>100
#============================
proc copy_array_v1 {a1 a2} {
    upvar $a1 x1
    upvar $a2 x2
    foreach {key value} [array get x1] {
        set x2($key) $value
    }
}
array set a1 {
    name Tom
    age 34
    gender Male
}
array set a2 {}
copy_array_v1 a1 a2
parray a2
#=>a2(age)    = 34
#=>a2(gender) = Male
#=>a2(name)   = Tom
#============================
proc copy_array_v2 {a} {
    upvar $a x
    foreach {key value} [array get x] {
        set y($key) $value
    }
    return [array get y]
}
array set a {
    name Tom
    age 34
    gender Male
}
array set b [copy_array_v2 a]
parray b
#=>b(age)    = 34
#=>b(gender) = Male
#=>b(name)   = Tom