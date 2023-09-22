# Dart_4

## Bima Bayu Saputra || 2141720019 || 08/TI-3H

## Praktikum_1

### Langkah 1

![image](docs/img/L1P1.png)

### Langkah 2

![image](docs/img/L2P1.png)

Kode ini menghasilkan output pertama adalah panjang list, kemudian nilai indeks 1, dan kemudian mencetak nilai indeks 1 setelah diubah.

### Langkah 3

![image](docs/img/L3P1.png)

### Langkah 4

## Praktikum_2

### Langkah 1

![image](docs/img/L1P2.png)

### Langkah 2

![image](docs/img/L2P2.png)

Kode ini menghasilkan output print nilai dari `var halogens`.

### Langkah 3

![image](docs/img/L3P2.png)

Bisa berjalan tanpa erorr.

### Langkah 4

![image](docs/img/L4P2.png)

## Praktikum_3

### Langkah 1

![image](docs/img/L1P3.png)

### Langkah 2

![image](docs/img/L2P3.png)

Kode ini menghasilkan output print nilai dari `var gifts` dan `var nobleGases`.

### Langkah 3

![image](docs/img/L3P3.png)

Tidak erorr namun `mhs1` dan `mhs2` tidak memiliki nilai, karena masih digunakan variable `gifts` dan `nobleGases` dalam assignmentnya.

### Langkah 4

![image](docs/img/L4P3.png)

### Langkah 5

![image](docs/img/L5P3.png)

## Praktikum_4

### Langkah 1

![image](docs/img/L1P4.png)

### Langkah 2

![image](docs/img/L2P4.png)

list1 tidak terdefinisi.

![image](docs/img/L2_1P4.png)

### Langkah 3

![image](docs/img/L3P4.png)

Warning karena adanya operan null.

![image](docs/img/L3_1P4.png)

![image](docs/img/L3_2P4.png)

### Langkah 4

True

![image](docs/img/L4P4.png)

False

![image](docs/img/L4_1P4.png)

### Langkah 5

Manager

![image](docs/img/L5P4.png)

Employee

![image](docs/img/L5_1P4.png)

### Langkah 6

![image](docs/img/L6P4.png)

Manfaat dari collection for adalah memungkinkan membuat koleksi baru dengan cara yang efisien berdasarkan elemen-elemen dari koleksi yang ada, tanpa membuat loop manual. Membuat kode menjadi lebih ringkas dan mudah dibaca.

## Praktikum_5

### Langkah 1

![image](docs/img/L1P5.png)

### Langkah 2

Tidak terjadi error, hanya ada kurang tanda `;` pada akhir code print.

### Langkah 3

![image](docs/img/L3P5.png)

![image](docs/img/L3_1P5.png)

### Langkah 4

![image](docs/img/L4P5.png)

### Langkah 5

![image](docs/img/L5P5.png)

![image](docs/img/L5_1P5.png)

## Tugas

### Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

### Jelaskan yang dimaksud Functions dalam bahasa Dart!

Functions dalam bahasa Dart adalah blok kode yang digunakan untuk melakukan tugas-tugas tertentu dalam program. Functionereka membantu dalam mengorganisir dan merapikan kode serta bisa mengembalikan nilai atau tidak, tergantung pada kebutuhan program.

### Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

* Positional Parameters (Parameter Berdasarkan Posisi):

Jenis parameter ini ditentukan berdasarkan urutan posisi saat memanggil fungsi. Jumlah dan tipe parameter harus sesuai dengan yang dideklarasikan dalam fungsi.

* Named Parameters (Parameter Bernama):

Jenis parameter ini diberi nama saat deklarasi, dan pengguna harus menyebutkan nama parameter saat memanggil fungsi. Ini memungkinkan Anda untuk mengabaikan urutan posisi.

* Default Parameters (Parameter Default):

Anda dapat memberikan nilai default kepada parameter, yang akan digunakan jika pengguna tidak memberikan nilai saat memanggil fungsi.

* Required Parameters (Parameter Wajib):

Mulai dari Dart 2.12, Anda dapat menandai parameter sebagai wajib dengan menggunakan kata kunci required. Pengguna harus memberikan nilai untuk parameter tersebut saat memanggil fungsi.

* Rest Parameters (Parameter Sisa):

Jika Anda tidak tahu berapa banyak parameter yang akan digunakan, Anda dapat menggunakan parameter sisa (rest parameter) dengan tanda ... untuk mengumpulkan semua argumen yang tidak digunakan oleh parameter lainnya.

Contoh:

![image](docs/img/T1.png)
![image](docs/img/T1-1.png)

### Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

Dalam Dart, fungsi dianggap sebagai first-class objects, jika dapat:

* Menyimpan fungsi dalam variabel.
* Mengirim fungsi sebagai argumen ke fungsi lain.
* Mengembalikan fungsi sebagai nilai dari fungsi lain.

Contoh:

![image](docs/img/T2.png)

### Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

Dalam bahasa Dart, anonymous functions dikenal sebagai "anonymous function" atau "lambda function.". Digunakan untuk membuat fungsi sederhana tanpa memberikan nama. Anonymous functions sering digunakan dalam pemrograman Dart untuk berbagai tugas, seperti pemrosesan daftar (list) atau sebagai argumen dalam fungsi lain.

Contoh:

![image](docs/img/T3.png)

### Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

Lexical Scope adalah aturan tentang bagaimana variabel diakses berdasarkan struktur kode, sedangkan Lexical Closures adalah kemampuan fungsi untuk mengingat lingkup lexicalnya dan mengakses variabel-variabelnya bahkan setelah fungsi tersebut selesai dieksekusi.

Contoh:

![image](docs/img/T4.png)

### Jelaskan dengan contoh cara membuat return multiple value di Functions!

Mengembalikan multiple values dari sebuah fungsi dengan menggabungkannya dalam sebuah objek atau struktur data

Contoh:

![image](docs/img/T5.png)

`getPersonInfo()` mengembalikan `Map` yang berisi nama, usia, dan lokasi, dan kita mengakses nilai-nilai tersebut dengan kunci (keys) yang sesuai.