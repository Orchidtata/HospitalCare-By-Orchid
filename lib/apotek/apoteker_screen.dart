import 'package:flutter/material.dart';
import 'package:my_app/apotek/EditResepPage.dart';
import 'package:my_app/apotek/helper_apotek.dart';
import 'package:my_app/apotek/present_apoteker.dart';
import 'package:my_app/apotek/obat_baru.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class apotekScreen extends StatefulWidget {
  const apotekScreen({Key? key}) : super(key: key);

  @override
  _apotekScreenState createState() => _apotekScreenState();
}

class _apotekScreenState extends State<apotekScreen> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Apotek> apotekList = []; // Ubah tipe objek

  @override
  void initState() {
    super.initState();
    updateListView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Medicine'),
        leading: Icon(Icons.kitchen),
      ),
      body: SingleChildScrollView(
        child: createListView(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Input Medicine',
        onPressed: () async {
          var apotek = await navigateToEntryForm(context); // Ubah nama variabel
          if (apotek != null) addResep(apotek); // Ubah nama fungsi
        },
      ),
    );
  }

  Future<Apotek?> navigateToEntryForm(BuildContext context) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return InputObat(Apotek(0, '', '', '')); // Ubah kelas dan objek
      }),
    );
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle1!;
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            title: Text(
              apotekList[index].nama_obat, // Ubah atribut
              style: textStyle,
            ),
            subtitle: Text(apotekList[index].jenis_obat), // Ubah atribut
            trailing: Wrap(
              spacing: 12, // space between two icons
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () async {
                    var apotek = await navigateToEditResepForm(
                        context, apotekList[index]); // Ubah nama variabel
                    if (apotek != null) editResep(apotek); // Ubah nama fungsi
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    deleteMedicine(apotekList[index]); // Ubah nama fungsi
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<Apotek?> navigateToEditResepForm(
      BuildContext context, Apotek apotek) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return EditobatPage(apotek: apotek); // Ubah kelas dan objek
      }),
    );
  }

  void addResep(Apotek apotek) async {
    int result = await dbHelper.insert(apotek); // Ubah nama fungsi
    if (result > 0) {
      updateListView();
    }
  }

  void editResep(Apotek apotek) async {
    int result = await dbHelper.update(apotek); // Ubah nama fungsi
    if (result > 0) {
      updateListView();
      print("Edit Medicine RESULT: $result");
    }
  }

  void deleteMedicine(Apotek apotek) async {
    int result = await dbHelper.delete(apotek.id); // Ubah nama fungsi
    if (result > 0) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Apotek>> apotekListFuture = dbHelper.getApotekList(); // Ubah nama fungsi
      apotekListFuture.then((apotekList) {
        setState(() {
          this.apotekList = apotekList; // Ubah nama objek
          this.count = apotekList.length; // Ubah nama objek
        });
      });
    });
  }
}
