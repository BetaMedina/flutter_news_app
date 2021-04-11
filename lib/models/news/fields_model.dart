
class FieldsModel {
  String body;
  String thumbnail;

  FieldsModel({this.body, this.thumbnail});

  FieldsModel.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['body'] = this.body;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}