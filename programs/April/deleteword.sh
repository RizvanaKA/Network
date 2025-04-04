
#!/bin/bash

# Check if the user provided both the word and file as arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <word_to_delete> <filename>"
    exit 1
fi

# Assign arguments to variables
WORD_TO_DELETE=$1
FILENAME=$2

# Verify if the file exists
if [ ! -f "$FILENAME" ]; then
    echo "Error: File '$FILENAME' does not exist."
    exit 1
fi

# Use sed to delete lines containing the word
sed -i "/$WORD_TO_DELETE/d" "$FILENAME"

echo "Lines containing '$WORD_TO_DELETE' have been deleted from '$FILENAME'."

