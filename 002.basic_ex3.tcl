set x 1
set y x
set z $x
puts $z
#============================
set x 1.5
puts $x
unset x
info exists x 
#=> 0
#============================
info tclversion
#=> 8.6
info hostname
#=> pcname
