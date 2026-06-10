#!/usr/bin/perl
# Aída Venegas Cons ID:550894
# Actividad 5: Uso de arreglos en Perl

use strict;
use warnings;

my @dias = ("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo");

print "Días de la semana:\n";
foreach my $dia (@dias) {
    print "- $dia\n";
}

print "\nTotal de elementos: " . scalar(@dias) . "\n";
