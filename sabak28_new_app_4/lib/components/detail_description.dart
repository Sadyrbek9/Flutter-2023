import 'package:flutter/material.dart';
import 'package:sabak28_new_app_4/model/article.dart';
import 'package:sabak28_new_app_4/theme/app_text_styles.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.description,
      textAlign: TextAlign.center,
      style: AppTextStyle.descrTextStyle,
    );
  }
}