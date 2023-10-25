class ApiConst {
  static String weatherByCity(String name) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$name&appid=2dadb31a8f4956aa5426d59e3884dde5';
}
