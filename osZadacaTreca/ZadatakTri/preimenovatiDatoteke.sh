dir_skripte="$(dirname "$(realpath "$0")")"
screens="$dir_skripte/screenshots"
if [ ! -d "$screens" ]; then
    echo "nema toga :("
    exit 1
fi
echo "Mjenanje imena prema: $screens"
echo "-------------------------"
brojac=1
for f in "$screens"/*; do
    if [ -f "$f" ]; then
        staro=$(basename "$f")
        novo="screenshot_${brojac}_${staro}"
        mv "$f" "$screens/$novo"
        echo "$novo"
        brojac=$((brojac + 1))
    fi
done
echo "Gotovo, uspio si, gut gemacht,bravo: $((brojac - 1))bilo je toliko"
