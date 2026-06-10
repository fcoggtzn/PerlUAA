# Aída Venegas Cons ID:550894
# Actividad 9: Sistema de Administración Linux - Menú Interactivo en Tcl

# ---------- Procedimientos ----------

proc mostrarHostname {} {
    set h [exec hostname]
    puts "Nombre del equipo: $h"
}

proc mostrarUsuario {} {
    set u [exec whoami]
    puts "Usuario actual: $u"
}

proc mostrarFecha {} {
    set f [exec date "+%Y-%m-%d %H:%M:%S"]
    puts "Fecha y hora: $f"
}

proc listarArchivos {} {
    puts "Archivos en el directorio actual:"
    set archivos [glob -nocomplain *]
    if {[llength $archivos] == 0} {
        puts "  (directorio vacío)"
    } else {
        foreach archivo $archivos {
            puts "  $archivo"
        }
    }
}

proc mostrarDisco {} {
    set resultado [exec df -h]
    puts $resultado
}

proc buscarArchivo {} {
    puts -nonewline "Ingrese nombre del archivo: "
    flush stdout
    set nombre [gets stdin]
    if {[file exists $nombre]} {
        puts "Archivo encontrado."
    } else {
        puts "Archivo no encontrado."
    }
}

proc mostrarUsuariosTxt {} {
    if {![file exists "usuarios.txt"]} {
        puts "El archivo usuarios.txt no existe."
        return
    }
    set fh [open "usuarios.txt" r]
    set contenido [read $fh]
    close $fh
    puts "Contenido de usuarios.txt:"
    puts $contenido
}

proc generarReporte {} {
    set hostname [exec hostname]
    set usuario  [exec whoami]
    set fecha    [exec date "+%Y-%m-%d %H:%M:%S"]
    set kernel   [exec uname -r]
    set memoria  [exec sh -c "free -h | grep Mem | awk '{print \$4}'"]
    set disco    [exec sh -c "df -h / | tail -1 | awk '{print \$4}'"]

    set reporte "================================\n"
    append reporte " REPORTE DEL SISTEMA\n"
    append reporte "================================\n\n"
    append reporte "Equipo:             $hostname\n"
    append reporte "Usuario:            $usuario\n"
    append reporte "Fecha:              $fecha\n"
    append reporte "Kernel:             $kernel\n"
    append reporte "Memoria disponible: $memoria\n"
    append reporte "Espacio en disco:   $disco\n"

    set fh [open "reporte_sistema.txt" w]
    puts $fh $reporte
    close $fh

    puts $reporte
    puts "Reporte guardado en reporte_sistema.txt"
}

# ---------- Menú principal ----------

while {1} {
    puts ""
    puts "================================="
    puts " SISTEMA DE ADMINISTRACIÓN LINUX"
    puts "================================="
    puts ""
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
        1 { mostrarHostname  }
        2 { mostrarUsuario   }
        3 { mostrarFecha     }
        4 { listarArchivos   }
        5 { mostrarDisco     }
        6 { buscarArchivo    }
        7 { mostrarUsuariosTxt }
        8 { generarReporte   }
        9 {
            puts "Gracias por utilizar el sistema."
            break
        }
        default {
            puts "Opción no válida. Intente de nuevo."
        }
    }
}
