

echo "Enter a number:"
read number

sum=0
for digit in $(echo $number | fold -w1); do
    sum=$((sum + digit))
done

echo "The sum of the digits is: $sum"
