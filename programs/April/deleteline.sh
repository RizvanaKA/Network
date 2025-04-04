
read -p "Enter the filename: " filename

if [[ ! -f "$filename" ]]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

read -p "Enter the line number to delete: " line_number

if ! [[ "$line_number" =~ ^[0-9]+$ ]] || [[ "$line_number" -le 0 ]]; then
    echo "Error: Please enter a valid positive integer for the line number."
    exit 1
fi

sed -i "${line_number}d" "$filename"

echo "Line $line_number has been deleted from '$filename'."
