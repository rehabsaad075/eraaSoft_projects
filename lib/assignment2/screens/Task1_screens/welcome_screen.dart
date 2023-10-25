
import 'package:eraasoft_projects/assignment2/screens/Task1_screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../componets/task1_componets/button_build_item.dart';
import 'signUp_screen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
                'Welcome',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),
            ),
            const Text(
              'please Login or Sign up to continue using our app',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey
              ),
            ),
            Image.asset(
                'assets/images/image1.jpg',
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Enter your social networks',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonBuildItem(
                    color: Colors.blue[400]!,
                    width: 150,
                    onPressed: (){},
                    child: Image.asset(
                      'assets/images/twitter.png',
                      height: 40,
                      width: 40,
                    ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ButtonBuildItem(
                    color: Colors.blue[900]!,
                    width: 150,
                    onPressed: (){},
                    child: const Icon(
                      Icons.facebook,
                      size: 40,
                    )
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                'or sign up with Email',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                ),
              ),
            ),
            ButtonBuildItem(
                color: Colors.blue[600]!,
                width: 330,
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return const SignUpScreen();
                      }));
                },
                child:  const Text(
                    'Sign Up'
                ),
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account ?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14
                  ),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return const LoginScreen();
                          }));
                    },
                    child: const Text('Login')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
