
 abstract class LoginState {}

 class LoginInitial extends LoginState{}
 //loading

 class LoginLoading extends LoginState{}

 // Success
 class LoginSuccess extends LoginState{}
 // Failure
 class LoginFailure extends LoginState{

  final String errMsg;
  LoginFailure(this.errMsg);
 }
 //