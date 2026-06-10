#!/usr/bin/perl
# Autor: 340723

my $hostname = `hostname`;
my $kernel = `ver`;
my $disco = `df -h 2>nul || wmic logicaldisk get size,freespace,caption`;
my $memoria = `wmic OS get FreePhysicalMemory /Value`;

chomp $hostname;
chomp $kernel;

open(my $salida, ">", "reporte.txt") or die "No se puede crear: $!";

print $salida "=== REPORTE DEL SISTEMA ===\n\n";
print $salida "Hostname: $hostname\n";
print $salida "Kernel: $kernel\n";
print $salida "Memoria disponible:\n$memoria\n";
print $salida "Espacio en disco:\n$disco\n";

close($salida);
print "Reporte guardado en reporte.txt\n";