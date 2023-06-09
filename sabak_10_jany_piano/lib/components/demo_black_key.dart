
import 'package:flutter/material.dart';

class DemoBlackKey extends StatefulWidget {
  const DemoBlackKey({
    super.key,
  });

  @override
  State<DemoBlackKey> createState() => _DemoBlackKeyState();
}

class _DemoBlackKeyState extends State<DemoBlackKey> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
              color: isPressed ? const Color.fromARGB(255, 24, 23, 23) : Colors.black,
          ),
        width: 60,
        height: 200,
        child: Stack(
          alignment: isPressed ? Alignment.topCenter : Alignment.center,
          children: [
            Transform(
            transform: Matrix4.rotationX(0.0),
              child: const Positioned(
                child:  CircleAvatar(
                  backgroundColor: Color.fromARGB(217, 230, 223, 223),
                  radius: 14,
                ),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
