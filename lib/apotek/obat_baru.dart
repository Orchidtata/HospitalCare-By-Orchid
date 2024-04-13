import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl/intl.dart';
import 'package:my_app/apotek/present_apoteker.dart';


class InputObat extends StatefulWidget {
  final Apotek apotek; // Ubah nama kelas

  InputObat(this.apotek);

  @override
  _InputObatState createState() => _InputObatState(this.apotek);
}

class _InputObatState extends State<InputObat> {
  Apotek apotek; // Ubah nama kelas
  TextEditingController namaObatController = TextEditingController(); // Ubah nama controller
  TextEditingController jenisObatController = TextEditingController(); // Ubah nama controller
  TextEditingController jumlahObatController = TextEditingController(); // Ubah nama controller

  _InputObatState(this.apotek); // Ubah nama kelas

  @override
  Widget build(BuildContext context) {
    namaObatController.text = apotek.nama_obat; // Ubah nama atribut
    jenisObatController.text = apotek.jenis_obat; // Ubah nama atribut
    jumlahObatController.text = apotek.jumlah_obat; // Ubah nama atribut

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Resep"),
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: namaObatController, // Ubah nama controller
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nama Obat", // Ubah label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: jenisObatController, // Ubah nama controller
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Jenis Obat", // Ubah label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: jumlahObatController, // Ubah nama controller
                    keyboardType: TextInputType.number, // Ubah tipe input
                    decoration: InputDecoration(
                      labelText: "Jumlah Obat", // Ubah label
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Theme.of(context).primaryColorLight,
                        backgroundColor: Theme.of(context).primaryColorDark,
                      ),
                      child: Text("Simpan", textScaleFactor: 1.5),
                      onPressed: () {
                        apotek.nama_obat = namaObatController.text; // Ubah nama atribut
                        apotek.jenis_obat = jenisObatController.text; // Ubah nama atribut
                        apotek.jumlah_obat = jumlahObatController.text; // Ubah nama atribut
                        Navigator.pop(context, apotek);
                      },
                    ),
                  ),
                  Container(width: 5.0),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Theme.of(context).primaryColorLight,
                        backgroundColor: Theme.of(context).primaryColorDark,
                      ),
                      child: Text("Batal", textScaleFactor: 1.5),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
