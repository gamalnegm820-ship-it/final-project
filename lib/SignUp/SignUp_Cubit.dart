import 'package:finalporoject/SignUp/SignUp_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignUpInitial());

  final fireAuth = FirebaseAuth.instance;
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();

  Future<void> SignUp() async {
    emit(SignUpLoading());
    try {
      await fireAuth.createUserWithEmailAndPassword(
        email: emailControl.text,
        password: passwordControl.text,
      );
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      emit(SignUpFailure(e.toString()));
    } catch (e) {
      emit(SignUpFailure(e.toString()));
    }
  }
}
