import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';
// import 'package:my_app/components/text_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255,
          255), // Ganti warna latar belakang Scaffold menjadi biru
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Tambahkan ini
          children: [
            Container(
              decoration: const BoxDecoration(
                color:
                    Color.fromARGB(255, 255, 255, 255), // Warna latar belakang
                // Jika Anda ingin menggunakan gambar sebagai latar belakang:
                // image: DecorationImage(
                //   image: AssetImage('assets/background_image.jpg'),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 25 / 10,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  Container(
                    margin: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/banner1.png',
                      // width: 00,
                      // height: 200
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 254, 191, 104),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/banner2.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Tambahkan jarak antara Carousel dan Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 191, 104),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue, // Warna border
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child:
                              Text("Diskon %", style: TextStyle(fontSize: 17)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 250,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 172, 245),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue, // Warna border
                          ),
                        ),
                        child: Row(
                          children: [
                            AssetImageWidget(
                              imagePath: "assets/images/gambar_obat_1.jpg",
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Paracetamol"),
                                Text(
                                  "Rp. 10.000",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "Rp. 5.000",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 250,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 172, 245),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue, // Warna border
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AssetImageWidget(
                              imagePath: "assets/images/gambar_obat_1.jpg",
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Paracetamol"),
                                Text(
                                  "Rp. 10.000",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "Rp. 5.000",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 250,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 172, 245),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue, // Warna border
                          ),
                        ),
                        child: Row(
                          children: [
                            AssetImageWidget(
                              imagePath: "assets/images/gambar_obat_1.jpg",
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Paracetamol"),
                                Text(
                                  "Rp. 10.000",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  "Rp. 5.000",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 191, 104),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue, // Warna border
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Today", style: TextStyle(fontSize: 17)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 250,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 172, 245),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue, // Warna border
                          ),
                        ),
                        child: Row(
                          children: [
                            AssetImageWidget(
                              imagePath: "assets/images/dokter1.jpg",
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text("POLI ANAK"),
                                Text(
                                  "Dr. Dian",
                                ),
                                Text(
                                  "10.00 - 13.00",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 250,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 172, 245),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue, // Warna border
                          ),
                        ),
                        child: Row(
                          children: [
                            AssetImageWidget(
                              imagePath: "assets/images/dokter1.jpg",
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text("POLI ANAK"),
                                Text(
                                  "Dr. Dian",
                                ),
                                Text(
                                  "10.00 - 13.00",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 250,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue, // Warna border
                          ),
                        ),
                        child: Row(
                          children: [
                            AssetImageWidget(
                              imagePath: "assets/images/dokter1.jpg",
                              width: 120,
                              height: 120,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text("POLI ANAK"),
                                Text(
                                  "Dr. Dian",
                                ),
                                Text(
                                  "10.00 - 13.00",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
