import 'package:flutter/material.dart';
class MyHomePage
 extends StatefulWidget {
  const MyHomePage
  ({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage
> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: const Color(0xFF056C5C),
      appBar: AppBar(
         backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Тапшырма 4',
             style: TextStyle(color: Colors.black),
          )),
          elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text("Sadyrbek Momunaliev", style: TextStyle(fontSize: 40),),
          const Text("Flutter Developer", style: TextStyle(fontSize: 28),),
          Container (
             color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xff056c5c),
                fontWeight: FontWeight.w600),
                onChanged: (value){},
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey,),
                ),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox (
            height: 10,
            ),
           Container (
             color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xff056c5c),
                fontWeight: FontWeight.w600),
                onChanged: (value){},
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.grey,),
                ),
            ),
          ),
                ],),
      ),
    );
  }
}