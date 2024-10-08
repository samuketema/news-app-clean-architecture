import 'package:news/features/daily_news/domain/entities/articles_entity.dart';

class ArticleModel extends ArticlesEntity {

 ArticleModel({
  int ? id,
String ? author,
String ? title,
String ? description,
String ? url,
String ? urlToImage,
String ? publishedAt,
String ? content
 });
 
 factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      author: map['author'] as String? ?? '',
      title: map['title'] as String? ?? '',
      description: map['description'] as String? ?? '',
      url: map['url'] as String? ?? '',
      urlToImage: map['urlToImage'] as String? ?? '',
      publishedAt: map['publishedAt'] as String? ?? '',
      content: map['content'] as String? ?? '',
    );
  }
}