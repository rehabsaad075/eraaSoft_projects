import 'package:flutter/material.dart';

import '../../../view_model/utils/colors.dart';
import 'text_custom.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  const ElevatedButtonCustom({Key? key, this.onPressed, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.pink,
          minimumSize: const Size(double.infinity,60),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          )
      ),
      child:child,
    );
  }
}
