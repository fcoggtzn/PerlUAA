puts -nonewline "Ingresa tu nombre: "
flush stdout
gets stdin nombre

puts -nonewline "Ingresa tu edad: "
flush stdout
gets stdin edad

puts "Hola $nombre, tienes $edad años."

set edad_futura [expr {$edad + 10}]

puts "Edad en 10 años: $edad_futura"
