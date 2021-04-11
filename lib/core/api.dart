import 'package:dio/dio.dart';

const kApiKey = '2384004d-c70d-43f2-b362-91cb0da34c06';
const kBaseUrl = 'https://content.guardianapis.com/search?page-size=50&tag=technology/technology&show-fields=thumbnail,body&api-key='+kApiKey;

const kServerError = 'Failed to connect to the server. Try again later';

final kDioOptions = BaseOptions(
  baseUrl: kBaseUrl,
  connectTimeout: 3000,
  receiveTimeout: 3000,
  contentType: 'aplication/json;charset=utf-8',
);