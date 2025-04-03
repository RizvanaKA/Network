
#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <file> <line_number>"
  exit 1
fi


file=$1
line_number=$2

sed -i "${line_number}d" "$file"

echo "Line $line_number has been deleted from $file."
