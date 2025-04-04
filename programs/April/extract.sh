
#!/bin/bash

# Get inputs from the user
echo "Enter the filename:"
read filename

echo "Enter the start line:"
read start

echo "Enter the end line:"
read end

# Validate if the file exists
if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found!"
  exit 1
fi

# Extract the lines using sed
sed -n "${start},${end}p" "$filename"













