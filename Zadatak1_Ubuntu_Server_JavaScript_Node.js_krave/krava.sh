#!/usr/bin/env bash

dozvoljene=("-b" "-d" "-g" "-p" "-s" "-t" "-w" "-y")

if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    echo "Greska: ocekuju se 1 ili 2 argumenta." >&2
    exit 1
fi

poruka="$1"

if [ $# -eq 2 ]; then
    zastavica="$2"
    pronadjena=false
    for z in "${dozvoljene[@]}"; do
        if [ "$z" = "$zastavica" ]; then
            pronadjena=true
            break
        fi
    done
    if [ "$pronadjena" = "false" ]; then
        echo "Greska: neispravna zastavica '$zastavica'." >&2
        echo "Dozvoljene: ${dozvoljene[*]}" >&2
        exit 1
    fi
    cowsay "$zastavica" "$poruka"
else
    cowsay "$poruka"
fi