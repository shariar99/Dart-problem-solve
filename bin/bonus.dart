import 'dart:math';
import 'dart:io';

void main() {
  final random = Random();
  final int minNumber = 1;
  final int maxNumber = 100;
  final int targetNumber = minNumber + random.nextInt(maxNumber - minNumber + 1);
  int attempts = 0;
  int? userGuess;

  print("Welcome to the Number Guessing Game!");
  print("I'm thinking of a number between $minNumber and $maxNumber.");

  do {
    attempts++;
    stdout.write("Guess the number: ");
    String? input = stdin.readLineSync();
    userGuess = int.tryParse(input ?? "");

    if (userGuess == null) {
      print("Invalid input. Please enter a valid number.");
    } else if (userGuess < minNumber || userGuess > maxNumber) {
      print("Your guess is out of the valid range ($minNumber-$maxNumber). Try again.");
    } else if (userGuess < targetNumber) {
      print("Too low! Try again.");
    } else if (userGuess > targetNumber) {
      print("Too high! Try again.");
    }
  } while (userGuess != targetNumber);

  print("Congratulations! You guessed the number $targetNumber correctly in $attempts attempts.");
}
