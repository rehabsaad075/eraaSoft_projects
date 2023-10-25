import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';

class BackgroundItem extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final bool isSelected;
  const BackgroundItem({Key? key, required this.child, this.onTap,this.isSelected=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:AppColors.background ,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border:isSelected? Border.all(
              color: AppColors.pink,
              width: 2
            ):null
            //color: AppColors.background
          ),
          height: 160,
          child:child ,
        ),
      ),
    );
  }
}
