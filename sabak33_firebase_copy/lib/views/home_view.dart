import 'package:flutter/material.dart';
import 'package:sabak33_firebase_copy/views/todo_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomeView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (contex) => const TodoView()),
                );
              },
              child: const Icon(
                Icons.arrow_forward,
                color: Color.fromARGB(255, 235, 238, 240),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
