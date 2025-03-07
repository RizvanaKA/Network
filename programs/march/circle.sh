

calculate_area() {
    local radius=$1
    local pi=3.14159
    echo "scale=2; $pi * ($radius * $radius)" | bc
}


read -p "Enter the radius of the circle: " radius


if [[ $radius =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    # Call the function and display the area
    area=$(calculate_area $radius)
    echo "The area of the circle with radius $radius is: $area"
else
    echo "Invalid input. Please enter a positive number."
fi
