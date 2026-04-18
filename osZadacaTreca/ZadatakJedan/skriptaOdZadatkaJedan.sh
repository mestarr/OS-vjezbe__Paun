if [ $# -lt 2 ] || [ $# -gt 2 ]; then
    echo "Greska, treba 2 argumenta"
    echo "npr: $0 /home/stjep txt"
    exit 1
fi
dir="$1"
ext="$2"

if [[ "$ext" != .* ]]; then
    ext=".$ext"
fi

if [ ! -d "$dir" ]; then
    echo "Direktorij ne postoji!"
    exit 1
fi

nasa=0

for f in "$dir"/*; do
    if [ ! -f "$f" ]; then
        continue
    fi

    if [[ "$f" == *"$ext" ]]; then
        echo "$(basename "$f")"
        nasao=1
    fi
done

if [ $nasao -eq 0 ]; then
    echo "Nista nije pronadjeno $ext"
fi
