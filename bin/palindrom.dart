bool isPalindrome(String input) {

  String cleanedInput = input.replaceAll(' ', '').toLowerCase();


  return cleanedInput == cleanedInput.split('').reversed.join('');
}

void main() {
  List<String> testStrings = ["Madam", "radar", "Civic"];

  for (String str in testStrings) {
    bool result = isPalindrome(str);
    print('Is "$str" a palindrome? $result');
  }
}
