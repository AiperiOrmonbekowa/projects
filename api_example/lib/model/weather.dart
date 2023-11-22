import 'package:api_example/model/sys.dart';
import 'package:api_example/model/weather_element.dart';

class Weather {
  Weather({
    required this.weather,
    required this.base,
    required this.visibility,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  List<WeatherElement> weather;
  String base;

  int visibility;

  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;
}
