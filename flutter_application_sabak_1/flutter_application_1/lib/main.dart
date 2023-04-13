import 'package:flutter/material.dart';
// бул Виджеттин базасы, 
void main() {
  // негизги функция, () - бул функцияны билдирет, 
  // {}{ - бул функциянын денеси
  //} 
   runApp(const MyApp()); // Тиркеменин тамыры Запускает приложение
}

class MyApp extends StatelessWidget { // 
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyApp(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const MyHomePage({dynamic, key });

  @override
  State <MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 252, 252),
  appBar: AppBar( centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 210, 224, 232),
    title: const Text(
      "Тапшырма 1",
       style: TextStyle(color: Colors.black),
    ),
    elevation: 0,
     ),
      body: Padding(
       padding: const EdgeInsets.symmetric(horizontal:10),
       child: Center(
         child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Container(
          
          width: double.infinity,
          height: 30,
          child: Center(child: Text(
            "Сан: $index", style: const TextStyle(fontSize: 20),
          ),
        ),
          decoration:BoxDecoration(color: Color.fromARGB(255, 131, 212, 172), borderRadius: BorderRadius.circular(8))

           ),
           const SizedBox(height: 20,), 
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
          ElevatedButton(onPressed: (){
            setState(() {
              index--;
            });
          }, 
          child: const Icon(Icons.remove)),
          const SizedBox(width: 20,
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              index++;
            });
          }, child: const Icon(Icons.add))
             ],
           )
         ],
         ),
       ),
),
);
}
}
