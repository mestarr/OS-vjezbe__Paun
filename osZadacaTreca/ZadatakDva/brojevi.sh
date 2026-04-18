if [ $# -ne 1 ]; then
    echo "Krivi broj argumenata"
    echo "Upotreba mora biti $0 brojeva"
    exit 1
fi

n=$1

if ! [[ $n =~ ^[0-9]+$ ]]; then
    echo "Treba biti broj, a ne slovo, Pokusaj opet !!!"
    exit 1
fi

if [ $n -lt 1 ] || [ $n -gt 10 ]; then
    echo "Brojevi moraju biti upisani izmedu Jedan i Deset, pokusaj opet jer nisi uspio."
    exit 1
fi

for ((i=1; i<=n; i++)); do
    echo $i
done > brojevi.txt

echo "Bravo, uspio si, eto brojevi.txt su dodani"
cat brojevi.txt
