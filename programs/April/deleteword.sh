



if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <word_to_delete> <filename>"
    exit 1
fi


WORD_TO_DELETE=$1
FILENAME=$2


if [ ! -f "$FILENAME" ]; then
    echo "Error: File '$FILENAME' does not exist."
    exit 1
fi


sed -i "/$WORD_TO_DELETE/d" "$FILENAME"

echo "Lines containing '$WORD_TO_DELETE' have been deleted from '$FILENAME'."

