num doTask(num num1, num num2, [String operation = 'add']) {
  switch (operation) {
    case 'sub':
      return num1 - num2;
    case 'mul':
      return num1 * num2;
    case 'div':
      return num1 / num2;
    default:
      return num1 + num2;
  }
}

void main() {
  print(doTask(10, 5)); // Expected Output: 15 (default is addition)
  print(doTask(10, 5, 'sub')); // Expected Output: 5
  print(doTask(10, 5, 'mul')); // Expected Output: 50
  print(doTask(10, 5, 'div')); // Expected Output: 2
}