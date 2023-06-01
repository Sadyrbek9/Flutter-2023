import 'package:sabak26_news_app_2/model/source.dart';

class Article {
  Article({
    required this.sourse,
    this.autor,
    required this.title,
    required this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final Sourse sourse;
  final String? autor;
  final String title;
  final String description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String content;
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        sourse: Sourse.fromJson(json['source']),
        title: json['title'],
        description: json['desription'],
        url: json['url'],
        publishedAt: json['publishedAt'],
        content: json['content'],
      );
  }
}
