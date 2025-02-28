namespace eval mymath {
    namespace export add
    proc add {a b} {
        return [expr {$a + $b}]
    }
    namespace export mul
    proc mul {a b} {
        return [expr {$a * $b}]
    }
    proc cmpr {a b} {
        if {$a > $b} {return 1} else {return 0}
    }
}
namespace import mymath::add
namespace import mymath::mul
set a 3
set b 4
add $a $b
#=>7
mul $a $b
#=>12
mymath::cmpr $a $b
#=>0
cmpr $a $b
#=>invalid command name "cmpr"
namespace import mymath::*
mul 1 2
#=>2
namespace forget mymath::mul
add 1 2
#=>3
mul 1 2
#=>invalid command name "mul"
info command mymath::*
#=>::mymath::add ::mymath::cmpr ::mymath::mul
namespace origin add
#=>::mymath::ad
#============================
namespace eval mymath {
    proc add {a b} {
        return [expr {$a + $b}]
    }
    proc mul {a b} {
        return [expr {$a * $b}]
    }
    namespace export add mul
    namespace ensemble create
}
#=>::mymath
namespace ensemble exist mymath
mymath add 1 3
#=>4
mymath mul 1 3
#=>3
mymath m 1 3
#=>3