import 'package:flutter/material.dart';
import 'package:sabak_5_login_ulantuu/ekinchy_Page.dart';


class UchunchuBet extends StatelessWidget {
  const UchunchuBet
({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text(
          "Мои Работы", 
          style: TextStyle(
            color: Colors.black
            ),
          ),
        ),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: const [
        SizedBox(
          height: 200,
          width: 200,
          child: CircleAvatar(
            // backgroundImage: NetworkImage(
            //   "https://global-uploads.webflow.com/5e0ac69bad6badc677c5db21/60c030214d19547a7c6e74e9_n2Ai81S_aciRuuCqe7oCiQ5a1sVM5lekh6ZzHgACdLaF-h7HbkrlNSn_McFL9DASwsZGEspjN0edxhYfrQ64mVbWq7Jjd6qtJBOoYh6MYGc7Tmg9AtswIQfv0AZGFkihUmwlHMgJ.jpeg"
            //),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Бул менин 1 жылдан кийинки уй-офисим!", 
          style: TextStyle(
            color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500
          ),
        ),
       ],
      ),
    ),
    );
  }
}