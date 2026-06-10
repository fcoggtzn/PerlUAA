#!/usr/bin/perl

@dias = (
"Lunes",
"Martes",
"Miercoles",
"Jueves",
"Viernes",
"Sabado",
"Domingo"
);

print "Dias de la semana:\n\n";

foreach $dia (@dias){
    print "$dia\n";
}

print "\nTotal de elementos: " . scalar(@dias) . "\n";