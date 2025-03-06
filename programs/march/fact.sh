
echo "enter a number: "
read num

fact=1
counter=1
while [ $counter -le $num ]
do
        fact=$((fact * counter))
        counter=$((counter + 1))
done
echo "factorial of $num is $fact "


