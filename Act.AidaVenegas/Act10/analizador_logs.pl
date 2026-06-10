#!/usr/bin/perl
# Aída Venegas Cons ID:550894
# Actividad 10: Analizador de Logs - Versión Perl

use strict;
use warnings;

my $directorio = "logs";

opendir(my $dh, $directorio) or die "No se pudo abrir el directorio '$directorio': $!";
my @archivos = grep { /\.log$/ && -f "$directorio/$_" } readdir($dh);
closedir($dh);

if (@archivos == 0) {
    print "No se encontraron archivos .log en '$directorio'.\n";
    exit 0;
}

foreach my $archivo (sort @archivos) {
    my $ruta        = "$directorio/$archivo";
    my $totalLineas = 0;
    my $totalErrores = 0;

    open(my $fh, "<", $ruta) or do {
        print "No se pudo abrir $archivo: $!\n";
        next;
    };

    while (my $linea = <$fh>) {
        $totalLineas++;
        $totalErrores++ if $linea =~ /ERROR/i;
    }
    close($fh);

    print "Archivo: $archivo\n";
    print "Líneas totales: $totalLineas\n";
    print "Errores: $totalErrores\n";
    print "\n";
}
