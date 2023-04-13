import 'package:flutter/material.dart';
import 'package:sabak_10_jany_piano/demo/demo_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
            home: const DemoScreen(),
    );
  }
}