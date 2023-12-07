import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/cubit/auth_cubit/auth/auth_cubit.dart';
import 'package:the_black_store/presentation/cubit/auth_cubit/auth/auth_state.dart';

import '../../../../core/styles/app_styles.dart';
import '../../../widgets/input_field.dart';
import '../../../widgets/leading_app_bar.dart';
import '../../../widgets/buttons/my_button.dart';
import '../../../widgets/toast/my_toast.dart';
import '../../dash_board.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController verifyPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthStates>(
        listener: (context, state) {
          if (state is AuthRegisterSuccessState) {
            showToast(
                msg: AppConstants.successRegisterToYourAccount,
                color: Colors.green);
            context.pushAndRemove(const DashBoardScreen());
          }
          if (state is AuthRegisterFailedState) {
            showToast(
                msg: AppConstants.failedRegisterToYourAccount,
                color: Colors.red);
          }
        },
        builder: (context, state) {
          var cubit = AuthCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: LeadingAppBar(
                onTap: () {
                  context.pop(context);
                },
              ),
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                AppConstants.createNewAccount,
                textAlign: TextAlign.center,
                style: AppConstants.bigTextStyle,
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    children: [
                      MyInputFiled(
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return "Name must not be empty";
                          } else {
                            return null;
                          }
                        },
                        obscureText: false,
                        type: TextInputType.name,
                        controller: nameController,
                        title: AppConstants.fullName,
                        hint: AppConstants.enterFullName,
                        widget: SvgPicture.asset("assets/icons/Profile.svg"),
                      ),
                      MyInputFiled(
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return "Email address must not be empty";
                          } else {
                            return null;
                          }
                        },
                        obscureText: false,
                        type: TextInputType.emailAddress,
                        controller: emailController,
                        title: AppConstants.email,
                        hint: AppConstants.enterEmail,
                        widget: SvgPicture.asset("assets/icons/email.svg"),
                      ),
                      MyInputFiled(
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return "Password must not be empty";
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        type: TextInputType.visiblePassword,
                        controller: passwordController,
                        title: AppConstants.password,
                        hint: AppConstants.enterPassword,
                        widget: SvgPicture.asset("assets/icons/Lock.svg"),
                      ),
                      MyInputFiled(
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return "Password must not be empty";
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        type: TextInputType.visiblePassword,
                        controller: verifyPasswordController,
                        title: AppConstants.verifyPassword,
                        hint: AppConstants.enterPassword,
                        widget: SvgPicture.asset("assets/icons/Lock.svg"),
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                      ConditionalBuilder(
                        condition: state is! AuthRegisterLoadingState,
                        builder: (BuildContext context) {
                          return ButtonWithOnlyText(
                            color: primary,
                            text: AppConstants.next,
                            textColor: Colors.black,
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                cubit.userRegister(
                                    name: nameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    confirmPassword:
                                        verifyPasswordController.text);
                              }
                            },
                          );
                        },
                        fallback: (BuildContext context) =>
                            CircularProgressIndicator(
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
