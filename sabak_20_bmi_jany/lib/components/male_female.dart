import 'package:flutter/material.dart';
import 'package:sabak_20_bmi_jany/theme/app_textstyle.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    super.key,
    required this.icon,
    required this.text,
    required this.isTrue,
  });

  final IconData icon;
  final String text;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isTrue ? Colors.red : null,
          size: 80,
        ),
        Text(
          text,
          style: AppTextStyles.titleStyle,
        ),
      ],
    );
  }
}
