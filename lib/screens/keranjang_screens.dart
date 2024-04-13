import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';

class KeranjangScreens extends StatefulWidget {
  const KeranjangScreens({Key? key}) : super(key: key);

  @override
  _KeranjangScreensState createState() => _KeranjangScreensState();
}

class _KeranjangScreensState extends State<KeranjangScreens> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keranjang"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            AssetImageWidget(
                              imagePath: "assets/images/gambar_obat_1.jpg",
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Text("Paracetamol"),
                                Text("Harga: Rp 10.00")
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: _decrement,
                            icon: const Icon(Icons.remove)),
                        Text(
                          '$_count',
                          style: const TextStyle(color: Colors.black),
                        ),
                        IconButton(
                            onPressed: _increment, icon: const Icon(Icons.add)),
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                // Aksi ketika tombol Checkout ditekan
                                // Misalnya, menampilkan dialog konfirmasi atau melakukan navigasi ke layar pembayaran
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    // Isi dialog checkout di sini
                                    return AlertDialog(
                                      title: Text('Konfirmasi Checkout'),
                                      content: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Paracetamol"),
                                          Text("Rp.20.000")
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            // Lakukan aksi checkout di sini, misalnya navigasi ke layar pembayaran
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Ya'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Tidak'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.blue, // Warna border
                                  ),
                                ),
                                child: Center(
                                  child: Text("Checkout"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}