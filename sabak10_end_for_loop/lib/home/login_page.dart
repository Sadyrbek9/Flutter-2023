import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/home/user_page.dart';
import 'package:sabak10_end_for_loop/model.dart';

final studentter = <student>[danyar, azamat, aibek, dinara, ainura];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _gmail;
  // 1-чи вариант
  void controlNameEmail(String name, String email) {
    // циклдын, функциянын денеси
    int index =
        0; // 0дон ьаштап аткарылсын деп интежер тибинде озгормо бердик. Бул биринчи логика.
    for (final student in studentter) {
      // циклдын ээлери
      index++; // шарт аткарылса, 1ге кощсун, 0+1= 1 болуп, 1ге чыкты
      //эгер, студенттин аты,
      //почтасы шартка туура келсе, аткарат
      if (name == student.name && email == student.email) {
        // щарт беребиз,.

        Navigator.push(
          // кийинки бетке отуучу багыт
          context,
          MaterialPageRoute(
            // жол
            builder: (context) => UserPage(
              student: student.name,
            ),
            // 2чи бетти атадык, эгерде жогорку шарт аткарылса, 2чи беттке отот
          ),
        );
        break; // циклды токтоттуп койду
      } else {
        // иначе, (биринчи шартка туура келбесе)кийинки циклды аткарат,
        if (index == studentter.length) {
          // эгер studennter - циклынын ээсинин узундугу(индекс боюнча орду) туура келсе, аткарылсын
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Сиздин атыныз же почтаныз туура эмес!'),
            ),
          );
        } else {
          // иначе,
          continue; // продолжай
        }
      }
    }
  }

/* Экинчи вариант
void controlNameEmail(String name, String email) { // циклдын, функциянын денеси
  for (int i = 0; i <= studentter.length; i++) { // циклдын ээлери
    if (name == studentter[i] && email == studentter[i].email) { // щарт беребиз,.
     // шарт аткарылса, 1ге кощсун, 0+1= 1 болуп, 1ге чыкты
       //эгер, студенттин аты,
     //почтасы шартка туура келсе, аткарат  
      Navigator.push(// кийинки бетке отуучу багыт
        context, 
        MaterialPageRoute( // жол 
          builder: (context) => const UserPage(),
          // 2чи бетти атадык, эгерде жогорку шарт аткарылса, 2чи беттке отот
        ),
      );
      break; // циклды токтоттуп койду
    } else { // иначе, (биринчи шартка туура келбесе)кийинки циклды аткарат, 
    if(i == studentter.length){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Сиздин атыныз же почтаныз туура эмес!'),
      ),
      );
    }
      
    }
  }
}
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LoginPage'.toUpperCase()),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1544376798-89aa6b82c6cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 35,
              right: 30,
              bottom: 40,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 99, 203, 205).withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FlutterLogo(
                        size: 80,
                      ),
                      Text(
                        'Flutter',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  const Text(
                    'Welcome to Saifty!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  const Text('Keep Your Data Safe!'),
                  Padding(
                    // эки жагынан тептиребиз
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _name = value;
                        print('Value иштеди $value');
                        print('Value иштеди $_name');
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Name'),
                    ),
                  ),
                  Padding(
                    // эки жагынан тептиребиз
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextField(
                      onChanged: (String value) {
                        _gmail = value;
                        print('Value иштеди $value');
                        print('Value иштеди $_gmail');
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'email'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(250, 40)),
                    onPressed: () {
                      controlNameEmail(_name!,
                          _gmail!); // жогоруда берген функцияны байлайбыз, ал туура келсе, аткарылат
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
