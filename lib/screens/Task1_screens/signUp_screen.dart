import 'package:eraasoft_projects/screens/Task1_screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../componets/task1_componets/screens_build_item.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreensBuildItem(
        titilText: 'Sign Up',
        subTitil: 'Please Sign Up to enter in app',
        radioText: 'I agree with Private Policy',
        textElevateButton: 'Sign Up',
        textRow: 'Already have av account',
        textButton: 'Login',
        widgetNavigator: LoginScreen(),
    );
  }
}
