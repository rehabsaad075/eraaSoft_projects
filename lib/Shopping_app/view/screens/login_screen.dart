import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/elevated_button_custom.dart';
import 'package:eraasoft_projects/BMI_calculate/view/componets/widgets/text_custom.dart';
import 'package:eraasoft_projects/Shopping_app/view/componts/textFormField_custom.dart';
import 'package:eraasoft_projects/Shopping_app/view_model/cubit/auth/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'store_home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {},
            builder: (context, state) {
              LoginCubit cubit=LoginCubit.get(context);
              return Column(
                children: [
                   TextFormFieldCustom(
                    labelText: 'email',
                    icon: Icons.email,
                    controller:cubit.emailController ,
                     validator: (value){
                      if(value!.isEmpty){
                        return 'email must not be empty';
                      }
                      return null;
                     },
                  ),
                  const SizedBox(height: 10,),
                   TextFormFieldCustom(
                    labelText: 'password',
                    icon: Icons.remove_red_eye,
                     controller: cubit.passwordController,
                     validator: (value){
                       if(value!.isEmpty){
                         return 'password must not be empty';
                       }
                       return null;
                     },
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButtonCustom(
                    onPressed: () {
                      cubit.login().then((value) {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context)=>const StoreHomeScreen()));
                      });
                    },
                    child: const AppText(
                      textValue: 'Login',
                      fontSize: 25,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
