#!/usr/bin/perl
# Aída Venegas Cons ID:550894
# Actividad 8: Inventario del sistema con Perl

use strict;
use warnings;

my $hostname = `hostname`;          chomp $hostname;
my $kernel   = `uname -r`;          chomp $kernel;
my $memoria  = `free -h | grep Mem | awk '{print \$4}'`; chomp $memoria;
my $disco    = `df -h / | tail -1 | awk '{print \$4}'`;  chomp $disco;
my $fecha    = `date "+%Y-%m-%d %H:%M:%S"`;               chomp $fecha;

my $reporte = "=== REPORTE DEL SISTEMA ===\n\n"
            . "Hostname:           $hostname\n"
            . "Kernel:             $kernel\n"
            . "Memoria disponible: $memoria\n"
            . "Espacio libre:      $disco\n"
            . "Fecha:              $fecha\n";

print $reporte;

open(my $fh, ">", "reporte.txt") or die "No se pudo crear reporte.txt: $!";
print $fh $reporte;
close($fh);

print "\nReporte guardado en reporte.txt\n";
