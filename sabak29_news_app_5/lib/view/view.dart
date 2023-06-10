import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak29_news_app_5/components/home_news_card.dart';

import 'package:sabak29_news_app_5/constans/api_const.dart';
import 'package:sabak29_news_app_5/model/article.dart';
import 'package:sabak29_news_app_5/model/domain_countries.dart';
import 'package:sabak29_news_app_5/model/top_news.dart';
import 'package:sabak29_news_app_5/service/fetch_service.dart';
import 'package:sabak29_news_app_5/theme/app_colors.dart';
import 'package:sabak29_news_app_5/theme/app_text.dart';
import 'package:sabak29_news_app_5/theme/app_text_styles.dart';
import 'package:sabak29_news_app_5/theme/sized.dart';
import 'package:sabak29_news_app_5/view/detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews; // peremennyi topNews
  Future<void> fetchNews([String? domain]) async {
    //[] bul sozsyz albait,
    topNews = null;
    setState(() {});
    topNews =
        await TopNewsRepo().fetchTopNews(domain); //bizdin datany tartyp kelet
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews(); // build ga cheiyn imitState kurulat, data kelup bawtait
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColors,
        title: const Text(
          AppText.agr,
          style: AppTextStyle.agrStyle,
        ),
        actions: [
          PopupMenuButton<Country>(
            onSelected: (Country item) async {
              await fetchNews(item.domain);
            },
            itemBuilder: (BuildContext context) {
              return countrySet
                  .map(
                    (e) => PopupMenuItem<Country>(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            },
          )
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
                return CardNews(news: news);
              }),
    );
  }
}


