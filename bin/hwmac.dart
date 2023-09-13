int findLargestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("The input list is empty");
  }

  int largestNumber = numbers[0]; 

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largestNumber) {
      largestNumber = numbers[i];
    }
  }

  return largestNumber;
}

void main() {
  List<int> numbers = [5, 12, 9, 42, 25];
  int largestNumber = findLargestNumber(numbers);
  print("The largest number in the list is: $largestNumber");
}
