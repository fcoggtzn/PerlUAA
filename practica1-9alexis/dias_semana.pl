use strict;
use warnings;

my @dias =("lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo");

print "Dias de la semana:\n";
foreach my $dia (@dias) {
    print "$dia\n";
}

my $total = scalar(@dias);
print "El arreglo tiene $total elementos.\n";