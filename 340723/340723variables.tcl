# Autor: 340723

puts -nonewline "Ingresa tu nombre: "
flush stdout
set nombre [gets stdin]

puts -nonewline "Ingresa tu edad: "
flush stdout
set edad [gets stdin]

set edadFutura [expr {$edad + 10}]

puts "Hola $nombre, tienes $edad años."
puts "Edad en 10 años: $edadFutura"