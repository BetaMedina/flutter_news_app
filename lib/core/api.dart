import 'package:dio/dio.dart';

const kApiKey = '';
const kBaseUrl = 'https://content.guardianapis.com/search?page-size=50&tag=technology/technology&show-fields=thumbnail,body&api-key='+kApiKey;

const kServerError = 'Failed to connect to the server. Try again later';

final kDioOptions = BaseOptions(
  baseUrl: kBaseUrl,
  connectTimeout: 3000,
  receiveTimeout: 3000,
  contentType: 'aplication/json;charset=utf-8',
);