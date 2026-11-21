abstract class SignupState {}
class  SignUpInitial extends SignupState{}
class SignUpLoading extends SignupState{}
class SignUpSuccess extends SignupState{}
class SignUpFailure extends SignupState{
  final String errMsg;
  SignUpFailure(this.errMsg);
}
