#!/usr/bin/perl
use strict;
use warnings;

# Obtener información del sistema
my $hostname = `hostname`;
chomp $hostname;

my $kernel = `uname -r`;
chomp $kernel;

my $memoria = `free -h | grep Mem | awk '{print \$7}'`;
chomp $memoria;

my $disco = `df -h / | tail -1 | awk '{print \$4}'`;
chomp $disco;

my $fecha = `date +%Y-%m-%d`;
chomp $fecha;

# Mostrar en pantalla
print "Reporte sistema\n";
print "Hostname: $hostname\n";
print "Kernel: $kernel\n";
print "Memoria disponible: $memoria\n";
print "Espacio libre en disco: $disco\n";
print "Fecha: $fecha\n";

# Guardar en archivo
open(my $archivo, '>', 'reporte.txt') or die "No se pudo crear reporte.txt: $!";
print $archivo "Reporte sistema\n";
print $archivo "Hostname: $hostname\n";
print $archivo "Kernel: $kernel\n";
print $archivo "Memoria disponible: $memoria\n";
print $archivo "Espacio libre en disco: $disco\n";
print $archivo "Fecha: $fecha\n";
close($archivo);

print "\n Reporte se guardo en 'reporte.txt'\n";