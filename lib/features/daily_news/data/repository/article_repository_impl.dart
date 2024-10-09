// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:news/core/constants/constants.dart';
import 'package:news/core/resources/data_state.dart';
import 'package:news/features/daily_news/data/data_source/remote/news_api_service.dart';
import 'package:news/features/daily_news/domain/entities/articles_entity.dart';
import 'package:news/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(
    this._newsApiService,
  );

  @override
  Future<DataState<List<ArticlesEntity>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
    apiKey: newsApiKey,
    category:categoryQuery,
    country: countryQuery,
   );
   if (httpResponse.response.statusCode == HttpStatus.ok){
    return Datasuccess(httpResponse.data);
   }
   else {
    return DataFailed(DioException(
      error: httpResponse.response.statusMessage,
      response: httpResponse.response,
      type: DioExceptionType.badResponse,
      requestOptions: httpResponse.response.requestOptions));
   } 
    } on DioException catch (e) {
      print(e.toString());
      return DataFailed(e);
    }
   
}
}