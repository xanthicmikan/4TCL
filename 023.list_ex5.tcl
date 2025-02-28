set bel {LUT1 LUT2 LUT3 AFF BFF CFF}
#=>LUT1 LUT2 LUT3 AFF BFF CFF
lsearch $bel LUT2
#=>1
lsearch $bel LUT4
#=>-1
lsearch -glob $bel {*FF}
#=>3
lindex $bel 3
#=>AFF
lsearch -exact $bel {*FF}
#=>-1
#============================
set bel {LUT1 LUT2 LUT3 AFF BFF CFF}
#=>LUT1 LUT2 LUT3 AFF BFF CFF
lsearch -glob $bel {[AB]FF}
#=>3
lsearch -glob -all $bel {[AB]FF}
#=>3 4
#============================
set bel {LUT1 LUT2 LUT3 AFF BFF CFF}
#=>LUT1 LUT2 LUT3 AFF BFF CFF
lsearch -glob $bel {[AB]FF}
#=>3
lsearch -glob -inline $bel {[AB]FF}
#=>AFF
lsearch -glob -all $bel {[AB]FF}
#=>3 4
lsearch -glob -all -inline $bel {[AB]FF}
#=>AFF BFF
#============================
set bel {LUT1 LUT2 LUT3 AFF BFF CFF}
#=>LUT1 LUT2 LUT3 AFF BFF CFF
lsearch -glob $bel {LUT*}
#=>0
lsearch -glob -not $bel {LUT*}
#=>3
lsearch -glob -all -not $bel {LUT*}
#=>3 4 5
lsearch -glob -all -inline -not $bel {LUT*}
#=>AFF BFF CFF
#============================
set x {28 30 20 26}
lsearch -exact -integer $x 28
#=>0
set period {3.333 5 10 6.667 10}
lsearch -exact -real $period 10
#=>2