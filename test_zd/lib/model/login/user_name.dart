// class Username {
//   String? type;
//   bool? required;
//   bool? readOnly;
//   String? label;

//   Username({this.type, this.required, this.readOnly, this.label});

//   Username.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     required = json['required'];
//     readOnly = json['read_only'];
//     label = json['label'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['type'] = this.type;
//     data['required'] = this.required;
//     data['read_only'] = this.readOnly;
//     data['label'] = this.label;
//     return data;
//   }
// }