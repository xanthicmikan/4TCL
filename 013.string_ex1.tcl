puts TCL
puts C++
puts "TCL language"
puts {TCL language}
#=>TCL
#=>C++
#=>TCL language
#=>TCL language
#============================
puts "There are many books"
puts "He said, \"Which one is your favourite?\""
puts {He said, "Which one is your favourite?"}
#=>There are many books
#=>He said, "Which one is your favourite?"
#=>He said, "Which one is your favourite?"
#============================
set lyrics "You say it best
when you say nothing at all"
puts $lyrics
#=>You say it best
#=>when you say nothing at all
#============================
string repeat a 5
#=>aaaa
string repeat xyz 3
#=>xyzxyzxyz
string repeat "Hello TCL" 2
#=>Hello TCLHello TCL