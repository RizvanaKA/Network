
echo -n "Enter the file name: "
read file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

sed -i 's/[0-9]//g' "$file"

echo "Digits removed from $file."

~
~
