use strict;
use warnings;

open(my $fh_lectura, '<', 'usuarios.txt') or die "No se pudo abrir usuarios.txt: $!";

open(my $fh_escritura, '>', 'usuarios_mayusculas.txt') or die "No se pudo abrir usuarios_mayusculas.txt: $!";

while (my $linea = <$fh_lectura>) {
    chomp($linea);
    my $mayus= uc($linea);
    print $fh_escritura "$mayus\n";
}

close($fh_lectura);
close($fh_escritura);

print "Archivo usuarios_mayusculas.txt creado con éxito.\n";