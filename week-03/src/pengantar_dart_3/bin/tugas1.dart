void main() {
  final myFullName = "Bima Bayu Saputra";
  final myNIM = "2141720019";

  for (int number = 0; number <= 201; number++) {
    if (isPrime(number)) {
      print("$number $myFullName $myNIM");
    } else {
      print(number);
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}