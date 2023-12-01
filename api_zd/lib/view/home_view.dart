import 'package:api_zd/model/api_model.dart';
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
    Future<Weather?> fetchData() async {
      final dio = Dio();
      final response = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=2dadb31a8f4956aa5426d59e3884dde5');

      if (response.statusCode == 200) {
        final api = Weather(
          id: response.data['api'][0]['id'],
          name: response.data['api'][0]['name'],
          // airDate: response.data['api'][0]['airDate'],
          // created: response.data['api'][0]['created'],
          // episode: response.data['api'][0]['episode'],
          // characters: response.data['api'][0]['characters'],
          // url: response.data['api'][0]['url'],
        );

        return api;
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Api example'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else if (snapshot.hasData) {
                final login = snapshot.data;
                return Column(
                  children: [
                    Text('name: ${login!.name}'),
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
