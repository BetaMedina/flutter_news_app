import 'package:dio/dio.dart';
import 'package:news_tech_app/core/api.dart';
import 'package:news_tech_app/models/news/result_model.dart';

class NewsRepository {
  final Dio _dio = new Dio(kDioOptions);

  Future<ResultsModel> fetchAllNews() async {
    final response = await _dio.get('');
    print(response.data);
    return ResultsModel.fromJson(response.data);
  }
}
