import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> { // логика беребиз
 int firstDice = 1; // 1-chi Ozgormo
 int secondDice = 1;// 2-chi ozgormo
 void change (){  // озуно эч нерсе кайтарбайт, бирок Озгортот Озгормо
       setState(() { // кыймылга келтирди
                    secondDice = Random().nextInt(6) + 1;// функция беребиз, логикалык
                    firstDice = Random().nextInt(6) + 1;
                  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFED3B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 5', 
          style: TextStyle(
            color: Colors.black
            ),
          ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (firstDice == 6 && secondDice == 6)
          Container( 
            height: 40,
            width: 160,
            color: Colors.blue, 
            child: const Text('Урааа, куш келди!!!', style: TextStyle(color: Colors.red),),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row( // Row ну Padding менен ороп койдук
              children: [
                Expanded(child: InkWell(onTap: () { // imageди - widget ородук - Inkwell (knopka басуу on Tap;
                change();
                  
                  print(firstDice);

                }, child: Image.asset('images/dice$firstDice.png'))),
                const SizedBox(
                  width: 25,
                ),
                Expanded(child: InkWell(onTap: () {
                  change();
                  print(secondDice);
                }, child: Image.asset('images/dice$secondDice.png'))),
              ],
            ),
          ),
        ],
      ),

    );
  }
}