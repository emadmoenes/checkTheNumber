import 'dart:io';

void main() {
  // variable to store the number entered by the user
  double number;
  // variable to control the loop
  int? i = 1;

  print(
      "    ------------Program to check if the number is even or odd------------- ");
  while (i == 1) {
    // Taking input from the user
    print("Enter a number to check if it's even or odd & pos or neg: ");
    String? userInput = stdin.readLineSync();
    // Converting the input string to an integers
    if (userInput != null && userInput.isNotEmpty) {
      number = double.parse(userInput);
    } else {
      print("Please enter valid input");
      return;
    }

    // Checking if the number is positive or negative and even or odd
    if (number > 0 && number % 2 == 0) {
      print("The number is positive and even");
    } else if (number < 0 && number % 2 == 0) {
      print("The number is negative and even");
    } else if (number > 0 && number % 2 != 0) {
      print("The number is positive and odd");
    } else if (number < 0 && number % 2 != 0) {
      print("The number is negative and odd");
    } else {
      print("The number is zero");
    }
    // Asking the user if they want to continue checking numbers
    print("Do you want to check another number? (y/n)");
    String? userChoice = stdin.readLineSync();
    if (userChoice != null && userChoice.toLowerCase() == "y") {
      i = 1;
    } else {
      i = 0;
    }
  }
  ;
}
