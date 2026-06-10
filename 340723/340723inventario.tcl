# Autor: 340723

set equipo [exec hostname]
set usuario $env(USERNAME)
set fecha [clock format [clock seconds] -format "%Y-%m-%d"]

puts "=== REPORTE DEL SISTEMA ===\n"
puts "Equipo:  $equipo"
puts "Usuario: $usuario"
puts "Fecha:   $fecha"