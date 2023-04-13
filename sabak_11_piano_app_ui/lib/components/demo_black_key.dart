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
            width: 60,
            height: 250,
            decoration: BoxDecoration(
              color: isPressed ? Colors.grey[900] : Colors.black,
               borderRadius: BorderRadius.circular(7),
            ),
            child: Stack(
              alignment: isPressed ? Alignment.topCenter : Alignment.center,
              children: [
                Transform(
                  transform: Matrix4.rotationX(0.0),
                  child: Positioned(
                    height: isPressed ? 15 : 20,
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 76, 73, 73),
                      radius: 10,
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
