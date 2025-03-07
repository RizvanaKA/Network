

validate_password() {
    password=$1

 
    if [[ ${#password} -lt 8 ]]; then
        echo "Password must be at least 8 characters long."
        return 1
    fi

    if [[ ! "$password" =~ [A-Z] || ! "$password" =~ [a-z] || ! "$password" =~ [0-9] || ! "$password" =~ [[:punct:]] ]]; then
        echo "Password must contain an uppercase letter, lowercase letter, digit, and special character."
        return 1
    fi

    echo "Password is strong."
    return 0
}


read -sp "Enter your password: " user_password
echo


validate_password "$user_password"




    





    





    


  


    

        
  
   

    

   



    










