import 'dart:io';

void main() {
  int factorial(int n) {
    if (n < 0) {
      throw ArgumentError("Negative numbers are not allowed.");
    }
    return n == 0 ? 1 : n * factorial(n - 1);
  }
  void calculateFactorial(int n, int Function(int) factorialFunction) {
    try {
      int result = factorialFunction(n);
      print('The factorial of $n is $result.');
    } catch (e) {
      print(e);
    }
  }
  print('Enter a non-negative integer:');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int number = int.parse(input);
      if (number < 0) {
        print('Please enter a non-negative integer.');
      } else {
        calculateFactorial(number, factorial);
      }
    } catch (e) {
      print('Invalid input. Please enter a valid integer.');
    }
  } else {
    print('No input provided.');
  }
}
