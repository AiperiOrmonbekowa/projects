import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 10),
            child: Text(
              'Discover',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "WHAT'S NEW TODAY",
            style: TextStyle(fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}
