import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';
class AppText extends StatelessWidget {
  final String textValue;
  final double ?fontSize;
  final FontWeight ?fontWeight;
  final Color ?color;
  final TextAlign? textAlign;
  const AppText({Key? key,
    required this.textValue,
    this.fontSize,
    this.fontWeight,
    this.color, this.textAlign,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      textValue,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color?? AppColors.white
      ),
      textAlign: textAlign,
    );
  }
}
