import 'package:flutter/material.dart';
import 'package:my_app/login_screen.dart';
// import 'package:my_app/screens/routes/SecondScreen/custome_screen.dart';
// import 'package:my_app/screens/routes/SecondScreen/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      // routes: {
      //   '/second-screen': (context) => const SecondScreen(),
      //   '/custome-screen': (context) => const CustomeScreen(),
      // },
    );
  }
}

