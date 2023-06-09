import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sabak27_news_app_03/constans/api_const.dart';
import 'package:sabak27_news_app_03/model/top_news.dart';
class TopNewsRepo{
  final http.Client client = http.Client();
  Future <void> fetchTopNews()async{
    final Uri uri = Uri.parse(ApiConst.topNews);
final http.Response response = await client.get(uri);
if(response.statusCode == 200 || response.statusCode == 201) {
  print(response.body); // бизге Стринг дата келди
  print('----------------------------------------');
  print(response.body.runtimeType); // минтип текшерсек - бизге Стринг дата келди деп корсотту
  print('----------------------------------------');
  final data = jsonDecode(response.body);//бул келген Стринг датаны jsonDecode менен Map<String, dynamic> кылып айлантабыз, (андан кийин TopNews чыгыарыбыз), ичине response.body беребиз 
  print(data.runtimeType); // Map<String, dynamic> data келгенин минтип текшеребиз, _JsonMap келди.Ал Map<String, dynamic> data келди дегенди корсотот. Эми ал Map ти, биздин моделге байлайбыз
  print('----------------------------------------');
  final topNews = TopNews.fromJson(data); // topNews - Modelдин аты, буга TopNews.fromJson деп чакырабыз, себеби биз factory тузуп алганбыз.Анын ичине data ны салдык 
  print(topNews);

  

}
  }
}