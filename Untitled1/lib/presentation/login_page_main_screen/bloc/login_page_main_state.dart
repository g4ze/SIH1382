// ignore_for_file: must_be_immutable

part of 'login_page_main_bloc.dart';

/// Represents the state of LoginPageMain in the application.
class LoginPageMainState extends Equatable {
  LoginPageMainState({
    this.phoneController,
    this.passwordController,
    this.loginPageMainModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  LoginPageMainModel? loginPageMainModelObj;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        loginPageMainModelObj,
      ];
  LoginPageMainState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    LoginPageMainModel? loginPageMainModelObj,
  }) {
    return LoginPageMainState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      loginPageMainModelObj:
          loginPageMainModelObj ?? this.loginPageMainModelObj,
    );
  }
}
