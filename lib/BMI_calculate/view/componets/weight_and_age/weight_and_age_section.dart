import 'package:eraasoft_projects/BMI_calculate/view_model/cubit/bmi_cubit/bmi_cubit.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/cubit/bmi_cubit/bmi_states.dart';
import 'package:eraasoft_projects/BMI_calculate/view_model/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'weight_and_age_widget.dart';

class WeightAndHeightSection extends StatelessWidget {
  const WeightAndHeightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BMICubit,BMIStates>(
      listener: (context,state){
        if (state is AgeValueOverState){
          Fluttertoast.showToast(
              msg: state.massage??'',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 2,
              backgroundColor: AppColors.background,
              textColor:AppColors.pink,
              fontSize: 16.0
          );
        }
      },
        builder: (context,state){
          return  Row(
            children: [
              Expanded(
                child: WeightAndAgeWidget(
                  text: 'Weight',
                  numText: '${BMICubit.get(context).weightValue}',
                  onAddPressed: (){
                    BMICubit.get(context).addWeightValue();
                  },
                  onMinusPressed: (){
                    BMICubit.get(context).minusWeightValue();
                  },
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: WeightAndAgeWidget(
                  text: 'Age',
                  numText: '${BMICubit.get(context).ageValue}',
                  onAddPressed: (){
                    BMICubit.get(context).addAgeValue();
                  },
                  onMinusPressed: (){
                    BMICubit.get(context).minusAgeValue();
                  },
                ),
              ),
            ],
          );
        },
    );

  }
}
