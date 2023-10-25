import 'package:eraasoft_projects/assignment2/componets/task1_componets/screens_build_item.dart';
import 'package:eraasoft_projects/assignment2/screens/Task1_screens/signUp_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const ScreensBuildItem(
        titilText: 'Login',
        subTitil: 'please Login to continue using our app',
        radioText: 'Remember me',
        text: 'Forget password?',
        textElevateButton: 'Login',
        textRow: 'Do not have an account ?',
        textButton: 'Sin Up',
      widgetNavigator: SignUpScreen(),
    ) ;
  }
}
