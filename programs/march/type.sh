

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

echo "Enter an operator (+, -, *, /):"
read operator


case $operator in
    +)
        result=$((num1 + num2))
        echo "Result: $num1 + $num2 = $result"
        ;;
    -)
        result=$((num1 - num2))
        echo "Result: $num1 - $num2 = $result"
        ;;
    \*)
        result=$((num1 * num2))
        echo "Result: $num1 * $num2 = $result"
        ;;
    /)
        if [ $num2 -ne 0 ]; then
            result=$((num1 / num2))
            echo "Result: $num1 / $num2 = $result"
        else
            echo "Division by zero is not allowed."
        fi
        ;;
    *)
        echo "Invalid operator. Please use +, -, *, or /."
        ;;
esac
