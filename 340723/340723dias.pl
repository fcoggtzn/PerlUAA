#!/usr/bin/perl
# Autor: 340723

my @dias = ("Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo");

foreach my $dia (@dias) {
    print "$dia\n";
}

print "\nTotal de dias: " . scalar(@dias) . "\n";