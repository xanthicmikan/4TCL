set str1 "hello TCL"
string totitle $str1
#=>Hello TCL
string toupper $str1
#=>HELLO TCL
set str2 "Great Job"
string tolower $str2
#=>great job
#============================
set str aabbcc1122ccbbaa
string trim $str abc
#=>1122
string trimleft $str abc
#=>1122ccbbaa
string trimright $str abc
#=>aabbcc1122
set str axbxxc
string trim $str abc
#=>xbxx
string trimleft $str abc
#=>xbxxc
string trimright $str abc
#=>axbxx