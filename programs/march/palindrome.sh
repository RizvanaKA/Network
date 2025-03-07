
read -p "Enter a string: " input


reversed=$(echo "$input" | rev)

if [ "$input" == "$reversed" ]; then
    echo "The string '$input' is a palindrome."
else
    echo "The string '$input' is not a palindrome."
fi
