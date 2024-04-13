import 'package:flutter/material.dart';
import 'package:my_app/mahasiswa/mahasiswa_page.dart';
import 'package:my_app/apotek/apoteker_screen.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/custome_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/second_screen.dart';
import 'package:my_app/screens/setting_screen.dart';
import 'package:my_app/screens/registration.dart';
import 'package:my_app/screens/about_screen.dart';
import 'package:my_app/screens/apotek_screen.dart';
import 'package:my_app/screens/profile_user_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_app/utils/constants.dart';

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
      home: const MyHomePage(title: 'Home Screen'),
      routes: {
        '/second-screen': (context) => const SecondScreen(),
        '/apotek-screen': (context) => const apotekScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    ApotekScreen(),
    const HomeScreen(),
    const RegistrationScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Apotek',
    'Home',
    'Schedule',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      drawer: Drawer(
        // Adding Drawer here
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Welcome, Orchid!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Update UI based on Drawer item selected
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileUserScreen()),
                );
              },
            ),
             ListTile(
              leading: Icon(Icons.contact_emergency_outlined),
              title: Text('Orchid_058'),
              onTap: () {
                // Update UI based on Drawer item selected
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MahasiswaScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.note), // Icon for Settings
              title: Text('Latihan 2'),
              onTap: () {
                // Update UI based on Drawer item selected
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const apotekScreen()),
                );
              },                
            ),
            ListTile(
              leading: Icon(Icons.settings), // Icon for Settings
              title: Text('settings'),
              onTap: () {
                // Update UI based on Drawer item selected
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingScreen()),
                );
              },                
            ),
            ListTile(
              leading: Icon(Icons.info), // Icon for About
              title: Text('About'),
              onTap: () {
                // Update UI based on Drawer item selected
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar( 
          backgroundColor: Constants.scaffoldBackgroundColor, 
          buttonBackgroundColor: Constants.primaryColor, 
          items: <Widget>[ 
            Icon( 
              Icons.medical_information_outlined, 
              size: 30.0, 
              color: _selectedIndex == 0 ? Colors.white : Constants.activeMenu, 
            ), 
            Icon( 
              Icons.home, 
              size: 30.0, 
              color: _selectedIndex == 1 ? Colors.white : Constants.activeMenu, 
            ), 
            Icon( 
              Icons.app_registration, 
              size: 30.0, 
              color: _selectedIndex == 2 ? Colors.white : Constants.activeMenu, 
            ), 
          ], 
          onTap: _onItemTapped, 
        ),
    );
  }
}
