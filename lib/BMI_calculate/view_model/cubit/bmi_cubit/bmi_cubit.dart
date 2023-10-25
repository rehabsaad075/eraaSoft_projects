import 'package:flutter_bloc/flutter_bloc.dart';

import 'bmi_states.dart';

class BMICubit extends Cubit<BMIStates>{
  BMICubit():super(BMIInitialState());

static BMICubit get(context)=>BlocProvider.of<BMICubit>(context);
 bool isMale=true;
void changeGender(String gender){
  if(gender=='male'){
    isMale=true;
  }else{
    isMale=false;
  }
  emit(BMIChangeGenderState());
}

double height=165;
void changeHeight(double value){
  height=value;
  emit(BMIChangeHeightState());
}
  int weightValue=54;

void addWeightValue(){
  weightValue++;
  emit(AddWeightValueState());
}

  void minusWeightValue(){
    weightValue--;
    emit(MinusWeightValueState());
  }

  int ageValue=24;

  void addAgeValue(){
    if(ageValue==100){
      emit(AgeValueOverState(massage:' Age must be less than 100'));
      return;
    }
    ageValue++;
    emit(AddAgeValueState());
  }

  void minusAgeValue(){
    ageValue--;
    emit(MinusAgeValueState());
  }

  double bmiValue=0;
  void bmiCalculate(){
    emit(BMICalculateLoadingState());
    Future.delayed(const Duration(seconds: 2),(){
      bmiValue=weightValue/((height/100)*(height/100));
      print(bmiValue);
      emit(BMICalculateSuccessfulState());
    });
  }
}
