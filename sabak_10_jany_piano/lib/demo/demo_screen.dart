import 'package:flutter/material.dart';
import 'package:sabak_10_jany_piano/components/demo_black_key.dart';
import 'package:sabak_10_jany_piano/components/demo_white_key.dart';

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
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 320,
              child: Stack(
                children: [
                  ListView.builder( 
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index) {
                    return const DemoWhiteKey();
                  },
                ),
                // кара кнопка учун
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
                )
                ],  
              ),
            ),
          ],
        ),
      ),
    );
  }
}
