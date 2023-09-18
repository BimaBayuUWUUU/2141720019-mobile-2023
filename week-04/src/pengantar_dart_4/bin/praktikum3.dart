void main() {
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

var mhs1 = Map<String, String>();
mhs1['first'] = 'partridge';
mhs1['second'] = 'turtledoves';
mhs1['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
mhs2[2] = 'helium';
mhs2[10] = 'neon';
mhs2[18] = 'argon';

  // Menambahkan elemen nama dan NIM 
  gifts['nama'] = 'Bima Bayu Saputra';
  gifts['nim'] = '2141720019';

  nobleGases[21] = 'Bima Bayu Saputra';
  nobleGases[19] = '2141720019';

  mhs1['nama'] = 'Bima Bayu Saputra';
  mhs1['nim'] = '2141720019';

  mhs2[21] = 'Bima Bayu Saputra';
  mhs2[19] = '2141720019';

print(gifts);
print(nobleGases);

print(mhs1);
print(mhs2);
}