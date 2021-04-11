import 'package:news_tech_app/models/news/resonse_model.dart';

class ResultsModel {
  ResponseModel response;

  ResultsModel({this.response});

  ResultsModel.fromJson(Map<String, dynamic> json) {
    response = json['response'] != null
        ? new ResponseModel.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response.toJson();
    }
    return data;
  }
}




