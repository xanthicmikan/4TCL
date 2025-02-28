namespace eval scope {
    variable num 2
    proc print_ns {} {
        variable num
        puts "Inside namespace: $num"
    }
}
set scope::num 8
#=>8
scope::print_ns
#=>Inside namespace: 8
set ns ::scope
#=>::scope
upvar #0 ${ns}::num y
set y "Hello world"
scope::print_ns
#=>Inside namespace: Hello world
#============================
namespace eval scope1 {
    variable num 2
    proc print_ns {} {
        namespace upvar [namespace current] num x
        puts "Inside namespace: $x"
    }
}
namespace eval scope2 {
    variable num TCL
    proc print_ns {} {
        namespace upvar ::scope1 num y
        puts "Inside namespace: $y"
    }
}
scope1::print_ns
#=>Inside namespace: 2
scope2::print_ns
#=>Inside namespace: 2
#============================
namespace eval scope {
    variable num 2
    proc print_ns {} {
        upvar 1 num x
        puts "Inside namespace: [info level]: $x"
    }
    namespace eval sub_scope {
        proc print_ns {} {
            upvar 1 num x
            puts "Inside namespace: [info level]: $x"
        }
    }
}
set num TCL
scope::print_ns
#=>Inside namespace: 1: TCL
scope::sub_scope::print_ns
#=>Inside namespace: 1: TCL