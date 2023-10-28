import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BMI_calculate/view/screens/BMI_home_screen.dart';
import 'BMI_calculate/view_model/cubit/bmi_cubit/bloc_observer.dart';
import 'BMI_calculate/view_model/cubit/bmi_cubit/bmi_cubit.dart';
import 'Quote_app/quote_home_screen.dart';

void main() {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const EraaSoftProject());
}
class EraaSoftProject extends StatelessWidget {
  const EraaSoftProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>BMICubit()),

      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuoteHomeScreen(),
      ),
    );
  }
}
