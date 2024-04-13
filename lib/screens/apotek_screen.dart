import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/screens/keranjang_screens.dart';

class Obat {
  final String gambar;
  final String nama;
  final String harga;

  Obat(
    this.gambar,
    this.nama,
    this.harga,
  );
}

class ApotekScreen extends StatelessWidget {
  final List<Obat> _listObat = [
    Obat('assets/images/gambar_obat_1.jpg', 'Paracetamol', 'Rp 10.000'),
    Obat('assets/images/gambar_obat_2.jpg', 'Amoxicillin', 'Rp 20.000'),
    Obat('assets/images/gambar_obat_1.jpg', 'Paracetamol', 'Rp 10.000'),

    // Tambahkan obat lainnya jika diperlukan
  ];
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.blue, // Warna border
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            // Handle search query changes here
                            print('Search query: $value');
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // Handle search button press here
                          print('Search button pressed');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (KeranjangScreens())),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            // Expanded dimulai dari sini
            child: ListView.builder(
              itemCount: _listObat.length,
              itemBuilder: (context, index) {
                final obat = _listObat[index];
                return Column(
                  children: [
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 84, 172, 245),
                        border: Border.all(
                          color: Colors
                              .grey, // Atur warna dan ketebalan sesuai kebutuhan
                        ),
                        borderRadius: BorderRadius.circular(
                            10), // Atur border radius sesuai kebutuhan
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          obat.gambar,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(obat.nama),
                        subtitle: Text(obat.harga),
                        trailing: IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            // Aksi ketika tombol pesan sekarang ditekan
                            // Misalnya, menambahkan obat ke keranjang belanja
                            // Anda dapat menambahkan logika sesuai kebutuhan Anda di sini
                          },
                        ),
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(obat.nama),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      obat.gambar,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 10),
                                    Text('Nama: ${obat.nama}'),
                                    Text('Harga: ${obat.harga}')
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 84, 172, 245),
                        border: Border.all(
                          color: Colors
                              .grey, // Atur warna dan ketebalan sesuai kebutuhan
                        ),
                        borderRadius: BorderRadius.circular(
                            10), // Atur border radius sesuai kebutuhan
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          obat.gambar,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(obat.nama),
                        subtitle: Text(obat.harga),
                        trailing: IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            // Aksi ketika tombol pesan sekarang ditekan
                            // Misalnya, menambahkan obat ke keranjang belanja
                            // Anda dapat menambahkan logika sesuai kebutuhan Anda di sini
                          },
                        ),
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(obat.nama),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      obat.gambar,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 10),
                                    Text('Nama: ${obat.nama}'),
                                    Text('Harga: ${obat.harga}')
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 84, 172, 245),
                        border: Border.all(
                          color: Colors
                              .grey, // Atur warna dan ketebalan sesuai kebutuhan
                        ),
                        borderRadius: BorderRadius.circular(
                            10), // Atur border radius sesuai kebutuhan
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          obat.gambar,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(obat.nama),
                        subtitle: Text(obat.harga),
                        trailing: IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            // Aksi ketika tombol pesan sekarang ditekan
                            // Misalnya, menambahkan obat ke keranjang belanja
                            // Anda dapat menambahkan logika sesuai kebutuhan Anda di sini
                          },
                        ),
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(obat.nama),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      obat.gambar,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 10),
                                    Text('Nama: ${obat.nama}'),
                                    Text('Harga: ${obat.harga}')
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 84, 172, 245),
                        border: Border.all(
                          color: Colors
                              .grey, // Atur warna dan ketebalan sesuai kebutuhan
                        ),
                        borderRadius: BorderRadius.circular(
                            10), // Atur border radius sesuai kebutuhan
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          obat.gambar,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(obat.nama),
                        subtitle: Text(obat.harga),
                        trailing: IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            // Aksi ketika tombol pesan sekarang ditekan
                            // Misalnya, menambahkan obat ke keranjang belanja
                            // Anda dapat menambahkan logika sesuai kebutuhan Anda di sini
                          },
                        ),
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(obat.nama),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      obat.gambar,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(height: 10),
                                    Text('Nama: ${obat.nama}'),
                                    Text('Harga: ${obat.harga}')
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Menambahkan jarak 10 piksel di antara setiap item
                  ],
                );
              },
            ),
          ), // Expanded berakhir di sini
        ],
      ),
    );
  }
}
