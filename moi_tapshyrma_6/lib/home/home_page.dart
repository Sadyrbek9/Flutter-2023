
import 'package:flutter/material.dart';
import 'package:moi_tapshyrma_6/components/gimn.dart';
import 'package:audioplayers/audioplayers.dart';

class MyWidget extends StatefulWidget {
    const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тапшырма 6 - ШОСко мучо олколору (Гимн)'),
      ),
      body: Column(
        children: [
          Gimn(onTap:() {
            AudioPlayer().play(AssetSource('1do.mp3'));
            //const Text("Кыргызстан");
          }),
          const SizedBox(height: 3,),
          Gimn(onTap:() {
            AudioPlayer().play(AssetSource('1do.mp3'));
           //const Text("Кыргызстан");
          }),
        ]
          
           
         
      ),

    );
  }
}