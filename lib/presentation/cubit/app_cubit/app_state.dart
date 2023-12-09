
abstract class AppStates { }
class InitialState extends AppStates {}
class AppNavBottomState extends AppStates {}
class GetArticlesLoadingState extends AppStates {}
class GetArticlesSuccessState extends AppStates {}
class GetArticlesErrorState extends AppStates {
  final String error;

  GetArticlesErrorState(this.error);

}