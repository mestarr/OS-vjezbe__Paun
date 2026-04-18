#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Treba nam samo jedan argument."
    exit 1
fi

repo_path="$1"

if [ ! -d "$repo_path" ]; then
    echo "u zadanoj putanji ne postoji nijedan repositori."
    exit 1
fi

if [ ! -d "$repo_path/.git" ]; then
    echo "Zadani repo nije prepoznat ili ga nema Git Repositori."
    exit 1
fi

info_file="$repo_path/repozitorij_info.txt"

cat > "$info_file" << EOF
=== Repozitorij Info ===
Datum: $(date)
Putanja repozitorija: $repo_path
Korisnik: $(whoami)
Hostname: $(hostname)
EOF

cd "$repo_path" || exit 1
git add repozitorij_info.txt
git commit -m "Dodan repozitorij_info.txt"
git log --oneline -5
