format %d 0xf
#=>15
format %u -1
#=>18446744073709551615
format %o 9
#=>11
format %x 19
#=>13
format %X 19
#=>13
format %c 97
#=>a
format %f 3.141592
#=>3.141592
format %s 3.141592
#=>3.141592
format %e 9796.58
#=>9.796580e+03
format %E 9796.58
#=>9.796580E+03
#============================
format {%1$x} 6 15 19
#=>6
format {%2$x} 6 15 19
#=>f
format {%3$x} 6 15 19
#=>13
set i 2
format "%$i\$x" 6 15 19
#=>f
#============================
format "%s" abcd
#=>abcd
format "%6s" abcd
#=>  abcd
format "%-6s" abcd
#=>abcd
format "%0-6s" abcd
#=>abcd00
format "%06s" abcd
#=>00abcd
#============================
format "%+d" 6
#=>+6
format "%+4d" 6
#=>  +6
format "%+6.2f" 3.14
#=> +3.14
format "%d %d" -34 45
#=>-34 45
format "%+d %+d" -34 45
#=>-34 +45
#============================
format "%6.2f" 3.14159
#=>  3.14
format "%-6.2f" 3.14159
#=>3.14
format "%.2f" 3.14159
#=>3.14
#============================
format "%#o" 19
#=>023
format "%#x" 19
#=>0x13
#============================
set width 6
#=>6
format "%0-*s" $width abcd
#=>abcd00
#============================
for {set i 97} {$i < 101} {incr i} {
    puts [format "%4d %#6x %#6o %2c" $i $i $i $i]
}
#=>  97   0x61   0141  a
#=>  98   0x62   0142  b
#=>  99   0x63   0143  c
#=> 100   0x64   0144  d
#============================
for {set i 5} {$i < 10} {incr i 2} {
    puts [format "%2d %10.4f" $i [expr exp($i)]]
}
#=> 5   148.4132
#=> 7  1096.6332
#=> 9  8103.0839
