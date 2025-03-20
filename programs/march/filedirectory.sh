
read -p "Enter the file or directory name: " file_name


if [ -d "$file_name" ]; then
    echo "'$file_name' is a directory."
else
    echo "'$file_name' is not a directory."
fi
