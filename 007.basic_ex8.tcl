set x TCL #illegal
set x TCL ;#valid
#============================
set a 10
#Multi-line comment \
here is also valid set a 100
puts $al
#=>10
#============================
set a [ set x \
       hello]
#=>hello
set a [ set x \  
       hello]
#=>invalid command name "hello"