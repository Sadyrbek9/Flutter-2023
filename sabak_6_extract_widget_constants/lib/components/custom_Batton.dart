
import 'package:flutter/material.dart';

class CustomBatton extends StatelessWidget {
  const CustomBatton({super.key, required this.icon, required this.text,
  });
   final IconData icon;
   final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 265,
      child: ElevatedButton(
        onPressed: (){}, 
      child: Row(
        children:  [
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          Text(
            text, 
            style: const TextStyle(
             color: Colors.red, fontSize: 20),
              ),
        ],
      ),
      ),
    );
  }
}