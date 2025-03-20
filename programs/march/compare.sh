
echo "Enter the first file path:"
read FILE1

echo "Enter the second file path:"
read FILE2


if [ -e "$FILE1" ] && [ -e "$FILE2" ]; then

    if cmp -s "$FILE1" "$FILE2"; then
        echo "The files $FILE1 and $FILE2 are identical."
    else
        echo "The files $FILE1 and $FILE2 are different."
    fi
else
    echo "One or both of the files do not exist."
fi
