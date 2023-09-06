// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:weather_app_with_bloc/models/main_model.dart';
import 'package:weather_app_with_bloc/models/weather.dart';

class WeatherResponse {
  WeatherResponse({
    required this.weather,
    required this.main,
    required this.name,
  });
final List<Weather> weather;
final MainModel main;
final String name;


  factory WeatherResponse.fromMap(Map<String, dynamic> map) {
    return WeatherResponse(
      weather: List<Weather>.from((map['weather'] as List<dynamic>).map<Weather>((x) => Weather.fromMap(x as Map<String,dynamic>),),),
      main: MainModel.fromMap(map['main'] as Map<String,dynamic>),
      name: map['name'] as String,
    );
  }

  factory WeatherResponse.fromJson(String source) => WeatherResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}



