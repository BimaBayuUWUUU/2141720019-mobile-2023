void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  // Menambahkan elemen menggunakan .add()
  names1.add("Bima Bayu Saputra");
  names1.add("2141720019");

  // Menambahkan elemen menggunakan .addAll()
  names2.addAll(["Bima Bayu Saputra", "2141720019"]);

  print(names1);
  print(names2);
}