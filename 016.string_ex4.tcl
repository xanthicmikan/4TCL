set str "this is a book, the basic syntax rules"
string first th $str
#=>0
string first th $str 25
#=>-1
string first book $str
#=>10
string last th $str
#=>16
string last th $str 40
#=>16
string last book $str
#=>10
#============================
string match t* tcl
#=>1
string match t?l tcl
#=>1
string match gr?n tcl
#=>0
#============================
string match {*.[ch]} fir.c
#=>1
string match {*.[ch]} fir.h
#=>1
string match {*.[ch]} fir.ch
#=>0
string match {*[1-9]} bus1
#=>1
string match {*[1-9][2-7]} bus26
#=>1
string match {*[1-9][2-7]} bus28
#=>0
set pat {m[a-zA-Z0-9_]?}
#=>m[a-zA-Z0-9_]?
string match $pat mc*
#=>1
string match $pat mc
#=>0
string match $pat m9c
#=>1
string match $pat m_k
#=>1
string match $pat mc9k
#=>0
#============================
set p1 {*\?}
#=>*\?
string match $p1 why?
#=>1
set p2 {*bus\[[0-4]\]}
#=>*bus\[[0-4]\]
set str {bus[3]}
#=>bus[3]
string match $p2 $str
#=>1