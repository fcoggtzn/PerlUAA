use strict;
use warnings;
use Sys ::Hostname;

my $hostname = hostname();

my $Kernel = `uname -r`;
chomp($Kernel);

my $mem_disponible;
if (-e '/proc/meminfo') {
    open (my $mem, '<', '/proc/meminfo') or die "No se pudo abrir /proc/meminfo: ";
    while (<$mem>) {
        if (/MemAvailable:\s+(\d+)/) {
            $mem_disponible = $1 / 1024; # Convertir a MB
            last;
        }
    }
    close($mem);
} else {
    $mem_disponible = 'free -m | awk \'/Mem:/ {print $7}\''; # Comando alternativo para obtener memoria disponible
    chomp($mem_disponible);
}

my $disco_libre = `df -h / | awk 'NR==2 {print \$4}'`;
chomp($disco_libre);

open(my $reporte, '>', 'reporte.txt') or die "No se pudo crear el archivo de reporte: $!";
print $reporte "Reporte del Sistema\n";
print $reporte "-------------------\n";
print $reporte "Hostname: $hostname\n";
print $reporte "Kernel: $Kernel\n";
print $reporte "Memoria Disponible: $mem_disponible MB\n";
print $reporte "Espacio Libre en Disco: $disco_libre\n";
close($reporte);
print "Reporte generado exitosamente en reporte.txt\n";