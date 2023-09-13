List<int> generateFibonacciSequence(int n) {
  if (n <= 0) {
    throw ArgumentError("n must be a positive integer");
  }

  List<int> fibonacciList = [0];

  if (n > 1) {
    fibonacciList.add(1);
  }

  for (int i = 2; i < n; i++) {
    int nextFibonacci = fibonacciList[i - 1] + fibonacciList[i - 2];
    fibonacciList.add(nextFibonacci);
  }

  return fibonacciList;
}

void main() {
  int n = 10;
  List<int> fibonacciNumbers = generateFibonacciSequence(n);
  print("The first $n numbers in the Fibonacci sequence are: $fibonacciNumbers");
}
