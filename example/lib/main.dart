// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:example/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            ContainerWidget(
                text: 'Hello',
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                }),
            SizedBox(
              width: 10,
            ),
            ContainerWidget(text: 'Hello', ontap: () {}),
            SizedBox(
              width: 10,
            ),
            ContainerWidget(text: 'Hello', ontap: () {}),
            ContainerWidget(text: '', ontap: (){
              
            } ,)
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.text,
    this.ontap,
  }) : super(key: key);
  final String text;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 50,
      width: 100,
      child: Column(
        children: [Center(child: Text(text))],
      ),
    );
  }
}
