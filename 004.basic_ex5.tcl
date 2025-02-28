set a 5
set var a
puts $$var
#============================
set a 5
set var a
puts [set $var]
#=> 5
puts [set [set $var]]
#=> 5
puts $var
#=> a
set var
#=> a
#============================
set a 5
set var a
subst $$var
#=> 5
#============================
set var1 3.14
set var2 hello
set var3 5
foreach num {1 2 3} {
    puts "var$num = [set var$num]"
}
#=>var1 = 3.14
#=>var2 = hello
#=>var3 = 5
