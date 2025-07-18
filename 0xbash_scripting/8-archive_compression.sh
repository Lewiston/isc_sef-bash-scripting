#! /bin/bash

#start function to backup
compress_dir() {
    if [ -d "$dir" ]; then
        tar -czf $compress.tar.gz $dir
        echo -e "\n✅ Compression was Successful!"
        exit 0
    else
        echo -e "\n❌ Compression failed! Verify if directory exist and try again."
    fi
}
#end function to backup

#start fuction to ask for details
path_compress() {
    clear
    read -p "Enter an absolute path for a directory: " dir
    read -p "Enter an absolute path for a compressed file destination: " compress
    compress_dir
}
#end function to ask for details


while true; do
#start main menu
clear
  echo "Choose an option:"
  echo "1. Compress a directory"
  echo "2. Quit"
  read -p "Enter your choice (1/2): " choice
#end main menu

    case $choice in 
    1)
        path_compress
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