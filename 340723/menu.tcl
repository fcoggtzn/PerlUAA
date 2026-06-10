# Autor: 340723

proc mostrarHostname {} {
    puts "Equipo: [exec hostname]"
}

proc mostrarUsuario {} {
    global env
    puts "Usuario: $env(USERNAME)"
}

proc mostrarFecha {} {
    puts "Fecha y hora: [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]"
}

proc listarArchivos {} {
    puts "Archivos en directorio actual:"
    foreach archivo [glob -nocomplain *] {
        puts "  $archivo"
    }
}

proc mostrarDisco {} {
    catch {exec df -h} resultado
    if {$resultado eq ""} {
        catch {exec wmic logicaldisk get caption,freespace,size} resultado
    }
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

proc mostrarUsuarios {} {
    if {[file exists "usuarios.txt"]} {
        set f [open "usuarios.txt" r]
        puts [read $f]
        close $f
    } else {
        puts "No se encontro usuarios.txt"
    }
}

proc generarReporte {} {
    global env
    set equipo [exec hostname]
    set usuario $env(USERNAME)
    set fecha [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
    catch {exec ver} kernel
    catch {exec wmic OS get FreePhysicalMemory /Value} memoria
    catch {exec wmic logicaldisk get caption,freespace,size} disco

    set f [open "reporte_sistema.txt" w]
    puts $f "================================"
    puts $f " REPORTE DEL SISTEMA"
    puts $f "================================\n"
    puts $f "Equipo:             $equipo"
    puts $f "Usuario:            $usuario"
    puts $f "Fecha:              $fecha"
    puts $f "Kernel:             $kernel"
    puts $f "Memoria disponible: $memoria"
    puts $f "Espacio en disco:   $disco"
    close $f
    puts "Reporte guardado en reporte_sistema.txt"
}

while {1} {
    puts "\n================================="
    puts " SISTEMA DE ADMINISTRACION LINUX"
    puts "=================================\n"
    puts "1. Mostrar nombre del equipo"
    puts "2. Mostrar usuario actual"
    puts "3. Mostrar fecha y hora"
    puts "4. Listar archivos del directorio actual"
    puts "5. Mostrar espacio libre en disco"
    puts "6. Buscar archivo"
    puts "7. Mostrar contenido de usuarios.txt"
    puts "8. Generar reporte del sistema"
    puts "9. Salir\n"
    puts -nonewline "Seleccione una opcion: "
    flush stdout

    set opcion [gets stdin]

    switch $opcion {
        1 { mostrarHostname }
        2 { mostrarUsuario }
        3 { mostrarFecha }
        4 { listarArchivos }
        5 { mostrarDisco }
        6 { buscarArchivo }
        7 { mostrarUsuarios }
        8 { generarReporte }
        9 {
            puts "Gracias por utilizar el sistema."
            break
        }
        default { puts "Opcion invalida." }
    }
}