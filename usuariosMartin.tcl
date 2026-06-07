# Abrir el archivo
set f [open "usuarios.txt" r]
set usuarios [split [read $f] "\n"]
close $f

set i 1
set lista {}

foreach u $usuarios {
    if {$u ne ""} {
        puts "$i. $u"
        incr i
        lappend lista $u
    }
}

set total [llength $lista]
puts "Total: $total usuarios"