set archivo [open "usuarios.txt" r]

set contenido [read $archivo]

close $archivo

set usuarios [split [string trim $contenido] "\n"]

set contador 0

foreach usuario $usuarios {
    incr contador
    puts "$contador. $usuario"
}

puts ""
puts "Total: $contador usuarios"
