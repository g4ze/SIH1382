// ignore_for_file: must_be_immutable

part of 'login_page_driver_bloc.dart';

/// Represents the state of LoginPageDriver in the application.
class LoginPageDriverState extends Equatable {
  LoginPageDriverState({
    this.phoneController,
    this.passwordController,
    this.loginPageDriverModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  LoginPageDriverModel? loginPageDriverModelObj;

  @override
  List<Object?> get props => [
        phoneController,
        passwordController,
        loginPageDriverModelObj,
      ];
  LoginPageDriverState copyWith({
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    LoginPageDriverModel? loginPageDriverModelObj,
  }) {
    return LoginPageDriverState(
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      loginPageDriverModelObj:
          loginPageDriverModelObj ?? this.loginPageDriverModelObj,
    );
  }
}
