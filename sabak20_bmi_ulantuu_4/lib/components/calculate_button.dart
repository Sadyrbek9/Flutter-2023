import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu_4/theme/app_colors.dart';
import 'package:sabak20_bmi_ulantuu_4/theme/app_texts.dart';
import 'package:sabak20_bmi_ulantuu_4/theme/app_textstyle.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkColor,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero),),
        minimumSize: const Size(double.infinity, 73),
      ),
      onPressed: () {},
      child: const Text(
        AppTexts.calculator,
        style: AppTextStyles.calculateStyle,
      ),
    );
  }
}
