#! /bin/bash


#start main menu
read -p "Enter an absolute path for a directory: " directory
#end main menu

#start function to count lines in a file
line_count() {
i=0
while IFS= read -r line; do
((i=i+1))
done < "$file"
echo "$i"
}
#end function to count lines in a file

if [ -d "$directory" ]; then #check if directory exist
    echo "$directory exist; below is a list of files in the directory and the number of lines each file has."
#start displaying results
    #start display heading
    echo "File Name                                                   |       Line Count"
    echo "--------------------------------------------------------------------------------"
    #end display heading

    #display file path and number of lines
    for file in $directory/*; do
        echo "$file             |       $(line_count)"
    done

else
    echo "Sorry, the $directory directory does not exist"
fi