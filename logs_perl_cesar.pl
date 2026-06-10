#!/usr/bin/perl

@archivos = glob("logs/*.log");

foreach $archivo (@archivos){

    open(LOG, "<$archivo");

    $lineas = 0;
    $errores = 0;

    while(<LOG>){

        $lineas++;

        if(/ERROR/){
            $errores++;
        }
    }

    close(LOG);

    print "\nArchivo: $archivo\n";
    print "Lineas totales: $lineas\n";
    print "Errores: $errores\n";
}