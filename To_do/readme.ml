Todo App
This is a command-line to-do app that allows you to manage a list of tasks. You can add new items to the list, view the existing items, delete items, and quit the app. The app also stores the list in a file, so that you can access it even after closing the app.

Features
Add new to-do items
View the list of to-do items
Delete items from the list
Quit the app
Store the list in a file for future use
Implementation
This app was implemented by combining the functionality of a command-line to-do app with the features of a Flutter app. The command-line app provided the basic structure for accepting user input and performing actions based on that input, while the Flutter app provided a user-friendly interface for adding and displaying to-do items.

To incorporate the Flutter app's features into the command-line app, we modified the app's logic to accept commands from the user rather than responding to user input through the UI. We also added input and output statements to replace the Flutter widgets, and included error handling to ensure that the app functions smoothly.

Overall, the integration of Flutter into this app allowed us to create a user-friendly and intuitive experience for managing a to-do list.

Usage
To use the app, enter one of the following commands:

add: Add a new to-do item to the list.
list: View the list of to-do items.
delete: Delete an item from the list
Usage (continued)
quit: Quit the app.
To add a new to-do item, enter the add command and follow the prompts to enter the item. The item will be added to the list and saved in the file for future use.

To view the list of to-do items, enter the list command. The app will display the items in the list, numbered in the order they were added.

To delete an item from the list, enter the delete command and follow the prompts to enter the number of the item you want to delete. The app will remove the item from the list and update the file accordingly.

To quit the app, enter the quit command. The app will exit and any changes made to the list will be saved in the file.

Note
This app was created as a demonstration of how to combine the functionality of a command-line app with the features of a Flutter app. It is not intended for production use (Yet) hahaa...have fun
