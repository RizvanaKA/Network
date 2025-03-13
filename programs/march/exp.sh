
echo "enter value of a: "
read a

echo "enter value of b: "
read b

echo "enter value of c: "
read c

echo "enter value of d: "
read d

result=$(echo "$a * 20 - $b * 2 + $c / $d" | bc)

echo "Result of the expression is : $result"



