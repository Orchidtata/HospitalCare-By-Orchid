import 'package:flutter/material.dart';
import 'package:my_app/screens/routes/SecondScreen/custome_screen.dart';
import 'package:my_app/screens/setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  void goToAnotherRoute(context, screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
    // Navigator.pushNamed(context, '/second-screen');
  }

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text('Navigate to Screen Profile'),
    // );
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const CustomeScreen(),
              const SettingScreen(),
              Center(
                child: TextButton(
                  onPressed: () =>
                  Navigator.pushNamed(context, '/dark-screen'),
                  child: const Text('Go to Second Screen'),
                ),
              ),
            ],
          ),
        ));
  }
}
