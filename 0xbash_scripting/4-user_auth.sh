#! /bin/bash

#define valid usernames and corresponding passwords
usernames=("Anthony" "Brandon" "Charlse" "Donald" "Ernest" "Francisca" "Gethrude" "Hannah" "Irine" "Jacob" "Keith" "Lois" "Mario" "Nyla" "Oden" "Precious" "Quinn")
passwords=("Anthony-1" "Brandon-2" "Charlse-3" "Donald-4" "Ernest-5" "Francisca-6" "Gethrude-7" "Hannah-8" "Irine-9" "Jacob-10" "Keith-11" "Lois-12" "Mario-13" "Nyla-14" "Oden-15" "Precious-16" "Quinn-17")
#end definition

#start function to authenticate user credential
user_auth() {
login_success=false         #flag to check login status

#check login credentials
for i in "${!usernames[@]}"; do
    if [[ "$input_user" == "${usernames[$i]}" && "$input_pass" == "${passwords[$i]}" ]]; then
        login_success=true
        break
    fi
done
#end credentials check

#display result
if $login_success; then
    echo -e "\n\n✅ Login successful. Welcome back, $input_user!"
    exit 0
else
    echo -e "\n\n❌ Login failed. Invalid username or password."
fi
}
#end authentication function


#function to prompt the user for login details
login_details() {
read -p "Username: " input_user
read -s -p "Password: " input_pass
user_auth           #call on user_auth function
}
#end of login details function

#start main menu
while true; do
  echo -e "\nChoose an option:"
  echo "1. Log in"
  echo "2. Quit"
  read -p "Enter your choice (1/2): " choice
#end main menu

  case $choice in
    1)
      clear
      login_details
      ;;
    2)
      clear
      echo -e "Come back soon. Bye!\n"
      exit 0
      ;;
    *)
      clear
      echo "Invalid choice. Please enter a valid option (1/2)."
      ;;
  esac
done