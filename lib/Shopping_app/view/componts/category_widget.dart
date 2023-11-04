import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:eraasoft_projects/Shopping_app/view_model/cubit/store/store_cubit.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final void Function()? onTap;
  final String categoryName;
  const CategoryWidget({super.key, this.onTap, required this.categoryName,});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.storeColor,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap:onTap ,
        child: Container(
          padding: const EdgeInsets.all(5),
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),

          ),
          child:  AppText(
            textValue:categoryName,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
