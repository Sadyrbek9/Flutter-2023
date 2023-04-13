import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const ImReach(),
    );
  }
}
class ImReach extends StatefulWidget {
  const ImReach({super.key});

  @override
  State<ImReach> createState() => _ImReachState();
}

class _ImReachState extends State<ImReach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
       backgroundColor: Colors.yellow,
        title: const Center(
          child: Text(
          "Тапшырма 3", 
           style: TextStyle(
           color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text(
               'I\'m Rich', 
                style: TextStyle(fontSize: 48,fontFamily:"Sofia-Regular"),
              ),
              SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/fonds/images/brilliant.png"),
            ),
          ],
        ),
      ),
    );
  }
}