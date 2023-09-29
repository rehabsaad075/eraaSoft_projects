import 'package:flutter/material.dart';

import 'screens/Task3_screens/home_screen.dart';
import 'screens/chat_screen/chats_screen.dart';
import 'screens/Task1_screens/login_screen.dart';
import 'screens/Task1_screens/signUp_screen.dart';
import 'screens/Task1_screens/welcome_screen.dart';



void main() {
  runApp(const EraaSoftProject());
}
class EraaSoftProject extends StatelessWidget {
  const EraaSoftProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
