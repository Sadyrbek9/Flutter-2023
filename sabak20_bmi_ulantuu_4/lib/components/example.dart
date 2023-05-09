import 'package:flutter/material.dart';
class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}

class _ForExampleState extends State<ForExample> {
  int increment = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: const Text('WeightAge'),),
body: Center(
  child:   Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
  
    Text("$increment"),
    const SizedBox(height: 20,),
  
    FloatingActionButton(onPressed:(){
      setState(() {
        increment++;
      //print(increment);
      });
      
    }, child: const Icon(Icons.add), )
  
  ],),
),
    );
  }
}