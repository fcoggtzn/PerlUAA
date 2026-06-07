puts "Ingrese su nombre:"
gets stdin nombre

puts "Ingrese su edad:"
gets stdin edad
set edad [expr {$edad}]

puts "Hola $nombre, tienes $edad años."

set futura [expr {$edad + 10}]
puts "Edad en 10 años: $futura"