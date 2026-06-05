set archivo [open "usuarios.txt" r]
set cont 1
while {[gets $archivo linea] >= 0} {
puts "$cont: $linea"
incr cont
}
incr cont -1
puts "Total: $cont usuarios"
close $archivo