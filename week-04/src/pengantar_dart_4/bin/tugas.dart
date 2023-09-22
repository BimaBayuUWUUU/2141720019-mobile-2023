// // Positional Parameters (Parameter Berdasarkan Posisi)
// void greet(String name, int age) {
//   print("Halo, nama saya $name dan usia saya $age tahun.");
// }

// // Named Parameters (Parameter Bernama)
// void printDetails({required String name, required int age}) {
//   print("Nama: $name, Usia: $age tahun.");
// }

// // Default Parameters (Parameter Default)
// void sayHello({String greeting = "Sugeng Dalu", String name = "Bimbay"}) {
//   print("$greeting, $name!");
// }

// // Required Parameters (Parameter Wajib) - Dart 2.12 ke atas
// void printMessage({required String message}) {
//   print(message);
// }

// // Rest Parameters (Parameter Sisa)
// void displayNumbers(int first, int second, List<int> rest) {
//   print("Siji: $first");
//   print("Loro: $second");
//   print("Lajeng: $rest");
// }

// void main() {
//   // Memanggil fungsi dengan parameter berdasarkan posisi
//   greet("Bima", 20);

//   // Memanggil fungsi dengan parameter bernama
//   printDetails(name: "Bima", age: 20);

//   // Memanggil fungsi dengan parameter default
//   sayHello();
//   sayHello(greeting: "Sugeng Enjing");
//   sayHello(name: "Anto");

//   // Memanggil fungsi dengan parameter wajib
//   printMessage(message: "Sugeng Rawuh");

//   // Memanggil fungsi dengan parameter sisa
//   List<int> restNumbers = [3, 4, 5];
//   displayNumbers(1, 2, restNumbers);
// }
//// Functions sebagai first-class objects
// void main() {
//   String greet(String name) {
//     return "Oiii, $name";
//   }
//   var myFunction = greet;

//   String applyFunction(String Function(String) func, String arg) {
//     return func(arg);
//   }

//   var result = applyFunction(greet, "Bimbay");
//   print(result); 
// }

//// Anonymous Functions
// void main() {
//   var numbers = [10, 20, 30, 40, 50];

//   var doubled = numbers.map((number) {
//     return number * 7;
//   }).toList();

//   print(doubled); 
//   void performOperation(int x, int y, Function operation) {
//     var result = operation(x, y);
//     print("Hasil operasi: $result");
//   }

//   performOperation(3, 7, (a, b) {
//     return a + b; 
//   }); 
//   performOperation(12, 987, (a, b) {
//     return a * b; 
//   }); 
// }

// void main() {
//   // Lexical Scope
//   String greeting = "Halo, ";

//   void greet(String name) {
//     print("$greeting$name");
//   }

//   greet("Bimbay");

//   // Lexical Closures
//   Function makeGreeter(String greeting) {
//     return (String name) {
//       print("$greeting$name");
//     };
//   }

//   var greetInJawa = makeGreeter("Sugeng Rawuh, ");
//   greetInJawa("Yanto");
// }

Map<String, dynamic> getPersonInfo() {
  String name = "Bima";
  int age = 20;
  String location = "Blitar";
  
  Map<String, dynamic> person = {
    'name': name,
    'age': age,
    'location': location,
  };

  return person;
}

void main() {
  var personInfo = getPersonInfo();
  print("Name: ${personInfo['name']}");
  print("Age: ${personInfo['age']}");
  print("Location: ${personInfo['location']}");
}