class Coord {
  const Coord({required this.lon, required this.lat});

  final int lon;
  final int lat;

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(lon: json['lon'], lat: json['lat']);
  }
}
