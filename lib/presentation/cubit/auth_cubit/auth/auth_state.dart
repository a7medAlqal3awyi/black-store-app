abstract class AuthStates{}
class AuthLoginInitialState extends AuthStates{}
class AuthLoginLoadingState extends AuthStates{}
class AuthLoginSuccessState extends AuthStates{}
class AuthLoginFailedState extends AuthStates{
  final String error;

  AuthLoginFailedState(this.error);
}