// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:news/features/daily_news/domain/entities/articles_entity.dart';

abstract class RemoteArticleState extends Equatable {
final List<ArticlesEntity> ? articles;
final DioException? error;
  const RemoteArticleState({
    this.articles,
    this.error,
  });
  List<Object> get props =>[articles!,error!];
}

class RemoteArticlesLoading extends RemoteArticleState {
  const RemoteArticlesLoading();
}

class RemoteArticlesError extends RemoteArticleState {
  const RemoteArticlesError(DioException error):super(error: error);
}

class RemoteArticlesDone extends RemoteArticleState {
  const RemoteArticlesDone(List<ArticlesEntity>article):super(articles: article);
}