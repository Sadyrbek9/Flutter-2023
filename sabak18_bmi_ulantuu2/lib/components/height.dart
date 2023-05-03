
import 'package:flutter/cupertino.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_colors.dart';

class Height extends StatelessWidget {
  const Height({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
  });

  final String text;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Text(text, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
       Row(mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.baseline,
       textBaseline: TextBaseline.alphabetic,
        children: [
      Text(text1, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),),
       Text(text2,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
      ],
      ),
       SizedBox(
        width: 300,
         child: CupertinoSlider(
          value: 180, 
         min: 0,
         max: 240,
         activeColor: AppColors.whiteColor,
         thumbColor: AppColors.pinkColor,
         onChanged: (value) {  },
         ),
       ),
       
      ],
    );
  }
}