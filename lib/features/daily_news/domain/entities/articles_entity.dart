// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ArticlesEntity extends Equatable {
 final int ? id;
 final String ? author;
 final String ? title;
 final String ? description;
 final String ? url;
 final String ? urlToImage;
 final String ? publishedAt;
 final String ? content;
 
  ArticlesEntity({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  
  @override
  List<Object?> get props => [
    id,
    author,
    title,
    description,
    urlToImage,
    publishedAt,
    content
  ];
}
