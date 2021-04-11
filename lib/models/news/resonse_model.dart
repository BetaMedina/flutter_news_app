import 'package:news_tech_app/models/news/news_model.dart';

class ResponseModel {
  String status;
  String userTier;
  int total;
  int startIndex;
  int pageSize;
  int currentPage;
  int pages;
  String orderBy;
  List<NewsModel> results;

  ResponseModel(
      {this.status,
      this.userTier,
      this.total,
      this.startIndex,
      this.pageSize,
      this.currentPage,
      this.pages,
      this.orderBy,
      this.results});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    userTier = json['userTier'];
    total = json['total'];
    startIndex = json['startIndex'];
    pageSize = json['pageSize'];
    currentPage = json['currentPage'];
    pages = json['pages'];
    orderBy = json['orderBy'];
    if (json['results'] != null) {
      results = <NewsModel>[];
      json['results'].forEach((v) {
        results.add(new NewsModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['userTier'] = this.userTier;
    data['total'] = this.total;
    data['startIndex'] = this.startIndex;
    data['pageSize'] = this.pageSize;
    data['currentPage'] = this.currentPage;
    data['pages'] = this.pages;
    data['orderBy'] = this.orderBy;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}