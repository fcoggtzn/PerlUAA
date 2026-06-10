# Autor: 339768
# Lectura de usuarios

set archivo [open "usuarios.txt" r]
set contenido [read $archivo]
close $archivo

set usuarios [split [string trim $contenido] "\n"]

set contador 1

foreach usuario $usuarios {
    puts "$contador. $usuario"
    incr contador
}

puts "\nTotal: [llength $usuarios] usuarios"