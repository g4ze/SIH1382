import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/login_page_driver_screen/models/login_page_driver_model.dart';
part 'login_page_driver_event.dart';
part 'login_page_driver_state.dart';

/// A bloc that manages the state of a LoginPageDriver according to the event that is dispatched to it.
class LoginPageDriverBloc
    extends Bloc<LoginPageDriverEvent, LoginPageDriverState> {
  LoginPageDriverBloc(LoginPageDriverState initialState) : super(initialState) {
    on<LoginPageDriverInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageDriverInitialEvent event,
    Emitter<LoginPageDriverState> emit,
  ) async {
    emit(state.copyWith(
        phoneController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
