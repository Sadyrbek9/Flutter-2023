import 'package:flutter/material.dart';
import 'package:sabak_20_bmi_jany/theme/app_colors.dart';
import 'package:sabak_20_bmi_jany/theme/app_texts.dart';
import 'package:sabak_20_bmi_jany/theme/app_textstyle.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key, required this.onPressed,
  });
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkColor,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero),),
        minimumSize: const Size(double.infinity, 73),
      ),
      onPressed: onPressed,
      child: const Text(
        AppTexts.calculator,
        style: AppTextStyles.calculateStyle,
      ),
    );
  }
}
