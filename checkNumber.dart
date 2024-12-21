import 'dart:io';

void main() {
  // List to store the numbers entered by the user
  List<int> numbers = [];

  // Taking input from the user
  print("Enter the numbers separated by ',': ");
  String? userInput = stdin.readLineSync();
  // Converting the input string to a list of integers
  if (userInput != null && userInput.isNotEmpty) {
    numbers = userInput.split(",").map((e) => int.parse(e)).toList();
    print("The numbers entered are: $numbers");
  } else {
    print("Please enter valid input");
    return;
  }

  // Checking if the number is even or odd using a switch statement
  print("check if the number is even or odd: ");
  for (int number in numbers) {
    switch (number % 2) {
      case 0:
        print("$number is even");
        break;
      case 1:
        print("$number is odd");
        break;
      default:
        print("$number is not a valid number");
        break;
    }
    ;
  }
  ;
}
