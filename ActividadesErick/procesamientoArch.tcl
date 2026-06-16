#!/usr/bin/tclsh
set archivo [open "usuarios.txt" r]
set contenido [read $archivo]
close $archivo
set usuarios [split $contenido "\n"]
set lista_usuarios {}
foreach u $usuarios {
    if {[string trim $u] ne ""} {
        lappend lista_usuarios $u
    }
}
set total [llength $lista_usuarios]
set i 1
foreach usuario $lista_usuarios {
    puts "$i. $usuario"
    incr i
}

puts "\nTotal: $total usuarios"