import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LoginPage'.toUpperCase()),
      ),
      body:
      Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: const [
             FlutterLogo(size: 80,),
             Text('Flutter', style: TextStyle(fontSize: 70),),
          
           ],
          
          ),
         
          const Text(
            'Welcome to Saifty!', style: TextStyle(fontSize: 25, fontWeight:FontWeight.w600),
            ),
            const Text(
              'Keep Your Data Safe!'
              ),
              const Padding(  // эки жагынан тептиребиз
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name'
                  ),
                ),
              ),
               const Padding(  // эки жагынан тептиребиз
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'email'
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style:ElevatedButton.styleFrom(
                  minimumSize: const Size(250, 40)
                ),
                onPressed: (){}, child: const Text('Login'),
              ),
        ],
      ),
    );
  }
}
