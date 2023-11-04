import 'package:eraasoft_projects/Quote_app/view_model/cubit/quote_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BMI_calculate/view_model/cubit/bmi_cubit/bloc_observer.dart';
import 'BMI_calculate/view_model/cubit/bmi_cubit/bmi_cubit.dart';
import 'Quote_app/view/screens/quote_home_screen.dart';
import 'Quote_app/view/screens/quotes_screen.dart';
import 'Quote_app/view_model/data/network/dioHelper.dart';
import 'Shopping_app/view/screens/login_screen.dart';
import 'Shopping_app/view/screens/store_home_screen.dart';
import 'Shopping_app/view_model/cubit/store/store_cubit.dart';
import 'poke_app/view/screens/poke_home_screen.dart';

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
        BlocProvider(create: (context)=>QuoteCubit()..getQuotes()),
        BlocProvider(create: (context)=>StoreCubit()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PokeHomeScreen(),
      ),
    );
  }
}
