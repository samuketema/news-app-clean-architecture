import 'package:news/core/resources/data_state.dart';
import 'package:news/features/daily_news/domain/entities/articles_entity.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticlesEntity>>> getNewsArticles();
}