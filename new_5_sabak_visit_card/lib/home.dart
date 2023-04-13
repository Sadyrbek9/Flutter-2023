import 'package:flutter/material.dart';
//import 'package:sabak_5_login_ulantuu/ekinchy_Page.dart';
class MyHomePage
 extends StatefulWidget {
  const MyHomePage
  ({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// Класска условный констуктор беребиз
class _MyHomePageState extends State<MyHomePage>{
  bool isAktive = false;//логиканы тузобуз, эгер false bolso, anda isAktive ищти жасайт
 String? phoneNumber;//String tibinde, ?(nulable) bolgon Peremennyi berdik, ?- jok 
 //bolso Peremennyi  albait.
 String? email;// Peremennyi  String tibinde berdik, emi ozgorot, ?(nulable)- jok bolso 
 //ozgorboit, bul symvol ?(nulable) - oshonu atkarat
 void ishtoo(){//логикалык функция
    if (phoneNumber != null && email != null) {//эгер, phoneNumber 0го барабар эмес болсо(пустой болбосо), jana email пустой болбосо 
    if (phoneNumber!.isEmpty || email!.isEmpty){//тиги ЖЭ тиги пустой болбосо, ищтесин
      isAktive = false;
  } 
     else {
    isAktive = true;//эгер, устунку талар аткарылбаса, isAktive - иштебесин! 
  }
  setState(() {});
  }
 }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: const Color(0xFF056C5C),
      appBar: AppBar(
         backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Тапшырма 4',
             style: TextStyle(color: Colors.black),
          ),
        ),
          elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(600.0),
              child: Image.asset('assets/images/programmer.jpg'),
              ),
            ),
          const Text("Sadyrbek Momunaliev",
          style: TextStyle(color:Color(0xffF7F9F9), fontSize: 40, fontFamily: 'Pacifico'),
          ),
          // Google Fonts тан тусун жуктоп, навигаци менен коштум
          const Text("Flutter Developer", 
          style: TextStyle(color:Color(0xffF7F9F9), 
          fontSize: 28, fontFamily: "Roboto"),
          // Google Fonts тан тусун жуктоп, навигаци менен коштум
          ),
          const Divider(
            // сызык- менен боло турган виджет
            height: 0,
            color: Colors.white,
            thickness: 2,
            indent: 57,
            endIndent: 47.5,
          ),
          // 2 жака турто турган Divider дин свойствосу
          const SizedBox(
            height: 23.5,
          ),
Container (
  color: Colors.white,
  child: TextFormField(
    style: const TextStyle(
        fontSize: 20,
        color: Color(0xff056c5c),
        fontWeight: FontWeight.w600),
        //abaldy almashtyrat, ishtetet.
    onChanged: (String? value){
      // String tibinde maani berdik
      phoneNumber = value;// phoneNumber Peremennyi -di Maanige barabar kyldyk,
      ishtoo();//ishtoo fukziasy
      print("value $value");// value - emi Maanini korsotot.
      print("phoneNumber $phoneNumber");// 
    },
    decoration: const InputDecoration(
      focusColor: Colors.white,
      prefixIcon: Padding( // иконканы он чекеден солго жылдыруу учун, ..
                  // Paddinge оройбуз, symmetrik menen horizontal 40 cvoictvo berebiz
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Icon(
         Icons.phone,
         color: Colors.grey,
         ),
       ),
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
                onChanged: (String? value){
                  email = value;
                  ishtoo();
                  print("email $email");
                  print("value $value");
                },
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Icon(
                      Icons.mail,
                      color: Colors.grey,),
                  ),
                ),
            ),
          ),
          //Knopkany ildyi tywyrobyz
          const SizedBox(
            height: 20,
          ),
          // knopka jasaibyz, style berebiz - logikaga kiret.
          ElevatedButton(style: ElevatedButton.styleFrom(
            side: const BorderSide(width: 2, color: Colors.white),
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          ), 
          onPressed: isAktive ? (){ // ичине Навигация берем
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ekinchi_Bet()),);
          } : null, // эгер isAktive  условияны аткарса ищтесин, иначе null болсун! иштебесин
          child: const Text("Start"),
          ),
        ],
      ),
    ),
  );
 }
 
  ekinchi_Bet() {}
}