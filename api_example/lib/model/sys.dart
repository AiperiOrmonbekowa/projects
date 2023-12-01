// class Sys {
//   Sys({
//     required this.type,
//     required this.id,
//     required this.country,
//     required this.sunrise,
//     required this.sunset,
//   });
//   int type;
//   int id;
//   String country;
//   int sunrise;
//   int sunset;

//   Map<String, dynamic> toJson() {
//     return <String, dynamic>{
//       'type': type,
//       'id': id,
//       'country': country,
//       'sunrise': sunrise,
//       'sunset': sunset,
//     };
//   }

//   factory Sys.fromJson(Map<String, dynamic> map) {
//     return Sys(
//       type: map['type'] as int,
//       id: map['id'] as int,
//       country: map['country'] as String,
//       sunrise: map['sunrise'] as int,
//       sunset: map['sunset'] as int,
//     );
//   }
// }
