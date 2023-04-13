import 'package:flutter/material.dart';

class DemoWhiteKey extends StatefulWidget {
  const DemoWhiteKey({
    super.key,
  });

  @override
  State<DemoWhiteKey> createState() => _DemoWhiteKeyState();
}

class _DemoWhiteKeyState extends State<DemoWhiteKey> {
  bool isPressed = false; // булен берип, аны чакырып иштетебиз
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // курсор менен басууну, кыймылдатат
      onTapDown: (details) {
        // ылдый басуучу функция
        setState(() {
          // абалды озгортуучу функуция
          isPressed = true;
        });
      },
      onTapUp: (details) {
        // жогору басуучу функция
        setState(() {
          // абалды озгортуучу функуция
          isPressed = false;
        });
      },

      child: Transform(
        // Transform widget ке экстракт кылдык(Озгортуучу виджет)
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Container(
          // Контейнерди Transform widget ке экстракт кылдык
          width: 80,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: isPressed ? Colors.grey[300] : Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
