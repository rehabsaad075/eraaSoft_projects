import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';
class AppText extends StatelessWidget {
  final String textValue;
  final double ?fontSize;
  final FontWeight ?fontWeight;
  final Color ?color;
  final TextAlign? textAlign;
  final int? maxLines;
  const AppText({Key? key,
    required this.textValue,
    this.fontSize,
    this.fontWeight,
    this.color=Colors.black,
    this.textAlign,
    this.maxLines,
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
      maxLines:maxLines ,
      overflow: TextOverflow.ellipsis,
    );
  }
}
