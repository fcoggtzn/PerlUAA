#!/usr/bin/perl

open(ARCHIVO, "<usuarios.txt") or die "No se pudo abrir";

open(SALIDA, ">usuarios_mayusculas.txt") or die "No se pudo crear";

while(<ARCHIVO>){

    chomp;

    $nombre = uc($_);

    print SALIDA "$nombre\n";
}

close(ARCHIVO);
close(SALIDA);

print "Archivo generado correctamente.\n";