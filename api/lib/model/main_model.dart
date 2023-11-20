class Main {
  const Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final double pressure;
  final double humidity;
  final double seaLevel;
  final double grndLevel;

  factory Main.fromJson(Map <String, dynamic> json){
  return Main(temp: json['temp'], feelsLike: json['feels_like'], tempMin: json['temp_min'], tempMax: json['temp_max'], pressure: json['pressure'], humidity:json['humidity'], seaLevel: json['sea_level'], grndLevel: json['grnd_level']);
  }
}
