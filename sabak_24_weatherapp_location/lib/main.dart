import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sabak_24_weatherapp_location/api_const.dart';
import 'package:sabak_24_weatherapp_location/constants/app_colors.dart';
import 'package:sabak_24_weatherapp_location/constants/app_text_style.dart';
import 'package:sabak_24_weatherapp_location/model.dart';

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
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

const List cities = <String>[
  'Bishkek',
  "Osh",
  'Jalal-Abad',
  'Kara Kol',
  'Naryn',
  'Talas',
  'Batken',
  'Tokmok'
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Weather? weather;

  Future<void> getLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.always &&
        permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio(); // plagin, serverden data alip keluuchu plagin
      // await Future.delayed(
      //   const Duration(seconds: 7),
      // ); //kutuu uchun ubakyt berdik
      final responce = await dio.get(
        ApiConst.address(),
      ); // dio.get metodu arkyluu ssylkany tartip aldyk (any await ge bailaibyz)
      if (responce.statusCode == 200) {
        weather = Weather(
          id: responce.data['current']['weather'][0]['id'],
          main: responce.data['current']['weather'][0]['main'],
          description: responce.data['current']['weather'][0]['description'],
          icon: responce.data['current']['weather'][0]
              ['icon'], // modeldeshtirdik ushintip
          temp: responce.data['current']['temp'],
          name: responce.data['timezone'],
        );
      }
      setState(() {});
    } else {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio(); // plagin, serverden data alip keluuchu plagin
      // await Future.delayed(
      //   const Duration(seconds: 7),
      // ); //kutuu uchun ubakyt berdik
      final responce = await dio.get(
        ApiConst.address(),
      ); // dio.get metodu arkyluu ssylkany tartip aldyk (any await ge bailaibyz)
      if (responce.statusCode == 200) {
        weather = Weather(
          id: responce.data['current']['weather'][0]['id'],
          main: responce.data['current']['weather'][0]['main'],
          description: responce.data['current']['weather'][0]['description'],
          icon: responce.data['current']['weather'][0]
              ['icon'], // modeldeshtirdik ushintip
          temp: responce.data['current']['temp'],
          name: responce.data['timezone'],
        );
      }
      setState(() {});
    }
  }
///////////////////////////////////////////////////

  Future<void> fetchData([String? url]) async {
    // fetchData nyn ichin snapshot okui beret
    // fetchData bul funkzia, al - async funkziasy
    Dio dio = Dio(); // plagin, serverden data alip keluuchu plagin
    // await Future.delayed(
    //   const Duration(seconds: 7),
    // ); //kutuu uchun ubakyt berdik
    final responce = await dio.get(ApiConst.weatherData(url ??
        'bishkek')); // dio.get metodu arkyluu ssylkany tartip aldyk (any await ge bailaibyz)
    if (responce.statusCode == 200) {
      weather = Weather(
        id: responce.data['weather'][0]['id'],
        main: responce.data['weather'][0]['main'],
        description: responce.data['weather'][0]['description'],
        icon: responce.data['weather'][0]['icon'], // modeldeshtirdik ushintip
        temp: responce.data['main']['temp'],
        name: responce.data['name'],
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Weather App')),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: weather == null
            ? const CircularProgressIndicator()
            : Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('bg_image.jpg'),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () async {
                              await getLocation();
                            },
                            icon: const Icon(
                              Icons.near_me,
                              color: AppColors.iconcolor,
                              size: 48,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              showBottom();
                            },
                            icon: const Icon(
                              Icons.location_city,
                              color: AppColors.iconcolor,
                              size: 48,
                            ),
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
                          '${(weather!.temp - 273.15).toInt()}',
                          style: AppTextStyles.sanTextStyle,
                        ),
                        Image.network(
                          ApiConst.getIcon(weather!.icon, 4),
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
                          weather!.description.replaceAll(' ', '\n'),
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
                              weather!.name,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 70),
                            )),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }

  void showBottom() async {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          color: Colors.grey,
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return Card(
                child: ListTile(
                  onTap: () {
                    setState(() {
                      weather = null;
                    });
                    fetchData(city);
                    Navigator.pop(context);
                  },
                  title: Text(
                    '$city',
                    style: AppTextStyles.showTextStyle,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
