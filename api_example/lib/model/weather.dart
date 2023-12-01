class Weather {
  Weather({
    required this.id,
    required this.main,
  });

  final int id;
  final String main;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': main,
    };
  }

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json['id'] as int,
      main: json['main'] as dynamic,
    );
  }
}
