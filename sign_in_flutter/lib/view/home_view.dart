import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Google sigIn',
          style: TextStyle(
              fontSize: 22, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
      ),

    );
  }
}
