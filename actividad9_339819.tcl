#!/usr/bin/tclsh

proc mostrarHostname {} {
    set hostname [exec hostname]
    puts "\nNombre del equipo: $hostname\n"
}

proc mostrarUsuario {} {
    set usuario $::env(USER)
    puts "\nUsuario actual: $usuario\n"
}

proc mostrarFecha {} {
    set fecha [exec date "+%Y-%m-%d %H:%M:%S"]
    puts "\nFecha y hora actual: $fecha\n"
}

proc listarArchivos {} {
    puts "\n--- Archivos del directorio actual ---"
    set archivos [exec ls -la]
    puts $archivos
    puts ""
}

proc mostrarEspacioDisco {} {
    puts "\n--- Espacio libre en disco ---"
    set espacio [exec df -h]
    puts $espacio
    puts ""
}

proc buscarArchivo {} {
    puts -nonewline "\nIngrese nombre del archivo: "
    flush stdout
    set nombre [gets stdin]
    
    if {[file exists $nombre]} {
        puts "Archivo encontrado.\n"
    } else {
        puts "Archivo no encontrado.\n"
    }
}

proc mostrarUsuarios {} {
    puts "\n--- Contenido de usuarios.txt ---"
    if {[file exists "usuarios.txt"]} {
        set archivo [open "usuarios.txt" r]
        while {[gets $archivo linea] >= 0} {
            puts $linea
        }
        close $archivo
    } else {
        puts "El archivo usuarios.txt no existe."
    }
    puts ""
}

proc generarReporte {} {
    set hostname [exec hostname]
    set usuario $::env(USER)
    set fecha [exec date "+%Y-%m-%d %H:%M:%S"]
    set kernel [exec uname -r]
    set memoria [exec free -h | grep Mem | awk {{print $7}}]
    set disco [exec df -h / | tail -1 | awk {{print $4}}]
    
    set archivo [open "reporte_sistema.txt" w]
    
    puts $archivo "Reporte del sistema"
    puts $archivo " Espacio"
    puts $archivo "Equipo: $hostname"
    puts $archivo "Usuario: $usuario"
    puts $archivo "Fecha: $fecha"
    puts $archivo "Kernel: $kernel"
    puts $archivo "Memoria disponible: $memoria"
    puts $archivo "Espacio en disco: $disco"
    
    close $archivo
    
    puts "\nReporte generado: reporte_sistema.txt\n"
}



while {1} {
    puts " SISTEMA DE ADMINISTRACIÓN LINUX"
    puts "Espacio"
    puts "1. Mostrar nombre del equipo"
    puts "2. Mostrar usuario actual"
    puts "3. Mostrar fecha y hora"
    puts "4. Listar archivos del directorio actual"
    puts "5. Mostrar espacio libre en disco"
    puts "6. Buscar archivo"
    puts "7. Mostrar contenido de usuarios.txt"
    puts "8. Generar reporte del sistema"
    puts "9. Salir"
    puts ""
    puts -nonewline "Seleccione una opción: "
    flush stdout
    
    set opcion [gets stdin]
    
    switch $opcion {
        1 { mostrarHostname }
        2 { mostrarUsuario }
        3 { mostrarFecha }
        4 { listarArchivos }
        5 { mostrarEspacioDisco }
        6 { buscarArchivo }
        7 { mostrarUsuarios }
        8 { generarReporte }
        9 {
            puts "\nGracias por utilizar el sistema."
            break
        }
        default {
            puts "\nOpcion no valida, que lastima!"
        }
    }
}