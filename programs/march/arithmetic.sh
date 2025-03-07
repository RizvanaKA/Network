

calculate(){
        case $2 in
                "+") result=$(($1 + $3));;
                "-") result=$(($1 - $3));;
                "*") result=$(($1 * $3));;
                "/") result=$(($1 / $3));;

                "%") result=$(($1 % $3));;

                *)
                        echo "invalid operations"
                        exit 1;;
        esac
        echo "result: $result"
}

read -p "enter first number: " num1
read -p "enter an operator: " operator
read -p "enter second number: " num2

calculate $num1 "$operator" $num2
