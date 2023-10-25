import 'package:flutter/material.dart';

import '../../../view_model/utils/colors.dart';

class FloatingButtonCustom extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const FloatingButtonCustom({Key? key, required this.icon,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.grey,
      mini: true,
      onPressed: onPressed,
      child: Icon(
        icon,
      color: AppColors.white,
      ),
    );
  }
}
