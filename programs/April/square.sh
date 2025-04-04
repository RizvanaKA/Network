



if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi


FILENAME=$1


if [ ! -f "$FILENAME" ]; then
    echo "Error: File '$FILENAME' does not exist."
    exit 1
fi


while IFS= read -r line; do
    # Use sed to surround numbers with square brackets
    modified_line=$(echo "$line" | sed -E 's/([0-9]+)/[\1]/g')
    echo "$modified_line"
done < "$FILENAME"

