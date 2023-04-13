import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_12_piano_app_2/components/white_play.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('1do.mp3'));
                }),
                const SizedBox(width: 5),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('2re.mp3'));
                }),
                const SizedBox(width: 5),
                WhitePlay(onTap: () {
                   AudioPlayer().play(AssetSource('3mi.mp3'));
                }),
                const SizedBox(width: 5),
                WhitePlay(onTap: () {
                   AudioPlayer().play(AssetSource('4fa.mp3'));
                }),
                const SizedBox(width: 5),
                WhitePlay(onTap: () {
                   AudioPlayer().play(AssetSource('5sol.mp3'));
                }),
                const SizedBox(width: 5),
                WhitePlay(onTap: () {
                   AudioPlayer().play(AssetSource('6lya.mp3'));
                }),
                const SizedBox(width: 5),
                WhitePlay(onTap: () {
                   AudioPlayer().play(AssetSource('7si.mp3'));
                }),
                const SizedBox(width: 5),
                WhitePlay(onTap: () {
                   AudioPlayer().play(AssetSource('8-do-vo-vtoroy-oktave.mp3'));
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}