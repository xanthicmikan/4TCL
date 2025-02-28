namespace eval ns1 {
    proc print {} {
        puts "This is TCL"
    }
    proc add {a b} {
        return [expr {$a + $b}]
    }
}
namespace eval ns2 {
    proc print {} {
        puts "This is C++"
    }
}
proc ns2::add {a b c} {
    return [expr {$a + $b +$c}]
}
proc print {} {
    puts "This is Python"
}
set a 1
set b 2
set c 3
ns1::print
#=>This is TCL
ns1::add $a $b
#=>3
ns2::print
#=>This is C++
ns2::add $a $b $c
#=>6
print
#=>This is Python
::print
#=>This is Python
#============================
namespace eval ns3 {
    namespace eval ns31 {
        proc print {} {
            puts "This is TCL"
        }
    }
    namespace eval ns32 {
        proc print {} {
            puts "This is C++"
        }
    }
    proc print {} {
        puts "This is Python"
    }
}
ns3::ns31::print
#=>This is TCL
ns3::ns32::print
#=>This is C++
ns3::print
#=>This is Python
