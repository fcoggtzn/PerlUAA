#!/usr/bin/perl

$hostname = `hostname`;
chomp($hostname);

$kernel = `uname -r`;
chomp($kernel);

$memoria = `free -h | grep Mem`;
chomp($memoria);

$disco = `df -h / | tail -1`;
chomp($disco);

open(REPORTE, ">reporte.txt");

print REPORTE "===== REPORTE DEL SISTEMA =====\n\n";
print REPORTE "Hostname: $hostname\n";
print REPORTE "Kernel: $kernel\n";
print REPORTE "Memoria disponible:\n$memoria\n";
print REPORTE "Espacio libre en disco:\n$disco\n";

close(REPORTE);

print "Reporte generado correctamente.\n";