import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:eraasoft_projects/Quote_app/view_model/data/network/dioHelper.dart';
import 'package:eraasoft_projects/Quote_app/view_model/data/network/endPoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context)=>BlocProvider.of<LoginCubit>(context);

  GlobalKey<FormState>formKey=GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  Future<void>login()async{
    emailController.text='mor_2314';
    passwordController.text='83r5^_';
    emit(LoginLoadingState());
    await DioHelper.post(
        endPoint: EndPoints.login,
        body: {
         'username':emailController.text,
          'password':passwordController.text
      }
    ).then((value) {
      print(value.data);
      emit(LoginSuccessState());
    }).catchError((error){
      if(error is DioException){
        print(error.response?.data);
        Fluttertoast.showToast(
            msg: error.response?.data,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
      emit(LoginErrorState());
      throw error;
    });
  }
}
