import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Application'),
      ),
      body: Center(
        child: Text('This is the about screen'),
      ),
    );
  }
}
