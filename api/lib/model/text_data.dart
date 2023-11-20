import 'package:api/model/coord_model.dart';
import 'package:api/model/main_model.dart';
import 'package:api/model/mock_data.dart';

class TextApi {
  TextApi({
    required this.coord,
    required this.main,
  });

  final Coord coord;
  final Main main;

  factory TextApi.fromJson(Map <String, dynamic> json){
  return TextApi(coord: json['coord'], main: json['main']);
  }
}

final api = TextApi.fromJson(data);
