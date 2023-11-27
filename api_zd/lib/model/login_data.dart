

import 'package:api_zd/model/parses.dart';
import 'package:api_zd/model/renders.dart';

class LoginData {
  LoginData({
    required this.name,
    required this.description,
    required this.renders,
    required this.parses,
  });
  final String? name;
  final String? description;
  final List<Renders>? renders;
  final List<Parses>? parses;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'renders': renders?.map((x) => x.toMap()).toList(),
      'parses': parses?.map((x) => x.toMap()).toList(),
    };
  }

  factory LoginData.fromJson(Map<String, dynamic> map) {
    return LoginData(
      name: map['name'] != null ? map['name'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      renders: map['renders'] != null ? List<Renders>.from((map['renders'] as List<String>).map<Renders?>((x) => Renders.fromJson(x as Map<String,dynamic>),),) 
      parses: map['parses'] != null ? List<Parses>.from((map['parses'] as List<String>).map<Parses?>((x) => Parses.fromJson(x as Map<String,dynamic>),),) 
    );
  }


}
