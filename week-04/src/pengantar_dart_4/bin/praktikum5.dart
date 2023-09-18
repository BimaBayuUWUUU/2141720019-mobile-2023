// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

// void main() {
//   var record = {'first': 2, 'a': 12, 'b': true, 'last': 'last'};
//   print("Record sebelum pertukaran: $record");

//   var updatedRecord = tukar(record);
//   print("Record setelah pertukaran: $updatedRecord");
// }

// Map<String, dynamic> tukar(Map<String, dynamic> record) {
//   var a = record['first'];
//   var b = record['a'];

//   record['first'] = b;
//   record['a'] = a;

//   return record;
// }
// void main() {
// (String, int) mahasiswa = ('Bima Bayu Saputra', 2141720019);
//   print(mahasiswa);
// }

void main() {
  var mahasiswa2 = ('Bima Bayu Saputra', a: 2141720019, b: true, 'last');

print(mahasiswa2.$1); // Prints 'Nama'
print(mahasiswa2.a); // Prints NIM
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
}