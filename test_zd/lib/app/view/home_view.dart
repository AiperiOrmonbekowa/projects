// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_zd/model/login.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  LoginData? loginData;

  // 1) Bir bot internet arkyluu `link`ke baryl datany alyp kelsin
  final Dio dio = Dio();

  Future<void> getData() async {
    final response = await dio.get(link);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final body = response.data;
      var atricleData = AtricleData.fromJson(body);
      setState(() {});
    }
  }
  // 2) egerde kelgen jooptun stattusu 200 je 201 bolso body syn al
  // 3) alyngan body ny alyp modelge kotorup `atricleData` ga beruu

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CenterWidget(
          LoginData.fromJson(),
        ),
      ),
    );
  }
}

class AtricleData {
  static fromJson(body) {}
}

class CenterWidget extends StatelessWidget {
  const CenterWidget(
    this.login, {
    super.key,
  });

  final LoginData login;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('name: ${login.name}'),
    );
  }
}
