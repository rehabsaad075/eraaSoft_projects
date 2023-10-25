abstract class BMIStates{}
class BMIInitialState extends BMIStates{}

class BMIChangeGenderState extends BMIStates{}
class BMIChangeHeightState extends BMIStates{}

class AddWeightValueState extends BMIStates{}
class MinusWeightValueState extends BMIStates{}

class AddAgeValueState extends BMIStates{}
class MinusAgeValueState extends BMIStates{}

class AgeValueOverState extends BMIStates{
  final String ?massage;

  AgeValueOverState({this.massage});
}

class BMICalculateLoadingState extends BMIStates{}

class BMICalculateSuccessfulState extends BMIStates{}

