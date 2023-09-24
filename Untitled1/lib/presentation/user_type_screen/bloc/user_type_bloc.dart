import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:manav_s_application/presentation/user_type_screen/models/user_type_model.dart';
part 'user_type_event.dart';
part 'user_type_state.dart';

/// A bloc that manages the state of a UserType according to the event that is dispatched to it.
class UserTypeBloc extends Bloc<UserTypeEvent, UserTypeState> {
  UserTypeBloc(UserTypeState initialState) : super(initialState) {
    on<UserTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserTypeInitialEvent event,
    Emitter<UserTypeState> emit,
  ) async {}
}
