#!/usr/bin/tclsh

# Obtener información del sistema
set equipo  [exec hostname]
set usuario [exec whoami]
set fecha   [clock format [clock seconds] -format "%Y-%m-%d"]

# Mostrar el reporte
puts "=== REPORTE DEL SISTEMA ==="
puts "Equipo:  $equipo"
puts "Usuario: $usuario"
puts "Fecha:   $fecha"
