# Aída Venegas Cons ID:550894
# Actividad 10: Analizador de Logs - Versión Tcl

set directorio "logs"

if {![file isdirectory $directorio]} {
    puts "El directorio '$directorio' no existe."
    exit 1
}

set archivos [glob -nocomplain -directory $directorio *.log]

if {[llength $archivos] == 0} {
    puts "No se encontraron archivos .log en el directorio '$directorio'."
    exit 0
}

puts "Archivos .log encontrados en '$directorio':"
puts ""

foreach archivo $archivos {
    set nombre [file tail $archivo]
    set tamano [file size $archivo]

    # Convertir a KB con un decimal
    set kb [format "%.0f" [expr {$tamano / 1024.0}]]

    puts [format "%-20s %s KB" $nombre $kb]
}
