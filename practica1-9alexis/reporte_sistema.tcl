set hostname [info hostname]

set fecha [clock format [clock seconds] -format "%Y-%m-%d"]

if {[info exists env(USER)]}{
    set usuario $env(USER)
} else{
    set usuario [string trim [exec whoami]]
}

puts "=== REPORTE DEL SISTEMA ==="
puts "Equipo: $hostname"
puts "usuario: $usuario"
puts "fecha: $fecha"