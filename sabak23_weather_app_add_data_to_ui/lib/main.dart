import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sabak23_weather_app_add_data_to_ui/api_const.dart';
import 'package:sabak23_weather_app_add_data_to_ui/constants/app_colors.dart';
import 'package:sabak23_weather_app_add_data_to_ui/constants/app_text_style.dart';
import 'package:sabak23_weather_app_add_data_to_ui/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Weather?> fetchData() async {
    // fetchData nyn ichin snapshot okui beret
    // fetchData bul funkzia, al - async funkziasy
    final dio = Dio(); // plagin, serverden data alip keluuchu plagin
    // await Future.delayed(
    //   const Duration(seconds: 7),
    // ); //kutuu uchun ubakyt berdik
    final responce = await dio.get(
        ApiConst.weatherData); // dio.get metodu arkyluu ssylkany tartip aldyk (any await ge bailaibyz)
    if (responce.statusCode == 200) {
      final Weather weather = Weather(
        id: responce.data['weather'][0]['id'],
        main: responce.data['weather'][0]['main'],
        description: responce.data['weather'][0]['description'],
        icon: responce.data['weather'][0]['icon'], // modeldeshtirdik ushintip
        temp: responce.data['main']['temp'],
        name: responce.data['name'],
      );
      return weather;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Center(child: Text('Weather App')),
      ),
      body: Center(
        child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              // snapshot - bul kuzgu desek bolot
              if (snapshot.connectionState == ConnectionState.none) {
                return const Text('Сизде интернет байланыш узулду');
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                } else if (snapshot.hasData) {
                  final pogoda = snapshot.data;
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/bg_image.jpg'),
                      ),
                    ),
                    child: Column(
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.near_me,
                                color: AppColors.iconcolor, size: 40,
                              ),
                              Icon(
                                Icons.location_city,
                                color: AppColors.iconcolor, size: 40,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            Text(
                              '${(pogoda!.temp - 273.15).toInt()}',
                              style: AppTextStyles.sanTextStyle,
                            ),
                            Image.network(
                               ApiConst.getIcon(pogoda.icon, 4),
                               ),
                          ],
                            ),
                        const SizedBox(
                          height: 4,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FittedBox(
                            child: Text(
                              pogoda.description.replaceAll(' ', '\n'),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 70),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FittedBox(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  pogoda.name,
                                  style: const TextStyle(color: Colors.white, fontSize: 70),
                                )),
                          ),
                        )
                      ],
                    ),
                  );
                } else {
                  return const Text('Дата келген жок!');
                }
              } else {
                return const Text('Белгисиз ката!');
              }
            }),
      ),
    );
  }
}
