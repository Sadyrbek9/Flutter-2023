
import 'package:flutter/material.dart';


class Gimn extends StatelessWidget {
  const Gimn({super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
       child: Container(
              height: 91,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffEF443A)
              ),
            ),
    );
  }
}