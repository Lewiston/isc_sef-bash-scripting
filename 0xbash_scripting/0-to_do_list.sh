#! /bin/bash


#defining an array with list of todo
todo=()

#start function to print list of todo
i=1
print_todo_list() {
  echo "These are the tasks currently on your todo list:"
  new_todo=() #set a new array to hold all the contents of the current array, this is to avoid wide spaces

  #start mapping tasks within the todo to a new todo
  for task in "${todo[@]}"; do
    if [ -n "$task" ]; then # -n ignores empty array indexes
    new_todo+=("$task")
    fi 
  done
  #end mapping

  #start display todo list
  for item in "${new_todo[@]}"; do
     echo "$i. $item"
     ((i=i+1))
  done
  #end display todo list
  i=1
}
#end print fucntion

#start function to add a task to the list
add_task_to_todo() {
  read -p "Add a task on your todo: " new_task
  todo+=("$new_task")
  echo "Added $new_task to your todo!"
}
#end add function

#start function to remove a task from your todo
remove_task_from_todo() {
  read -p "Enter a task to remove from your todo: " task_to_remove
  if [[ " ${todo[*]} " == *" $task_to_remove "* ]]; then
    todo=("${todo[@]/$task_to_remove}")
    echo "Removed $task_to_remove from your list of todo."
  else
    echo "The task $task_to_remove is not on your todo list."
  fi
}
#end remove function

#start main menu
while true; do
  echo "Choose an option:"
  echo "1. View tasks on my todo list"
  echo "2. Add a task on my todo list"
  echo "3. Remove a task from my todo list"
  echo "4. Quit"

  read -p "Enter your choice (1/2/3/4): " choice
#end main menu

  case $choice in
    1)
      clear
      print_todo_list
      ;;
    2)
      clear
      add_task_to_todo
      ;;
    3)
      clear
      remove_task_from_todo
      ;;
    4)
      clear
      echo "Thank You"
      exit 0
      ;;
    *)
      echo "Invalid choice. Please enter a valid option (1/2/3/4)."
      ;;
  esac
done