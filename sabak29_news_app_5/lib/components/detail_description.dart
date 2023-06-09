import 'package:flutter/material.dart';
import 'package:sabak29_news_app_5/model/article.dart';
import 'package:sabak29_news_app_5/theme/app_text_styles.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.description.toString(),
      textAlign: TextAlign.center,
      style: AppTextStyle.descrTextStyle,
    );
  }
}