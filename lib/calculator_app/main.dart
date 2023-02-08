import 'dart:io';

import 'functions/add.dart';
import 'functions/divide.dart';
import 'functions/multiply.dart';
import 'functions/subtract.dart';

void main() {
  while (true) {
    stdout.write('\n-------------------------------------------------------\n');

    double? number1 = 0; // parsing from string could be `null` when invalid
    double? number2 = 0;
    double result = 0;

    stdout.write(
        '\nWelcome to calculator, choose 2 numbers to perform the calculation on:\n');

    stdout.write('Enter the first number: ');
    number1 = double.tryParse(stdin.readLineSync() ?? ""); // string -> number

    stdout.write('Enter the second number: ');
    number2 = double.tryParse(stdin.readLineSync() ?? ""); // string -> number

    if (number1 == null || number2 == null) {
      stdout.write('Invalid numbers, try again');
      continue; // restart the while loop
      // TIP: using `  break;  ` would exit the while loop immediately (even if it's infinite)
    }

    stdout.write(
        '\nChoose your operation: (a)dd, (s)ubtract, (d)ivide or (m)ultiply\n');

    var operationChoice = stdin.readLineSync();

    if (operationChoice == 'a') {
      result = add(number1, number2);
    } else if (operationChoice == 's') {
      result = subtract(number1, number2);
    } else if (operationChoice == 'd') {
      result = divide(number1, number2);
    } else if (operationChoice == 'm') {
      result = multiply(number1, number2);
    } else {
      stdout.write('wrong input, try again');
    }

    stdout.write('RESULT: $result');
  }
}
