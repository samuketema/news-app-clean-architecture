import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/resources/data_state.dart';
import 'package:news/features/daily_news/domain/usecase/get_article.dart';
import 'package:news/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetArticleUsecase _getArticleUsecase;
  RemoteArticleBloc(this._getArticleUsecase)
      : super(const RemoteArticlesLoading()) {
    on<GetArticles>(onGetArticles);
  }

  Future<void> onGetArticles(
      GetArticles event, Emitter<RemoteArticleState> emit) async {
    print('=================');

    final datastate = await _getArticleUsecase();
    print('=================');
    if (datastate is Datasuccess && datastate.data!.isNotEmpty) {
      emit(
        RemoteArticlesDone(datastate.data!),
      );
    }
    if (datastate is DataFailed) {
      print(datastate.error!.message);
      emit(
        RemoteArticlesError(datastate.error!),
      );
    }
  }
}
