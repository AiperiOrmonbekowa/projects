import 'package:api_zd/constants/api.dart';
import 'package:api_zd/model/login_data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Future<LoginData?> fetchData() async {
      final dio = Dio();
      final res = await dio.get(ApiConst.adress);

      if (res.statusCode == 200) {
        final login = LoginData(
          name: res.data['login'][0]['name'],
          description: res.data['login'][0]['description'],
          renders: res.data['login'][0]['renders'],
          parses: res.data['login'][0]['parses'],
        );
        return login;
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Api'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return const Text('Интернет жок');
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else if (snapshot.hasData) {
                final login = snapshot.data;
                return Column(
                  children: [
                    Text('name: ${login!.name}'),
                    Text('descripsion: ${login.description}'),
                    Text('renders: ${login.renders}'),
                    Text('parses: ${login.parses}'),
                  ],
                );
              } else {
                return const Text('Дата келген жок');
              }
            } else {
              return const Text('ката белгисиз');
            }
          },
        ),
      ),
    );
  }
}
