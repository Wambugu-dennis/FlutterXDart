import 'dart:io';
import 'dart:convert';

void main() {
  // Load the to-do list from the file, or create an empty list if the file doesn't exist
  List<String> toDoList = readToDoListFromFile();

  // Create a loop to continuously accept input from the user
  while (true) {
    print("Enter a command (add, list, delete, or quit):");
    String command = stdin.readLineSync()?.trim() ?? "";

    if (command == "add") {
      print("Enter a to-do item:");
      String item = stdin.readLineSync()?.trim() ?? "";
      toDoList.add(item);
      writeToDoListToFile(toDoList);
    } else if (command == "list") {
      print("To-do list:");
      for (int i = 0; i < toDoList.length; i++) {
        print("  ${i + 1}: ${toDoList[i]}");
      }
    } else if (command == "delete") {
      print("Enter the number of the item you want to delete:");
      int itemNumber = int.tryParse(stdin.readLineSync()?.trim()) ?? 0;
      if (itemNumber > 0 && itemNumber <= toDoList.length) {
        toDoList.removeAt(itemNumber - 1);
        writeToDoListToFile(toDoList);
      } else {
        print("Invalid item number. Please try again.");
      }
    } else if (command == "quit") {
      break;
    } else {
      print("Invalid command. Please try again.");
    }
  }
}

List<String> readToDoListFromFile() {
  try {
    // Read the contents of the file into a string
    String fileContents = File('todolist.txt').readAsStringSync();

    // Return an empty list if the file is empty
    if (fileContents.isEmpty) {
      return [];
    }

    // Decode the JSON string into a list of strings
    return jsonDecode(fileContents);
  } catch (e) {
    // Return an empty list if an error occurred while reading the file
    return [];
  }
}

void writeToDoListToFile(List<String> toDoList) {
  // Encode the list of strings as a JSON string
  String fileContents = jsonEncode(toDoList);

  // Write the JSON string to the file
  File('todolist.txt').writeAsStringSync(fileContents);
}
