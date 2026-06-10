# Autor: 339768
# Analizador de logs

set archivos [glob logs/*.log]

foreach archivo $archivos {

    set tamano [file size $archivo]

    puts "[file tail $archivo] \t $tamano bytes"
}