# Autor:339768
# Sistema de Administración Linux

proc mostrarHostname {} {
    puts "\nEquipo: [exec hostname]"
}

proc mostrarUsuario {} {
    puts "\nUsuario: $::env(USER)"
}

proc mostrarFecha {} {
    puts "\nFecha y hora:"
    puts [clock format [clock seconds]]
}

proc listarArchivos {} {
    puts "\nArchivos:"
    exec ls
}

proc mostrarDisco {} {
    puts "\nEspacio libre:"
    exec df -h
}

proc buscarArchivo {} {

    puts -nonewline "Ingrese nombre del archivo: "
    flush stdout

    gets stdin archivo

    if {[file exists $archivo]} {
        puts "Archivo encontrado."
    } else {
        puts "Archivo no encontrado."
    }
}

proc mostrarUsuarios {} {

    if {[file exists usuarios.txt]} {

        set f [open usuarios.txt r]
        puts [read $f]
        close $f

    } else {
        puts "usuarios.txt no existe."
    }
}

proc generarReporte {} {

    set archivo [open reporte_sistema.txt w]

    puts $archivo "================================"
    puts $archivo " REPORTE DEL SISTEMA"
    puts $archivo "================================"
    puts $archivo ""
    puts $archivo "Equipo: [exec hostname]"
    puts $archivo "Usuario: $::env(USER)"
    puts $archivo "Fecha: [clock format [clock seconds]]"
    puts $archivo "Kernel: [exec uname -r]"
    puts $archivo ""
    puts $archivo "Memoria disponible:"
    puts $archivo [exec free -h]
    puts $archivo ""
    puts $archivo "Espacio en disco:"
    puts $archivo [exec df -h]

    close $archivo

    puts "Reporte generado."
}

while {1} {

    puts "\n================================="
    puts " SISTEMA DE ADMINISTRACION LINUX"
    puts "================================="
    puts "1. Mostrar nombre del equipo"
    puts "2. Mostrar usuario actual"
    puts "3. Mostrar fecha y hora"
    puts "4. Listar archivos del directorio actual"
    puts "5. Mostrar espacio libre en disco"
    puts "6. Buscar archivo"
    puts "7. Mostrar contenido de usuarios.txt"
    puts "8. Generar reporte del sistema"
    puts "9. Salir"

    puts -nonewline "\nSeleccione una opcion: "
    flush stdout

    gets stdin opcion

    switch $opcion {

        1 {mostrarHostname}
        2 {mostrarUsuario}
        3 {mostrarFecha}
        4 {listarArchivos}
        5 {mostrarDisco}
        6 {buscarArchivo}
        7 {mostrarUsuarios}
        8 {generarReporte}

        9 {
            puts "\nGracias por utilizar el sistema."
            break
        }

        default {
            puts "Opcion invalida."
        }
    }
}