if [ $# -ne 1 ]; then
    echo "Trebas unesti 1 argument:"
    echo "Evo ti Primjer: $0 test_dir"
    exit 1
fi

ime_dir="$1"
dir_skripte="$(dirname "$(realpath "$0")")"
target="$dir_skripte/$ime_dir"
zip_dat="$dir_skripte/svi_zapisi.zip"

if [ ! -d "$target" ]; then
    echo "'$ime_dir' nema te mape !"
    exit 1
fi

# obrisi stari zip ako postoji
rm -f "$zip_dat"

cd "$target" || exit 1
zip -r -q "$zip_dat" ./*

echo "Gotovo!"
echo "Evo ti, napravljena je datoteka: $zip_dat"
ls -lh "$zip_dat"
