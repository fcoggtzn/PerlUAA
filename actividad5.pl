#!/usr/bin/perl
use strict;
use warnings;

# Declarar el arreglo con los días de la semana
my @dias = ("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo");

# Mostrar todos los días
print "Días de la semana:\n";
foreach my $dia (@dias) {
    print "  - $dia\n";
}

# Mostrar cuántos elementos contiene
my $total = scalar(@dias);
print "\nEl arreglo contiene $total elementos.\n";
