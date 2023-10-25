import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';

import '../background_item.dart';
import '../widgets/floating_button_custom.dart';

class WeightAndAgeWidget extends StatelessWidget {
  final String text;
  final String numText;
  final void Function() onAddPressed;
  final void Function() onMinusPressed;
  const WeightAndAgeWidget({Key? key, required this.text, required this.numText, required this.onAddPressed, required this.onMinusPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundItem(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            textValue: text,
            color:AppColors.grey ,
          ),
          AppText(
            textValue: numText,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingButtonCustom(
                icon: Icons.remove,
                onPressed: onMinusPressed,
              ),
              FloatingButtonCustom(
                icon: Icons.add,
                onPressed: onAddPressed,
              ),
            ],
          )
        ],
      ),
    );
  }
}
