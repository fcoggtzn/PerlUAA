#!/usr/bin/perl
# Autor: 340723

open(my $entrada, "<", "usuarios.txt") or die "No se puede abrir: $!";
open(my $salida, ">", "usuarios_mayusculas.txt") or die "No se puede crear: $!";

while (my $linea = <$entrada>) {
    chomp $linea;
    print $salida uc($linea) . "\n";
}

close($entrada);
close($salida);

print "Archivo usuarios_mayusculas.txt generado.\n";