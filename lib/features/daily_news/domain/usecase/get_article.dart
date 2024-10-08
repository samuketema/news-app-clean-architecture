// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:news/core/resources/data_state.dart';
import 'package:news/core/usecases/usecase.dart';
import 'package:news/features/daily_news/domain/entities/articles_entity.dart';
import 'package:news/features/daily_news/domain/repository/article_repository.dart';

class GetArticleUsecase implements UseCase<DataState<List<ArticlesEntity>> , void> {
  final ArticleRepository _articleRepository;

  GetArticleUsecase(
     this._articleRepository,
  );
  
  @override
  Future<DataState<List<ArticlesEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
  
}
