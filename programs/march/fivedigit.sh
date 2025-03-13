
echo "enter a number: "
read num

if [ $num -lt 10000 ] || [ $num -gt 99999 ]; then
        echo "please enter valid 5 digit number "
        exit 1
fi
reverse=0
while [ $num -gt 0 ]
do
        reverse=$((reverse * 10 + num % 10))
        num=$((num / 10))
done

echo "reverse number : $reverse"

