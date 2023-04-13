import 'package:flutter/material.dart';
import 'package:sabak_5/EkinchyPage.dart';


class MyHomePage
 extends StatefulWidget {
  const MyHomePage
  ({super.key, required String title});

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
             style: TextStyle(
              color: Colors.black
              ),
          ),
        ),
          elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 200,
            //   width: 200,
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(600.0),
            //   child: Image.asset('assets/images/programmer.jpg'),
            //   ),
            // ),
            const SizedBox(
               height: 200,
               width: 200,
              child: CircleAvatar (backgroundImage: NetworkImage('https://media.istockphoto.com/id/1147195672/ru/%D1%84%D0%BE%D1%82%D0%BE/%D1%86%D0%B5%D0%BB%D0%B5%D0%BD%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BD%D0%BE%D0%B5-%D0%BA%D0%BE%D0%B4%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D0%BE%D0%B2-%D0%BD%D0%B0-%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BD%D1%8B%D1%85-%D0%BC%D0%BE%D0%BD%D0%B8%D1%82%D0%BE%D1%80%D0%B0%D1%85-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%D1%8E%D1%89%D0%B8%D1%85-%D0%B4%D0%BE%D0%BF%D0%BE%D0%B7%D0%B4%D0%BD%D0%B0-%D0%B2.jpg?s=612x612&w=0&k=20&c=1QhXjD_psuqHu379UakvjYn0Zu83cJDIHH2AZgCnBsY='),
              ),
            ),
          const Text(
            "Sadyrbek Momunaliev",
            style: TextStyle(
            color:Color(0xffF7F9F9), 
            fontSize: 40, 
            fontFamily: 'Pacifico-Regular'
            ),
          ),
          // Google Fonts тан тусун жуктоп, навигаци менен коштум
          const Text("Flutter Developer", 
          style: TextStyle(color:Color(0xffF7F9F9), 
          fontSize: 28, 
          fontFamily: "Roboto-Medium"
           ),
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
            labelText: 'phone number',
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
                  labelText: 'email addresse',
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const EkinchyPage()),);
          } : null, // эгер isAktive  условияны аткарса ищтесин, иначе null болсун! иштебесин
          child: const Text("Start"),
          ),
        ],
      ),
    ),
  );
 }
}