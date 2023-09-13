List<int> findUniqueElements(List<int> numbers) {
  Set<int> uniqueElements = Set<int>();

  for (int number in numbers) {
    uniqueElements.add(number);
  }

  return uniqueElements.toList();
}

void main() {
  List<int> inputList = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueElements = findUniqueElements(inputList);
  print("Unique elements in the list are: $uniqueElements");
}
