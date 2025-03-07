

echo "Enter the number of elements in the array:"
read n


array=()


echo "Enter the elements of the array:"
for (( i=0; i<$n; i++ ))
do
    read element
    array+=($element)
done


echo "The elements in the array are:"
for elem in "${array[@]}"
do
    echo $elem
done
