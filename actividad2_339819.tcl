#!/usr/bin/tclsh

puts "Ingresa tu nombre:"
flush stdout
set nombre [gets stdin]

puts "Ingresa tu edad:"
flush stdout
set edad [gets stdin]

puts "Hola $nombre, tienes $edad años."

set edad_futura [expr {$edad + 10}]
puts "Edad en 10 años: $edad_futura"