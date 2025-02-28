set f {c:/xxxx/tcl/tclsh.exe}
file dirname $f
file extension $f
file nativename $file
file rootname $file
file tail $f
#============================
set dir1 c:\data\tcl
set dir2 c:/data/tcl
set f c:/data/tcl/123.tcl
file split $dir2
file split $f
file join c:/data tcl 123.tcl
#============================
cd ./test
pwd
glob *
glob */
glob ./src/*.sv
glob ./*/*.sv
glob {{src,tb}/*.[sv]*}
#============================
glob -types {f r w} ./src/*
glob -types {d r w} ./src/*
glob -types f ./src/*
glob -types f *{pin,me}*
