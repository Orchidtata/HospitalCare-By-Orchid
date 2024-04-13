import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/apotek/present_apoteker.dart'; // Ubah impor

class EditobatPage extends StatefulWidget {
  final Apotek apotek; // Ubah parameter

  EditobatPage({required this.apotek}); // Ubah parameter

  @override
  _EditobatPageState createState() => _EditobatPageState();
}

class _EditobatPageState extends State<EditobatPage> {
  final format = DateFormat("yyyy-MM-dd");
  TextEditingController _namaController = TextEditingController();
  TextEditingController _jenisController = TextEditingController();
  TextEditingController _jumlahController = TextEditingController(); // Tambahkan controller untuk jumlah obat

  @override
  void initState() {
    super.initState();
    _namaController.text = widget.apotek.nama_obat; // Ubah atribut
    _jenisController.text = widget.apotek.jenis_obat; // Ubah atribut
    _jumlahController.text = widget.apotek.jumlah_obat; // Set nilai awal untuk jumlah obat
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Medicine'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(labelText: 'Nama Obat'), // Ubah label
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _jenisController,
                decoration: InputDecoration(labelText: 'Jenis Obat'), // Ubah label
              ),
              SizedBox(height: 10), // Tambahkan jarak antara jenis obat dan jumlah obat
              TextFormField(
                controller: _jumlahController,
                keyboardType: TextInputType.number, // Tipe keyboard untuk jumlah obat
                decoration: InputDecoration(labelText: 'Jumlah Obat'), // Label untuk jumlah obat
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    _saveChanges();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, 50), // Lebar minimum tombol
                  ),
                  child:
                      Text('Simpan Perubahan', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, 50), // Lebar minimum tombol
                  ),
                  child: Text('Batal', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveChanges() {
    // Mendapatkan nilai terbaru dari TextFormField
    String namaObat = _namaController.text; // Ubah nama variabel
    String jenisObat = _jenisController.text; // Ubah nama variabel
    String jumlahObat = _jumlahController.text; // Dapatkan nilai jumlah obat

    // Membuat objek Apotek baru dengan nilai terbaru
    Apotek updatedApotek = Apotek(
      widget.apotek.id,
      namaObat,
      jenisObat,
      jumlahObat, // Sertakan jumlah obat dalam pembuatan objek Apotek
    );

    // Mengembalikan nilai Apotek yang diperbarui ke halaman sebelumnya
    Navigator.pop(context, updatedApotek);
  }
}
