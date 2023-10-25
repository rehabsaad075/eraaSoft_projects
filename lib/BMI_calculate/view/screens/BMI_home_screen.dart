
import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/cubit/bmi_cubit/bmi_cubit.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/cubit/bmi_cubit/bmi_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/utils/colors.dart';
import '../componets/gender/gender_section_build.dart';
import '../componets/height_section/height_section.dart';
import '../componets/weight_and_age/weight_and_age_section.dart';
import '../componets/widgets/elevated_button_custom.dart';
import 'result_screen.dart';

class BmiHomeScreen extends StatelessWidget {
  const BmiHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0,
        title: const AppText(
          textValue: 'BMI CALCULATE',
        ),
      ),
      body: Column(
        children: [
           const Expanded(
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
             child: Column(
               children: [
                 Expanded(child: GenderSectionBuild()),
                 Expanded(child: HeightSection()),
                 Expanded(child: WeightAndHeightSection())
               ],
             ),
           ),
         ),
          BlocConsumer<BMICubit,BMIStates>(
            listener: (context,state){
              if(state is BMICalculateSuccessfulState){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const ResultsScreen())
                );
              }
            },
            builder:  (context,state){
              return  ElevatedButtonCustom(
                onPressed: (){
                  BMICubit.get(context).bmiCalculate();
                },
                child:  Visibility(
                  visible: state is! BMICalculateLoadingState,
                  replacement: const CircularProgressIndicator(),
                  child: const AppText(
                    textValue: 'Calculate',
                    fontSize: 25,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
