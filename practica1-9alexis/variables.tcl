puts -nowline "Ingresa tu nombre"
flush stdout
set nombre [gets stdin]

puts -nowline "Ingresa tu edad"
flush stdout
set edad [gets stdin]

puts "Hola $nombre, tienes $edad anios."

set edad_futura [expr{$edad + 10}]
puts "Edad en 10 anios. $edad_futura"