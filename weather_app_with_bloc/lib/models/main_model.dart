// ignore_for_file: public_member_api_docs, sort_constructors_first

class MainModel {
  MainModel({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
  });
final num temp;
final num feelsLike;
final num tempMin;
final num tempMax;
  

  factory MainModel.fromMap(Map<String, dynamic> map) {
    return MainModel(
      temp: map['temp'] as num,
      feelsLike: map['feels_like'] as num,
      tempMin: map['temp_min'] as num,
      tempMax: map['temp_max'] as num,
    );
  }

  
}
