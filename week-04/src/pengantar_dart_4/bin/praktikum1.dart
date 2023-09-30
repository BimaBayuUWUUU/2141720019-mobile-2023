// void main() {
//   var list = [1, 2, 3];
// assert(list.length == 3);
// assert(list[1] == 2);
// print(list.length);
// print(list[1]);

// list[1] = 1;
// assert(list[1] == 1);
// print(list[1]);
// }

void main() {
  var list = List.filled(5, null as dynamic); // Use dynamic type
  list[1] = "Bima Bayu Saputra";
  list[2] = "2141720019";

  assert(list.length == 5);
  assert(list[1] == "Bima Bayu Saputra");
  assert(list[2] == "2141720019");

  print("Panjang List: ${list.length}");
  print("Elemen indeks 1: ${list[1]}");
  print("Elemen indeks 2: ${list[2]}");
}



