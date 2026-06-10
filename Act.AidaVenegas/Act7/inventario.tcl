# Aída Venegas Cons ID:550894
# Actividad 7: Inventario del sistema con Tcl

set hostname [exec hostname]
set usuario  [exec whoami]
set fecha    [exec date "+%Y-%m-%d"]

puts "=== REPORTE DEL SISTEMA ==="
puts ""
puts "Equipo:  $hostname"
puts "Usuario: $usuario"
puts "Fecha:   $fecha"
