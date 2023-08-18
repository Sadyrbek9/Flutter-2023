import 'package:dinbil_02/view/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:dinbil_02/constants/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scafColor,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 4, 165, 154)),
        useMaterial3: true,
      ),
      home: QuizPage(),
    );
  }
}