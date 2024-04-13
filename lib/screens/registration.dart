import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';
// import 'package:my_app/screens/routes/SecondScreen/custome_screen.dart';
// import 'package:my_app/screens/setting_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 172, 245),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("10/04/2024"),
                      Text("Poli Anak"),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Schedule Praktek"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: AssetImageWidget(
                                        imagePath: "assets/images/dokter1.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Dokter            : Adip,sked'),
                                    Text('Hari/tanggal  : Rabu/10-04-2024'),
                                    Text(
                                        "Jam                : 10.00 Wita - 13.00 Wita")
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
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Icon(
                            Icons.visibility_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 172, 245),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("11/04/2024"),
                      Text("Poli Umum"),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Schedule Praktek"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: AssetImageWidget(
                                        imagePath: "assets/images/dokter1.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Dokter            : Adip,sked'),
                                    Text('Hari/tanggal  : Rabu/10-04-2024'),
                                    Text(
                                        "Jam                : 10.00 Wita - 13.00 Wita")
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
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Icon(
                            Icons.visibility_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 172, 245),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("11/04/2024"),
                      Text("Poli Umum"),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Schedule Praktek"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: AssetImageWidget(
                                        imagePath: "assets/images/dokter1.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Dokter            : Adip,sked'),
                                    Text('Hari/tanggal  : Rabu/10-04-2024'),
                                    Text(
                                        "Jam                : 10.00 Wita - 13.00 Wita")
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
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Icon(
                            Icons.visibility_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 172, 245),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("11/04/2024"),
                      Text("Poli Umum"),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Schedule Praktek"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: AssetImageWidget(
                                        imagePath: "assets/images/dokter1.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Dokter            : Adip,sked'),
                                    Text('Hari/tanggal  : Rabu/10-04-2024'),
                                    Text(
                                        "Jam                : 10.00 Wita - 13.00 Wita")
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
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Icon(
                            Icons.visibility_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 172, 245),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("11/04/2024"),
                      Text("Poli Umum"),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Schedule Praktek"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: AssetImageWidget(
                                        imagePath: "assets/images/dokter1.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Dokter            : Adip,sked'),
                                    Text('Hari/tanggal  : Rabu/10-04-2024'),
                                    Text(
                                        "Jam                : 10.00 Wita - 13.00 Wita")
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
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Icon(
                            Icons.visibility_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 172, 245),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("11/04/2024"),
                      Text("Poli Umum"),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Schedule Praktek"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: AssetImageWidget(
                                        imagePath: "assets/images/dokter1.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Dokter            : Adip,sked'),
                                    Text('Hari/tanggal  : Rabu/10-04-2024'),
                                    Text(
                                        "Jam                : 10.00 Wita - 13.00 Wita")
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
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Icon(
                            Icons.visibility_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 172, 245),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("11/04/2024"),
                      Text("Poli Anak"),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Schedule Praktek"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: AssetImageWidget(
                                        imagePath: "assets/images/dokter1.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Dokter            : Adip,sked'),
                                    Text('Hari/tanggal  : Rabu/10-04-2024'),
                                    Text(
                                        "Jam                : 10.00 Wita - 13.00 Wita")
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
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Icon(
                            Icons.visibility_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 84, 172, 245),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue, // Warna border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("11/04/2024"),
                      Text("Poli Anak"),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika item obat ditekan, misalnya tampilkan detail obat
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Schedule Praktek"),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: AssetImageWidget(
                                        imagePath: "assets/images/dokter1.jpg",
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Dokter            : Adip,sked'),
                                    Text('Hari/tanggal  : Rabu/10-04-2024'),
                                    Text(
                                        "Jam                : 10.00 Wita - 13.00 Wita")
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
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Warna border
                            ),
                          ),
                          child: Icon(
                            Icons.visibility_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
