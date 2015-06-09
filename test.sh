#!/bin/bash
echo -"Test 1 - nezadaný host"
./ipkperfclient

echo "Test 2 - implicitni hodnoty"
./ipkperfserver & ./ipkperfclient "-t" 12 localhost

echo "Test 3 - nastaveni prepinacemi"
./ipkperfserver "-p" 10000 & ./ipkperfclient "-p" 10000 "-r" 60 "-i" 2 "-t" 10 "-s" "145" localhost

echo "Test 4 - test z fora - ukazkove vystupy"
./ipkperfserver "-p" 11111 & ./ipkperfclient "-p" 11111 "-r" 1000 "-i" 10 "-t" 60 "-s" "90" localhost
