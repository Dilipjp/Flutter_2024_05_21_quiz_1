import 'package:flutter/material.dart';

void main() {
  List<int> inputList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = inputList.where((int number) => number.isEven).toList();
  print('Original List: $inputList');
  print('Even Numbers: $evenNumbers');
}