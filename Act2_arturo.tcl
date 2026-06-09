#!/usr/bin/usr/bin/env tclsh

# Solicitar el nombre al usuario
puts -nonewline "Introduce tu nombre: "
flush stdout
gets stdin nombre

# Solicitar la edad al usuario
puts -nonewline "Introduce tu edad: "
flush stdout
gets stdin edad

# Calcular la edad dentro de 10 años usando expr
set edad_futura [expr {$edad + 10}]

# Mostrar los mensajes en pantalla
puts "Hola $nombre, tienes $edad años."
puts "Dentro de 10 años tendrás: $edad_futura años."
