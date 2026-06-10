# Autor: 340723

set archivo [open "usuarios.txt" r]
set contenido [read $archivo]
close $archivo

set usuarios [split $contenido "\n"]
set contador 0

foreach usuario $usuarios {
    if {$usuario ne ""} {
        incr contador
        puts "$contador. $usuario"
    }
}

puts "\nTotal: $contador usuarios"