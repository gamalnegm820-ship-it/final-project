import 'package:finalporoject/logn%20screen/login_state.dart';
import 'package:finalporoject/logn%20screen/loginscr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit():super(LoginInitial());
  final fireAuth = FirebaseAuth.instance;
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  Future<void>Login()async{
    emit(LoginLoading());
        try{
          await fireAuth.signInWithEmailAndPassword(
              email: emailController.text,
              password: passwordController.text
          );
          emit(LoginSuccess());
        }on FirebaseAuthException catch(e){
          emit(LoginFailure(e.toString()));
        }catch(e){
          emit(LoginFailure(e.toString()));
        }
  }

}