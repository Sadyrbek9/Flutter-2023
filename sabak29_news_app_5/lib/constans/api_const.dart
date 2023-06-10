

class ApiConst{
  static const apiKey = '45b13f17128b4502a11eb1dd47c0df0e';
  static String topNews([String? domain]) => 'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';
  static const newsImage= 'https://www.nationalbaptist.com//assets/uploads/2018/03/news.jpg';

}