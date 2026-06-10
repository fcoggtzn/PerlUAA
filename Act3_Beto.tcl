#!/usr/bin/env tclsh

set archivo "usuarios.txt"

# Verificar si el archivo existe antes de abrirlo
if {![file exists $archivo]} {
    puts "Error: El archivo $archivo no existe."
    exit 1
}

# Abrir el archivo en modo lectura
set fp [open $archivo r]
set contador 0

puts "--- Lista de Usuarios ---"

# Leer el archivo línea por línea
while {[gets $fp linea] >= 0} {
    # Eliminar espacios en blanco o líneas vacías si las hay
    set linea [string trim $linea]
    if {$linea eq ""} {continue}

    # Incrementar el contador
    incr contador

    # Mostrar el nombre numerado
    puts "$contador. $linea"
}

# Cerrar el archivo
close $fp

# Mostrar el total de usuarios contados
puts "-------------------------"
puts "Total de usuarios: $contador"
