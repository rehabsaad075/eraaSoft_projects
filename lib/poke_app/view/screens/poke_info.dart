import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';

class PokeInfo extends StatelessWidget {
  const PokeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pokeAppColor,
      appBar: AppBar(
        backgroundColor: AppColors.pokeAppColor,
        elevation: 0,
        centerTitle: true,
        title: const AppText(
            textValue: 'poke info',
            color: AppColors.white,
            fontSize: 25,
        ),
      ),
      body: Center(
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 550,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdSGnabiU_nARsMBnHbZ7J-qcPME_7djChDg&usqp=CAU',
                  height: 130,
                  width: 130,
                ),
                const SizedBox(height: 30,),
                const AppText(
                  textValue: 'Pokemon',
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 30,),
                const AppText(
                  textValue: 'Height: 1.09m',
                  fontSize: 16,
                ),
                const SizedBox(height: 30,),
                const AppText(
                  textValue: 'weight 19.0 kg',
                  fontSize: 16,
                ),
                const SizedBox(height: 30,),
                const AppText(
                  textValue: 'Types',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 30,),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.orange
                  ),
                  child: const AppText(
                    textValue: 'fire',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30,),
                const AppText(
                  textValue: 'Weakness',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.red
                      ),
                      child: const AppText(
                        textValue: 'water',
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.red
                      ),
                      child: const AppText(
                        textValue: 'Ground',
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.red
                      ),
                      child: const AppText(
                        textValue: 'Rock',
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
