import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/constants/api.dart';
import 'package:flutter_api/model/api_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic res;
    Future<dynamic> fetchData() async {
      final dio = Dio();
      await Future.delayed(const Duration(seconds: 5));
      res = await dio.get(ApiConst.address);
      // return res;

      if (res.statusCode == 200) {
        final MWL = Api(
          id: res.data['MWL']['id'],
          name: res.data['MWL']['name'],
        );
        return Api;
      }
      return null;
    }

    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              return Text('${res.data}');
            }),
      ),
    );
  }
}
