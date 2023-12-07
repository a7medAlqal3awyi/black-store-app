import 'package:the_black_store/models/auth/login_model.dart';

abstract class AuthStates{}
class AuthLoginInitialState extends AuthStates{}
class AuthLoginLoadingState extends AuthStates{}
class AuthLoginSuccessState extends AuthStates{
  final LoginModel loginModel;

  AuthLoginSuccessState(this.loginModel);
}
class AuthLoginFailedState extends AuthStates{
  final String error;

  AuthLoginFailedState(this.error);
}