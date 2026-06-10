#!/usr/bin/tclsh

# Obtener información del sistema
set hostname [exec hostname]
set fecha [exec date +%Y-%m-%d]
set usuario $env(USER)

puts "Reporte de mi sistema\n"
puts "Equipo: $hostname"
puts "Usuario: $usuario"
puts "Fecha: $fecha"