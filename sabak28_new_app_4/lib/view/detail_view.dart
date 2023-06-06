import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak28_new_app_4/model/article.dart';
import 'package:sabak28_new_app_4/theme/app_text_styles.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
     final newsTime = DateFormat('d MMMM y H:m:s').format(DateTime.parse(article.publishedAt));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(article.title),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              article.title,
              textAlign: TextAlign.center,
              style: AppTextStyle.titleTextStyle,
            ),
            const Divider(
              color: Colors.deepOrange,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.access_time),
                const SizedBox(
                  width: 10,
                ),
                Text(newsTime),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              article.urlToImage.toString(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              article.description,
              textAlign: TextAlign.center,
              style: AppTextStyle.descrTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
