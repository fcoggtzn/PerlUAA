# Aída Venegas Cons ID:550894
# Actividad 3: Procesamiento de archivos en Tcl

set archivo [open "usuarios.txt" r]
set contenido [read $archivo]
close $archivo

set usuarios [split [string trim $contenido] "\n"]
set contador 0

foreach usuario $usuarios {
    if {[string trim $usuario] ne ""} {
        incr contador
        puts "$contador. $usuario"
    }
}

puts ""
puts "Total: $contador usuarios"
