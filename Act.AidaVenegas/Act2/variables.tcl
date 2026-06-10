# Aída Venegas Cons ID:550894
# Actividad 2: Variables y operaciones en Tcl

puts -nonewline "Ingresa tu nombre: "
flush stdout
set nombre [gets stdin]

puts -nonewline "Ingresa tu edad: "
flush stdout
set edad [gets stdin]

puts "Hola $nombre, tienes $edad años."

set edadFutura [expr {$edad + 10}]
puts "Edad en 10 años: $edadFutura"
