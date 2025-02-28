### ◆ help
```tcl
help Procedures
```
### ◆ man
```tcl
man query_objects
```
### ◆ set, incr
```tcl
set total_cell 0
incr total_cells
```
### ◆ echo, puts
```tcl
echo -n "My name is"
```
-n : Output without line break
```tcl
puts $date
puts "$x + $y = [expr $x + $y]"
```
-nonewline : without line break  
-file_id : file name  
-arg : Output data  
### ◆ substitution : [], $, \
-  [  ] : 
```tcl
set a [expr 24*2]
```
- $ : 
```tcl
set a 24
set b [expr $a * 2]
```
result : `48`
- \ : 
```tcl
echo "This is line 1.\nThis is line 2."
```
result :  
`This is 1.`  
`This is 2.`
### ◆ substitution : "", {}
- {} : 
```tcl
set a 5; set b 10
echo {[expr $b - $a]} evaluates to [expr $b - $a]
```
- "" : 
```tcl
set a 6; set b 3
echo "A is $a; B is $b.\nNet is [expr $a - $b]"
```
### ◆ variables : simple, array
```tcl
set buf_name lsi_10k/B1I
```
- append:
```tcl
set c1 U1; set c2 U2
append c1 " " $c2 
```
- incr:
```tcl
set b 10
incr b
incr b -6 
```
- unset:
```tcl
set b 10
unset b
```
- info exists:
```tcl
info exists b
```
- info vars:
```tcl
info vars total_c*
```
### ◆ variable precision
```tcl
set a 10; set b 4.0; set c 4
expr $a/$b
expr $a/$c
```
### ◆ environment variables
```tcl
array names env
```
```tcl
echo $env(HOME)
```
```tcl
getenv HOME
```
### ◆ Comment 
```tcl
# set CLK_NAME Sysclk; set CLK_PERIOD 10; \
set INPUT_DELAY 2
```
### ◆ Source
```tcl 
source mysession.tcl
```
### ◆  Output TCL file
```tcl
source -echo -verbose myrun.tcl
source -echo -verbose myrun.tcl > myrun.out
```
### ◆ For example
```tcl
set DESIGN_NAME top
set SUB_MODULE [list sub1.v sub2.v sub3.v]
set CLK_NAME Sysclk
set CLK_PERIOD 10
set INPUT_DELAY 2
set OUTPUT_DELAY 3
read_verilog [list $SUB_MODULE $DESIGN_NAME.v]
current_design $DESIGN_NAME
link
create_clock -p $CLK_PERIOD -n $CLK_NAME [get_ports $CLK_NAME]
set_input_delay $INPUT_DELAY -clock $CLK_NAME [list [all_inputs]]
set_output_delay $OUTPUT_DELAY -clock $CLK_NAME [list [all_outputs]]
compile
```
### ◆ Strings
- compare :  
```tcl
string compare ? -nocase ? ?-length len? str1 str2
```
- string :  
```tcl
string toupper string
```
### ◆ list
```tcl
set D_pins "I1/FF3/D I1/FF4/D I1/FF5/D"
set D_pins "I1/FF3/D I1/FF4/D I1/FF5/D"
set D_pins [list I1/FF3/D I1/FF4/D I1/FF5/D]
set compound_list [list {x y} {1 2.5 3.75 4} {red green blue}]
```
```tcl
echo [lindex $D_pins 0]
echo [lindex $compound_list 1]
```
```tcl
set a 5
set b {c d $a [list $a Z]}
set b [list c d $a [list $a Z]]
set b "c d $a [list $a Z]"
```
### ◆ array
```tcl
set vio_rpt_ext(ir_drop) .volt
set vio_rpt_ext(curr_dens) .em
set vio_rpt_ext(curr) .current
```
```tcl
echo $vio_rpt_ext(curr)
```
```tcl
array size vio_rpt_ext
array names vio_rpt_ext
```
### ◆ Expressions
```tcl
set p 5
set a [expr (12*$p)]
```
### ◆ Control Flow
- if : 
```tcl
if {$x == 0} {  
echo "Equal"
} elseif {$x > 0} {
echo "Greater"
} else {
echo "Less"
}
```
- while : 
```tcl
set p 0
while {$p <= 10} {
echo "$p squared is: [expr $p * $p]"
incr p
```
- for : 
```tcl
for {set p 0} {$p <= 10} {incr p} {
echo echo "$p squared is: [expr $p * $p]"
}
```
- foreach : 
```tcl
set mylist {I1/FF3/D I1/FF4/D I1/FF5/D}
foreach i $mylist {echo $i}
```
result:  
`I1/FF3/D I1/FF4/D I1/FF5/D`

`I1/FF3/D`  
`I1/FF4/D`  
`I1/FF5/D`
### ◆ break
```tcl
foreach f [which {VDD.ave GND.tech p4mvn2mb.idm}] {
    echo -n "File $f is "
    if { [file isdirectory $f] == 0 } {
        echo "NOT a directory"
    } else {
    echo "a directory"
    break
   }
}
```
### ◆ continue
```tcl
set p 0
while {$p <= 10} {
    if {$p % 2} {
    incr p
    continue
    }
    echo "$p squared is: [expr $p * $p]"
    incr p
}
```
### ◆ switch
```tcl
set fnames [glob *.em *.volt *.current]
set curr_ct 0
set em_ct 0
set volt_ct 0
foreach f $fnames {
    set f_ext [file extension $f]
    switch $f_ext {
        .current {incr curr_ct}
        .em {incr em_ct}
        .volt {incr volt_ct}
    }
}
echo "There are $curr_ct current files."
echo "There are $em_ct current density files."
echo "There are $volt_ct IR drop files."

```
### ◆ file name
file dirname fname, file exists fname, file extension fname, file isdirectory fname, file isfile fname...etc  
  
### ◆ glob
```tcl
set flist [glob *.em *.volt]
```
### ◆ open, close, flush
- open fname ?access_mode? :  
r, r+, w, w+, a, a+  
- open & close :  
```tcl
set fid [open VDD.em w+]
close $fid
```
- flush
```tcl
flush $fid
```
### ◆ gets, puts  
- gets
```tcl
 gets $fid var
```
- puts
```tcl
# Write out a line of text, then read it back and print it
set fname "mytext.txt"
# Open file, then write to it
set fid [open $fname w+]
puts $fid "This is my line of text."
close $fid

# Open file, then read from it
set fid [open $fname r]
set data_in [gets $fid]
close $fid

# Print out data read
echo $data_in
```