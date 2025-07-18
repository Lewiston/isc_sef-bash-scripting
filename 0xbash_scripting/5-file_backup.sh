#! /bin/bash

#start function to backup
dir_backup() {
    if [ -d "$dir" ]; then
        cp -r $dir $backup
        echo -e "\n✅ Backup was Successful!"
        exit 0
    else
        echo -e "\n❌ Backup failed! Verify if directory exist and try again."
    fi
}
#end function to backup

#start fuction to ask for details
path_backup() {
    clear
    read -p "Enter an absolute path for a directory: " dir
    read -p "Enter an absolute path for a back up destination: " backup
    dir_backup
}
#end function to ask for details


while true; do
#start main menu
clear
  echo "Choose an option:"
  echo "1. Backup a directory"
  echo "2. Quit"
  read -p "Enter your choice (1/2): " choice
#end main menu

    case $choice in 
    1)
        path_backup
    ;;
    2)
        clear
        echo "Thank you!"
        exit 0
    ;;
    *)
        clear
        echo "Invalid choice. Please enter a valid option (1/2)."
    ;;

    esac
done