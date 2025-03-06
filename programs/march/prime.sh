
echo "Prime numbers between 50 and 100 are:"

for (( num=50; num<=100; num++ ))
do
    is_prime=1
    for (( i=2; i<=num/2; i++ ))
    do
        if (( num%i == 0 ))
        then
            is_prime=0
            break
        fi
    done

    if (( is_prime == 1 ))
    then
        echo "$num"
    fi
done
