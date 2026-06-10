#!/usr/bin/perl
use strict;
use warnings;

# Abrir archivo de entrada
open(my $entrada, '<', 'actividad3_339819.txt') or die "No se pudo abrir usuarios.txt: $!";

# Abrir archivo de salida
open(my $salida, '>', 'usuarios_mayusculas.txt') or die "No se pudo crear usuarios_mayusculas.txt: $!";

print "Convirtiendo nombres a mayúsculas...\n";

while (my $linea = <$entrada>) {
    chomp $linea;
    my $mayuscula = uc($linea);
    print $salida "$mayuscula\n";
    print "$mayuscula\n";
}

close($entrada);
close($salida);

print "\nArchivo 'usuarios_mayusculas.txt' generado exitosamente.\n";