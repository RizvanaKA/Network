
echo "enter the directory: "

read dir

for file in "$dir"/*; do
        echo "$file"
done

