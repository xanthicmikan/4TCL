namespace eval counter {
    variable cnt 0
    proc up {} {
        variable cnt
        return [incr cnt]
    }
    proc down {} {
        variable cnt
        return [incr cnt-1]
    }
    proc reset {} {
        variable cnt
        set cnt 0
    }
}
counter::up
#=>1
counter::up
#=>2
counter::down
#=>1
counter::reset
#=>0
counter::up
#=>1
#============================
set num 0
namespace eval scope {
    variable num 2
    proc print_ns {} {
        variable num
        puts "Inside namespace: $num"
    }
    proc print_global {} {
        global num
        puts "Outside namespace: $num"
    }
    proc print_local {} {
        set num 3
        puts "Inside namespace: $num"
    }
}
scope::print_ns
#=>Inside namespace: 2
scope::print_global
#=>Outside namespace: 0
scope::print_local
#=>Inside namespace: 3
#============================
namespace eval scope {
    variable num 2
    proc print_ns {} {
        variable num
        puts "Inside namespace: $num"
    }
    namespace eval sub_scope {
        proc print_ns {} {
            variable num
            puts "Inside namespace: $num"
        }
    }
}
scope::print_ns
#=>Inside namespace: 2
scope::sub_scop::print_ns
#=>invalid command name "scope::sub_scop::print_ns"