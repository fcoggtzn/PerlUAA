# Autor: 339768
# Inventario básico

set equipo [exec hostname]
set usuario $::env(USER)

set fecha [clock format [clock seconds] -format "%Y-%m-%d"]

puts "=== REPORTE DEL SISTEMA ===\n"

puts "Equipo: $equipo"
puts "Usuario: $usuario"
puts "Fecha: $fecha"