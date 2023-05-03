
import 'package:flutter/material.dart';
import 'package:sabak_13_piano_app_3_end_eztract/components/container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage
({super.key});

  @override
  State<MyHomePage
> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child:  Text('Extract Widget')),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: const [
                  ContainerWidget(
                    containerdinTexty: 'Container 1',
                    containerdinTexty2: 'Sabak 6',
                    icon: Icons.music_note,
                    image: 'https://img.freepik.com/premium-photo/flag-of-kyrgyzstan-silk-close-up-background_406939-172.jpg',
                  ),
                    SizedBox(
                     height: 10,
                    ),
                  ContainerWidget(
                    containerdinTexty: 'Container 2',
                    containerdinTexty2: 'Sabak 7',
                    icon: Icons.alarm,
                    image: 'https://img.freepik.com/premium-vector/usa-flag-original-colors-and-proportions-united-states-vector-illustration-eps-10_148553-489.jpg',
                  ),
              SizedBox(
                height: 10,
              ),
                   ContainerWidget(
                     containerdinTexty: 'Container 3',
                     containerdinTexty2: 'Sabak 8',
                     icon: Icons.book,
                     image: 'https://img.freepik.com/premium-vector/germany-flag-flag-of-germany-vector-illustration_685751-83.jpg',
                   ),
                SizedBox(
                height: 10,
              ),
                    ContainerWidget(
                      containerdinTexty: 'Container 4',
                      containerdinTexty2: 'Sabak 9',
                      icon: Icons.abc,
                      image: 'https://img.freepik.com/vektoren-kostenlos/illustration-der-china-flagge_53876-27015.jpg',
              ),
                 SizedBox(
                height: 10,
              ),
                     ContainerWidget(
                       containerdinTexty: 'Container 5',
                       containerdinTexty2: 'Sabak 10',
                       icon: Icons.phone,
                       image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/2560px-Flag_of_Japan.svg.png',
              ),
                  SizedBox(
                height: 10,
              ),
                     
             
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
