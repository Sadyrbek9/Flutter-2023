import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak28_new_app_4/constans/api_const.dart';
import 'package:sabak28_new_app_4/model/top_news.dart';
import 'package:sabak28_new_app_4/service/fetch_service.dart';
import 'package:sabak28_new_app_4/view/detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews; // peremennyi topNews
  Future<void> fetchNews() async {
    topNews = await TopNewsRepo().fetchTopNews(); //bizdin datany tartyp kelet
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews(); // build ga cheiyn imitState kurulat, data kelup bawtait
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffE5722),
        title: const Text(
          'News Aggregator',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: topNews == null // эгер topNews нул болсо
          ? const Center(child: CircularProgressIndicator()) // ailanyp tursun,
          : ListView.builder(
              // egerde topNews null emes bolso, anda ListView.builder iwtasin
              itemCount: topNews!.article
                  .length, // topNews! tun ichindegy articledyn uzundugun-maalimatty al dep berebyz,
              itemBuilder: (context, index) {
                // ListView nun soderjaniesy, indexi - berdik
                final news = topNews!.article[
                    index]; // news degen peremennyiga - topNews tun indexin bailadyk, koldono bersek bolot
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailView(
                          article: news,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    // soderjaniany kaitaruu - Card turundo
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: 
                          // CachedNetworkImage(
                          //   imageUrl: news.urlToImage ?? ApiConst.newsImage,
                          //   placeholder: (context, url) =>
                          //       const CircularProgressIndicator(),
                          //   errorWidget: (context, url, error) =>
                          //       Image.asset('assets/errorimage.jpg'),
                          // ),
                          Image.network(news.urlToImage ??
                              ApiConst
                                  .newsImage), // news peremennyiga - indextin urlToImage dep suroty kelsin, egerde surotu null bolso ?? (ApiConst.newsImage dep - defoltnyi surot tartyp alabyz)
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(news.title), // bul news tun teksty
                        ),
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
