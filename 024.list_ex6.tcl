set word {horse cat bull pig}
lsort $word
#=>bull cat horse pig
lsort -ascii $word
#=>bull cat horse pig
lsort -ascii -increasing $word
#=>bull cat horse pig
lsort -ascii -decreasing $word
#=>pig horse cat bull
puts $word
#=>horse cat bull pig
#============================
set word {horse cat bull pig}
lsort -unique $word
#=>bull cat horse pig
lsort -unique -decreasing $word
#=>pig horse cat bull
#============================
set name {{Song 10} {Ting 8} {Dou 41}}
lsort -integer -index 1 -decreasing $name
#=>{Dou 41} {Song 10} {Ting 8}
#============================
set str color
split $str {}
#=>c o l o r
split abracadabra b
#=>a racada ra
split abracadabra ab
#=>{} {} r c d {} r {}
set date 2025/04/19
split $date /
#=>2025 04 19
#============================
set num {1 2 3 4 5}
#=>1 2 3 4 5
set sum [ expr [join $num +]]
#=>15