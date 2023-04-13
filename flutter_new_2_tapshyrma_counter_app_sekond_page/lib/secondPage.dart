import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget { // bul counttu taanydy
  const EkinchiBet({super.key, required this.count}); // required this.count dep kiyin bailadyk,
  final int count; // flatterdin logikasy, int tibinde Peremennyi berdik

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Тапшырма 2"))
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          // ignore: prefer_const_constructors
          Card(    // Container syiaktuu 
            color:Colors.grey,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: BorderRadius.circular(10), // forma berdik
              ),
              child: SizedBox(  // ichine jazuu ychyn - Sizeddi aldyk
                height: 50,
                width: 300,
                child: Center( // jildyrdyk
                  child: Text( // ichine jazabyz
                    "$count", // coun Peremennyi ishtep jatat.
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                    ),
              ),
            ),
          
          
          
          ],
        ),
      ),
    );
  }
}