import 'package:eraasoft_projects/assignment2/models/gridView_model.dart';
import 'package:flutter/material.dart';

class BuildGridViewItem extends StatelessWidget {
  const BuildGridViewItem({Key? key, required this.model}) : super(key: key);
  final GridViewModel model;
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                model.image,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 5,bottom: 5),
            child: Text(
             model.titleText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900
              ),
            ),
          ),
        ],
      );
  }
}
