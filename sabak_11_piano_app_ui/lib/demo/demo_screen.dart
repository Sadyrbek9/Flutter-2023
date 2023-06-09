import 'package:flutter/material.dart';
import 'package:sabak_11_piano_app_ui/components/demo_black_key.dart';
import 'package:sabak_11_piano_app_ui/components/demo_white_key.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: 350,
          child: Stack(
            // контейнерлерди биринин устоно бирин жуктой турчу Виджет
            children: [
              ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  // Ак контейнер учун
                  return const DemoWhiteKey(); // бул жердеги Контейнерди экстракт кылдык
                },
              ),
              // Кара кнопка учун
              Row(
                children: const [
                  SizedBox(
                    width: 50,
                  ),
                  DemoBlackKey(),
                  SizedBox(
                    width: 20,
                  ),
                  DemoBlackKey(),
                  SizedBox(
                    width: 10 * 18,
                  ),
                  DemoBlackKey(),
                  SizedBox(
                    width: 20,
                  ),
                  DemoBlackKey(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
