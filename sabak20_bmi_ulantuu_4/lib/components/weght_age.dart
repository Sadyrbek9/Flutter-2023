import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu_4/components/circular_button.dart';
import 'package:sabak20_bmi_ulantuu_4/theme/app_textstyle.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addbasuu,
    required this.removebasuu,
  });

  final String text;
  final String san;
  final void Function() addbasuu;
  final void Function() removebasuu;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.titleStyle,
        ),
        Text(
          san,
          style: AppTextStyles.sanTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
              icon: Icons.remove,
              basuu: removebasuu,
            ),
            const SizedBox(
              width: 10,
            ),
            CircularButton(
              icon: Icons.add,
              basuu: addbasuu,
            ),
          ],
        ),
      ],
    );
  }
}
