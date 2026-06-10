# Autor: 339768
# Actividad 2 - Variables y operaciones

puts -nonewline "Ingrese su nombre: "
flush stdout
gets stdin nombre

puts -nonewline "Ingrese su edad: "
flush stdout
gets stdin edad

puts "\nHola $nombre, tienes $edad años."

set edadFutura [expr {$edad + 10}]

puts "Edad en 10 años: $edadFutura"