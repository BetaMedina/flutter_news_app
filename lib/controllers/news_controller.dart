import 'package:flutter/cupertino.dart';
import 'package:news_tech_app/models/news/news_model.dart';
import 'package:news_tech_app/repository/news_repository.dart';

class NewsController {
  final _repository = NewsRepository();
  List<NewsModel> results;

  bool error = false;

  final state = ValueNotifier<HomeStates>(HomeStates.loading);

  Future<List<NewsModel>> fetchAll() async {
    state.value = HomeStates.loading;

    try {
      final result = await _repository.fetchAllNews();
      results = result.response.results;
      state.value = HomeStates.success;
      return results;
    } catch (err) {
      state.value = HomeStates.error;
      error = true;
      return null;
    }
  }
}

enum HomeStates {loading,success,error}