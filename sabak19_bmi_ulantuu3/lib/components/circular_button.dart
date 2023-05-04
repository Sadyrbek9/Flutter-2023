import 'package:flutter/material.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_colors.dart';

class CircularButton extends StatelessWidget {
  const CircularButton(
      {super.key, required this.icon, required this.basuu});
  final IconData icon;
  final void Function() basuu;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: FloatingActionButton(
        backgroundColor: AppColors.greyColor,
        onPressed: basuu,
        child: Icon(
          icon,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
