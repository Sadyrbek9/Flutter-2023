import 'package:flutter/material.dart';
import 'package:sabak_firebase_copy2/views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp ({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 201, 10, 166)),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}