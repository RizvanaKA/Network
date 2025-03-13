
a=0
b=1
n=10
sum=0

echo "Fibonacci Series up to $n terms:"

# Loop to generate Fibonacci numbers
for ((i=1; i<=n; i++))
do
    echo -n "$a "
    sum=$((sum + a))
    next=$((a + b))
    a=$b
    b=$next
done

echo
echo "Sum of Fibonacci Series: $sum"
