set fid [open home/user/destop/readme.txt r]
set fdata [read $fid]
puts $fdata
close $fid
#=>Hello ~ Line 1
#=>Hello ~ Line 2
#============================
set fn readme.txt
set fid [open $fn r]
while {[gets $fid line] >= 0} {
    puts $line
}
close $fid
#============================
set fn readme.txt
set fid [open $fn r]
while {[eof $fid] != 0} {
    puts [gets $fid]
}
close $fid