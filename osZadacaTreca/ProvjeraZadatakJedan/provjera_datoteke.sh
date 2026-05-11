#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Potrebno je proslijediti jedan argument"
    exit 1
fi

ABS_FILE_PATH="$1"

if [ -e "$ABS_FILE_PATH" ] && [ -f "$ABS_FILE_PATH" ]; then
    echo "Datoteka $ABS_FILE_PATH postoji."
    cat "$ABS_FILE_PATH"          # ispisuje sadržaj datoteke
else
    echo "Datoteka na putanji $ABS_FILE_PATH ne postoji ili nije regularna datoteka."
fi
