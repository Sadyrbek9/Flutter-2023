import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu_4/components/all_calculator.dart';
import 'package:sabak20_bmi_ulantuu_4/theme/app_colors.dart';
import 'package:sabak20_bmi_ulantuu_4/theme/app_texts.dart';
import 'package:sabak20_bmi_ulantuu_4/theme/app_textstyle.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.metri, required this.salmak});
  final double metri;
  final int salmak;

  @override
  Widget build(BuildContext context) {
    double resultattar = BmiCalculator().bmi(height: metri, weight: salmak);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text('ResultPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 11, right: 9, top: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Text(
                'Жыйынтык',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 315,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.cardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    BmiCalculator().bmiResult(resultattar),
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xff08E82C),
                    ),
                  ),
                  Text(
                    resultattar.toStringAsFixed(1),
                    style: const TextStyle(fontSize: 80),
                  ),
                  Text(
                    BmiCalculator().bmiDescription(
                      resultattar,
                    ),
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.pinkColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          minimumSize: const Size(double.infinity, 73),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          AppTexts.kayraEsepte,
          style: AppTextStyles.calculateStyle,
        ),
      ),
    );
  }
}
