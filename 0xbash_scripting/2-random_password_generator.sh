#! /bin/bash

#function to generate a random password
password_generator() {
    head /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%^&*()_+-=[]{}|;:,.<>/?' | head -c $num
}
#end of function

#main
echo "Welcome to your password generator!"
read -p "What is your desired password length: " num

echo "$(password_generator)" #display generated password
