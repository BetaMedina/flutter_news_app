import 'package:news_tech_app/models/news/fields_model.dart';

class NewsModel {
  String id;
  String type;
  String sectionId;
  String sectionName;
  String webPublicationDate;
  String webTitle;
  String webUrl;
  String apiUrl;
  FieldsModel fields;
  bool isHosted;
  String pillarId;
  String pillarName;

  NewsModel(
      {this.id,
      this.type,
      this.sectionId,
      this.sectionName,
      this.webPublicationDate,
      this.webTitle,
      this.webUrl,
      this.apiUrl,
      this.fields,
      this.isHosted,
      this.pillarId,
      this.pillarName});

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    sectionId = json['sectionId'];
    sectionName = json['sectionName'];
    webPublicationDate = json['webPublicationDate'];
    webTitle = json['webTitle'];
    webUrl = json['webUrl'];
    apiUrl = json['apiUrl'];
    fields =
        json['fields'] != null ? new FieldsModel.fromJson(json['fields']) : null;
    isHosted = json['isHosted'];
    pillarId = json['pillarId'];
    pillarName = json['pillarName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['sectionId'] = this.sectionId;
    data['sectionName'] = this.sectionName;
    data['webPublicationDate'] = this.webPublicationDate;
    data['webTitle'] = this.webTitle;
    data['webUrl'] = this.webUrl;
    data['apiUrl'] = this.apiUrl;
    if (this.fields != null) {
      data['fields'] = this.fields.toJson();
    }
    data['isHosted'] = this.isHosted;
    data['pillarId'] = this.pillarId;
    data['pillarName'] = this.pillarName;
    return data;
  }
}