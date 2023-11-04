import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:flutter/material.dart';

class PokeWidget extends StatelessWidget {
  final void Function()? onTap;
  const PokeWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdSGnabiU_nARsMBnHbZ7J-qcPME_7djChDg&usqp=CAU',
                ),
              ),
              const SizedBox(height: 15,),
              const Expanded(
                child: AppText(
                  textValue: 'Pokemon',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],),
        ),
      ),
    );
  }
}
