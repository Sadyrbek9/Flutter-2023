import 'package:flutter/material.dart';

import 'components/custom_Batton.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Components and Constants"
            ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAj-xKSVkaFhPy6O4GQPjFkPYYwpz4XlVmxXuCP2llOamoc1Zj8aUnXcO-tBlqarp7ERc&usqp=CAU"),
             const CustomBatton(
              icon: Icons.phone,
              text: 'Менин телефонум'
              ),
            const SizedBox(
              height: 10,
            ),
            const CustomBatton(
              icon: Icons.mail,
              text: "email",
            ),
            
      
          ],
        ),
      ),
    );
  }
}
