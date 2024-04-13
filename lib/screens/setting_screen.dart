// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _count = 0;

  void _Like() {
    setState(() {
      _count++;
    });
  }

  void _Unlike() {
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
          title: const Text('Setting Screen'),
        ),
        body: Center(
          child: Column(
            children: [
              const AssetImageWidget(
                imagePath: 'assets/images/orchid.jpg',
                width: 500,
                height: 300,
                fit: BoxFit.cover,
              ),
              const Divider(),
              Row(children: [
                const Text('Jadikan Pengalaman sebagai sebuah Pelajaran')
              ]),
              Row(
                children: [
                  IconButton(
                      onPressed: _Like, icon: const Icon(Icons.thumb_up)),
                  IconButton(
                      onPressed: _Unlike, icon: const Icon(Icons.thumb_down)),
                  Text('Likes: $_count')
                ],
              )
            ],
          ),
        ));
  }
}
