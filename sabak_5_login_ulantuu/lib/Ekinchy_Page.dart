import 'package:flutter/material.dart';
import 'package:sabak_5_login_ulantuu/uchunchu_bet.dart';
class EkinchyPage extends StatelessWidget {
  const EkinchyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text(
            "EkinchyPage", style: TextStyle(color: Colors.black),),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("I'm Rich", style: TextStyle(fontSize: 48, fontFamily: 'Sofia-Regular'),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/brilliant.png'),
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UchunchuBet
                ()),);
              }, child: const Text("Мои работы"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
