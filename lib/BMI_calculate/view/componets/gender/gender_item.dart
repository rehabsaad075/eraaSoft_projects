import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';

import '../background_item.dart';

class GenderItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  final bool isSelected;
  const GenderItem({Key? key, required this.icon, required this.text, this.onTap,this.isSelected=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundItem(
      child:BackgroundItem(
        onTap:onTap ,
        isSelected:isSelected ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
            size: 70,
              color: AppColors.white,
            ),
            AppText(
                textValue: text,
              color: AppColors.grey,
              fontSize: 18,
            )
          ],
        ),
      )
    );
  }
}
