import 'package:api/model/mock_data.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          '${data['base']}',
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
