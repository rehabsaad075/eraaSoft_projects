import 'package:flutter/material.dart';

class ButtonBuildItem extends StatelessWidget {
  const ButtonBuildItem({
    Key? key,
    required this.color,
    required this.width,
    required this.child,
    required this.onPressed,
  }) : super(key: key);
final Color color;
final double width;
  final Widget child;
  final Function()onPressed;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style:ElevatedButton.styleFrom(
          primary: color,
        ) ,
        child: child,
      ),
    );
  }
}
