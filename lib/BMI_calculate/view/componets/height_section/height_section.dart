import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/cubit/bmi_cubit/bmi_cubit.dart';
import '../../../view_model/cubit/bmi_cubit/bmi_states.dart';
import '../background_item.dart';

class HeightSection extends StatelessWidget {
  const HeightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BMICubit,BMIStates>(
      listener: (context,state){},
        builder: (context,state){
          return  BackgroundItem(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const AppText(
                  textValue: 'Height',
                  color: AppColors.grey,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      textValue: '${BMICubit.get(context).height.round()}',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    const AppText(
                      textValue: 'cm',
                      color: AppColors.grey,
                    ),
                  ],
                ),
                Slider(
                    activeColor: AppColors.pink,
                    inactiveColor: AppColors.grey,
                    value: BMICubit.get(context).height,
                    min: 0,
                    max: 300,
                    onChanged: (value){
                      BMICubit.get(context).changeHeight(value);
                    }
                )
              ],
            ),
          );
        },
    );

  }
}
