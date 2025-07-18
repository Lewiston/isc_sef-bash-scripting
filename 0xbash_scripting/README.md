# Exercise 1

Firstly, we identified the different parts of the problem which were:

1. Printing the list
2. Adding a new task
3. Removing an existing task
4. Exiting the script

We created functions for each of this and combined it together with a main user interface that displays the different types of options available to the user.
Based on the selected option, the corresponding function is called.


# Exercise 2

To begin with, we create a function that counts the number of lines in a file.
The user is asked to insert a path for a directory and that path is checked to confirm it in fact exist.
If it does exist, the directory is looped through and each file in it is checked and the number of lines it has is returned.
Else if the directory doesn't exist, a feedback message is given to the user to express this information.


# Exercise 3

We created a function that randomly generates a password with a specific length determined by user input using the /dev/urandom.
This password is then displayed back to the user.


# Exercise 4



# Exercise 5

- Initially, we define our array of user names and user passwords
- We created a function which checked user names and it's correspond password within the same index position of their individual arrays.
- If they match, authentication was a success and the program ends.
- If the do not, authentication fails and you get to the begining of the program


# Exercise 6

- We created a function to display the information needed to get started and another to make a copy
- Once we get all that we need, we use the "cp -r" command to make a copy of the intended directory