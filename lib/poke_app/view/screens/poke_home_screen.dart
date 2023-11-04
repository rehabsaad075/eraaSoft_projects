import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';

import 'poke_info.dart';
import '../componets/poke_widget.dart';

class PokeHomeScreen extends StatelessWidget {
  const PokeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pokeAppColor,
        centerTitle: true,
        title: const AppText(
          textValue: 'Poke App',
          color: AppColors.white,
          fontSize: 20,
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children: [
          ...List.generate(
              20,
                  (index) =>  PokeWidget(
                    onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>const PokeInfo()));
                  },)
          )
        ]
      ),
    );
  }
}
