import 'package:flutter/material.dart';

class TextFormFieldItem extends StatelessWidget {
  const TextFormFieldItem({Key? key, required this.label, this.obscureText, required this.type}) : super(key: key);
final Widget label;
final bool ?obscureText;
final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        keyboardType: type,
        obscureText: obscureText??false,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          label: label,
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
        ),
      ),
    );
  }
}
