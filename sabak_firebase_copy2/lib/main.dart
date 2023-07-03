import 'package:flutter/material.dart';
import 'package:sabak_firebase_copy2/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


/*

1. Файрбейзди проектиге туташтырдык
2. Дата База туздук
3. Дата Базага маалыматтарды жонотуп, аны колдонуу максатта 4 негизги функция жаздык. Алар Create, Read, Update, Delete. 
*/ 
void main() async {
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

