#!/usr/bin/perl
# Aída Venegas Cons ID:550894
# Actividad 6: Lectura de archivos y conversión a mayúsculas en Perl

use strict;
use warnings;

open(my $entrada, "<", "usuarios.txt") or die "No se pudo abrir usuarios.txt: $!";
open(my $salida,  ">", "usuarios_mayusculas.txt") or die "No se pudo crear usuarios_mayusculas.txt: $!";

while (my $linea = <$entrada>) {
    chomp $linea;
    print $salida uc($linea) . "\n";
}

close($entrada);
close($salida);

print "Archivo usuarios_mayusculas.txt generado correctamente.\n";
