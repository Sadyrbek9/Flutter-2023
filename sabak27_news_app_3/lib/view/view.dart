import 'package:flutter/material.dart';
import 'package:sabak27_news_app_3/constans/api_const.dart';
import 'package:sabak27_news_app_3/model/top_news.dart';
import 'package:sabak27_news_app_3/service/fetch_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future<void> fetchNews() async {
    topNews = await TopNewsRepo().fetchTopNews();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffE5722),
        title: const Text('News Aggregator', style: TextStyle(color: Colors.white),),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
                return InkWell(
                  onTap: () {},
                  child: Card(
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.network(
                              news.urlToImage ?? ApiConst.newsImage),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(news.title),
                        ),
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
