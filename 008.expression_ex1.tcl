set r 2
set pi 3.14
expr $pi * $r ** 2
#=>12.56
expr {$pi * $r ** 2}
#=>12.56
#============================
set userinput {[puts DANGER!]}
#=>[puts DANGER!]
expr $userinput == 1
#=>DANGER!
#=>0
expr { $userinput == 1 }
#=>0