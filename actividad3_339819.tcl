#!/usr/bin/tclsh

# Abrir archivo
set archivo [open "actividad3_339819.txt" r]


set contador 0
set usuarios {}

while {[gets $archivo linea] >= 0} {
    if {$linea ne ""} {
        incr contador
        lappend usuarios $linea
    }
}

close $archivo

set num 1
foreach usuario $usuarios {
    puts "$num. $usuario"
    incr num
}


puts "\nTotal: $contador usuarios"