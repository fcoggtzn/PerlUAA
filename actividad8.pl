#!/usr/bin/perl
use strict;
use warnings;
use POSIX qw(strftime);

# Recolectar información
my $hostname = `hostname`;              chomp $hostname;
my $kernel   = `uname -r`;             chomp $kernel;
my $memoria  = `free -h | grep Mem`;   chomp $memoria;
my $disco    = `df -h / | tail -1`;    chomp $disco;
my $fecha    = strftime("%Y-%m-%d %H:%M:%S", localtime);

# Crear el reporte
open(my $fh, ">", "reporte.txt") or die "No se pudo crear reporte.txt: $!";

print $fh "================================\n";
print $fh " REPORTE DEL SISTEMA\n";
print $fh "================================\n";
print $fh "Hostname:            $hostname\n";
print $fh "Kernel:              $kernel\n";
print $fh "Fecha:               $fecha\n";
print $fh "Memoria disponible:\n$memoria\n";
print $fh "Espacio libre en disco:\n$disco\n";

close($fh);

print "Reporte guardado en 'reporte.txt'.\n";
