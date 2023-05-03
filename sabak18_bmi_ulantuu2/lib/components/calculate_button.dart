
import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_colors.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_texts.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_textstyle.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: double.infinity,
      color: AppColors.pinkColor,
      child: const Center(
          child: Text(
        AppTexts.calculator,
        style: AppTextStyles.calculateStyle,
      )),
    );
  }
}
