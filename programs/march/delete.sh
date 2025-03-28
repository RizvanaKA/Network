
#!/bin/bash

echo "Select an operation:"
echo "1. Delete a particular line"
echo "2. Delete the last line"
echo "3. Delete lines from range x to y"
echo "4. Delete all blank lines"
read -p "Enter your choice (1-4): " choice

case $choice in
1)
  read -p "Enter the line number to delete: " line
  read -p "Enter the file name: " file
  sed -i "${line}d" "$file"
  echo "Line $line deleted from $file"
  ;;
2)
  read -p "Enter the file name: " file
  sed -i '$d' "$file"
  echo "Last line deleted from $file"
  ;;
3)
  read -p "Enter the starting line (x): " start
  read -p "Enter the ending line (y): " end
  read -p "Enter the file name: " file
  sed -i "${start},${end}d" "$file"
  echo "Lines from $start to $end deleted from $file"
  ;;
4)
  read -p "Enter the file name: " file
  sed -i '/^$/d' "$file"
  echo "All blank lines deleted from $file"
  ;;
*)
  echo "Invalid choice! Please select a valid option (1-4)."
  ;;
esac
