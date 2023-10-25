
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/cubit/bmi_cubit/bmi_cubit.dart';
import '../../../view_model/cubit/bmi_cubit/bmi_states.dart';
import 'gender_item.dart';

class GenderSectionBuild extends StatelessWidget {
  const GenderSectionBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BMICubit,BMIStates>(
       listener:(context,state){},
        builder: (context,state){
      return  Row(
        children: [
          Expanded(
            child: GenderItem(
              icon: Icons.male,
              text: 'male',
              isSelected: BMICubit.get(context).isMale,
              onTap: (){
                BMICubit.get(context).changeGender('male');
              },
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: GenderItem(
              icon: Icons.female,
              text: 'female',
              isSelected: !BMICubit.get(context).isMale,
              onTap: (){
                BMICubit.get(context).changeGender('female');
              },
            ),
          ),
        ],
      );
    }
        );
  }
}
