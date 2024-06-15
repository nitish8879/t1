class TabModel {
  String? name;
  String? path;
  String? uid;

  TabModel({this.name, this.path, this.uid});

  TabModel.fromJson(dynamic json) {
    name = json['name'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['path'] = this.path;
    return data;
  }
}
