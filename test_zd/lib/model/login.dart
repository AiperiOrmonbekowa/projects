class LoginData {
  LoginData(
      {required this.name,
      required this.description,
      required this.renders,
      required this.parses});

  final String? name;
  final String? description;
  final List<String>? renders;
  final List<String>? parses;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'renders': renders,
      'parses': parses,
    };
  }

  factory LoginData.fromJson(Map<String, dynamic> map) {
    return LoginData(
        name: map['name'],
        description: map['description'],
        renders: map['renders'],
        parses: map['parses']);
  }


}
