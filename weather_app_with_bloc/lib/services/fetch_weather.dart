import 'package:http/http.dart' as http;
import 'package:weather_app_with_bloc/constants/api_const.dart';
import 'package:weather_app_with_bloc/models/weather_web_response.dart';

/// [cityName] алып, ощол шаардын аба-ырайын берет
class WeatherService {
  final client = http.Client();
  Future<WeatherResponse?> getWeatherByCityName(String cityName) async {
    final uri = Uri.parse(
      Apiconst.weatherByCityName(cityName),
    );
    try {        // интернет иштебей калганда керек
      final response = await client.get(uri);
      if(response.statusCode == 200 || response.statusCode == 201){
        final weather = WeatherResponse.fromJson(response.body);
        return weather;
      }else {
        print('Responstun status Kod metodunda ${response.statusCode}');
        return null;
      }
      
    } catch (e) {
      print('кандайдыр бир ката жаралды ${e.toString()}');
    }
    return null;
  }

  ///  
// пользовательден шаардын атын алуу
// uri - tyzylot
// uri - request jiberet
// responce тун Statuscodeун текшерет
// status jod 200 je 201 bolco, Model kaitarat
// эгер, ката ьолсо null kaitarat
}
final weatherService = WeatherService();
