int calculateFactorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}

void main() {
  int inputNumber = 5; // Change this to the desired positive integer.
  if (inputNumber < 0) {
    print("Please enter a positive integer.");
  } else {
    int factorial = calculateFactorial(inputNumber);
    print("The factorial of $inputNumber is $factorial");
  }
}
