set archivo[open "usuarios.txt" r]

set contador 0

while {[gets $archivo linea] >= 0}{
    incr contador
    puts "$contador. $linea"
}

close $archivo
puts "Total: $contador usuarios"