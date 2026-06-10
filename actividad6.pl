#!/usr/bin/perl
use strict;
use warnings;

# Abrir archivo de entrada
open(my $entrada, "<", "usuarios.txt") or die "No se pudo abrir usuarios.txt: $!";

# Abrir archivo de salida
open(my $salida, ">", "usuarios_mayusculas.txt") or die "No se pudo crear el archivo: $!";

# Leer línea por línea, convertir y escribir
while (my $linea = <$entrada>) {
    chomp $linea;                  # Quitar el salto de línea
    my $mayusculas = uc($linea);   # Convertir a mayúsculas
    print $salida "$mayusculas\n"; # Escribir en el archivo de salida
}

# Cerrar archivos
close($entrada);
close($salida);

print "Archivo 'usuarios_mayusculas.txt' generado exitosamente.\n";
