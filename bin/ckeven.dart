void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is Even.');
  } else {
    print('$number is Odd.');
  }
}

void main() {
  int inputNumber = 9; // You can change this to any number you want to check.
  checkEvenOrOdd(inputNumber);
}
