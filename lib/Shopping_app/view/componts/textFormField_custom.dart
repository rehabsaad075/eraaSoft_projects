import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget{
final String labelText;
final IconData icon;
final String? Function(String?)? validator;
final TextEditingController? controller;
  const TextFormFieldCustom({super.key, required this.labelText, required this.icon, this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                  color: AppColors.background
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                  color: AppColors.background
              )
          ),
          labelText: labelText,
          prefixIcon:  Icon(
            icon,
            color: AppColors.pink,
          )
      ),
      controller: controller,
      validator:validator ,
    );
  }
}
