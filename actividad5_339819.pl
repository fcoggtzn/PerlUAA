#!/usr/bin/perl
use strict;
use warnings;

# Crear arreglo
my @dias = ("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo");

print "Dias de la semana\n";

# Mostrar todos los días
foreach my $dia (@dias) {
    print "$dia\n";
}

# Mostrar cantidad de elementos
my $total = scalar @dias;
print "\nTotal de elementos en el arreglo: $total\n";