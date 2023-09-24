import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/login_page_main_screen/models/login_page_main_model.dart';
part 'login_page_main_event.dart';
part 'login_page_main_state.dart';

/// A bloc that manages the state of a LoginPageMain according to the event that is dispatched to it.
class LoginPageMainBloc extends Bloc<LoginPageMainEvent, LoginPageMainState> {
  LoginPageMainBloc(LoginPageMainState initialState) : super(initialState) {
    on<LoginPageMainInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageMainInitialEvent event,
    Emitter<LoginPageMainState> emit,
  ) async {
    emit(state.copyWith(
        phoneController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
