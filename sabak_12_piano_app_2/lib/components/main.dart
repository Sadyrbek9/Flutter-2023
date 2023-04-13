import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sabak_12_piano_app_2/components/app.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown
  ],
 );
  runApp(const MyApp());
}





