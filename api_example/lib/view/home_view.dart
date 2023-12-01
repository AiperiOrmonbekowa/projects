import 'package:api_example/constants/api_const.dart';
import 'package:api_example/model/weather.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Weather? weather;
  @override
  Widget build(BuildContext context) {
    Future<Weather?> fetchData() async {
      final dio = Dio();
      final res = await dio.get(ApiConst.adress);

      if (res.statusCode == 200) {
        final body = res.data;
        weather = Weather.fromJson(body);
        // final weather = Weather(
        //     id: res.data['weather'][0]['id'],
        //     main: res.data['weather'][0]['main'].toString());
        // return weather;
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
                final weather = snapshot.data;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(weather!.id),
                    Text(weather!.main)
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
