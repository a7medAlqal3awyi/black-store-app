import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_black_store/core/network/end_points.dart';
import 'package:the_black_store/core/network/remote/dio_helper.dart';
import 'package:the_black_store/models/auth/login_model.dart';
import 'package:the_black_store/models/auth/register_model.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthLoginInitialState());

  static AuthCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(AuthLoginLoadingState());

    DioHelper.pastData(
      url: LOGIN,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      print(value.data.toString());
      LoginModel loginModel = LoginModel.fromJson(value.data);
      print("**************Success*******************");
      print(loginModel.user!.email);
      print(loginModel.user!.id);
      print("*********************************");

      emit(AuthLoginSuccessState(loginModel));
    }).catchError((error) {
      print("******************Error***************");
      print(error.toString());
      print("*********************************");

      emit(AuthLoginFailedState(error.toString()));
    });
  }

  void userRegister({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) {
    emit(AuthRegisterLoadingState());

    DioHelper.pastData(
      url: REGISTER,
      data: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
      },
    ).then((value) {
      print(value.data.toString());
      RegisterModel registerModel = RegisterModel.fromJson(value.data);
      print("**************Success*******************");
      print(registerModel.user!.email);
      print(registerModel.user!.id);
      print("*****************Success****************");

      emit(AuthRegisterSuccessState(registerModel));
    }).catchError((error) {
      print("****************Error***************");
      print(error.toString());
      print("******************Error***************");

      emit(AuthRegisterFailedState(error.toString()));
    });
  }
}
