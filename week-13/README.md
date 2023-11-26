### **Soal 3**
1. Jelaskan fungsi keyword yield* pada kode tersebut!
    > **Jawaban:**
Keyword `yield` pada kode tersebut digunakan untuk menyebarkan nilai-nilai dari suatu iterable (dalam hal ini, objek `Stream.periodic`) ke dalam iterable yang sedang dibuat atau di-generate oleh fungsi yang mengandung yield*. Dengan kata lain, `yield` digunakan untuk menyatukan dua iterable.
2. Apa maksud isi perintah kode tersebut?
    > **Jawaban:**
Pada kode tersebut, `Stream.periodic` digunakan untuk membuat suatu Stream yang menghasilkan nilai setiap detik. Fungsi yang diberikan sebagai parameter kedua akan dipanggil setiap kali nilai baru dihasilkan oleh Stream.periodic. Di dalam fungsi tersebut, indeks warna dihitung berdasarkan waktu t dan diambil modulus terhadap panjang array warna (colors). Nilai yang dihasilkan oleh Stream.periodic adalah nilai-nilai indeks tersebut.
3. Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"

### **Soal 5**
1. Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
   > **Jawaban:**
   
   > `await for`:
   > * Digunakan dalam konteks fungsi yang dideklarasikan dengan kata kunci async.
   > * Bersifat synchronous dan memungkinkan pembatalan dengan break.
   > * Menunggu (await) setiap event atau nilai sebelum melanjutkan ke event atau nilai berikutnya.
   > * Cocok digunakan ketika Anda perlu melakukan tindakan yang bergantung pada setiap event sebelum melanjutkan eksekusi.
    
   > `listen`:
   > * Bersifat asynchronous dan tidak memerlukan fungsi yang dideklarasikan dengan kata kunci async.
   > * Tidak menunggu event atau nilai selesai sebelum melanjutkan eksekusi.
   > * Cocok digunakan ketika Anda ingin melakukan tindakan yang tidak perlu menunggu setiap event selesai sebelum melanjutkan.
3. Lakukan commit hasil jawaban Soal 5 dengan pesan "W13: Jawaban Soal 5"

### **Soal 6**

1. Jelaskan maksud kode langkah 8 dan 10 tersebut!
   > **Jawaban:**

   > Langkah 8:
   > * Menginisialisasi objek NumberStream dan StreamController.
   > * Membuat objek Stream dari StreamController.
   > * Menambahkan listener ke stream tersebut. Setiap kali ada data yang masuk ke dalam stream, fungsi yang diberikan kepada listen akan dipanggil. Dalam kasus ini, fungsi tersebut akan memperbarui lastNumber menggunakan setState. Ini umumnya dilakukan untuk memastikan bahwa perubahan nilai di dalam widget diperbarui dan direfleksikan pada antarmuka pengguna (UI).
   
   > Langkah 10:
   > * Membuat fungsi addRandomNumber yang bertujuan untuk menambahkan angka acak ke dalam stream menggunakan objek NumberStream.
   > * Fungsi ini menggunakan objek Random untuk menghasilkan angka acak antara 0 dan 9, dan kemudian memanggil metode addNumberToSink pada objek NumberStream untuk menambahkan angka tersebut ke dalam stream.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
    > **Jawaban:**
    ![Soal 6](docs/img/P2S6.gif)
3. Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".

### **Soal 7**

1. Jelaskan maksud kode langkah 13 sampai 15 tersebut!
   > **Jawaban:**
   > ```dart 
   > addError() {
   > controller.addError('Error');
   > }
   > ```
   > Fungsi ini bertujuan untuk menambahkan kesalahan ke dalam sink suatu controller (mungkin sebuah StreamController). Metode `addError` pada objek controller dipanggil dengan parameter `Error`. Ini menandakan bahwa suatu kesalahan dengan pesan 'Error' akan ditambahkan ke dalam stream.
   > ```dart
   > }).onError((error) {
   > setState(() {
   > lastNumber = -1;
   > });
   > numberStream.addError();
   > }
   > ```
   > Blok ini menangani kesalahan yang terjadi pada stream. Jika terjadi kesalahan dalam stream, fungsi yang diberikan kepada .`onError` akan dipanggil dengan objek kesalahan (error). Dalam kasus ini, saat terjadi kesalahan, `setState` digunakan untuk memperbarui nilai lastNumber menjadi -1, mungkin untuk memberi tahu antarmuka pengguna bahwa terjadi kesalahan. Selanjutnya, `numberStream.addError();` dipanggil, yang kemungkinan menambahkan kesalahan ke dalam stream numberStream. Namun, perlu diingat bahwa di dalam potongan kode yang diberikan, `addError` tidak menerima parameter, sehingga cara ini mungkin tidak sesuai dengan implementasi sebelumnya. Kemungkinan, seharusnya ada parameter atau nilai tertentu yang ditambahkan ke dalam stream untuk menandakan jenis kesalahan tertentu.
2. Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
3. Lalu lakukan commit dengan pesan "W13: Jawaban Soal 7".

### **Soal 8**

![Soal 8](docs/img/P3S8.gif)

1. Jelaskan maksud kode langkah 1-3 tersebut!
   > **Jawaban:**
   > Kode ini mengimplementasikan transformasi stream pada aplikasi Flutter. Ini menggunakan StreamTransformer untuk mengalikan nilai integer dalam stream dengan 10. Hasil transformasi dan penanganan kesalahan diterapkan, dan hasilnya diperbarui dalam state lastNumber untuk pembaruan antarmuka pengguna.
2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
3. Lalu lakukan commit dengan pesan "W13: Jawaban Soal 8".

### **Soal 9**

![Soal 9](docs/img/P4S9.gif)

1. Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
   > **Jawaban:**
   > * Langkah 2: 
     >   * Membuat subscription untuk memantau perubahan pada suatu stream. 
     >   * Ketika ada perubahan, nilai stream digunakan untuk memperbarui state lastNumber dan kemungkinan memperbarui antarmuka pengguna.
   > * Langkah 6:
     >   * Membatalkan pemantauan terhadap stream jika tidak lagi diperlukan.
   > * Langkah 8:
     >   * Menggunakan StreamController untuk mengirim data acak ke dalam stream.
     >   * Menangani situasi di mana stream sudah ditutup dengan mengubah state lastNumber menjadi -1.
2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
3. Lalu lakukan commit dengan pesan "W13: Jawaban Soal 9".

### **Soal 10**