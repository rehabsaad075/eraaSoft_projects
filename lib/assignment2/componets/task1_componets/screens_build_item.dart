
import 'package:flutter/material.dart';

import 'button_build_item.dart';
import 'textFormFieldItem.dart';

class ScreensBuildItem extends StatefulWidget {
  const ScreensBuildItem({
    Key? key,
    required this.titilText,
    required this.subTitil,
    required this.radioText,
    this.text,
    required this.textElevateButton,
    required this.textRow,
    required this.textButton,
    required this.widgetNavigator,
  }) : super(key: key);
final String titilText;
final String subTitil;
final String radioText;
final String ?text;
final String textElevateButton;
  final String textRow;
  final String textButton;
  final Widget widgetNavigator;

  @override
  State<ScreensBuildItem> createState() => _ScreensBuildItemState();
}
int ?selcetOption;
class _ScreensBuildItemState extends State<ScreensBuildItem> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Text(
                  widget.titilText,
                  style:const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500
                  ),
                ),
                 const SizedBox(height: 10,),
                 Text(
                  widget.subTitil,
                  style:const TextStyle(
                      fontSize: 14,
                      color: Colors.grey
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 30),
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
                      onPressed:(){},
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
                  padding: EdgeInsets.only(top: 50,bottom: 30),
                  child: Text(
                    'or Login with Email',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey
                    ),
                  ),
                ),
                const TextFormFieldItem(
                  label: Text('Email'),
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20,),
                const TextFormFieldItem(
                  label: Text('password'),
                  obscureText: true,
                  type: TextInputType.number,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                  child: Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selcetOption,
                          onChanged: (value){
                            setState(() {
                              selcetOption=value;
                            });
                          }
                      ),
                       Text(
                          widget.radioText
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                       Text(
                         widget.text??''
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                ButtonBuildItem(
                  color: Colors.blue[600]!,
                  width: 340,
                  onPressed: (){},
                  child:   Text(
                      widget.textElevateButton
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      widget.textRow,
                      style:const TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                      ),
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return  widget.widgetNavigator;
                              }));
                        },
                        child:  Text(
                            widget.textButton
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
