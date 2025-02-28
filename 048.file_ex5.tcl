set fn test.txt
set fid [open $fn w]
set data "This is some test data"
puts $fid $data
close $fid
#============================
set fn test.txt
set fid [open $fn w]
if {[file exists $fn]} {
    puts stderr "The file $fn has already exited"
    break
} else {
    set fid [open $fn w]
    set data "This is some test data"
    puts $fid $data
    close $fid
}
