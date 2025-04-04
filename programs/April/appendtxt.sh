



if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <text_to_append>"
    exit 1
fi


filename=$1
text_to_append=$2


if [ ! -f "$filename" ]; then
    echo "Error: File $filename not found."
    exit 1
fi


sed -i "s/$/$text_to_append/" "$filename"

echo "Appended '$text_to_append' to every line in $filename."
