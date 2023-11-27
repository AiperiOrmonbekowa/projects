
class Renders {
  Renders({
    required this.text01,
    required this.text02,
  });
  final String text01;
  final String text02;



  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'text01': text01,
      'text02': text02,
    };
  }

  factory Renders.fromJson(Map<String, dynamic> map) {
    return Renders(
      text01: map['text01'] as String,
      text02: map['text02'] as String,
    );
  }

 
}
