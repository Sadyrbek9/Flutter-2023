import 'package:flutter/material.dart';
import 'package:flutter_new_2_tapshyrma_counter_app_sekond_page/secondPage.dart';// Widgetterdin baary Materialdyn ichinde
// Proetini bashy

void main() { // negizgy bashtoochy funkzia
  runApp(const MyApp()); // Tirkemeny bashta - deit, Materialdan kelet, MyAppty muraska aldy
}
class MyApp extends StatelessWidget {// MyApp Statelessti Muraska aldy
  const MyApp({super.key});// Statelesstin widgettin konstruktoru

  @override
  Widget build(BuildContext context) {//Kuruuchu Widget, Baardyk widgetterdy karoochy Vektor
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {// Widget ozy, dagy State classty alat
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();// State-Sostoyanie degen class alat
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;// 0 degen Peremennyi berdik
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Тапшырма 1", 
          style: TextStyle(color:Colors.black,), 
             ),
      ),
      body: Padding(// Columdu Padding oroduk, al simmetrichno eki jagyn turtot
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(// колонна болуп курулат
          mainAxisAlignment: MainAxisAlignment.center,// ortogo alyp beret
            children: [
              Container(
                decoration: BoxDecoration( color: Colors.grey, borderRadius: BorderRadius.circular(8)),
               
                width: double.infinity,
                height: 30,
                child:  Center(child: Text(
                  "Сан: $index", // 0go, bashtan indexke bailadyk, $ menen yshul jerge berebiz, Logika Fluttera
                  style: const TextStyle(fontSize: 20),
                ),
               ),
              ),
              const SizedBox(// tyrtyp beret
                height: 20,
              ),
              Row(// katarynan kururlat
              mainAxisAlignment: MainAxisAlignment.center,// ortogo aidait
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {   // aabaldy ozgortkon funkzional, Flutterdin Logikasy
                       index--; // kemityy operatoru, kemityy funkziasyn atkaruuda
                    });
                  }, child: const Icon(Icons.remove)),
                  const SizedBox(// tyrtyp beret
                    width: 30,
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      index++;
                    });
                  }, 
                   child: const Icon(Icons.add)),
                        ],
              ),
              const SizedBox(
                height: 10,
              ),
              IconButton(onPressed: (){ // funkzianayn denesine, 2betke otyy ychyn funkzia berebiz
                 Navigator.push(context, MaterialPageRoute(builder: (context) => EkinchiBet(count: index,)));
                 // 2betke otyy ychyn, navigator push kerek. 2betti taanytuu kerek
                 // EkinchiBet ke count - degen Peremennyi akldy

              }, icon: const Icon(Icons.next_plan, size: 50, color: Colors.red,)),

            ],
          ),
        ),
      ),
    );
  }
}
