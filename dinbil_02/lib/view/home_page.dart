import 'package:flutter/material.dart';
import 'package:dinbil_02/constants/app_colors.dart';
import 'package:dinbil_02/view/answer_view.dart';

class HomeViewPage extends StatefulWidget {
  const HomeViewPage({super.key});

  @override
  State<HomeViewPage> createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appbarColor,
        centerTitle: true,
        title: const Text(
          'Исламдын баалуулуктары',
          style: TextStyle(color: AppColors.textColor),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            indent: 20,
            endIndent: 20,
            thickness: 4,
            height: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 4 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 24,
                  itemBuilder: (BuildContext ctx, index) {
                    return QuestionButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnswerView()));
                      },
                      text: 'Дин деген эмне?',
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionButton extends StatelessWidget {
  const QuestionButton({
    super.key,
    this.onTap,
    required this.text,
  });
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: const Column(
          children: [
            Text(
              'Дин  деген эмне?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            // SvgPicture.asset(
            //     'assets/continents/${images[continents[index]]}'),
          ],
        ),
      ),
    );
  }
}
